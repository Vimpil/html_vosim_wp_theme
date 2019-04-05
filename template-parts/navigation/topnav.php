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
      wp_nav_menu(array());
      ?>

    </div>
  </div>
  <a href="/index.php/all_news/" class="menu-title">Новости</a>
  <a href="#contact" class="menu-title">Контакты</a>
  <a href="index.php/sitemap/" class="menu-title">Карта сайта</a>
  <div class="search-container">
    <input type="text" placeholder="Поиск..">
    <button type="button"><i class="fa fa-search"></i></button>
  </div>
</div>

