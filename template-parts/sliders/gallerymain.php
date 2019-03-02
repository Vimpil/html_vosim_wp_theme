<?php 
global $images_folder
 ?>
<div class="gal_box">
      
      <?php
      wp_nav_menu([
        'theme_location' => 'primary',
        'menu'            => 'Technic Rent',
        'depth'           => 0,
        'exclude'         => '1340',
        'level'           => 2,
        'child_of' => 'Аренда спецтехники',
      ]);
      ?>

</div>
