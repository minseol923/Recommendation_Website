/*
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/
var sildes = document.querySelector('.slides'),

	slide =document.querySelectorAll('.slides li'),
	currentIdx=0,
	slideCount =slide.length,
	slideWidth=300,
	slideMargin=30,
	prevBtn=document.querySelector('.prev'),
	nextBtn = document.querySelector('.next');

	slides.style.width =(slideWidth +slideMargin) -slideMargin +'px';
	
	function moveslide(num){
		slides.style.left= -num *330 +'px';
		currentIdx =num;
		
	}
	
	nextBtn.addEventListener('click',function(){
		moveSlide(currentIdx +1);
	});