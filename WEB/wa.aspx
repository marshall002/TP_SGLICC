<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageInicio.master" AutoEventWireup="true" CodeFile="wa.aspx.cs" Inherits="wa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container col-lg-7 col-md-7 col-sm-7 col-xl-7 "> 
         <div class="modal fade" id="Registrarse">
                <div class="modal dialog">
                    <div class="modal-content ">
                        <!-- Modal Header -->
                           <div class="caja-header-registro">
                            <span class="cabecera-registro">MiHogar-Perú
                            </span>
                            </div>

                            <div class="row">
                            <div class="caja-input-registro">
                                <input id="txtDocumento" name="txtDocumento" class="estilo-contenido-input" type="text" placeholder="Dni" onkeyup="validacion('txtDocumento');">
                                <span class="help-block mensaje-alerta-inicio"></span>
                            </div>

                            <div class="caja-input-registro">
                                <input id="txtCorreo" name="txtCorreo" class="estilo-contenido-input" type="text" placeholder="Correo" onkeyup="validacion('txtCorreo');">
                                <span class="help-block mensaje-alerta-inicio"></span>
                            </div>                           
                            </div>

                            <div class="row">
                            <div class="caja-input-registro">
                                <input id="txtApellidos" name="txtApellidos" class="estilo-contenido-input" type="text"  placeholder="Apellidos" onkeyup="validacion('txtApellidos');">
                                <span class="help-block mensaje-alerta-inicio"></span>
                            </div>

                            <div class="caja-input-registro">
                                <input id="txtNombres" name="txtNombres" class="estilo-contenido-input" type="text" placeholder="Nombres" onkeyup="validacion('txtNombres');">
                                <span class="help-block mensaje-alerta-inicio"></span>
                            </div>
                            </div>
                            
                            <div class="row">
                            <div class="caja-input-registro">
                                <input id="txtContra1" name="txtContra1" class="estilo-contenido-input" type="password"  placeholder="Contraseña" onkeyup="validacion('txtContra1');">
                                <span class="help-block mensaje-alerta-inicio"></span>
                            </div>

                            <div class="caja-input-registro">
                                <input id="txtContra2" name="txtContra2" class="estilo-contenido-input" type="password"  placeholder="Confirmar-Contraseña" onkeyup="validacion('txtContra2');">
                                <span class="help-block mensaje-alerta-inicio"></span>
                            </div>
                            </div>



                            <div class="container-boton-registrar">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                                    <ContentTemplate>
                                        <asp:Button ID="btnRegistrar" runat="server" CssClass="boton-registrar" Text="Registrarme" OnClientClick="verificar();" OnClick="btnRegistrar_Click" />
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="btnRegistrar" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </div>

                            <div class="caja-volver-cerrar">
                            <div class="volver">
                                <a href="#" class="txt3" data-dismiss="modal" data-toggle="modal" data-target="#IniciarSesion" aria-haspopup="true" aria-expanded="false">Volver
                                </a>
                            </div>
                             <div class="cerrar">
                                <button id="cerrar" type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                            </div>
                            </div>

                            <div class="espacio-final-registro">
                                <input id="verificado" style="width: 210px;" name="verificado" type="hidden" class="form-control" />
                                 <asp:TextBox ID="Correo_existe" runat="server"></asp:TextBox>
                                 <asp:TextBox ID="Documento_existe" runat="server"></asp:TextBox>
                                 <asp:TextBox ID="ApagarTimer" runat="server"></asp:TextBox>
                            </div>
                           

                       
                    </div>
                </div>
            </div>
         </div>
     <script>  


         var div1;
         var div2;
         var div3;


         window.onload = function () {

         }


         var v = true;
         $("span.help-block").hide();



         function verificar() {

             var v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0;

             v1 = validacion('txtDocumento');
             v2 = validacion('txtNombres');
             v3 = validacion('txtApellidos');
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
             $('<audio id="chatAudio"><source src="notify.ogg" type="audio/ogg"><source src="/pages/audio/exito.mp3" " type="audio/mpeg"><source src="notify.wav" type="audio/wav"></audio>').appendTo('body');
             if (campo === 'txtDocumento') {
                 documento = document.getElementById(campo).value;
                 $.ajax({
                     type: "POST",
                     //url: "inicio.aspx/comprobardocumento",
                     url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/comprobardocumento")%>',
                        data: '{documento: "' + $("#txtDocumento").val() + '" }',
                        dataType: 'JSON',
                        contentType: "application/json; charset=utf-8",
                        success: function (res) {
                            if (res.d) {
                                //alert("si existe");
                                campo = 'txtDocumento';
                                $("#glypcn" + campo).remove();
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Este documento ya existe").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                           <%-- $('#<%=Correo_existe.ClientID%>').val('Si existe');--%>
                            }
                            else {

                                if (documento == null || documento.length == 0) {
                                    $("#glypcn" + campo).remove();
                                    $('#' + campo).parent().css({ "color": "brown" });
                                    $('#' + campo).css({ "border": "2px solid brown" });
                                    $('#' + campo).parent().children('span').text("Ingrese su documento").show();
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
                        }
                    });
                }


                if (campo === 'txtNombres') {
                    nombres = document.getElementById(campo).value;
                    if (nombres == null || nombres.length == 0 || nombres == "") {
                        //$("#glypcn" + campo).remove();
                        $("#glypcn" + campo).remove();
                        $('#' + campo).parent().css({ "color": "brown" });
                        $('#' + campo).css({ "border": "2px solid brown" });
                        $('#' + campo).parent().children('span').text("Ingrese su nombre").show();
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
                        $('#' + campo).parent().children('span').text("Ingrese su apellido").show();
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
                    correo_existe = $("#<%=Correo_existe.ClientID%>").val();
                <%--versiexistecorreo = document.getElementById('<%=verificarsiexistecorreo.ClientID %>').value;--%>
                <%-- var correo = $("<%=txtCorreo.ClientID%>").val();--%>
                  $.ajax({
                      type: "POST",
                      //url: "MasterPageInicio.master/comprobarcorreo",
                      url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/comprobarcorreo")%>',
                    data: '{correo: "' + $("#txtCorreo").val() + '" }',
                    dataType: 'JSON',
                    contentType: "application/json; charset=utf-8",
                    success: function (res) {
                        if (res.d) {
                            //alert("si existe");
                            campo = 'txtCorreo';
                            $("#glypcn" + campo).remove();
                            $('#' + campo).parent().css({ "color": "brown" });
                            $('#' + campo).css({ "border": "2px solid brown" });
                            $('#' + campo).parent().children('span').text("Este correo ya existe").show();
                            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                            return false;
                           <%-- $('#<%=Correo_existe.ClientID%>').val('Si existe');--%>
                        }
                        else {

                            if (email == null || email.length == 0 || /^\s+$/.test(email)) {
                                $("#glypcn" + campo).remove();
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Ingrese algun Correo").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
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
                            else {
                                $("#glypcn" + campo).remove();
                                $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                                $('#' + campo).parent().css({ "color": "green" });
                                $('#' + campo).parent().children('span').text("OK").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                                return true;
                            }
                        }
                    }
                  });
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      
</asp:Content>

