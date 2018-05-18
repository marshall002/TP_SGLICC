<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageInicio.master" AutoEventWireup="true" CodeFile="registro.aspx.cs" Inherits="registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:TextBox ID="Correo_existe" runat="server"></asp:TextBox>
            <asp:TextBox ID="Documento_existe" runat="server"></asp:TextBox>
            <asp:TextBox ID="ApagarTimer" runat="server"></asp:TextBox>
            <asp:Timer ID="Timer1_Correo_Y_Documento_existen" runat="server" Interval="400" OnTick="Timer1_Correo_Y_Documento_existen_Tick"></asp:Timer>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1_Correo_Y_Documento_existen" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <script> 

<%--            $("#iniciar_sesion").on("click", function () {
                var apagar = $find("<%=Timer1_Correo_Y_Documento_existen.ClientID%>")
                apagar._startTimer();
            });--%>



           <%-- $("#txtDocumento").on("change", function () {
                var apagar = $find("<%=Timer1_Correo_Y_Documento_existen.ClientID%>")
                apagar._startTimer();
            }


            $("#cerrar").on("click", function () {
                var Documento_y_Correo_existente = $find("<%=Timer1_Correo_Y_Documento_existen.ClientID%>")
                Documento_y_Correo_existente._stopTimer();     
            });--%>




              <%--$("html").click(function () {
                  var Documento_y_Correo_existente = $find("<%=Timer1.ClientID%>")
                  Documento_y_Correo_existente._stopTimer();     
              });
              $('#caja-loguin').click(function (e) {
                  var Documento_y_Correo_existente = $find("<%=Timer1.ClientID%>")
                  Documento_y_Correo_existente._stopTimer();     
              });--%>


<%--            $("#cuerpo").on("click", function () {
                var apagar = $find("<%=Timer1_Correo_Y_Documento_existen.ClientID%>")
                apagar._stopTimer();
            })--%>

            <%--  $("#Registrarse").mouseover(function () {
                  var apagar = $find("<%=Timer1_Correo_Y_Documento_existen.ClientID%>")
                  apagar._startTimer();
               });
            --%>

              <%--$("#caja-loguin").mouseleave(function () {
                  var Documento_y_Correo_existente = $find("<%=Timer1.ClientID%>")
                  Documento_y_Correo_existente._stopTimer();           
              });--%>

        //$("#cuerpo").on("click", function () {
        //    stopTimer();
        //});


        //$("#cuerpo").mouseover(function () {
        //    stopTimer();
        //});


        //Cuando sali del div
        //$("#Registro").mouseleave(function () {
        //    stopTimer();
        //});

        //$("#Registrarse").on("click", function () {
        //    stopTimer();
        //});



        //$("#Registrarse").on('click', '.modal', function () {
        //    $('#msgError').html("");
        //    // su acción
        //});



        //$("#Registrarse").on("click", function () {
        //    alert("Modal Mostrada");
        //});



        //$("#Registrar_personal").ready(function () {
        //    $("#Departamentos_Provincias_Distritos").on('click', function () {
        //        stopTimer();
        //    })
        //});

        //$("#fila_1").mouseover(function () {
        //    startTimer();
        //});

        var div1;
        var div2;
        var div3;


        //$('#tusDropDownList').change(function () { /* Esto es el evento del cambio de ddl */
        //    /* Obtener el valor de tus dropdownlist */
        //    var selectedId = $(this).val();
        //});

        //$("#btnRegistrar").click(function () {
        //    alert('Ha hecho click sobre el boton');
        //    return true; // TIP: esto no es necesario de todas formas
        //});



        window.onload = function () {
            <%-- departamentos3 = document.getElementById("<%=ddlDepartamentos.ClientID%>").value;
             cargo = document.getElementById("<%=ddlTipoCargo.ClientID%>").value;
             //alert(cargo);

             

             departamentos = document.getElementById("<%=ddlDepartamentos.ClientID%>").value;
             tipocargo = document.getElementById("<%=ddlTipoCargo.ClientID%>").value;--%>




                //document.oncontextmenu = function () { return false }
                //shortcut.add("F12", function () {
                //});


                //shortcut.add("Ctrl+U", function () {
                //    alert("Hi there!");
                //});
                //div_departamentos = document.getElementById("departamentos");
                //div_provincias = document.getElementById("provincias").style.visibility = "hidden";;
                //div_distritos = document.getElementById("distritos").style.visibility = "hidden";;


                //var btnConfirmar = document.getElementById("btnConfirmar");
                //btnConfirmar.onclick = removeDiv2();
                //var btnRegistrar = document.getElementById("btnRegistrar");
                //btnRegistrar.onclick = removeDiv3;

            }


            var v = true;
            $("span.help-block").hide();



            function guardarDatosDeColaborador() {
                nombres = document.getElementById('txtNombres').value;
                apellidos = document.getElementById('txtApellidos').value;
                edad = document.getElementById('txtEdad').value;
                documento = document.getElementById('txtDocumento').value;
                telefono = document.getElementById('txtTelefono').value;
                direccion = document.getElementById('txtDireccion').value;
                correo = document.getElementById('txtCorreo').value;
                salario = document.getElementById('txtSalario').value;
                numcuenta = document.getElementById('txtNumCuenta').value;
             <%-- tipocargo = document.getElementById("<%=ddlTipoCargo.ClientID%>").value;--%>
                usuario = document.getElementById('txtCorreo').value;
                contra = document.getElementById('txtDocumento').value;

            <%--document.getElementById("<%=txtNombre2.ClientID%>").value = nombre;
            document.getElementById("<%=txtApellidoPaterno2.ClientID%>").value = apellidopaterno;
            document.getElementById("<%=txtApellidoMaterno2.ClientID%>").value = apellidomaterno;
            document.getElementById("<%=txtEdad2.ClientID%>").value = edad;
            document.getElementById("<%=txtDocumento2.ClientID%>").value = documento;
            document.getElementById("<%=txtTipoDocumento2.ClientID%>").value = tipodocumento;
            document.getElementById("<%=txtTelefono2.ClientID%>").value = telefono;
            document.getElementById("<%=txtDireccion2.ClientID%>").value = direccion;
            document.getElementById("<%=txtCorreo2.ClientID%>").value = correo;
            document.getElementById("<%=txtSalario2.ClientID%>").value = salario;
            document.getElementById("<%=txtNumCuenta2.ClientID%>").value = numcuenta;
            
            document.getElementById("<%=txtUsuario2.ClientID%>").value = usuario;
            document.getElementById("<%=txtContra2.ClientID%>").value = contra;--%>

           <%-- document.getElementById("<%=txtNombre3.ClientID%>").value = nombre;--%>

            }

            function generarDatosyMostrar() {
                nombre = document.getElementById('txtNombre').value;
                apellidos = document.getElementById('txtApellidos').value;

            //document.getElementById('txtUser').value = nombre + " " + apellidopaterno + " " + apellidomaterno;
         <%--   document.getElementById("<%=txtUsuario.ClientID%>").value = nombre + " " + apellidopaterno + " " + apellidomaterno;--%>

            }

            function enviarcorreo() {
                document.getElementById("div1").style.display = "none";
                document.getElementById("div2").style.display = "block";
                generarDatosyMostrar();
                $("#error").hide();
                $("#exito").hide();
                $("#enviarcorreo").show();

            }


            function RegistroCompleto() {
                swal({
                    title: "Registro Exitoso!",
                    text: "Se registro a la persona!",
                    icon: "success",
                    button: "Cerrar!",

                }).then(function () {
                    // Redirect the user
                    window.location.href = "gestionar-personal.aspx";
                    //console.log('The Ok Button was clicked.');
                    swal({
                        timer: 4000,
                    })
                });
            }

            function CorreoYaExiste() {
                swal("Este correo ya existe!", {
                    button: {
                        text: "Cerrar!",
                    },
                });
            }

            function DocumentoYaExiste() {
                swal("Este documento ya existe!", {
                    button: {
                        text: "Cerrar!",
                    },
                });
            }

            function verificar() {

                var v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0;

                v1 = validacion('txtDocumento');
                v2 = validacion('txtNombres');
                v3 = validacion('txtApellidos');
             <%--  v4 = validacion(document.getElementById("<%=ddlDepartamentos.ClientID%>").value);--%>
             <%-- v5 = validacion(document.getElementById("<%=ddlProvincias.ClientID%>").value);
             v6 = validacion(document.getElementById("<%=ddlDistritos.ClientID%>").value);--%>
                //v4 = validacion('ddlDepartamentos');
                //v5 = validacion('ddlProvincias');
                //v6 = validacion('ddlDistritos');       

                v4 = validacion('txtCorreo');
                v5 = validacion('txtContra1');
                v6 = validacion('txtContra2');


                if (v1 === false || v2 === false || v3 === false || v4 === false || v5 === false || v6 === false) {
                    $("#exito").hide();
                    $("#error").show();
                    $("#enviarcorreo").hide();
                    document.getElementById('verificado').value = 0;
                } else {
                    document.getElementById('verificado').value = 1;
                    $("#error").hide();
                    $("#exito").hide();
                    $("#enviarcorreo").hide();


                }
            }


            function validacion(campo) {

                if (campo === 'txtDocumento') {
                    documento = document.getElementById(campo).value;
                    var documento_existe = $("#<%=Documento_existe.ClientID%>").val();
                    if (documento == null || documento.length == 0) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("Ingrese algo").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;

                    }
                    else if (/(\s)/.test(documento)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^[0-9]{9,}$/.test(documento)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("El máximo de digitos permitos son 8").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^[0-9]{0,7}$/.test(documento)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("Ingrese mas dígitos , necesarios 8").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (documento_existe === "Si existe") {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("Este documento ya existe").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^[0-9]{8,8}$/.test(documento)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                        $('#' + campo).parent().css({ "color": "green" });
                        $('#' + campo).parent().children('span').text("OK").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                        return true;
                    }
                    else {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("Ingrese solo números").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                }



                if (campo === 'txtNombres') {
                    nombres = document.getElementById(campo).value;
                    if (nombres == null || nombres.length == 0 || nombres == "") {
                        //$("#glypcn" + campo).remove();
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("Ingrese algo").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;

                    }
                    else if (/^([a-zA-Z]){3,3}\s/.test(nombres)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No puedes tener tu primer nombre con solo tres letras.").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^([a-zA-Z]){2,2}\s/.test(nombres)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No puedes tener tu primer nombre con solo dos letras.").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^([a-zA-Z]\s)/.test(nombres)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No puedes tener tu primer nombre con solo una letra.").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/([a-zA-Z]{1,}\s){2,}/.test(nombres)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No se permiten poner mas de un espacio en blanco").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/[a-zA-Z]\s{2,}/.test(nombres)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No se permiten poner mas de un espacio en blanco").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^(\s)+/.test(nombres)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No se permiten espacios en blanco al inicio").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{20,}$/.test(nombres)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No se permiten mas de 20 letras").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{0,3}$/.test(nombres)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("Mínimo 4 letras y Máximo 20 letras").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{4,20}$/.test(nombres)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                        $('#' + campo).parent().css({ "color": "green" });
                        $('#' + campo).parent().children('span').text("OK").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                        return true;
                    }
                    else {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No acepta Números ni otro caracter , solo letras").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                }


                if (campo === 'txtApellidos') {
                    nombre = document.getElementById('txtNombres').value;
                    apellidos = document.getElementById(campo).value;
                    if (apellidos == null || apellidos.length == 0) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("Ingrese algo").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;

                    }
                    else if (/^(\s)+/.test(apellidos)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No se permiten espacios en blanco al inicio").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^([a-zA-Z]){3,3}\s/.test(apellidos)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No puedes tener tu primer apellido con solo tres letras.").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^([a-zA-Z]){2,2}\s/.test(apellidos)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No puedes tener tu primer apellido con solo dos letras.").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^([a-zA-Z]\s)/.test(apellidos)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No puedes tener tu primer apellido con solo una letra.").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/([a-zA-Z]{1,}\s){2,}/.test(apellidos)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No se permite poner espacios en blanco seguidos").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/[a-zA-Z]\s{2,}/.test(apellidos)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No se permite poner espacios en blanco seguidos").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }

                    else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{20,}$/.test(apellidos)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No se permiten mas de 20 letras").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{0,3}$/.test(apellidos)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("Mínimo 4 letras y Máximo 20 letras").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if ((apellidos == nombre) || ((apellidos == nombre + (/[a-zA-Z]\s{2,}/.test(apellidos))))) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("Su Apellido no puede ser igual que su Nombre").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                    else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{4,20}$/.test(apellidos)) {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                        $('#' + campo).parent().css({ "color": "green" });
                        $('#' + campo).parent().children('span').text("OK").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                        return true;
                    }
                    else {
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("No acepta Números ni otro caracter , solo letras").show();
                        $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                        return false;
                    }
                }




                if (campo === 'txtCorreo') {
                    email = document.getElementById(campo).value;
                    var correo_existe = $("#<%=Correo_existe.ClientID%>").val();
                <%--versiexistecorreo = document.getElementById('<%=verificarsiexistecorreo.ClientID %>').value;--%>
                  if (email == null || email.length == 0 || /^\s+$/.test(email)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Ingrese algun Correo").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;

                  }
                  //else if (versiexistecorreo === "2") {
                  //    $("#glypcn" + campo).remove();
                  //    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                  //    $('#' + campo).parent().children('span').text("Este correo ya existe").show();
                  //    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                  //    return false;
                  //}
                  else if (/(\s)/.test(email)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (!(/\S+@\S+\.\S+/.test(email))) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Ingrese un Correo valido").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (correo_existe === "Si existe") {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Este correo ya existe").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                      $('#' + campo).parent().css({ "color": "green" });
                      $('#' + campo).parent().children('span').text("OK").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                      return true;
                  }
              }


              if (campo === 'txtContra1') {
                  documento = document.getElementById('txtDocumento').value;
                  nombres = document.getElementById('txtNombres').value;
                  apellidos = document.getElementById('txtApellidos').value;
                  correo = document.getElementById('txtCorreo').value;
                  contra1 = document.getElementById(campo).value;

                  if (contra1 == null || contra1.length == 0 || contra1 == "") {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Ingrese una contraseña").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;

                  }
                  else if (/^(\s)+/.test(contra1)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("No se permiten espacios en blanco al inicio").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;

                  }
                  else if (/(\s)/.test(contra1)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[a-zA-Z0-9 áéíóúÁÉÍÓÚñÑ]{1,7}$/.test(contra1)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("La contraseña debe tener entre 8 y 16 caracteres.").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[a-zA-Z0-9 áéíóúÁÉÍÓÚñÑ]{8}$/.test(contra1)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("La contraseña debe debe tener al menos un dígito, al menos una minúscula y al menos una mayúscula, NO puede tener otros símbolos.").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[a-z]{1,8}$/.test(contra1)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("La contraseña debe debe tener al menos un dígito, al menos una minúscula y al menos una mayúscula, NO puede tener otros símbolos.").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[A-Z]{1,8}$/.test(contra1)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("La contraseña debe debe tener al menos un dígito, al menos una minúscula y al menos una mayúscula, NO puede tener otros símbolos.").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[0-9]{1,8}$/.test(contra1)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("La contraseña debe debe tener al menos un dígito, al menos una minúscula y al menos una mayúscula, NO puede tener otros símbolos.").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[a-zA-Z0-9 áéíóúÁÉÍÓÚñÑ]{16,}$/.test(contra1)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("No se permiten mas de 16 letras").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }

                  else if ((contra1 == documento) || ((contra1 == documento + (/[a-zA-Z0-9]\s{2,}/.test(contra1))))) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Su Contraseña no puede ser igual que su Documento").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if ((contra1 == nombres) || ((contra1 == nombres + (/[a-zA-Z]\s{2,}/.test(contra1))))) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Su Contraseña no puede ser igual que su Nombre").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if ((contra1 == apellidos) || ((contra1 == apellidos + (/[a-zA-Z]\s{2,}/.test(contra1))))) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Su Contraseña no puede ser igual que su Apellido").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if ((contra1 == correo) || ((contra1 == correo + (/[a-zA-Z]\s{2,}/.test(contra1))))) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Su Contraseña no puede ser igual que su Correo").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }

                  else if ((/^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$/.test(contra1))) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                      $('#' + campo).parent().css({ "color": "green" });
                      $('#' + campo).parent().children('span').text("OK").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                      return true;
                  }
              }


              if (campo === 'txtContra2') {
                  documento = document.getElementById('txtDocumento').value;
                  nombres = document.getElementById('txtNombres').value;
                  apellidos = document.getElementById('txtApellidos').value;
                  correo = document.getElementById('txtCorreo').value;
                  contra1 = document.getElementById('txtContra1').value;
                  contra2 = document.getElementById(campo).value;

                  if (contra2 == null || contra2.length == 0 || contra2 == "") {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Ingrese una contraseña").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;

                  }
                  else if (/^(\s)+/.test(contra2)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("No se permiten espacios en blanco al inicio").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;

                  }
                  else if (/(\s)/.test(contra2)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[a-zA-Z0-9 áéíóúÁÉÍÓÚñÑ]{1,7}$/.test(contra2)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("La contraseña debe tener entre 8 y 16 caracteres.").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[a-zA-Z0-9 áéíóúÁÉÍÓÚñÑ]{8}$/.test(contra2)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("La contraseña debe debe tener al menos un dígito, al menos una minúscula y al menos una mayúscula, NO puede tener otros símbolos.").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[a-z]{1,8}$/.test(contra2)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("La contraseña debe debe tener al menos un dígito, al menos una minúscula y al menos una mayúscula, NO puede tener otros símbolos.").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[A-Z]{1,8}$/.test(contra2)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("La contraseña debe debe tener al menos un dígito, al menos una minúscula y al menos una mayúscula, NO puede tener otros símbolos.").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[0-9]{1,8}$/.test(contra2)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("La contraseña debe debe tener al menos un dígito, al menos una minúscula y al menos una mayúscula, NO puede tener otros símbolos.").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if (/^[a-zA-Z0-9 áéíóúÁÉÍÓÚñÑ]{16,}$/.test(contra2)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("No se permiten mas de 16 letras").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }

                  else if ((contra2 == documento) || ((contra2 == documento + (/[a-zA-Z0-9]\s{2,}/.test(contra2))))) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Su Contraseña no puede ser igual que su Documento").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if ((contra2 == nombres) || ((contra2 == nombres + (/[a-zA-Z]\s{2,}/.test(contra2))))) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Su Contraseña no puede ser igual que su Nombre").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if ((contra2 == apellidos) || ((contra2 == apellidos + (/[a-zA-Z]\s{2,}/.test(contra2))))) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Su Contraseña no puede ser igual que su Apellido").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if ((contra2 == correo) || ((contra2 == correo + (/[a-zA-Z]\s{2,}/.test(contra2))))) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Su Contraseña no puede ser igual que su Correo").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }
                  else if ((/^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$/.test(contra2)) & (contra2 != contra1)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).parent().css({ "color": "brown" });
                      $('#' + campo).css({ "border": "2px solid brown" });
                      $('#' + campo).parent().children('span').text("Su Contraseña 2 debe ser igual que su Contraseña 1").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                      return false;
                  }

                  else if ((/^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$/.test(contra2)) & (contra2 === contra1)) {
                      $("#glypcn" + campo).remove();
                      $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                      $('#' + campo).parent().css({ "color": "green" });
                      $('#' + campo).parent().children('span').text("OK").show();
                      $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                      return true;
                  }
              }
            }

    </script>
</asp:Content>

