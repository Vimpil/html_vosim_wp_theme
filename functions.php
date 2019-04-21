<?php
/* disable gutenberg */

// disable for posts
add_filter('use_block_editor_for_post', '__return_false', 10);

// disable for post types
add_filter('use_block_editor_for_post_type', '__return_false', 10);

/* END disable gutenberg */

/* Shortcodes */

function button_shortcode() {
	return '<a href="http://twitter.com/filipstefansson" class="twitter-button">Follow me on Twitter!</a>"';
}
add_shortcode('button', 'button_shortcode');
/* END Shortcodes */

$temp_path = get_template_directory_uri();
$images_folder = "$temp_path/assets/img/";
$js_folder = "$temp_path/assets/js/";
$css_folder = "$temp_path/assets/css/";
$font_folder = "/assets/css/fonts/";

/* default wp_nav_menu id changed */

/**/
add_action('init', 'register_custom_menu');
function register_custom_menu() {
	register_nav_menu('custom_menu', __('Custom Menu'));
}


// Изменяет основные параметры меню
add_filter('wp_nav_menu_args', 'filter_wp_menu_args');
function filter_wp_menu_args($args) {
	if ($args['theme_location'] === 'header-menu') {
		$args['container'] = false;
		$args['items_wrap'] = '<ul class="%2$s">%3$s</ul>';
		$args['menu_class'] = 'menu menu--main menu-horizontal';
	}
	return $args;
}
// Изменяем атрибут id у тега li
add_filter('nav_menu_item_id', 'filter_menu_item_css_id', 10, 4);
function filter_menu_item_css_id($menu_id, $item, $args, $depth) {
	return $args->theme_location === 'header-menu' ? '' : $menu_id;
}
// Изменяем атрибут class у тега li
add_filter('nav_menu_css_class', 'filter_nav_menu_css_classes', 10, 4);
function filter_nav_menu_css_classes($classes, $item, $args, $depth) {
	if ($args->theme_location === 'header-menu') {
		$classes = [
			'menu-node',
			'menu-node--main_lvl_' . ($depth + 1),
		];
		if ($item->current) {
			$classes[] = 'menu-node--active';
		}
	}
	return $classes;
}
// Изменяет класс у вложенного ul
add_filter('nav_menu_submenu_css_class', 'filter_nav_menu_submenu_css_class', 10, 3);
function filter_nav_menu_submenu_css_class($classes, $args, $depth) {
	if ($args->theme_location === 'header-menu') {
		$classes = [
			'menu',
			'menu--dropdown',
			'menu--vertical',
		];
	}
	return $classes;
}
// Добавляем классы ссылкам
add_filter('nav_menu_link_attributes', 'filter_nav_menu_link_attributes', 10, 4);
function filter_nav_menu_link_attributes($atts, $item, $args, $depth) {
	if ($args->theme_location === 'header-menu') {
		$atts['class'] = 'menu-link';
		if ($item->current) {
			$atts['class'] .= ' menu-link--active';
		}
	}
	return $atts;
}

// DEBUG script

function debug_to_console($data) {
	$output = $data;
	if (is_array($output)) {
		$output = implode(',', $output);
	}

	echo "<script>console.log( 'Debug Objects: " . $output . "' );</script>";
}

// END DEBUG script


// Insert content in HTML

function array_to_html($array) {
	foreach ($array as $value) {
		echo $value;
	}
}

// END insert content in HTML

// Get Post by name
function get_post_by_name($post_name) {
	$found_post = [];
	if ($posts = get_posts(array(
		'name' => $post_name,
		'post_type' => 'post',
		'post_status' => 'publish',
		'posts_per_page' => 1,
	))) {
		$found_post = $posts[0];
	}
	return $found_post;

}; // END Get Post by name

/**
 * Обрезка текста (excerpt). Шоткоды вырезаются. Минимальное значение maxchar может быть 22.
 *
 * @param string/array $args Параметры.
 *
 * @return string HTML
 *
 * @ver 2.6.3
 */
