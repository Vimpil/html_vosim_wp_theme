<div id="page" class="main_page">
    <div class="mh-head Sticky header" id="my-header">
        <a href="#menu"><span></span></a>
        Строй Союз
    </div>
    <?php
/**
 * Template Name: elements.php
 * Template Post Type: page,product
 */
?>

    <?php get_header();?>
    <?php include get_stylesheet_directory() . '/template-parts/php_logger/ChromePhp.php';?>

    <body>
        <main>
            <?php
global $image_list;
global $images_folder
?>

            <?php get_template_part('template-parts/navigation/topnav');?>
            <?php get_template_part('template-parts/navigation/leftnav');?>
            <section class="main">

                <h1><?php the_title();?></h1>

                <h1>
                    Аренда спецтехники (H1)
                </h1>
                <p>Спецтехника в аренду является достойной альтернативой приобретения дорогостоящих машин, которые
                    востребованы организациями и частным лицам для разовых работ. Необходимость в услуге возникает при
                    строительстве зданий и возведении различных конструкций, сооружении систем водоснабжения и
                    канализации, прокладке кабелей, уборке мусора, благоустройстве территорий, переезде и прочих
                    работах.</p>
                <p>В Великом Новгороде к вашим услугам спецтехника компании «СтройСоюз». Обеспечим все виды работ,
                    связанные с транспортировкой, погрузкой и разгрузкой, подъемом на различную высоту и перемещением
                    грузов. Всегда в наличии и готовы к выезду на объект и за его пределами:</p>
                <ul>
                    <li>самосвалы прокладке кабелей, уборке мусора, благоустройстве территорийс транспортировкой,
                        погрузкой и разгрузкой, подъемом на различную высоту и перемещением грузов. Всегда в наличии;
                    </li>
                    <li>шаланды:</li>
                    <ul>
                        <li>открытые (без навеса);</li>
                        <li>закрытые (с навесом);</li>
                    </ul>
                    <li>экскаваторы-погрузчики;</li>
                    <li>манипуляторы;</li>
                    <li>автокраны.</li>
                </ul>
                <h2>Наша спецтехника (H2)</h2>
                <p>Необходимость в услуге возникает при строительстве зданий и возведении различных конструкций,
                    сооружении систем водоснабжения и канализации, прокладке кабелей, уборке мусора, благоустройстве
                    территорий, переезде и прочих работах. В Великом Новгороде к вашим услугам спецтехника компании
                    «СтройСоюз». Обеспечим все виды работ, связанные с транспортировкой, погрузкой и разгрузкой,
                    подъемом на различную высоту и перемещением грузов. Всегда в наличии и готовы к выезду на объект и
                    за его пределами:</p>
                <h3>Преимущества (H3)</h3>
                <p>Возникает при строительстве зданий и возведении различных конструкций, сооружении систем
                    водоснабжения и канализации, прокладке кабелей, уборке мусора, благоустройстве территорий, переезде
                    и прочих работах.</p>
                <p>В Великом Новгороде к вашим услугам спецтехника компании «СтройСоюз». Обеспечим все виды работ,
                    связанные с транспортировкой, погрузкой и разгрузкой, подъемом на различную высоту и перемещением
                    грузов. Всегда в наличии и готовы к выезду на объект и за его пределами:</p>
                <h4>Преимущества заказа услуги в компании «СтройСоюз»: (Н4)</h4>
                <ol>
                    <li>Есть выбор машин и всегда в наличии по несколько единиц спецтехники.</li>
                    <li>Предоставление комплексных услуг, это значит, что при необходимости транспортировки мы
                        произведем погрузку-разгрузку.</li>
                    <li>Водители-операторы гарантируют качество манипулирования на различных объектах и сохранность
                        любого груза.</li>
                    <li>Оперативная подача спецтехники — в течение 2-х часов.</li>
                </ol>
                <p>Выбор форм расчета — картами, банковским переводом, наличными по факту оказания услуги.</p>
                <h4>Работаем по области и в регионах: (Н4)</h4>
                <p>Компания «СтройСоюз» предлагает организациям и частным лицам услуги спецтехники. Работаем во всех
                    районах Великого Новгорода, выезжаем в область и другие регионы.
                </p>
                <h3>Галерея(Н3)</h3>



                <?php

$args = array(
    'posts_per_page' => 10,
    'tax_query' => array(
        'relation' => 'AND',
        array(
            'post_type' => 'product',
            'taxonomy' => 'product_cat',

            'terms' => 27,
            'include_children' => false,
        ),
    ),
    'orderby' => 'menu_order',
    'order' => 'ASC',

);
$gal = [];
$loop = new WP_Query($args);

while ($loop->have_posts()): $loop->the_post();

    global $product;

    $prod_id = $product->get_id();

    if (get_post_galleries_images($prod_id)) {

        array_push($gal, get_post_galleries_images($prod_id));
    }

endwhile;
//     wp_reset_query();
// $gal=get_post_galleries_images(1456);
ChromePhp::log('get_post_galleries_images');
ChromePhp::log(get_post_galleries_images(1456));
ChromePhp::log($gal);
ChromePhp::log('get_post_galleries_images');
// Get post image gallery

$keys3 = array_keys($gal);
$arraySize3 = count($gal);
$elem_per_page = 9;
$photo_count = 0;

