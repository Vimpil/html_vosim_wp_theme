<?php
/**
 * Template Name: sitemap.php
 * Template Post Type: page
 */
?>
<?php get_header(); ?>

<body>

<div id="page" class="main_page">
	<div class="mh-head Sticky header" id="my-header">
		<a href="#menu"><span></span></a>
		Строй Союз
	</div>
	<main>
		<?php
		global $image_list;
		?>

		<?php get_template_part('template-parts/navigation/topnav'); ?>
		<?php get_template_part('template-parts/navigation/leftnav'); ?>

		<section class="main">
			<?php
			if ( function_exists('yoast_breadcrumb') ) {
				yoast_breadcrumb( '<p id="breadcrumbs">','</p>' );
			}
			?>
			<h1><?php the_title(); ?></h1>


			<?php
			if (shortcode_exists('simple-sitemap')) {
			echo do_shortcode('[simple-sitemap show_label="true" types="page,post,product"]');

			}
			?>


		</section>
	</main>
</body>

<?php get_footer(); ?>
</div>
</html>