function kama_excerpt( $args = '' ){
	global $post;

	if( is_string($args) )
		parse_str( $args, $args );

	$rg = (object) array_merge( array(
		'maxchar'   => 350,   // Макс. количество символов.
		'text'      => '',    // Какой текст обрезать (по умолчанию post_excerpt, если нет post_content.
							  // Если в тексте есть `<!--more-->`, то `maxchar` игнорируется и берется все до <!--more--> вместе с HTML.
		'autop'     => true,  // Заменить переносы строк на <p> и <br> или нет?
		'save_tags' => '',    // Теги, которые нужно оставить в тексте, например '<strong><b><a>'.
		'more_text' => 'Читать дальше...', // Текст ссылки `Читать дальше`.
	), $args );

	$rg = apply_filters( 'kama_excerpt_args', $rg );

	if( ! $rg->text )
		$rg->text = $post->post_excerpt ?: $post->post_content;

	$text = $rg->text;
	$text = preg_replace( '~\[([a-z0-9_-]+)[^\]]*\](?!\().*?\[/\1\]~is', '', $text ); // убираем блочные шорткоды: [foo]some data[/foo]. Учитывает markdown
	$text = preg_replace( '~\[/?[^\]]*\](?!\()~', '', $text ); // убираем шоткоды: [singlepic id=3]. Учитывает markdown
	$text = trim( $text );

	// <!--more-->
	if( strpos( $text, '<!--more-->') ){
		preg_match('/(.*)<!--more-->/s', $text, $mm );

		$text = trim( $mm[1] );

		$text_append = ' <a href="'. get_permalink( $post ) . $post->ID .'">'. $rg->more_text .'</a>';
	}
	// text, excerpt, content
	else {
		$text = trim( strip_tags($text, $rg->save_tags) );

		// Обрезаем
		if( mb_strlen($text) > $rg->maxchar ){
			$text = mb_substr( $text, 0, $rg->maxchar );
			$text = preg_replace( '~(.*)\s[^\s]*$~s', '\\1 ...', $text ); // убираем последнее слово, оно 99% неполное
		}
	}

	// Сохраняем переносы строк. Упрощенный аналог wpautop()
	if( $rg->autop ){
		$text = preg_replace(
			array("/\r/", "/\n{2,}/", "/\n/",   '~</p><br ?/?>~'),
			array('',     '</p><p>',  '<br />', '</p>'),
			$text
		);
	}

	$text = apply_filters( 'kama_excerpt', $text, $rg );

	if( isset($text_append) )
		$text .= $text_append;

	return ( $rg->autop && $text ) ? "<p>$text</p>" : $text;


}
/* Сhangelog:
 * 2.6.3 - Рефакторинг
 * 2.6.2 - Добавил регулярку для удаления блочных шорткодов вида: [foo]some data[/foo]
 * 2.6   - Удалил параметр 'save_format' и заменил его на два параметра 'autop' и 'save_tags'.
 *       - Немного изменил логику кода.
 */

/*  */

// How to Show Parent Category Products Only Without Subcategories

function exclude_product_cat_children($wp_query) {
	if ( isset ( $wp_query->query_vars['product_cat'] ) && $wp_query->is_main_query()) {
		$wp_query->set('tax_query', array(
				array (
					'taxonomy' => 'product_cat',
					'field' => 'slug',
					'terms' => $wp_query->query_vars['product_cat'],
					'include_children' => false
				)
			)
		);
	}
}
add_filter('pre_get_posts', 'exclude_product_cat_children');

// END How to Show Parent Category Products Only Without Subcategories

//add_action( 'sitemap_titles_replace', 'remove_wcpgsk_email_order_table' );
//function remove_wcpgsk_email_order_table() {
//
//	global $wcpgsk;
//	remove_action( 'woocommerce_email_after_order_table', array( $wcpgsk, 'wcpgsk_email_after_order_table' ) );
//
//}

function my_breadcrumb($theme_location = 'sitemap', $separator = '<i class="fas fa-caret-right" style="color:#b7b7b7;"></i> ') {



	$items = wp_get_nav_menu_items($theme_location);
	if($items) {
		_wp_menu_item_classes_by_context( $items ); // Set up the class variables, including current-classes
		$crumbs = array();

		foreach ( $items as $item ) {
			if ( $item->current_item_ancestor || $item->current ) {
				$crumbs[] = "<a href=\"{$item->url}\" title=\"{$item->title}\">{$item->title}</a>";
			}
		}
		echo implode( $separator, $crumbs );
	}
}

