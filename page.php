<?php
/*
Template Name: Html_vosim_page
 */

get_header();?>
<body>
  <main>
<?php get_template_part('template-parts/navigation/topnav');?>
    <?php get_template_part('template-parts/navigation/leftnav');?>
<div id="primary" class="content-area">
	<main id="main" class="site-main" role="main">
		<?php
// Start the loop.
while (have_posts()):
	the_post();

	// Include the page content template.
	get_template_part('template-parts/content', 'page');

	// If comments are open or we have at least one comment, load up the comment template.
	if (comments_open() || get_comments_number()) {
		comments_template();
	}

	// End of the loop.
endwhile;
?>

	</main><!-- .site-main -->


</div><!-- .content-area -->

  </main>

</body>

<?php get_footer();?>
