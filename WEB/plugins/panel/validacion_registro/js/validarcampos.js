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


var v = true;
$("span.help-block").hide();

function verificar() {

    var v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0, v7 = 0, v8 = 0, v9 = 0, v10 = 0, v11 = 0, v12 = 0;
    v1 = validacion('txtNombre');
    v2 = validacion('txtApellidoPaterno');
    v3 = validacion('txtApellidoMaterno');
    v4 = validacion('txtEdad');
    v5 = validacion('txtDocumento');
    v6 = validacion('txtTelefono');
    v7 = validacion('txtDireccion');
    v8 = validacion('txtCorreo');
    v9 = validacion('txtSalario');
    v10 = validacion('txtNumCuenta');
    v11 = validacion('carrera');
    v12 = validacion('carrera');

    if (v1 === false || v2 === false || v3 === false || v4 === false || v5 === false || v6 === false || v7 === false || v8 === false || v9 === false || v10 === false) {
        $("#exito").hide();
        $("#error").show();
        $("#enviarcorreo").hide();
    } else {
        $("#error").hide();
        $("#exito").show();
        $("#enviarcorreo").hide();
    }
}

function enviarcorreo() {

    $("#error").hide();
    $("#exito").hide();
    $("#enviarcorreo").show();

}


function btnContinuar2en1()
{
    removeDiv1();
    enviarcorreo();
}

