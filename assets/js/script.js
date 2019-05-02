/* Global variables */



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
    $(".left_nav button.accordion").click(function(event) {
        $(this).parent().toggleClass('clicked');
        console.log($(this).parent());
    });
    /*END Left_nav main*/

   /*Left_nav main*/
   $(".left_nav .menu-item-has-children>a").click(function(event) {
      event.preventDefault();
      $(this).parent().toggleClass('clicked');
   });

    $(".accordion").click(function(event) {
        /* Act on the event */
        $(this).parent().children('.panel').slideToggle();
    });



   // $(".accordion").click(function(event) {
   //    console.log('clicked');
   // }

   $(".left_nav .menu-main-container ul>li a").click(function(event) {
      /* Act on the event */
      $(this).parent().children('ul').slideToggle();
   });


   /*END Left_nav main*/


   $('.call_back_form').magnificPopup({

      type: 'inline',
      preloader: false,
      focus: '#wpforms-1449',
      alignTop: false,
      fixedContentPos: true,

      // When elemened is focused, some mobile browsers in some cases zoom in
      // It looks not nice, so we disable it:

      callbacks: {
         beforeOpen: function() {
            if ($(window).width() < 700) {
               this.st.focus = false;
            } else {
               this.st.focus = '#wpforms-1449';
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



   // $('.gallery-item').magnificPopup({

   //    type: 'image',
   //    gallery: {
   //       enabled: true
   //    },

   //    callbacks: {

   //       buildControls: function() {
   //          // re-appends controls inside the main container
   //          this.contentContainer.append(this.arrowLeft.add(this.arrowRight));
   //       }
   //    }

   // });

   $('.gallery-link').on('click', function () {
      window.gal_link_gal_count=$(this).attr('value');      
      $(this).next().magnificPopup('open');
  });
  
  $('.gallery').each(function () {
      $(this).magnificPopup({
          delegate: 'a',
          type: 'image',
          gallery: {
              enabled: true,
              navigateByImgClick: true,
          },
          fixedContentPos: true,
          callbacks: {
    
            buildControls: function() {
               if(parseInt(window.gal_link_gal_count)>1){
                  this.contentContainer.append(this.arrowLeft.add(this.arrowRight));
               }
            }
            
          },
      });
  });

   // Validator
   var validator_sucess = false;
   var validator_sucess2 = false;

   var dummyEmail = $('<input data-parsley-type="email">').parsley();
   var dummyNineDigits = $('<input data-parsley-length="[11, 11]"">').parsley();
   var Empty = $('<data-parsley-validate-if-empty>').parsley();

   $('input#wpforms-1449-field_2,input#wpforms-1448-field_2').attr({
      'data-parsley-emailorid': "",
      'data-parsley-validate-if-empty': 'true',
      'data-parsley-required': "true",
   });

   Parsley.addValidator('emailorid', {
      validateString: function(data) {
         return dummyNineDigits.isValid(true, data) ||
            dummyEmail.isValid(true, data);
         //|| 
         // dummyNineDigits.isValid(true, data);
      },
      messages: {
         en: "*Введите свой e-mail либо телефон"
      },
   });

   $('input#wpforms-1449-field_2,input#wpforms-1448-field_2 ').on('input paste', function() {

      $('input#wpforms-1449-field_2').parsley().validate();
      if ($('input#wpforms-1449-field_2').parsley('emailorid').isValid()) {
         validator_sucess2 = true;
         $('div#wpforms-1449 button[type=submit]').addClass('active');
         $('div#wpforms-1449 button[type=submit]').attr({
            'opacity': '1',
         });

      } else {
         validator_sucess2 = false;
         $('div#wpforms-1449 button[type=submit]').removeClass('active');
      }
///////////////////////////////////

      $('#wpforms-form-1448 input#wpforms-1448-field_2').parsley().validate();

      if ($('input#wpforms-1448-field_2').parsley('emailorid').isValid()) {
         validator_sucess = true;
         $('button#wpforms-submit-1448').addClass('active');
         $('button#wpforms-submit-1448').attr({
            'opacity': '1',
         });

      } else {
         validator_sucess = false;
         $('div#wpforms-1448 button[type=submit]').removeClass('active');
      }
   });




   // END Validator


   $(window).keydown(function(event) {
      if (event.keyCode == 13) {
         if ((validator_sucess == false)&(validator_sucess2 == false)&(validator_sucess2 == false)) {
            event.preventDefault();
            return false;
         }
      }
   });


    $('button#order').on("click", function(){
     Activate_callbackfn($(this).val())
    });

    /*
    * Search Activation
    * */

    $(".topnav input.search-field").on('keyup input', function (e) {        
      if (e.keyCode == 13) {
            $('.topnav input.search-submit').trigger('click');
        }else{
           $("input#main_search_btn").removeClass('pointer-events-none');
      }
    });

    $("#menu input#main_search").on('keyup input', function (e) {        
      if (e.keyCode == 13) {
            $('.topnav input.search-submit').trigger('click');
        }else{
           $("input#main_search_btn").removeClass('pointer-events-none');
      }
    });


    //**--------------FLEXSLIDER-------------------------------
	$('.flexslider').flexslider({
		animation: "fade", // slide or fade
      controlsContainer: ".flex-container", // the container that holds the flexslider
      directionNav:false,
      smoothHeight:true,
      pauseOnHover:true,
      start: function(){
         console.log('flex started');
      }, 
      before: function(){
         var listItems = $(".elements_gal .flexslider ul li");
         listItems.each(function(idx, li) {
            var flex_li = $(li);
            if(flex_li.hasClass('displayNone')){
               console.log('it has class');
               flex_li.removeClass('displayNone');
            }else{
               console.log('it hasnt class');               
            }
            // and the rest of your code
         });
      },
      after: function(){
         var listItems = $(".elements_gal .flexslider ul li");
         listItems.each(function(idx, li) {
            var flex_li = $(li);
            if(flex_li.hasClass('flex-active-slide')){
               console.log('it has class');
            }else{
               console.log('it hasnt class');
               flex_li.addClass('displayNone');
            }
            // and the rest of your code
         });
      }, 
      removed:function(){
         console.log('removed');
      }
   });
   

   

	$("div.catal_arr_right").click(function() {
		$(".project-boxes" + " a.flex-next").click();
		$(".gal_boxes " + " a.flex-next").click();
	});

	$("div.catal_arr_left").click(function() {
		$(".gal_boxes " + " a.flex-prev").click();
		$(".project-boxes " + " a.flex-prev").click();
	});

   //**--------------END FLEXSLIDER---------------------------
   
   // GALLARY FLEXSLIDER
	var li_flexl_count
	$.each($(".elements_gal .flex-control-nav li"), function() {
		$(this).append('<span>' + ($(this).index() + 1) + '</span>');
	});
	li_flexl_count = 0;
	$.each($(".elements_gal .flex-control-nav li"), function() {
   $(this).append('<span>' + ($(this).index() + 1) + '</span>');
	});

   // END GALLARY FLEXSLIDER
   

});


function Activate_callbackfn(service_name) {
    $("button#write_to_us").trigger("click");
    $serv_temp="Здравствуйте, необходимо заказать "+service_name+".";
    $("textarea#wpforms-1449-field_3").val($serv_temp);
    return null;
}