/*   Separate child menu     */

/**
 * Returns all child nav_menu_items under a specific parent
 *
 * @param int the parent nav_menu_item ID
 * @param array nav_menu_items
 * @param bool gives all children or direct children only
 * @return array returns filtered array of nav_menu_items
 */
function get_nav_menu_item_children( $parent_id, $nav_menu_items, $depth = true ) {
	$nav_menu_item_list = array();
	foreach ( (array) $nav_menu_items as $nav_menu_item ) {
		if ( $nav_menu_item->menu_item_parent == $parent_id ) {
			$nav_menu_item_list[] = $nav_menu_item;
			if ( $depth ) {
				if ( $children = get_nav_menu_item_children( $nav_menu_item->ID, $nav_menu_items ) )
					$nav_menu_item_list = array_merge( $nav_menu_item_list, $children );
			}
		}
	}
	return $nav_menu_item_list;
}

/*   END Separate child menu     */

/* get_nav_menu_item_children */


function wp_menu_id_by_name( $name ) {
	$menus = get_terms( 'nav_menu' );

	foreach ( $menus as $menu ) {
		if( $name === $menu->name ) {
			return $menu->term_id;
		}
	}
	return false;
}

//echo 'My Special Menu id is ' . wp_menu_id_by_name( 'Main' );

function olLiTree( $tree ) {


	$ulparent=0;
	$liparent=0;
	$depth=1;


	foreach ( $tree as $key=>$item ) {

//		ChromePhp::log('$item->post_parent');
//		ChromePhp::log($item->post_parent);
//		ChromePhp::log($item->post_parent==0);
//		ChromePhp::log('$previtem');
//		ChromePhp::log($previtem);

		ChromePhp::log('$item->title');
		ChromePhp::log($item->title);
		ChromePhp::log('$item->db_id');
		ChromePhp::log($item->db_id);
		ChromePhp::log('$ulparent');
		ChromePhp::log($ulparent);
		ChromePhp::log('$liparent');
		ChromePhp::log($liparent);
		ChromePhp::log('$item->post_parent');
		ChromePhp::log($item->post_parent);
		if($item->post_parent==0||$key==0) {
			if($key==0){
				echo '<ul>';
				$ulparent=$item->db_id;
			}
			if($key!=0) {
				echo "<li id=\"$item->ID\" parent_id=\"$item->post_parent\"  post_id=\"$item->db_id\"><a>";
				if($item->thumbnail_id!=0){
					$image = wp_get_attachment_url($item->thumbnail_id);
					echo "<img width=\"36\" height=\"24\" src=\"{$image}\" class=\"menu-image menu-image-title-after\" alt=\"\">";
				}
				echo "$item->title</a> </li>";
			}
			$liparent=$item->object_id;
		}elseif ($item->post_parent==$liparent) {
			echo '<li>';
			echo '<ul >';
			echo "<a class=\"menu-image-title\" id=\"$item->ID\" parent_id=\"$item->post_parent\"  post_id=\"$item->db_id\"> $item->title </a>";
			$ulparent=$item->db_id;
			$liparent=$item->db_id;
			$depth++;
		}else{
			ChromePhp::log('$item->post_parent==$ulparent');
			ChromePhp::log('debth!!!!!');
			ChromePhp::log($depth);
			echo str_repeat("</ul></li>",$depth-1);
			echo '<li>';
			echo '<ul class="submenu">';
			echo "<a class=\"menu-image-title\" id=\"$item->ID\" parent_id=\"$item->post_parent\"  post_id=\"$item->db_id\"> $item->title </a>";
			$depth=2;
		}

//		elseif ($item->post_parent!=$previtem){
//			str_repeat('</li>',$depth);
//			ChromePhp::log('FLAG');
//			ChromePhp::log($item);
//			$depth=1;
//			olLiTree( $tree );
//
//		}

	}
}

/* END get_nav_menu_item_children */


?>