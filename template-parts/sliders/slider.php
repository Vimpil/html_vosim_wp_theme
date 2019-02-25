<?php 
global $images_folder
 ?>
<div class="main_slider" id="main_slider">
  <?php 
$gal = get_post_galleries_images(5);
// Loop through all galleries found
	foreach( $gal as $gallery ) {
		// Loop through each image in each gallery
		foreach( $gallery as $image ) {
			// $image_list .= '<li>' . $image . '</li>';
			echo $imgline='<div><img src="' . $image . '" alt=""></div>';
		}
	}
  ?>
</div>