for ($k = 0; $k < $arraySize3; $k++) {

    $keys = array_keys($gal[$k]);
    $arraySize = count($gal[$k]);

// Loop through all galleries found
    for ($i = 0; $i < $arraySize; $i++) {
        $keys2 = array_keys($gal[$k][$i]);
        $arraySize2 = count($gal[$k][$i]);

        if ($i == 0 && $k == 0) {
            echo '<div class="elements_gal">';
            echo '<div class="container">';
            echo '<div class="gal_boxes">';
            echo '<div class="flexslider">';
            echo '<ul class="slides">';
            echo '<li>';
        } elseif (($i + 1) % 10 == 0) {
            echo '<li>';
        }

        echo '<div class="elem_box no_discount_proj">';
        ChromePhp::log('echo <div class="elem_box no_discount_proj>');
        for ($j = 0; $j < $arraySize2; $j++) {

            if ($j == 0) {

                echo '<div class="gallery-group">';
                echo '<div class="gallery-link" value="' . ($arraySize2 - 1) . '">';
                echo '<a class="gallery-item" href="#">';
                echo '<img src="' . $gal[$k][$i][$j] . '" alt="">';
                echo '<span>Самосвал на базе авто ГАЗ</span>';
                echo '</a>';
                echo '</div>';
                echo '<div class="gallery">';

            }
            if ($j == 0) {

            } else {
                echo '<a href="' . $gal[$k][$i][$j] . '"></a>';
                $photo_count++;
            }

            if ($j == $arraySize2 - 1) {

                ?>
                <?php
echo '</div>';
                echo '</div>';
                echo '</div>';
            }
        }

        if ($i == $arraySize - 1 && $k == $arraySize3 - 1) {
            echo '</li>';
            echo '</ul>';
            echo '</div>';
            echo '</div>';
            echo '<div class="proj_box_nav">';
            echo '<div class="catal_arrs">';
            echo '<div class="catal_arr_left"></div>';
            echo '<div class="catal_arr_right"></div>';
            echo '</div>';
            echo '</div>';
            echo '</div>';
            echo '</div>';
        }
    }
}
?>


                <h3>Таблица(Н3)</h3>
                <table>
                    <tbody>
                        <tr>
                            <th>Услуга</th>
                            <th>Цена</th>
                        </tr>

                        <?php
$args = array(
    'posts_per_page' => 10,
    'tax_query' => array(
        'relation' => 'AND',
        array(
            'post_type' => 'product',
            'taxonomy' => 'product_cat',

            'terms' => 27,
            // 'include_children' => false,
        ),
    ),
    'orderby' => 'menu_order',
    'order' => 'ASC',

);

$loop = new WP_Query($args);
while ($loop->have_posts()): $loop->the_post();

    global $product;
    echo '<tr>';
    echo '<td><p>' . get_the_title() . '</td><td>' . number_format($product->get_price(), 0, " ", " ") . ' руб. /час' . '</td>';
    echo '</tr>';
endwhile;
wp_reset_query();

?>
                    </tbody>
                </table>
                <h3>Форма(Н3)</h3>
                <div class="form">
                    <div class="form-line name">
                        <input placeholder="Ваше имя" type="text" id="name" name="name">
                    </div>
                    <div class="form-line ph_or_email">
                        <input placeholder="Ваш телефон или e-mail" type="text" id="ph_or_email">
                        <form action="">
                            <label class="container">По телефону
                                <input type="radio" name="radio" value="phone" checked="checked">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">По e-mail
                                <input type="radio" name="radio" value="email">
                                <span class="checkmark"></span>
                            </label>
                        </form>
                    </div>
                    <!--surround the select box with a "custom-select" DIV element. Remember to set the width:-->
                    <div class="custom-select dropdown">
                        <select id="time">
                            <option value="9_12">С 9.00 до 12.00</option>
                            <option value="12_18">С 12.00 до 18.00</option>
                            <option value="18_21">С 18.00 до 21.00</option>
                        </select>
                        <div class="select-selected">С 9.00 до 12.00</div>
                        <div class="select-items select-hide">
                            <div>С 9.00 до 12.00</div>
                            <div>С 12.00 до 18.00</div>
                            <div>С 18.00 до 21.00</div>
                        </div>
                    </div>
                    <div class="form-line textarea">
                        <textarea placeholder="Ваше сообщение..." type="text"></textarea>
                        <div class="upload-btn-wrapper">
                            <button class="btn" id="add_file">Прикрепить файл</button>
                            <input type="file" name="myfile">
                        </div>
                    </div>
                    <div class="form-line checkbox">
                        <label class="container">Подписаться на новости
                            <input type="checkbox" name="sub_news" value="sub_news" checked="checked">
                            <span class="checker"></span>
                        </label>
                    </div>
                    <div class="form-line">
                        <button class="yellow_button" id="live_an_order" type="button">Оставить заявку</button>
                    </div>
                </div>
                <h3>Отзывы(Н3)</h3>

                <div class="reviews">
                    <?php
// The Query
global $post;
query_posts(array('category_name' => 'review', 'order' => 'ASC'));

// The Loop
while (have_posts()):
    the_post();
    ?>

                    <div class="review">
                        <?php the_post_thumbnail();?>
                        <div class="text">
                            <div class="title"><?php the_title();?></div>
                            <div class="descr"><?php echo $content = wpautop($post->post_content); ?></div>
                        </div>
                    </div>

                    <?php
endwhile;?>
                </div>
                <h3>Вопрос-ответ(Н3)</h3>
                <?php
// The Query
global $post;
query_posts(array('category_name' => 'questions', 'order' => 'ASC'));

// The Loop
while (have_posts()):
    the_post();
    ?>

                <div class="question_answer">
                    <button class="accordion"><span class="dashed"><?php the_title();?></span></button>
                    <div class="panel" style="display: none;">
                        <div class="title">Ответ</div>
                        <p><?php echo $content = wpautop($post->post_content); ?></p>
                    </div>
                </div>
			<?php endwhile;?>
            </section>
        </main>
    </body>

    <?php get_footer();?>

    </html>