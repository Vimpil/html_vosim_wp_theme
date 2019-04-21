<div id="page" class="main_page">
	<div class="mh-head Sticky header" id="my-header">
		<a href="#menu"><span></span></a>
		Строй Союз
	</div>
	<?php
	/**
	 * Template Name: serv1.php
	 * Template Post Type: page
	 */
	?>
	<?php get_header(); ?>
    <body>
    <main>
	    <?php get_template_part('template-parts/navigation/topnav');?>
	    <?php get_template_part('template-parts/navigation/leftnav');?>
        <section class="main">

	<?php
	global $query_string;
	$query_args = explode("&", $query_string);
	$search_query = array(
    );

	foreach($query_args as $key => $string) {
		$query_split = explode("=", $string);
		if($query_string) {
			$search_query[ $query_split[0] ] = urldecode( $query_split[1] );
		}
	} // foreach

	$the_query = new WP_Query($search_query);
	if ( $the_query->have_posts() ) :
		?>
		<!-- the loop -->

		<ul>
			<?php while ($the_query->have_posts()) : $the_query->the_post(); ?>
<!--				<li>-->
<!--					<a href="--><?php //the_permalink(); ?><!--">--><?php //the_title(); ?><!--</a>-->
<!--				</li>-->
                <?php

				global $product;

				if ($product->get_attribute('скидка') == 'true') {
					echo '<div class="services booking_box discount">';
				} else {
					echo '<div class="services booking_box">';
				}

				echo '<div class="product_image">';

				echo woocommerce_get_product_thumbnail();

				echo '</div>';

				echo '<div class="descr">';

				echo '<div class="category">';

				echo '<a href="' . get_permalink() . '">' . get_the_title() . '</a>';

				echo '</div>';

				echo '<span>' . wc_display_product_attributes($product) . '</span>';

				echo '<span class="order_time"' . '</span>';

				echo '</div>';

				echo '<div class="functions">';

				echo '<a href="' . get_permalink() . '">' . '<div class="price">' . "от ".number_format($product->get_price(),0," ", " ")." ";

				echo '<i class="fas fa-ruble-sign">' . "/час" . '</i>';

				echo '</div>' . '</a>';

				echo '</div>';

				echo '</div>';
//

                ?>

			<?php endwhile; ?>
		</ul>
		<!-- end of the loop -->

		<?php wp_reset_postdata(); ?>

	<?php else : ?>
		<p><?php _e( 'Извините, нет товара, который бы соответствовал данному критерию.' ); ?></p>
	<?php endif; ?>

        </section>
    </main>

    </body>
<?php get_footer(); ?>