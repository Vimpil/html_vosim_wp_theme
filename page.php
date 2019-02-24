<?php
/*
* Template Name: Html_vosim_page
* Template Post Type: post, page, product
*/

get_header();?>
<body>

  <main>

	<?php get_template_part('template-parts/navigation/topnav');?>
    <?php get_template_part('template-parts/navigation/leftnav');?>
	
	
		
		<section class="main">
			
			<?php
			// Start the loop.
			while (have_posts()):
			the_post();

			// Include the page content template.
			get_template_part('template-parts/content', 'page');
			
			// End of the loop.
			endwhile;
			?>

		</section>


  </main>

</body>

<?php get_footer();?>
