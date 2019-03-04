$(function() {

   /* START Dropdown */
   var x, i, j, selElmnt, a, b, c;
   /*look for any elements with the class "custom-select":*/
   x = document.getElementsByClassName("custom-select");
   for (i = 0; i < x.length; i++) {
      selElmnt = x[i].getElementsByTagName("select")[0];
      /*for each element, create a new DIV that will act as the selected item:*/
      a = document.createElement("DIV");
      a.setAttribute("class", "select-selected");
      a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
      x[i].appendChild(a);
      /*for each element, create a new DIV that will contain the option list:*/
      b = document.createElement("DIV");
      b.setAttribute("class", "select-items select-hide");
      for (j = 0; j < selElmnt.length; j++) {
         /*for each option in the original select element,
         create a new DIV that will act as an option item:*/
         c = document.createElement("DIV");
         c.innerHTML = selElmnt.options[j].innerHTML;
         c.addEventListener("click", function(e) {
            /*when an item is clicked, update the original select box,
            and the selected item:*/
            var y, i, k, s, h;
            s = this.parentNode.parentNode.getElementsByTagName("select")[0];
            h = this.parentNode.previousSibling;
            for (i = 0; i < s.length; i++) {
               if (s.options[i].innerHTML == this.innerHTML) {
                  s.selectedIndex = i;
                  h.innerHTML = this.innerHTML;
                  y = this.parentNode.getElementsByClassName("same-as-selected");
                  for (k = 0; k < y.length; k++) {
                     y[k].removeAttribute("class");
                  }
                  this.setAttribute("class", "same-as-selected");
                  break;
               }
            }
            h.click();
         });
         b.appendChild(c);
      }
      x[i].appendChild(b);
      a.addEventListener("click", function(e) {
         /*when the select box is clicked, close any other select boxes,
         and open/close the current select box:*/
         e.stopPropagation();
         closeAllSelect(this);
         this.nextSibling.classList.toggle("select-hide");
         this.classList.toggle("select-arrow-active");
      });
   }

   function closeAllSelect(elmnt) {
      /*a function that will close all select boxes in the document,
      except the current select box:*/
      var x, y, i, arrNo = [];
      x = document.getElementsByClassName("select-items");
      y = document.getElementsByClassName("select-selected");
      for (i = 0; i < y.length; i++) {
         if (elmnt == y[i]) {
            arrNo.push(i)
         } else {
            y[i].classList.remove("select-arrow-active");
         }
      }
      for (i = 0; i < x.length; i++) {
         if (arrNo.indexOf(i)) {
            x[i].classList.add("select-hide");
         }
      }
   }
   /*if the user clicks anywhere outside the select box,
   then close all select boxes:*/
   document.addEventListener("click", closeAllSelect);
   /* END Dropdown */


   $("#add_file").mouseover(function(event) {
      $(this).parent().children('input').mouseover();
   });
   $("#add_file").click(function(event) {
      $(this).parent().children('input').click();
   });
   $('nav#menu').mmenu({
      extensions: ["widescreen"],
      drag: true,
      pageScroll: {
         scroll: true,
         update: true
      },
      // extensions: {
      //    'all': ['pagedim-white'],
      //    '(min-width: 400px)' : ['pagedim-black']
      // },
      sidebar: {
         expanded: 800
      }
   });
   $("#my-header").mhead({
      scroll: {
         hide: 200
      }
   });
   $("#my-header:not(.mm-sticky)").mhead({
      scroll: false
   });
   /* Corrects to mmenu */
   var width = $(window).width();
   if ($(window).width() >= 799) {
      $('html').toggleClass('mm-wrapper_sidebar-expanded mm-wrapper_opened mm-wrapper_blocking mm-wrapper_background mm-wrapper_opening');
      $('#menu').toggleClass('mm-menu mm-menu_offcanvas mm-menu_sidebar-expanded mm-menu_opened mm-menu_widescreen');
      $('html').toggleClass('mm-wrapper_opening');
   }
   // $(window).on('resize', function() {
   //    if ($(window).width() >= 799) {
   //       $('html').toggleClass('mm-wrapper_sidebar-expanded mm-wrapper_opened mm-wrapper_blocking mm-wrapper_background mm-wrapper_opening');
   //       $('#menu').toggleClass('mm-menu mm-menu_offcanvas mm-menu_sidebar-expanded mm-menu_opened mm-menu_widescreen');
   //       $('html').toggleClass('mm-wrapper_opening')
   //    }
   // });
   $('#my-header a').click(function(event) {
      /* Act on the event */
      if ($(window).width() >= 799) {
         console.log("clicked");
         $('html').toggleClass('mm-wrapper_sidebar-expanded mm-wrapper_opened mm-wrapper_blocking mm-wrapper_background mm-wrapper_opening');
         $('#menu').toggleClass('mm-menu mm-menu_offcanvas mm-menu_sidebar-expanded mm-menu_opened mm-menu_widescreen');
         $('html').toggleClass('mm-wrapper_opening')
      }
   });

   /* END Corrects to mmenu */

});
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function topnav_dropbtn() {
   document.getElementById("myMainDropdown").classList.toggle("show");
}
// Close the dropdown if the user clicks outside of it
$(".services .dropbtn").click(function(event) {
   /* Act on the event */
   $('.dropbtn i.fa').toggleClass('fa-caret-down');
   $('.dropbtn i.fa').toggleClass('fa-caret-up');
});
window.onclick = function(e) {
   if (!e.target.matches('.dropbtn')) {
      var myMainDropdown = document.getElementById("myMainDropdown");
      if (myMainDropdown.classList.contains('show')) {
         myMainDropdown.classList.remove('show');
         $('.dropbtn i.fa').toggleClass('fa-caret-down');
         $('.dropbtn i.fa').toggleClass('fa-caret-up');
      }
   }
}
jQuery(document).ready(function($) {



   /*Left_nav main*/
   $(".left_nav .menu-item-has-children>a").click(function(event) {
      event.preventDefault();
      $(this).parent().toggleClass('clicked');
      console.log($(this).parent());
   });

   // $(".accordion").click(function(event) {

   $(".left_nav .menu-main-container ul>li a").click(function(event) {
      /* Act on the event */
      $(this).parent().children('ul').slideToggle();
   });



   /*END Left_nav main*/

   $('.call_back_form').magnificPopup({
      type: 'inline',
      preloader: false,
      focus: '#text_call_back_form',
      closeOnBgClick: true,
      closeBtnInside: true,

      // When elemened is focused, some mobile browsers in some cases zoom in
      // It looks not nice, so we disable it:
      callbacks: {
         beforeOpen: function() {
            if ($(window).width() < 700) {
               this.st.focus = false;
            } else {
               this.st.focus = '#text_call_back_form';
            }
         }
      }
   });

   // When the user scrolls down 20px from the top of the document, show the button
   window.onscroll = function() {
      scrollFunction()
   };

   function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
         document.getElementById("back_top_btn").style.display = "block";
         // document.getElementById("call_to_us").style.display = "block";
         //  document.getElementById("write_to_us").style.display = "block";
      } else {
         document.getElementById("back_top_btn").style.display = "none";
         // document.getElementById("call_to_us").style.display = "none";
         // document.getElementById("write_to_us").style.display = "none";

      }
   }

   // When the user clicks on the button, scroll to the top of the document
   $("#back_top_btn").click(function(event) {
      /* Act on the event */
      document.body.scrollTop = 0; // For Safari
      document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
   });



   $('.gallery-item').magnificPopup({
      type: 'image',
      gallery: {
         enabled: true
      },
      callbacks: {

         buildControls: function() {
            // re-appends controls inside the main container
            this.contentContainer.append(this.arrowLeft.add(this.arrowRight));
         }
      }
   });

   // Validator

   jQuery.validator.setDefaults({
      debug: true,
      success: "valid"
   });
   $.validator.addMethod("eitherEmailPhone", function(value, element) {
      isPhone = (this.optional(element) || /^\d+$/.test(value)) && this.getLength($.trim(value), element) <= 12 && this.getLength($.trim(value), element) >= 11;
      isEmail = this.optional(element) || /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$/i.test(value);

      return isPhone || isEmail;

   }, "Please enter either phone or e-mail");
   // $.validator.addMethod('customphone', function(value, element) {
   //      return this.optional(element) || /^\d{3}-\d{3}-\d{4}$/.test(value);
   //   }, "Please enter a valid phone number");


   $('#wpforms-form-1448').validate({ // initialize the plugin
      rules: {
         'wpforms[fields][2]':'eitherEmailPhone',
         // 'wpforms[fields][2]': {
         //    required: true,
         //    email: true,
         // }
      }
   });


   // END Validator

});