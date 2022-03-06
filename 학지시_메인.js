const tabClick1 = document.getElementById("main_tab1");
const tabClick2 = document.getElementById("main_tab2");
const tabClick3 = document.getElementById("main_tab3");
const tabClick4 = document.getElementById("main_tab4");
const tabClick5 = document.getElementById("main_tab5");
const tabClick6 = document.getElementById("main_tab6");

const changeBtn1 = document.getElementById("change_btn1");
const changeBtn2 = document.getElementById("change_btn2");
const changeBtn3 = document.getElementById("change_btn3");
const changeBtn4 = document.getElementById("change_btn4");
const changeBtn5 = document.getElementById("change_btn5");
const changeBtn6 = document.getElementById("change_btn6");

const mainTabShow1 = document.getElementById("maintab_show1");
const mainTabShow2 = document.getElementById("maintab_show2");
const mainTabShow3 = document.getElementById("maintab_show3");
const mainTabShow4 = document.getElementById("maintab_show4");
const mainTabShow5 = document.getElementById("maintab_show5");
const mainTabShow6 = document.getElementById("maintab_show6");


function mainTabClick1() {
    // 메인 페이지의 메인탭 클릭 시, 색상 변화 
    tabClick1.style.borderTop = "#427fc2 2px solid";
    tabClick1.style.borderBottom = "none";
    tabClick1.style.backgroundColor = "white";
    tabClick2.style.borderTop = "#ccc 1px solid";
    tabClick2.style.borderBottom = "#ccc 1px solid";
    tabClick2.style.backgroundColor = "#F6F6F6";
    tabClick3.style.borderTop = "#ccc 1px solid";
    tabClick3.style.borderBottom = "#ccc 1px solid";
    tabClick3.style.backgroundColor = "#F6F6F6";
    // 메인 페이지의 메인탭 클릭 시, 각 탭에 해당하는 리스트 제시
    mainTabShow1.style.opacity = "1";
    mainTabShow2.style.opacity = "0";
    mainTabShow3.style.opacity = "0";
  
}

function mainTabClick2() {
    tabClick1.style.borderTop = "#ccc 1px solid";
    tabClick1.style.borderBottom = "#ccc 1px solid";
    tabClick1.style.backgroundColor = "#F6F6F6";
    tabClick2.style.borderTop = "#427fc2 2px solid";
    tabClick2.style.borderBottom = "none";
    tabClick2.style.backgroundColor = "white";
    tabClick3.style.borderTop = "#ccc 1px solid";
    tabClick3.style.borderBottom = "#ccc 1px solid";
    tabClick3.style.backgroundColor = "#F6F6F6";
    mainTabShow1.style.opacity = "0";
    mainTabShow2.style.opacity = "1";
    mainTabShow3.style.opacity = "0";
}

function mainTabClick3() {
    tabClick1.style.borderTop = "#ccc 1px solid";
    tabClick1.style.borderBottom = "#ccc 1px solid";
    tabClick1.style.backgroundColor = "#F6F6F6";
    tabClick2.style.borderTop = "#ccc 1px solid";
    tabClick2.style.borderBottom = "#ccc 1px solid";
    tabClick2.style.backgroundColor = "#F6F6F6";
    tabClick3.style.borderTop = "#427fc2 2px solid";
    tabClick3.style.borderBottom = "none";
    tabClick3.style.backgroundColor = "white";
    mainTabShow1.style.opacity = "0";
    mainTabShow2.style.opacity = "0";
    mainTabShow3.style.opacity = "1";
}

function mainTabClick4() {
    tabClick4.style.borderTop = "#427fc2 2px solid";
    tabClick4.style.borderBottom = "none";
    tabClick4.style.backgroundColor = "white";
    tabClick5.style.borderTop = "#ccc 1px solid";
    tabClick5.style.borderBottom = "#ccc 1px solid";
    tabClick5.style.backgroundColor = "#F6F6F6";
    tabClick6.style.borderTop = "#ccc 1px solid";
    tabClick6.style.borderBottom = "#ccc 1px solid";
    tabClick6.style.backgroundColor = "#F6F6F6";
    mainTabShow4.style.opacity = "1";
    mainTabShow5.style.opacity = "0";
    mainTabShow6.style.opacity = "0";
}

function mainTabClick5() {
    tabClick4.style.borderTop = "#ccc 1px solid";
    tabClick4.style.borderBottom = "#ccc 1px solid";
    tabClick4.style.backgroundColor = "#F6F6F6";
    tabClick5.style.borderTop = "#427fc2 2px solid";
    tabClick5.style.borderBottom = "none";
    tabClick5.style.backgroundColor = "white";
    tabClick6.style.borderTop = "#ccc 1px solid";
    tabClick6.style.borderBottom = "#ccc 1px solid";
    tabClick6.style.backgroundColor = "#F6F6F6";
    mainTabShow4.style.opacity = "0";
    mainTabShow5.style.opacity = "1";
    mainTabShow6.style.opacity = "0";
}

function mainTabClick6() {
    tabClick4.style.borderTop = "#ccc 1px solid";
    tabClick4.style.borderBottom = "#ccc 1px solid";
    tabClick4.style.backgroundColor = "#F6F6F6";
    tabClick5.style.borderTop = "#ccc 1px solid";
    tabClick5.style.borderBottom = "#ccc 1px solid";
    tabClick5.style.backgroundColor = "#F6F6F6";
    tabClick6.style.borderTop = "#427fc2 2px solid";
    tabClick6.style.borderBottom = "none";
    tabClick6.style.backgroundColor = "white";
    mainTabShow4.style.opacity = "0";
    mainTabShow5.style.opacity = "0";
    mainTabShow6.style.opacity = "1";
}

changeBtn1.addEventListener("click", mainTabClick1); 
changeBtn2.addEventListener("click", mainTabClick2); 
changeBtn3.addEventListener("click", mainTabClick3); 
changeBtn4.addEventListener("click", mainTabClick4); 
changeBtn5.addEventListener("click", mainTabClick5); 
changeBtn6.addEventListener("click", mainTabClick6);


let slideIndex = 0; // slide index

// HTML 로드가 끝난 후 동작
window.onload = function(){
    showSlides(slideIndex);

    // Auto Move Slide
  let sec = 3000;
  setInterval(function(){
    slideIndex++;
    showSlides(slideIndex);

  }, sec);
}

// Next/previous controls
function moveSlides(n) {
    slideIndex = slideIndex + n
    showSlides(slideIndex);
  }
  
  // Thumbnail image controls
function currentSlide(n) {
    slideIndex = n;
    showSlides(slideIndex);
  }
  
function showSlides(n) {
  
    let slides = document.getElementsByClassName("mySlides");
    let dots = document.getElementsByClassName("dot");
    let size = slides.length;
  
    if ((n+1) > size) {
      slideIndex = 0; n = 0;
    }else if (n < 0) {
      slideIndex = (size-1);
      n = (size-1);
    }
  
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
  
    slides[n].style.display = "block";
    dots[n].className += " active";
  }