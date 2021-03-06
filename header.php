<?php

/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Html_vosim
 * @since 1.0
 * @version 1.0
 */
;?>
<?php ob_start();?>
<!DOCTYPE html>
<html <?php
language_attributes();
?>>
<head>
<?php
global $temp_path;
global $css_folder;
global $js_folder;
global $images_folder;
?>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" type="text/css" href="{{ "/assets/main.css" | relative_url }}"> -->

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	<link rel="stylesheet" href="<?php
echo $css_folder;

?>normalize.css" media="screen" />
    <link rel="stylesheet" href="<?php
echo $css_folder;

?>flexslider.css" media="screen" />   

	<link rel="stylesheet" href="<?php
echo $css_folder;

?>demo.css" media="screen" />
	<link rel="stylesheet" href="<?php
echo $css_folder;

?>slick.css" media="screen" />
	<link rel="stylesheet" href="<?php
echo $css_folder;

?>jquery.mmenu.all.css" media="screen" />
	<link rel="stylesheet" href="<?php
echo $css_folder;

?>jquery.mhead.css" media="screen" />
	<link rel="stylesheet" href="<?php
echo $css_folder;

?>magnific-popup.css" media="screen" />
	<link rel="stylesheet" href="<?php
echo $temp_path;

?>/style.css" media="screen" />
	<link rel="shortcut icon" type="image/png" href="favicon.png">
</head>
<header>
    <div class="logo_smm">
        <div class="logo"><a href='<?php echo home_url(); ?>'><img src="<?php
                echo $images_folder
                ; ?>logo.png" alt="logo"></a></div>
        <div class="smm">
            <a href="" class="vk"><i class="fab fa-vk"></i></a>
            <a href="" class="facebook"><i class="fab fa-facebook-f"></i></a>
        </div>
    </div>
    <div class="mail_addr">
        <p><i class="fas fa-envelope"></i><b>E-mail:</b> <a href="mailto:and922020@mail.ru?subject=Order">and922020@mail.ru</a></p>
        <p><i class="fab fa-skype"></i><b>Skype:</b> <a href="skype:and922020?call">and922020</a></p>
        <p><i class="fas fa-map-marked-alt"></i><b>Адрес:</b> г. Великий Новгород , ул.Большая Санкт-Петербургская, 56, офис 5, 2 этаж, рядом с ТК "Лента"</p>
    </div>
    <div class="phone">
        <a href="tel:88162603686">8 (8162) <b>60-36-86</b></a>
        <a href="tel:88162605578">8 (8162) <b>60-55-78</b></a>
        <span>Звоните с <b>8:00 - 23:00</b> (без выходных)</span>
        <a class='call_back_form' href="#wpforms-1449"><button class="yellow_button" id="to_book_a_call" type="button">Заказать звонок</button></a>
    </div>
    </div>
    <?php remove_action('wp_head', '_admin_bar_bump_cb');
    wp_head();?>
</header>
