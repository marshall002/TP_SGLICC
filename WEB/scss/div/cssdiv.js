var div1;
var div2;
var div3;

window.onload = function () {
    //div1 = document.getElementById("div1");
    //div2 = document.getElementById("div2");
    //div3 = document.getElementById("div3");

    removeDiv2();
    removeDiv3();
    //var btnConfirmar = document.getElementById("btnConfirmar");
    //btnConfirmar.onclick = removeDiv2();
    //var btnRegistrar = document.getElementById("btnRegistrar");
    //btnRegistrar.onclick = removeDiv3;

}

function removeDiv1() {
    //ocultare el div1
    document.getElementById("div1").style.display = "none";
    //aqui muestro los div2 y div3 
    mostrarDiv2();
    mostrarDiv3();
}

function removeDiv2() {
    document.getElementById("div2").style.display = "none";
    mostrarDiv1();
    removeDiv3();
}

function removeDiv3() {
    document.getElementById("div3").style.display = "none";
}

function mostrarDiv1() {
    document.getElementById("div1").style.display = "block";

}

function mostrarDiv2() {
    document.getElementById("div2").style.display = "block";
}
function mostrarDiv3() {
    document.getElementById("div3").style.display = "block";
}