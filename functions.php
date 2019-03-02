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

add_action('after_setup_theme', function () {
	register_nav_menus([
		'header-menu' => 'Top zone',
		'footer-menu' => 'Bottom zone',
		'footer-menu' => 'Bottom zone 2',
	]);
});

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

?>

