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
	<?php
	global $query_string;
	$query_args = explode("&", $query_string);
	$search_query = array();

	foreach($query_args as $key => $string) {
		$query_split = explode("=", $string);
		$search_query[$query_split[0]] = urldecode($query_split[1]);
	} // foreach

	$the_query = new WP_Query($search_query);
	if ( $the_query->have_posts() ) :
		?>
		<!-- the loop -->

		<ul>
			<?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
				<li>
					<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
				</li>
			<?php endwhile; ?>
		</ul>
		<!-- end of the loop -->

		<?php wp_reset_postdata(); ?>

	<?php else : ?>
		<p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
	<?php endif; ?>

	<?php get_sidebar(); ?>
<?php get_footer(); ?>