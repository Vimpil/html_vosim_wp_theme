<?php
/**
 * Template Name: serv1.php
 * Template Post Type: page
 */
?>
<?php get_header();?>
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

  <?php get_template_part('template-parts/navigation/topnav');?>
  <?php get_template_part('template-parts/navigation/leftnav');?>

  	<section class="main">
  		<h1><?php the_title(); ?></h1> 

  		
  		<?php  
    $args = array(
        'post_type'      => 'product',
        'posts_per_page' => 10,
        // 'product_cat'    => 'hoodies'
    );

    $loop = new WP_Query( $args );

    while ( $loop->have_posts() ) : $loop->the_post();
        global $product;
        echo '</p>'.'<p>BEGIN</p>' .'<br /><a href="'.get_permalink().'">' . woocommerce_get_product_thumbnail().' '.get_the_title().'</a>' . '<p>'.wc_display_product_attributes($product).'</p>' . '<p>'.wc_get_price_to_display($product).'</p>'.'<p>MIN</p>' .'<p>'.$product->get_attribute('Минимальное время заказа');
    endwhile;

    wp_reset_query();
?>

  	</section>
  </main>
</body>

<?php get_footer();?>
</div>
</html>