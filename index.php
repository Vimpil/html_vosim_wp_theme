<?php
/*
Template Name: Html_vosim
 */
get_header();
?>
<?php
include 'template-parts/php_logger/ChromePhp.php';
?>
<body>
  <main>
    <?php
global $images_folder;
if (shortcode_exists('button')) {
	// The [gallery] short code exists.
}
?>

<?php

echo '<p>222222222223333333333333344444444444444</p>';
echo $get_content = do_shortcode(get_post_by_name('main_slider')->post_content);
echo '<p>content!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</p>';

?>

    <h2>Test MEnu</h2>
    <!-- POSTS CODE -->
    <?php if (have_posts()): ?>
    <?php if (is_home() && !is_front_page()): ?>

    <header>
      <h1 class="page-title screen-reader-text"><?php single_post_title();?></h1>
    </header>
    
    <?php endif;?>

    <?php echo '<p>have posts</p>'?>
    <?php

// Start the loop.
echo 'posts';
while (have_posts()):
	the_post();
	/*
		        * Include the Post-Format-specific template for the content.
		        * If you want to override this in a child theme, then include a file
		        * called content-___.php (where ___ is the Post Format name) and that will be used instead.
	*/
	get_template_part('template-parts/content', get_post_format());
	// End the loop.
endwhile;
// If no content, include the "No posts found" template.
else:
	get_template_part('template-parts/content', 'none');
endif;
echo 'endpost';
?>
    <!-- END POSTS CODE -->
    <?php echo 'post' ?>
    <?php
$get_content = get_post_by_name('main_slider');
ChromePhp::log($get_content);
ChromePhp::log('HeLLO');
echo the_content(get_post_by_name('main_slider'));
?>

<?php
echo '[button]';
echo do_shortcode('[button]');
?>

 <?php
echo 'wwwwwp_nav_menu';

$frontpage_id = get_option('page_on_front');

ChromePhp::log($frontpage_id);

ChromePhp::log('$frontpage_id');

wp_nav_menu(array(
	'exclude' => intval($frontpage_id, 2),
	'theme_location' => 'primary-menu',
));

echo 'wwwwwp_nav_menu';

wp_nav_menu(array(
	'theme_location' => 'Main_menu',
	'exclude' => '0,1,2,3,4,5,6',
));

echo 'wp_nav_menu';

wp_nav_menu([
	'theme_location' => 'Main_menu',

]);

echo 'wp_nav_menu';
?>

<?php
ChromePhp::log('locations');

ChromePhp::log($locations = get_nav_menu_locations());

foreach ($locations as $location) {
	ChromePhp::log('hey');
}

ChromePhp::log('locations');
ChromePhp::log('get_nav_menu_locations');
$locs = get_nav_menu_locations();

ChromePhp::log($locs);

ChromePhp::log('get_nav_menu_locations');

/* Выведет:
Array
(
[toolbar] => 694
)
 */

?>

    <?php
wp_nav_menu([
	'theme_location' => 'header-menu',
]);
?>
    <?php
wp_nav_menu(
	array(
		'theme_location' => 'header-menu',
		'link_before' => '<span class="screen-reader-text">',
		'link_after' => '</span>',
	)
);
?>
    <?php
