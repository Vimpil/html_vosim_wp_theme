<?php
/*
  Template Name: Html_vosim
*/
 ?>
<!DOCTYPE html>
<html lang="en">
<div id="page" class="main_page">
  <div class="mh-head Sticky header" id="my-header">
    <a href="#menu"><span></span></a>
    Строй Союз
  </div>
  <?php get_template_part( '_includes/head' ); ?>
  <header>
    <?php get_template_part( '_includes/header' ); ?>
  </header>
  <main>
    <?php get_template_part( '_includes/topnav' ); ?>
    <?php get_template_part( '_includes/leftnavmain' ); ?>
    <section class="main">
      <!-- {%- include sitemap.html -%} -->
      <?php get_template_part( '_includes/slider' ); ?>
      <h3>Наша спецтехника</h3>
      <?php get_template_part( '_includes/gallerymain' ); ?>

      <h3>Преимущества</h3>
      <div class="advantages">
        <div class="box">
          <div class="wrap"><img src="<?php $images_folder ?> advant.png" alt="car"></div>
          <div class="description">Обновляемый парк техники</div>
        </div>
        <div class="box">
          <div class="wrap"><img src="wp-content/uploads/img/advant2.png" alt=""></div>
          <div class="description">Опытные водители</div>
        </div>
        <div class="box">
          <div class="wrap"><img src="wp-content/uploads/img/advant3.png" alt=""></div>
          <div class="description">Прием заказов круглые сутки</div>
        </div>
        <div class="box">
          <div class="wrap"><img src="wp-content/uploads/img/advant4.png" alt=""></div>
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
  <footer>
    <?php get_template_part( '_includes/footer' ); ?>
  </footer>
  <?php get_template_part( '_includes/mobile_menu' ); ?>
  <?php get_template_part( '_includes/right_nav' ); ?>
  <?php get_template_part( '_includes/scripts' ); ?>
  <?php get_template_part( '_includes/sliderscript' ); ?>
</div>

</html>
