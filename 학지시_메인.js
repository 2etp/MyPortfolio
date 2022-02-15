const tabClick1 = document.getElementById("main_tab1");
const tabClick2 = document.getElementById("main_tab2");

function mainTabClick() {
    tabClick1.style.borderTop = "#427fc2 2px solid";
    tabClick1.style.borderBottom = "none";

}

document.getElementById("change_btn1").addEventListener("click", mainTabClick); 
document.getElementById("change_btn2").addEventListener("click", mainTabClick); 