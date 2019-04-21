 <?php
global $images_folder
?>
<div class="topnav">
  <div class="active services">
    <button class="dropbtn" onclick="topnav_dropbtn()">Услуги и продукция
    <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content" id="myMainDropdown">
      <?php
      $args = array();

      $nav_menu_items=wp_get_nav_menu_items( 2, $args );


//          wp_nav_menu(array([
//	      'menu' => 'Main',
//      ]));
//      wp_nav_menu();

      $itm_chldrn=get_nav_menu_item_children( 1550, $nav_menu_items, $depth = true );

//      foreach ($itm_chldrn as $itm){
//          echo $itm->title;
//      };
      ChromePhp::log('loggs');
      ChromePhp::log(get_nav_menu_item_children( 1551, $nav_menu_items, $depth = true ));
      ChromePhp::log('loggs loggs loggs');
      ChromePhp::log(wp_nav_menu(array()));
      ChromePhp::log('loggs');

      olLiTree($itm_chldrn);

      ?>
    </div>
  </div>

  <a href="/index.php/all_news/" class="menu-title">Новости</a>
  <a href="#contact" class="menu-title">Контакты</a>
  <a href="index.php/sitemap/" class="menu-title">Карта сайта</a>

	<?php get_search_form(); ?>
<!--    <div class="search-container">-->
<!--        <input type="text" placeholder="Поиск..">-->
<!--        <button type="button"><i class="fa fa-search"></i></button>-->
<!--    </div>-->
</div>

