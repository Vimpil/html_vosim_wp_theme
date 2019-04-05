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
//global $temp_path;
//$temp_path2=$temp_path.'/template-parts/php_logger/ChromePhp.php';
//echo 'eccccho<br/>';
//echo '/var/www/html/wp-content/themes/html_vosim_wp_theme/template-parts/php_logger/ChromePhp.php';
//echo '<br/>';
//echo $temp_path2;
include get_stylesheet_directory().'/template-parts/php_logger/ChromePhp.php';

?>

<body>


    <main>
        <?php
        global $image_list;
        ?>

        <?php get_template_part('template-parts/navigation/topnav'); ?>
        <?php get_template_part('template-parts/navigation/leftnav'); ?>

        <section class="main">
	        <?php
	        if ( function_exists('yoast_breadcrumb') ) {
		        yoast_breadcrumb( '<p id="breadcrumbs">','</p>' );
	        }
	        ?>
            <h1><?php the_title(); ?></h1>

            <?php
            $args = array(
	            'posts_per_page' => 10,
	            'tax_query' => array(
		            'relation' => 'AND',
		            array(
			            'post_type' => 'product',
			            'taxonomy' => 'product_cat',

			            'terms' => '19',
			            'include_children' => false,
		            ),
	            ),
	            'orderby' => 'menu_order',
	            'order' => 'ASC',

            );

            $loop = new WP_Query($args);

            while ($loop->have_posts()) : $loop->the_post();

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
//        echo '</p>'.'<p>BEGIN</p>' .'<br /><a href="'.get_permalink().'">' . woocommerce_get_product_thumbnail().' '.get_the_title().'</a>' . '<p>'.wc_display_product_attributes($product).'</p>' . '<p>'.wc_get_price_to_display($product).'</p>'.'<p>MIN</p>' .'<p>'.$product->get_attribute('Минимальное время заказа');
            endwhile;
            wp_reset_query();
            ?>

            <p>
                Спецтехника в аренду является достойной альтернативой приобретения дорогостоящих машин, которые
                востребованы организациями и частным лицам для разовых работ. Необходимость в услуге возникает при
                строительстве зданий и возведении различных конструкций, сооружении систем водоснабжения и канализации,
                прокладке кабелей, уборке мусора, благоустройстве территорий, переезде и прочих работах.
            </p>
            <p>
                В Великом Новгороде к вашим услугам спецтехника компании «СтройСоюз». Обеспечим все виды работ,
                связанные с транспортировкой, погрузкой и разгрузкой, подъемом на различную высоту и перемещением
                грузов. Всегда в наличии и готовы к выезду на объект и за его пределами:
            </p>
            <ul>
                <li>самосвалы;</li>
                <li>шаланды;</li>
                <li>экскаваторы-погрузчики;</li>
                <li>манипуляторы;</li>
                <li>автокраны.</li>
            </ul>
            <h4>
                Преимущества заказа услуги в компании «СтройСоюз»:
            </h4>
            <div class="advantages services">
                <div class="box">
                    <div class="wrap">
                        <img src="<?php echo $images_folder; ?>rent_adv.png" alt="">
                    </div>
                    <div class="description">Есть выбор машин и всегда в наличии по несколько единиц спецтехники.
                    </div>
                </div>
                <div class="box">
                    <div class="wrap">
                        <img src="<?php echo $images_folder; ?>rent_adv2.png" alt="">
                    </div>
                    <div class="description">Предоставление комплексных услуг, это значит, что при необходимости
                        транспортировки мы произведем погрузку-разгрузку.
                    </div>
                </div>
                <div class="box">
                    <div class="wrap"><img src="<?php echo $images_folder; ?>rent_adv3.png" alt="">
                    </div>
                    <div class="description">Водители-операторы гарантируют качество манипулирования на различных
                        объектах и сохранность любого груза.
                    </div>
                </div>
                <div class="box">
                    <div class="wrap">
                        <img src="<?php echo $images_folder; ?>rent_adv4.png" alt="">
                    </div>
                    <div class="description">Оперативная подача спецтехники — в течение 2-х часов.
                    </div>
                </div>
                <div class="box">
                    <div class="wrap"><img src="<?php echo $images_folder; ?>rent_adv5.png" alt=""></div>
                    <div class="description">Выбор форм расчета — картами, банковским переводом, наличными по факту
                        оказания услуги.
                    </div>
                </div>
            </div>

            <h4>
                Работаем по области и в регионах:
            </h4>

            <p>Компания «СтройСоюз» предлагает организациям и частным лицам услуги спецтехники. Работаем во всех районах
                Великого Новгорода, выезжаем в область и другие регионы.</p>

            <div class="map-responsive" id="google-map">

                <script>
                    // new google.maps.LatLng(37.41817,-122.13132),
                    // new google.maps.LatLng(37.30752,-122.06128),
                    // new google.maps.LatLng(37.24045,-121.99674),
                    // new google.maps.LatLng(37.21489,-121.86027),
                    // new google.maps.LatLng(37.23744,-121.74852),
                    // new google.maps.LatLng(37.35311,-121.79392),
                    // new google.maps.LatLng(37.44461,-121.89426),
                    // new google.maps.LatLng(37.43173,-121.94357),
                    // new google.maps.LatLng(37.4123,-121.95992),


                    // This example creates a simple polygon representing the Bermuda Triangle.
                        // When the user clicks on the polygon an info window opens, showing
                        // information about the polygon's coordinates.

                        var map;
                        var infoWindow;

                        function initMap() {
                            map = new google.maps.Map(document.getElementById('google-map'), {
                                zoom: 10,
                                center: {lat: 37.338, lng: -121.941},
                                mapTypeId: 'terrain'
                            });

                            // Define the LatLng coordinates for the polygon.
                            var triangleCoords = [
                                {lat: 37.41817, lng: -122.13132},
                                {lat: 37.30752, lng: -122.06128},
                                {lat: 37.24045, lng: -121.99674},
                                {lat: 37.21489, lng: -121.86027},
                                {lat: 37.23744, lng: -121.74852},
                                {lat: 37.35311, lng: -121.79392},
                                {lat: 37.44461, lng: -121.89426},
                                {lat: 37.43173, lng: -121.94357},
                                {lat: 37.4123, lng: -121.95992}
                            ];

                            // Construct the polygon.
                            var bermudaTriangle = new google.maps.Polygon({
                                paths: triangleCoords,
                                strokeColor: '#FF0000',
                                strokeOpacity: 0.8,
                                strokeWeight: 3,
                                fillColor: '#FF0000',
                                fillOpacity: 0.35
                            });
                            bermudaTriangle.setMap(map);

                            // Add a listener for the click event.
                            bermudaTriangle.addListener('click', showArrays);

                            infoWindow = new google.maps.InfoWindow;
                        }

                        /** @this {google.maps.Polygon} */
                        function showArrays(event) {
                            // Since this polygon has only one path, we can call getPath() to return the
                            // MVCArray of LatLngs.
                            var vertices = this.getPath();

                            var contentString = '<b>Bermuda Triangle polygon</b><br>' +
                                'Clicked location: <br>' + event.latLng.lat() + ',' + event.latLng.lng() +
                                '<br>';

                            // Iterate over the vertices.
                            for (var i =0; i < vertices.getLength(); i++) {
                                var xy = vertices.getAt(i);
                                contentString += '<br>' + 'Coordinate ' + i + ':<br>' + xy.lat() + ',' +
                                    xy.lng();
                            }

                            // Replace the info window's content and position.
                            infoWindow.setContent(contentString);
                            infoWindow.setPosition(event.latLng);

                            infoWindow.open(map);
                        }


                </script>

                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDkQXjDozB0D9Bw-0ccZHELiuILY9_sGyY&callback=initMap"
                        async defer></script>

            </div>



        </section>
    </main>
</body>

<?php get_footer(); ?>
</div>
</html>