
 <?php 
  global $images_folder;
  global $temp_path;
 ?>
 <aside class="left_nav">

       <?php
      wp_nav_menu(array());
      ?>
      <div class="promote">
        <?php 
        echo get_post_field('post_content', 1347);
         ?>
      </div>
  <div class="news">
        <div class="news_head">
          <div class="news_title">Новости</div>
          <a class="archieve" href="/index.php/all_news/">Архив</a>
        </div>
        <div class="news_list">
          <div class="n_block">
            <span class="date">25/07/2015</span>
            <div class="news_link"><a href="">Компания работает на территории</a></div>
            <div class="news_descr">Все машины находятся в хорошем состоянии и своевременно...</div>
          </div>
        </div>
      </div>
    </aside>
   
