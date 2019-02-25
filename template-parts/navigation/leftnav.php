
 <?php

global $images_folder;
global $temp_path;
?>
 <aside class="left_nav">

       <?php
wp_nav_menu(array());
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

