<?php
/**
 * The template part for displaying single posts
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

	<span class="date">
		<?php the_date('Y/m/d');?>
	</span>

	<div class="news_link">
		<h5><?php the_title();?></h5>
	</div>

	<?php echo get_the_content(); ?>