<?php
/*
 * Template Name: Html_vosim page-news
 * Template Post Type: page
 */
;?>
<?php get_header();?>

<body>
  <main>

  	<?php

global $image_list;

?>


	<?php get_template_part('template-parts/navigation/topnav');?>
	<?php get_template_part('template-parts/navigation/leftnav');?>

<section class="main">
<h3>Новости</h3>
<?php

// The Query
global $post;
query_posts(array('category_name' => 'news', 'order' => 'ASC'));

// The Loop
while (have_posts()):
	the_post();

	?><h5><?php
	the_title();?></h5
						<p><?php the_date();?></p>
						<?php
	echo $content = wpautop($post->post_content);
	// echo get_the_content();
endwhile;

// Reset Query
wp_reset_query();

?>
</section>
  </main>
</body>
<?php get_footer();?>
</div>
</html>