
 <?php

global $images_folder;
global $temp_path;
?>
 <aside class="left_nav">

     <!-- GET category by name-->

     <?php

	 $product_categories = get_terms( 'product_cat' );
	 foreach ($product_categories as $termkey=>$termvalue) {
		 if($termvalue->name==get_the_title()){
			 $current_cat_id= $termvalue->term_id;
		 }
	 }
	 ?>
     <!--END GET category by name-->


     <?php
//       $theme_locations = get_nav_menu_locations();
//       ChromePhp::log($theme_locations);
//       echo 'theme locations';

     $args = array();
     $nav_menu_items=wp_get_nav_menu_items( 2, $args );
     $itm_chldrn=get_nav_menu_item_children( 1550, $nav_menu_items, $depth = true );
     leftnav_menu_gen($itm_chldrn);

?>
      <div class="promote">
        <?php

echo get_post_field('post_content', 1347);
?>
</div>
<div class="news">
<div class="news_head">
<div class="news_title">Новости</div>
<a class="archieve" href="/index.php/all_news/">Архив</a>
</div>
<div class="news_list">
<div class="n_block">

<?php

// The Query
global $post;
query_posts(array('category_name' => 'news', 'order' => 'ASC', 'posts_per_page'         => '2',));
// The Loop
while (have_posts()):
	the_post();
	?>

	<span class="date"><?php the_date('Y/m/d');?></span>
	  <div class="news_link"><a href="<?php echo get_permalink($post); ?>"><?php
	the_title();?></a></div>
	
  <?php $content = wpautop($post->post_content);
// echo wp_trim_words($content,18);
  echo kama_excerpt( array('maxchar'=>63) );
// echo get_the_content();
endwhile;

// Reset Query
wp_reset_query();

?>

</div>
</div>
</div>
</aside>

