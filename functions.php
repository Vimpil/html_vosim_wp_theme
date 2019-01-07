<?php

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

add_action('after_setup_theme', function () {
	register_nav_menus([
		'header-menu' => 'Верхняя область',
		'footer-menu' => 'Нижняя область',
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

// Get Images from gallery

function pw_show_gallery_image_urls($content) {
	global $post;
	global $image_list;

	// Only do this on singular items
	/*if (!is_singular()) {
		return $content;
	}*/

	// Make sure the post has a gallery in it
	/*if (!has_shortcode($post->post_content, 'gallery')) {
		debug_to_console("it doesnt have");
		return $content;
	}*/

	// Retrieve all galleries of this post
	$galleries = get_post_galleries_images($post->post_content);

	$image_list = '<ul>';

	// Loop through all galleries found

	// debug_to_console("insider");

	foreach ($galleries as $gallery) {
		// debug_to_console("gallery");
		foreach ($gallery as $image) {
		}
	}

	foreach ($galleries as $gallery) {

		// Loop through each image in each gallery
		foreach ($gallery as $image) {
			$image_list .= '<li>' . $image . '</li>';

		}

	}

	$image_list .= '</ul>';

	// Append our image list to the content of our post
	//$content .= $image_list;

	//return $content;
	return $image_list;

}
add_filter('the_content', 'pw_show_gallery_image_urls');
// END Get Images from gallery

// Insert content in HTML

function array_to_html($array) {
	foreach ($array as $value) {
		echo $value;
	}
}

// END insert content in HTML

// Get Post by name

function get_post_by_name($post_name) {

	if ($posts = get_posts(array(
		'name' => $post_name,
		'post_type' => 'post',
		'post_status' => 'publish',
		'posts_per_page' => 1,
	))) {
		$found_post = $posts[0];
	}
	return $found_post;

}

// END Get Post by name

?>
