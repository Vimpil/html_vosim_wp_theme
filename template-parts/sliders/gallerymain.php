<?php 
global $images_folder
 ?>
<!-- <div class="gal_box">
      
      <?php
      wp_nav_menu([

	      'menu' => 'Technic Rent',
          'exclude' => 1287,
      ]);
      ?>

</div> -->

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
$product_titles = [];

while ($loop->have_posts()): $loop->the_post();

    global $product;

    $prod_id = $product->get_id();
    array_push($product_titles, $product->get_title());
    if (get_post_galleries_images($prod_id)) {

        array_push($gal, get_post_galleries_images($prod_id));
    }

endwhile;

$keys3 = array_keys($gal);
$arraySize3 = count($gal);

for ($k = 0; $k < $arraySize3; $k++) {

    $keys = array_keys($gal[$k]);
    $arraySize = count($gal[$k]);

// Loop through all galleries found
    for ($i = 0; $i < $arraySize; $i++) {
        $keys2 = array_keys($gal[$k][$i]);
        $arraySize2 = count($gal[$k][$i]);

        if ($i == 0 && $k == 0) {
            echo '<div class="elements_gal main_page">';
            echo '<div class="container">';
            echo '<div class="gal_boxes">';
            echo '<div class="flexslider">';
            echo '<ul class="slides">';
			echo '<li>';
			
			
		} 
	// 	elseif ((($k) % 3) == 0) {			
	// 		echo '<li>';
      //   }

        echo '<div class="elem_box no_discount_proj">';
        for ($j = 0; $j < $arraySize2; $j++) {

            if ($j == 0) {

                echo '<div class="gallery-group">';
                echo '<div class="gallery-link" value="' . ($arraySize2 - 1) . '">';
                echo '<a class="gallery-item" href="#">';
                echo '<img src="' . $gal[$k][$i][$j] . '" alt="">';
                echo '<span class="menu-image-title">'.$product_titles[$k].'</span>';
                echo '</a>';
                echo '</div>';
                echo '<div class="gallery">';

            }
            if ($j == 0) {

            } else {
                echo '<a href="' . $gal[$k][$i][$j] . '"></a>';
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

<div class="gal_box">
      
     

</div>
