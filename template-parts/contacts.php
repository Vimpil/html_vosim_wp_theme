
<div id="page" class="main_page">
	<div class="mh-head Sticky header" id="my-header">
		<a href="#menu"><span></span></a>
		Строй Союз
	</div>
<?php
/**
 * Template Name: contacts.php
 * Template Post Type: page
 */
?>

<?php get_header(); ?>
<?php 
	include get_stylesheet_directory().'/template-parts/php_logger/ChromePhp.php';
?>
<body>

	<main>
		<?php
		global $image_list;	
		?>

		<?php get_template_part('template-parts/navigation/topnav'); ?>
		<?php get_template_part('template-parts/navigation/leftnav'); ?>

		<section class="main">

			<div class="breadcrumb">
                    <?php my_breadcrumb('sitemap'); ?>
            </div>

			<h1><?php the_title(); ?></h1>





		</section>
	</main>
</body>

<?php get_footer(); ?>
</div>
</html>