global $image_list;
global $found_post;
$found_post = get_post_by_name("main_slider");
$galleries = pw_show_gallery_image_urls($found_post);
/*debug_to_console(gettype($galleries));*/
echo apply_filters('the_content', $image_list);
/*array_to_html($galleries);*/
ChromePhp::log("galleries");
?>
    <?php get_template_part('template-parts/navigation/topnav');?>
    <?php get_template_part('template-parts/navigation/leftnav');?>
    <section class="main">
      <!-- {%- include sitemap.html -%} -->
      <?php get_template_part('_includes/slider');?>
      <h3>Наша спецтехника</h3>
      <?php get_template_part('_includes/gallerymain');?>
      <h3>Преимущества</h3>
      <div class="advantages">
        <div class="box">
          <div class="wrap"><img src="<?php echo $images_folder ?>advant.png" alt="car"></div>
          <div class="description">Обновляемый парк техники</div>
        </div>
        <div class="box">
          <div class="wrap"><img src="<?php echo $images_folder ?>advant2.png" alt=""></div>
          <div class="description">Опытные водители</div>
        </div>
        <div class="box">
          <div class="wrap"><img src="<?php echo $images_folder ?>advant3.png" alt=""></div>
          <div class="description">Прием заказов круглые сутки</div>
        </div>
        <div class="box">
          <div class="wrap"><img src="<?php echo $images_folder ?>advant4.png" alt=""></div>
          <div class="description">Любой вид расчета (наличный, безналичный)</div>
        </div>
      </div>
      <h4>Аренда спецтехники от компании «СтройСоюз»</h4>
      <p>Покупка техники для выполнения строительных и ремонтных работ часто невозможна из-за высокой стоимости. Лучшим решением в этом случае является аренда спецтехники на выгодных условиях, например, в компании «СтройСоюз».</p>
      <p>Сегодня на рынке можно взять в аренду любую технику — от катка до буровой установки. Аренда техники — это выгодная сделка, которая применима в разных сферах: в сельском хозяйстве, в промышленности, при строительстве дорог, уборке мусора,
      перевозке сыпучих материалов. Хорошие машины имеют высокую стоимость, и хранить их в гараже предприятия ради единичной работы невыгодно. Поэтому для выполнения определенного заказа выгоднее заключить договор аренды спецтехники.</p>
      <p>Наша компания имеет современную техническую базу. Все машины находятся в хорошем состоянии и своевременно проходят осмотры и ремонты. Автомобильный парк постоянно пополняется новыми моделями для удовлетворения потребностей клиента.
      Сотрудники, имеющие большой опыт работы, готовы предоставить консультации и полный комплекс услуг по подбору и аренде спецтехники.</p>
      <p>Компания работает на территории Новгородской области и Великого Новгорода. Также специалисты готовы выехать на объекты, находящиеся за пределами области.</p>
      <h3>Мы свяжемся с вами!</h3>
      <div class="call_back">
        <div class="title">Оставьте свои контактные данные в заявке</div>
        <div class="back">
          <div class="form">
            <div class="form-line name">
              <input placeholder="Ваше имя" type="text" id="name" name="name">
            </div>
            <div class="form-line ph_or_email">
              <input placeholder="Ваш телефон или e-mail" type="text" id="ph_or_email">
            </div>
            <div class="form-line textarea">
              <textarea placeholder="Сообщение..." type="text"></textarea>
            </div>
            <button class="yellow_button" id="live_a_request" type="button">Оставить заявку</button>
          </div>
        </div>
      </div>
    </section>
  </main>
</body>
<?php get_footer();?>
</div>
</html>
<!--Start Related Posts-->
<?php
// Build our basic custom query arguments
$custom_query_args = array(
	'posts_per_page' => 8, // Number of related posts to display
	'post__not_in' => array($post->ID), // Ensure that the current post is not displayed
	'orderby' => 'rand', // Randomize the results
);
// Initiate the custom query
$custom_query = new WP_Query($custom_query_args);
// Run the loop and output data for the results
if ($custom_query->have_posts()): ?>
<?php while ($custom_query->have_posts()): $custom_query->the_post();
	$get_content = get_post_by_name('main_slider')->post_content;
	?>
																																																																																									<?php if (has_post_thumbnail()) {?>
																																																																																									<a href="<?php the_permalink();?>"> <?php the_post_thumbnail('medium');?></a>
																																																																																									<?php }?>
																																																																																									<a href="<?php the_permalink();?>"><b><?php the_title();?></b></a>
																																																																																									<?php endwhile;?>

<?php else:

?>

<?php echo the_content(get_post_by_name('main_slider')->post_content); ?>

	<?php endif;
// Reset postdata
wp_reset_postdata();
?>
<!--End Related Posts-->