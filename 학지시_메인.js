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

function mainTabClick1() {
    tabClick1.style.borderTop = "#427fc2 2px solid";
    tabClick1.style.borderBottom = "none";
    tabClick2.style.borderTop = "#ccc 1px solid";
    tabClick2.style.borderBottom = "#ccc 1px solid";
    tabClick3.style.borderTop = "#ccc 1px solid";
    tabClick3.style.borderBottom = "#ccc 1px solid";
}

function mainTabClick2() {
    tabClick1.style.borderTop = "#ccc 1px solid";
    tabClick1.style.borderBottom = "#ccc 1px solid";
    tabClick2.style.borderTop = "#427fc2 2px solid";
    tabClick2.style.borderBottom = "none";
    tabClick3.style.borderTop = "#ccc 1px solid";
    tabClick3.style.borderBottom = "#ccc 1px solid";
}

function mainTabClick3() {
    tabClick1.style.borderTop = "#ccc 1px solid";
    tabClick1.style.borderBottom = "#ccc 1px solid";
    tabClick2.style.borderTop = "#ccc 1px solid";
    tabClick2.style.borderBottom = "#ccc 1px solid";
    tabClick3.style.borderTop = "#427fc2 2px solid";
    tabClick3.style.borderBottom = "none";
}

function mainTabClick4() {
    tabClick4.style.borderTop = "#427fc2 2px solid";
    tabClick4.style.borderBottom = "none";
    tabClick5.style.borderTop = "#ccc 1px solid";
    tabClick5.style.borderBottom = "#ccc 1px solid";
    tabClick6.style.borderTop = "#ccc 1px solid";
    tabClick6.style.borderBottom = "#ccc 1px solid";
}

function mainTabClick5() {
    tabClick4.style.borderTop = "#ccc 1px solid";
    tabClick4.style.borderBottom = "#ccc 1px solid";
    tabClick5.style.borderTop = "#427fc2 2px solid";
    tabClick5.style.borderBottom = "none";
    tabClick6.style.borderTop = "#ccc 1px solid";
    tabClick6.style.borderBottom = "#ccc 1px solid";
}

function mainTabClick6() {
    tabClick4.style.borderTop = "#ccc 1px solid";
    tabClick4.style.borderBottom = "#ccc 1px solid";
    tabClick5.style.borderTop = "#ccc 1px solid";
    tabClick5.style.borderBottom = "#ccc 1px solid";
    tabClick6.style.borderTop = "#427fc2 2px solid";
    tabClick6.style.borderBottom = "none";
}

changeBtn1.addEventListener("click", mainTabClick1); 
changeBtn2.addEventListener("click", mainTabClick2); 
changeBtn3.addEventListener("click", mainTabClick3); 
changeBtn4.addEventListener("click", mainTabClick4); 
changeBtn5.addEventListener("click", mainTabClick5); 
changeBtn6.addEventListener("click", mainTabClick6); 