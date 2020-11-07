/*
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

/*
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

	var	$window = $(window),
		$body = $('body');

	// Breakpoints.
		breakpoints({
			xlarge:  [ '1281px',  '1680px' ],
			large:   [ '981px',   '1280px' ],
			medium:  [ '737px',   '980px'  ],
			small:   [ null,      '736px'  ]
		});

	// Play initial animations on page load.
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-preload');
			}, 100);
		});

	// Dropdowns.
		$('#nav > ul').dropotron({
			mode: 'fade',
			noOpenerFade: true,
			hoverDelay: 150,
			hideDelay: 350
		});

	// Nav.

		// Title Bar.
			$(
				'<div id="titleBar">' +
					'<a href="#navPanel" class="toggle"></a>' +
				'</div>'
			)
				.appendTo($body);

		// Panel.
			$(
				'<div id="navPanel">' +
					'<nav>' +
						$('#nav').navList() +
					'</nav>' +
				'</div>'
			)
				.appendTo($body)
				.panel({
					delay: 500,
					hideOnClick: true,
					hideOnSwipe: true,
					resetScroll: true,
					resetForms: true,
					side: 'left',
					target: $body,
					visibleClass: 'navPanel-visible'
				});

})(jQuery);


//slider

// Slider configuration
var config = {
  speed: 3000,
  auto: true, // true or false
  arrows: true, // true or false
  nav: true, // true or false
  navStyle: 'default' // square,rectangle, default
};

// Slider core
var slides = $('.slide');
var totalSlides = slides.length;
var currentIndex = 0;

function setSlides() {
  var currentSlide = slides.eq(currentIndex);
  slides.hide();
  currentSlide.fadeIn(1500);
};
setSlides();

// autoplay
if (config.auto) {
  var autoSlide = setInterval(function() {
    currentIndex += 1;
    if (currentIndex > totalSlides - 1) {
      currentIndex = 0;
    }
    setSlides();
    navigation();
  }, config.speed);
};

// navigation arrows
if (config.arrows) {
  $('.arrow').addClass('active');
  $('.prev').click(function() {
    clearInterval(autoSlide);
    currentIndex -= 1;
    if (currentIndex < 0) {
      currentIndex = totalSlides - 1;
    }
    navigation();
    setSlides();
  });
  $('.next').click(function() {
    clearInterval(autoSlide);
    currentIndex += 1;
    if (currentIndex > totalSlides - 1) {
      currentIndex = 0;
    }
    navigation();
    setSlides();
  });
};

// navigation
if (config.nav) {
	for (i = 0; i < slides.length; i+=1) {
  	$('<li/>').attr( {'class': 'nav-item','id': i}).appendTo('.slide-nav');
	};
  $('.nav-item').first().addClass('item-active');
  switch(config.navStyle) { // navigation style
    case 'square':
        $('.nav-item').addClass('square');
        break;
    case 'rectangle':
        $('.nav-item').addClass('rectangle');
        break;
    default:
        $('.nav-item').addClass('dot');
  };
  function navigation() {
    $('.nav-item').removeClass('item-active');
    $('.nav-item').eq(currentIndex).addClass('item-active');
  };
	$('.nav-item').click(function() {
  	clearInterval(autoSlide);
  	var navNumb =  $(this).attr('id');
  	currentIndex = navNumb;
  	navigation();
  	setSlides();
  });
};

