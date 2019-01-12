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

/*
Displays the optional excerpt.

Wraps the excerpt in a div element. Create your own twentysixteen_excerpt() function to override in a child theme.
 */

function twentysixteen_excerpt($class = 'entry-summary') {
	$class = esc_attr($class);

	if (has_excerpt() || is_search()):
	?>
			<div class="<?php echo $class; ?>">
				<?php the_excerpt();?>
			</div><!-- .<?php echo $class; ?> -->
			<?php
endif;
}

/**/

/*
Displays an optional post thumbnail.

Wraps the post thumbnail in an anchor element on index views, or a div element when on single views. Create your own twentysixteen_post_thumbnail() function to override in a child theme.
 */

function twentysixteen_post_thumbnail() {
	if (post_password_required() || is_attachment() || !has_post_thumbnail()) {
		return;
	}

	if (is_singular()):
	?>

		<div class="post-thumbnail">
			<?php the_post_thumbnail();?>
	</div><!-- .post-thumbnail -->

	<?php else: ?>

	<a class="post-thumbnail" href="<?php the_permalink();?>" aria-hidden="true">
		<?php the_post_thumbnail('post-thumbnail', array('alt' => the_title_attribute('echo=0')));?>
	</a>

	<?php
endif; // End is_singular()
}

/**/

/*
Prints HTML with date information for current post.

Create your own twentysixteen_entry_date() function to override in a child theme.

 */
function twentysixteen_entry_date() {
	$time_string = '<time class="entry-date published updated" datetime="%1$s">%2$s</time>';

	if (get_the_time('U') !== get_the_modified_time('U')) {
		$time_string = '<time class="entry-date published" datetime="%1$s">%2$s</time><time class="updated" datetime="%3$s">%4$s</time>';
	}

	$time_string = sprintf(
		$time_string,
		esc_attr(get_the_date('c')),
		get_the_date(),
		esc_attr(get_the_modified_date('c')),
		get_the_modified_date()
	);

	printf(
		'<span class="posted-on"><span class="screen-reader-text">%1$s </span><a href="%2$s" rel="bookmark">%3$s</a></span>',
		_x('Posted on', 'Used before publish date.', 'twentysixteen'),
		esc_url(get_permalink()),
		$time_string
	);
}
/**/

/*
Prints HTML with category and tags for current post.

Create your own twentysixteen_entry_taxonomies() function to override in a child theme.
 */

function twentysixteen_categorized_blog() {
	if (false === ($all_the_cool_cats = get_transient('twentysixteen_categories'))) {
		// Create an array of all the categories that are attached to posts.
		$all_the_cool_cats = get_categories(
			array(
				'fields' => 'ids',
				// We only need to know if there is more than one category.
				'number' => 2,
			)
		);

		// Count the number of categories that are attached to the posts.
		$all_the_cool_cats = count($all_the_cool_cats);

		set_transient('twentysixteen_categories', $all_the_cool_cats);
	}

	if ($all_the_cool_cats > 1 || is_preview()) {
		// This blog has more than 1 category so twentysixteen_categorized_blog should return true.
		return true;
	} else {
		// This blog has only 1 category so twentysixteen_categorized_blog should return false.
		return false;
	}
}

/**/

/*
Prints HTML with category and tags for current post.

Create your own twentysixteen_entry_taxonomies() function to override in a child theme.
 */
function twentysixteen_entry_taxonomies() {
	$categories_list = get_the_category_list(_x(', ', 'Used between list items, there is a space after the comma.', 'twentysixteen'));
	if ($categories_list && twentysixteen_categorized_blog()) {
		printf(
			'<span class="cat-links"><span class="screen-reader-text">%1$s </span>%2$s</span>',
			_x('Categories', 'Used before category names.', 'twentysixteen'),
			$categories_list
		);
	}

	$tags_list = get_the_tag_list('', _x(', ', 'Used between list items, there is a space after the comma.', 'twentysixteen'));
	if ($tags_list && !is_wp_error($tags_list)) {
		printf(
			'<span class="tags-links"><span class="screen-reader-text">%1$s </span>%2$s</span>',
			_x('Tags', 'Used before tag names.', 'twentysixteen'),
			$tags_list
		);
	}
}
/**/

/*
Displays an optional post thumbnail.

Wraps the post thumbnail in an anchor element on index views, or a div element when on single views. Create your own twentysixteen_post_thumbnail() function to override in a child theme.

 */

function twentysixteen_entry_meta() {
	if ('post' === get_post_type()) {
		$author_avatar_size = apply_filters('twentysixteen_author_avatar_size', 49);
		printf(
			'<span class="byline"><span class="author vcard">%1$s<span class="screen-reader-text">%2$s </span> <a class="url fn n" href="%3$s">%4$s</a></span></span>',
			get_avatar(get_the_author_meta('user_email'), $author_avatar_size),
			_x('Author', 'Used before post author name.', 'twentysixteen'),
			esc_url(get_author_posts_url(get_the_author_meta('ID'))),
			get_the_author()
		);
	}

	if (in_array(get_post_type(), array('post', 'attachment'))) {
		twentysixteen_entry_date();
	}

	$format = get_post_format();
	if (current_theme_supports('post-formats', $format)) {
		printf(
			'<span class="entry-format">%1$s<a href="%2$s">%3$s</a></span>',
			sprintf('<span class="screen-reader-text">%s </span>', _x('Format', 'Used before post format.', 'twentysixteen')),
			esc_url(get_post_format_link($format)),
			get_post_format_string($format)
		);
	}

	if ('post' === get_post_type()) {
		twentysixteen_entry_taxonomies();
	}

	if (!is_singular() && !post_password_required() && (comments_open() || get_comments_number())) {
		echo '<span class="comments-link">';
		comments_popup_link(sprintf(__('Leave a comment<span class="screen-reader-text"> on %s</span>', 'twentysixteen'), get_the_title()));
		echo '</span>';
	}
}

/**/

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