function validacion(campo) {
    var a = 0;


    if (campo === 'txtNombre') {
        nombre = document.getElementById(campo).value;
        if (nombre == null || nombre.length == 0) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese algo").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;

        }
        else if (/[0-9.]+|[.]| +/.test(nombre)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("No acepta Números ni otro caracter , solo letras").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
        else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-success has-feedback");
            $('#' + campo).parent().children('span').hide();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        }
    }


    if (campo === 'txtApellidoPaterno') {
        apellidopaterno = document.getElementById(campo).value;
        if (apellidopaterno == null || apellidopaterno.length == 0) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese algo").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;

        }
        else if (/[0-9.]+|[.]| +/.test(apellidopaterno)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("No acepta Números ni otro caracter , solo letras").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
        else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-success has-feedback");
            $('#' + campo).parent().children('span').hide();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        }
    }


    if (campo === 'txtApellidoMaterno') {
        apellidomaterno = document.getElementById(campo).value;
        if (apellidomaterno == null || apellidomaterno.length == 0) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese algo").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;

        }
        else if (/[0-9.]+|[.]| +/.test(apellidomaterno)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("No acepta Números ni otro caracter , solo letras").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
        else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-success has-feedback");
            $('#' + campo).parent().children('span').hide();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        }
    }



    if (campo === 'txtEdad') {
        edad = document.getElementById(campo).value;
        if (edad == null || edad.length == 0) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese algo").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;

        }
        else if (/[a-zA-Z]+|[.]| +/.test(edad)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("No se aceptan letras , solo números").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
        else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-success has-feedback");
            $('#' + campo).parent().children('span').hide();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        }
    }


    if (campo === 'txtDocumento') {
        documento = document.getElementById(campo).value;
        if (documento == null || documento.length == 0) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese algo").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;

        }
        else if (/[a-zA-Z]+|[.]| +/.test(documento)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("No se aceptan letras , solo números").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
        else if (/^\d{1,7}(\.\d{1,2})?$/.test(documento)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese mas dígitos por favor").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
        else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-success has-feedback");
            $('#' + campo).parent().children('span').hide();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        }
    }


    if (campo === 'txtTelefono') {
        telefono = document.getElementById(campo).value;
        if (telefono == null || telefono.length == 0) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese algo").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;

        }
        else if (/[a-zA-Z]+|[.]| +/.test(telefono)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("No se aceptan letras , solo números").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
        else if (/^\d{1,8}(\.\d{1,2})?$/.test(telefono)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese mas dígitos por favor").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
        else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-success has-feedback");
            $('#' + campo).parent().children('span').hide();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        }
    }


    if (campo === 'txtDireccion') {
        direccion = document.getElementById(campo).value;
        if (direccion == null || direccion.length == 0) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese algo").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;

        }
        //else if (/.{1,10}/.test(direccion)) {
        //    $("#glypcn" + campo).remove();
        //    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
        //    $('#' + campo).parent().children('span').text("Ingrese mas palabras").show();
        //    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
        //    return false;
        //}
        else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-success has-feedback");
            $('#' + campo).parent().children('span').hide();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        }
    }



    if (campo === 'txtCorreo') {
        email = document.getElementById(campo).value;
        if (email == null || email.length == 0 || /^\s+$/.test(email)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese algun Email").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");

            return false;

        }
        else {
            if (!(/\S+@\S+\.\S+/.test(email))) {
                $("#glypcn" + campo).remove();
                $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                $('#' + campo).parent().children('span').text("Ingrese un Email valido").show();
                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                return false;
            }
            else {
                $("#glypcn" + campo).remove();
                $('#' + campo).parent().parent().attr("class", "form-group has-success has-feedback");
                $('#' + campo).parent().children('span').hide();
                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");

                return true;
            }
        }

    }


    if (campo === 'txtSalario') {
        salario = document.getElementById(campo).value;
        if (salario == null || salario.length == 0) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese algo").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;

        }
        else if (/[a-zA-Z]+|[.]| +/.test(salario)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("No se aceptan letras , solo números").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
        else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-success has-feedback");
            $('#' + campo).parent().children('span').hide();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        }
    }


    if (campo === 'txtNumCuenta') {
        numerocuenta = document.getElementById(campo).value;
        if (numerocuenta == null || numerocuenta.length == 0) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese algo").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;

        }
        else if (/[a-zA-Z]+|[.]| +/.test(numerocuenta)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("No se aceptan letras , solo números").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
        else if (/^\d{1,7}(\.\d{1,2})?$/.test(numerocuenta)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese mas dígitos por favor").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
        else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-success has-feedback");
            $('#' + campo).parent().children('span').hide();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        }
    }





    if (campo === 'dni') {
        dni = document.getElementById(campo).value;
        if (dni == null || dni.length == 0 || /^\s+$/.test(dni)) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
            $('#' + campo).parent().children('span').text("Ingrese algo").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;

        }
        else {
            if (isNaN(dni)) {
                $("#glypcn" + campo).remove();
                $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                $('#' + campo).parent().children('span').text("No acepto letras").show();
                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                return false;
            }
            else {
                if (!(/^\d{8}$/.test(dni))) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#' + campo).parent().children('span').text("Debe ingresar solamente 8 digitos").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().parent().attr("class", "form-group has-success has-feedback");
                    $('#' + campo).parent().children('span').hide();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");

                    return true;
                }

            }
        }
    }

    if (campo === 'genderRadios') {
        opciones = document.getElementsByName(campo);
        var seleccionado = false;
        for (var i = 0; i < opciones.length; i++) {
            if (opciones[i].checked) {
                seleccionado = true;
                break;
            }
        }

        if (!seleccionado) {
            $('#male').parent().parent().parent().attr("class", "form-group has-error has-feedback");
            $('#male').parent().parent().next().append("<span id='sexo'  class='glyphicon glyphicon-remove form-control-feedback'></span>");


            return false;
        }
        else {
            $("#sexo").remove();
            $('#male').parent().parent().parent().attr("class", "form-group has-success");
            return true;
        }
    }
    if (campo === 'ddlTipoDocumento') {
        indice = document.getElementById(campo).selectedIndex;
        if (indice == null || indice == 0) {
            $('#carrera').parent().parent().attr("class", "form-group has-error");
            return false;
        }
        else {
            $('#carrera').parent().parent().attr("class", "form-group has-success");
            return true;

        }
    }
}