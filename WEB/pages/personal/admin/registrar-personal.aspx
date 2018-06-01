<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPagePanel.master" AutoEventWireup="true" CodeFile="registrar-personal.aspx.cs" Inherits="pages_personal_admin_registrar_personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>

 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div id="Registrar_personal" class="contenedor-registro-personal">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="contenedor2-registro-personal">
                    <div class="card-block header-titulo-registro-personal">                       
                       <h4 class="card-title titulo-registrar-personal"><b><p class="title">Datos del Usuario</p></b></h4>                    
                    </div> 
              <%--<div class="columna1-registro">--%>
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                        <br />
                        <%--<div class="contenedor-imagen-perfil">
                          <asp:Image ID="img_Perfil" CssClass="img-fluid imagen-perfil" runat="server" />
                        </div>--%>

                        <div class="fila-input-registro-personal">
                        <div class="row-perso-reg  caja-columna1-registro-personal" >
                           <label class="contenido-columna1-fila1-registro-personal">Nombres:</label>                             
                           <input id="txtNombres" name="txtNombres"  maxlength="20" type="text" class="form-control-personalizado-personal contenido-columna1-fila2-registro col-lg-9 col-md-9 col-sm-9 col-xl-9" placeholder="Escriba sus Nombres" onkeyup="validacion('txtNombres');"/> 
                        <span class="help-block "></span>
                        </div>                         
                         <div class="row-perso-reg  caja-columna2-registro-personal" >
                            <label class="contenido-columna2-fila1-registro-personal">Apellidos:</label>                                
                            <input id="txtApellidos" name="txtApellidos" maxlength="20" type="text" class="form-control-personalizado-personal2 contenido-columna2-fila2-registro col-lg-9 col-md-9 col-sm-9 col-xl-9" placeholder="Escriba sus Apellidos" onkeyup="validacion('txtApellidos');"/> 
                         <span class="help-block "></span>
                        </div>
                        </div>

                        <div class="fila-input-registro-personal">
                        <div class="row-perso-reg caja-columna1-registro-personal">
                            <label class="contenido-columna1-fila1-registro-personal">Dirección:</label>                                
                            <input id="txtDireccion" name="txtDireccion" maxlength="50" type="text" class="form-control-personalizado-personal contenido-columna1-fila2-registro col-lg-9 col-md-9 col-sm-9 col-xl-9" placeholder="Escriba su Dirección" onkeyup="validacion('txtDireccion');"/> 
                        <span class="help-block "></span>
                        </div>
                        <div id="Departamentos_Provincias_Distritos" class="row-perso-reg caja-columna2-registro-select">
                            <label id="lblDepartamentos" class="contenido-columna2-fila1-registro-personal">Departamento /</label><label id="lblProvincias" class="contenido-columna2-fila1-registro-personal">Provincia /</label> <label id="lblDistritos" class="contenido-columna2-fila1-registro-personal">Distrito:</label>                    
                            <div class="contenedor-dropdown-registro-personal">                     
                             <asp:UpdatePanel ID="UpdatePanel1" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList Cssclass="contenido-columna2-fila2-registro-departamentos" ID="ddlDepartamentos" OnSelectedIndexChanged="ddlDepartamentos_SelectedIndexChanged" runat="server" onchange="comprobarDepartamentos(this);">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlDepartamentos" EventName="selectedindexchanged" />
                             </Triggers>
                             </asp:UpdatePanel>
                           
                             <asp:UpdatePanel ID="UpdatePanel2" runat="server"   >
                             <ContentTemplate>
                             <asp:DropDownList Cssclass="contenido-columna2-fila2-registro-provincias" ID="ddlProvincias" OnSelectedIndexChanged="ddlProvincias_SelectedIndexChanged1" runat="server" onchange="comprobarProvincias(this);">                                                                                    
                             </asp:DropDownList><asp:Button CssClass="volver-select-registro-personal" ID="volver1" runat="server" Text="Volver" OnClientClick="volver1_clicked()" OnClick="volver1_Click"/>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlProvincias" EventName="selectedindexchanged" />
                             </Triggers>
                             </asp:UpdatePanel>
                           
                             <asp:UpdatePanel ID="UpdatePanel3" runat="server"   >
                             <ContentTemplate>
                             <asp:DropDownList Cssclass="contenido-columna2-fila2-registro-distritos" ID="ddlDistritos" OnSelectedIndexChanged="ddlDistritos_SelectedIndexChanged1" runat="server" onchange="comprobarDistritos(this);">                                                                                    
                             </asp:DropDownList><asp:Button CssClass="volver-select-registro-personal" ID="volver2" runat="server" Text="Volver" OnClientClick="volver2_clicked()" OncLICK="volver2_Click"/>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlDistritos" EventName="selectedindexchanged" />
                             </Triggers>
                             </asp:UpdatePanel>   
                             <span class="help-block "></span>
                             </div>                            
                              
                         </div>
                        </div>

                        <div class="fila-input-registro-personal">
                         <div class="row-perso-reg caja-columna1-registro-personal">
                            <label class="contenido-columna1-fila1-registro-personal">Celular:</label>                                
                            <input id="txtCelular" name="txtCelular" maxlength="20" type="text" class="form-control contenido-columna1-fila2-registro col-lg-9 col-md-9 col-sm-9 col-xl-9" placeholder="Escriba su Celular" onkeyup="validacion('txtCelular');"/> 
                        <span class="help-block mensaje-alerta"></span>
                        </div>
                         <div class="row-perso-reg caja-columna2-registro-personal">
                            <label class="contenido-columna2-fila1-registro-personal">Teléfono:</label>                                
                           <input id="txtTelefono" name="txtTelefono" maxlength="10" type="text" class="form-control contenido-columna2-fila2-registro col-lg-9 col-md-9 col-sm-9 col-xl-9" placeholder="Escriba su Teléfono" onkeyup="validacion('txtTelefono');"/> 
                        <span class="help-block mensaje-alerta"></span>
                        </div> 
                        </div>

                        <div class="fila-input-registro-personal">
                        <div class="row-perso-reg caja-columna1-registro-personal">
                           <label class="contenido-columna1-fila1-registro-personal">Correo:</label>                                
                           <input id="txtCorreo" name="txtCorreo" maxlength="40" type="text" class="form-control contenido-columna1-fila2-registro col-lg-9 col-md-9 col-sm-9 col-xl-9" placeholder="Escriba su Correo" onkeyup="validacion('txtCorreo');"/> 
                           <span class="help-block mensaje-alerta"></span>
                        </div>
                        <div class="row-perso-reg caja-columna2-registro-personal">
                            <label class="contenido-columna2-fila1-registro-personal">Documento:</label>                               
                            <input id="txtDocumento" name="txtDocumento" maxlength="20" type="text" class="form-control contenido-columna2-fila2-registro col-lg-9 col-md-9 col-sm-9 col-xl-9" placeholder="Escriba su Documento" onkeyup="validacion('txtDocumento');"/> 
                        <span class="help-block mensaje-alerta"></span>
                        </div>
                        </div>

                        <div class="fila-input-registro-personal">
                         <div class="row-perso-reg caja-columna1-registro-personal">
                            <label class="contenido-columna1-fila1-registro-personal">Fecha Nacimiento:</label>                                
                            <input type="date"  id="txtFechaNacimiento" name="txtFechaNacimiento" step="1" min="1990-01-01" max="2017-12-31" class="form-control contenido-columna1-fila2-registro-fechanacimiento col-lg-9 col-md-9 col-sm-9 col-xl-9"  onchange="validacion('txtFechaNacimiento');"/>
                            <span class="help-block mensaje-alerta"></span>
                         </div>
                         <div id="tipo_cargo" class="row-perso-reg caja-columna2-registro-personal">
                             <label id="lblTipoCargo" class="contenido-columna2-fila1-registro-personal">Tipo:</label>    
                             <div class="contenedor-dropdown-registro">   
                             <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                             <ContentTemplate>
                             <asp:DropDownList ID="ddlTipoCargo"  OnSelectedIndexChanged="ddlTipoCargo_SelectedIndexChanged" Cssclass="form-control contenido-columna2-fila2-registro-tipoperfil col-lg-9 col-md-9 col-sm-9 col-xl-9" runat="server" onchange="comprobarTipoCargo(this);" >
                             </asp:DropDownList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlTipoCargo" EventName="selectedindexchanged" />
                             </Triggers>
                             </asp:UpdatePanel>
                             <span class="help-block"></span>
                             </div>
                        </div>
                        </div> 


                     </div>
                     <div id="imagen_personal" class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                         <asp:Image ID="img_personal" CssClass="img-fluid imagen-personal-registro-personal" runat="server" />
                     </div>
                
                     <div class="row clearfix">
                         <input id="verificado" style="width: 210px;" name="verificado" type="hidden" class="form-control" />
                     </div>
                </div>

                 </div>
                               
         </div>    

            <div class="caja-boton-registro-personal">
            <asp:UpdatePanel ID="UpdatePanel4" runat="server" >
            <ContentTemplate>
                <asp:Button ID="btnRegresar" runat="server" CssClass="btn btn-danger boton-regresar-registro-personal" Text="Regresar" OnClick="btnRegresar_Click" PostBackUrl="~/pages/personal/admin/gestionar-personal.aspx" />
            </ContentTemplate>
            <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnRegresar" EventName="Click" />
            </Triggers>
            </asp:UpdatePanel>
                   
           
            <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="conditional"
            ChildrenAsTriggers="true" >
            <ContentTemplate>
                   <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-success boton-registrar-registro-personal" Text="Registrar" OnClientClick="verificar()" OnClick="btnRegistrar_Click" />
            </ContentTemplate>
            <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnRegistrar" EventName="Click" />
            </Triggers>
            </asp:UpdatePanel>
            </div>
    
   

           
            <asp:TextBox ID="Correo_existe" runat="server"></asp:TextBox>
            <asp:TextBox ID="Documento_existe" runat="server"></asp:TextBox>
            <asp:TextBox ID="ApagarTimer" runat="server"></asp:TextBox>           
           
           
    

           

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

     <script type="text/javascript">

         function volver1_clicked() {
             var volver1 = document.getElementById('<%=volver1.ClientID%>');
             provincia = document.getElementById("<%=ddlProvincias.ClientID%>").id;
             //theButton.style.display = 'block';
             $("#glypcn" + provincia).remove();     
             $('#' + provincia).parent().parent().children('span').text("").show();
             $('#lblProvincias').css({ "color": "blue" });
             $('#lblDistritos').css({ "color": "blue" });
             
         }

         function volver2_clicked() {
             var volver2 = document.getElementById('<%=volver2.ClientID%>');
             distrito = document.getElementById("<%=ddlDistritos.ClientID%>").id;
              //theButton.style.display = 'block';
             $("#glypcn" + distrito).remove();            
             //$("#glypcn" + distrito).parent().remove();
             $('#' + distrito).parent().parent().children('span').text("").show();
             $('#lblDistritos').css({ "color": "blue" });

          }

       

       



       <%-- $("#Registrar_personal").ready(function () {
             var detener_timer = $find("<%=Timer1_Correo_Y_Documento_existen.ClientID%>")
             detener_timer._stopTimer();
         });       --%>

        <%-- $("#txtCorreo").focus(function () {        
            
             $.ajax({
                 type: "POST",
                 url: "registrar-personal.aspx/comprobar",
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
                         $('#<%=Correo_existe.ClientID%>').val('Si existe');
                     }
                     else {
                         campo = 'txtCorreo';
                         $("#glypcn" + campo).remove();
                         $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                         $('#' + campo).parent().css({ "color": "green" });
                         $('#' + campo).parent().children('span').text("OK").show();
                         $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                         return true;
                         $('#<%=Correo_existe.ClientID%>').val('No existe');
                     }
                 }
             });
         });--%>



       
     

         //$('#tusDropDownList').change(function () { /* Esto es el evento del cambio de ddl */
         //    /* Obtener el valor de tus dropdownlist */
         //    var selectedId = $(this).val();
         //});

         //$("#btnRegistrar").click(function () {
         //    alert('Ha hecho click sobre el boton');
         //    return true; // TIP: esto no es necesario de todas formas
         //});



         window.onload = function () {
             $('#txtNombres').parent().css({ "color": "blue" });     
             $('#txtApellidos').parent().css({ "color": "blue" });     
             $('#txtDireccion').parent().css({ "color": "blue" });     
             $('#lblDepartamentos').css({ "color": "blue" });
             $('#lblProvincias').css({ "color": "blue" });
             $('#lblDistritos').css({ "color": "blue" });           
             $('#txtCelular').parent().css({ "color": "blue" });     
             $('#txtTelefono').parent().css({ "color": "blue" });     
             $('#txtCorreo').parent().css({ "color": "blue" });     
             $('#txtDocumento').parent().css({ "color": "blue" });     
             $('#txtFechaNacimiento').parent().css({ "color": "blue" });     
             $('#lblTipoCargo').css({ "color": "blue" }); 

                
            //document.oncontextmenu = function () { return false }
            //shortcut.add("F12", function () {
            //});


            //shortcut.add("Ctrl+U", function () {
            //    alert("Hi there!");
            //});
           

         }

         
         var comprobar_tipo_Cargo = 0;
         function comprobarTipoCargo() {
             comprobar_tipo_Cargo = 1;
             tipocargo_valor = document.getElementById("<%=ddlTipoCargo.ClientID%>").value;
             //alert(tipocargo);                       
             tipocargo = document.getElementById("<%=ddlTipoCargo.ClientID%>").id;      
             
             var tipocargo_mensaje = 'lblTipoCargoMensaje';
             
                     if (tipocargo_valor == 0) {                                 
                      
                      $("#glypcn" + tipocargo).remove();
                      $('#lblTipoCargo').css({ "color": "brown" });
                      $('#' + tipocargo).css({ "border": "2px solid brown" });
                      $('#' + tipocargo).parent().parent().children('span').text("Seleccione un tipo de cargo").show();
                      $('#' + tipocargo).parent().parent().children('span').css({ "color": "brown" });
                      $('#' + tipocargo).parent().parent().append("<span id='glypcn" + tipocargo + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                      return false;

                  } else {                      

                      $("#glypcn" + tipocargo).remove();
                      $('#' + tipocargo).css({ "border-color": "green", "border": "2px solid green" });
                      $('#lblTipoCargo').css({ "color": "green" });
                      $('#' + tipocargo).parent().parent().children('span').text("OK").show();
                      $('#' + tipocargo).parent().parent().children('span').css({ "color": "green" });
                      $('#' + tipocargo).parent().parent().append("<span id='glypcn" + tipocargo + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                      return true;     
                                         
                  }          
          }

         //usaré la variable a para comprobar si seleccione ya el ddl de Departamento , de Provincia o de Distrito , cambiando su estado
         var a = 0;       

         function comprobarDepartamentos() {
             a = 1;
             departamentos_valor = document.getElementById("<%=ddlDepartamentos.ClientID%>").value;
             //alert(tipocargo);                       
             departamentos = document.getElementById("<%=ddlDepartamentos.ClientID%>").id;
             <%--distrito = document.getElementById("<%=ddlDistritos.ClientID%>").id;--%>            
             if (departamentos_valor == 0) {
                 $("#glypcn" + departamentos).remove();
                 $('#lblDepartamentos').css({ "color": "brown" });
                 $('#' + departamentos).css({ "border": "2px solid brown" });
                 $('#' + departamentos).parent().parent().children('span').text("Seleccione un departamento").show();
                 $('#' + departamentos).parent().parent().children('span').css({ "color": "brown" });
                 $('#' + departamentos).parent().parent().append("<span id='glypcn" + departamentos + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                 return false;
             } else {
                 $("#glypcn" + departamentos).remove();
                 //$("#glypcn" + distrito).remove();
                 $('#' + departamentos).css({ "border-color": "green", "border": "2px solid green" });
                 $('#lblDepartamentos').css({ "color": "green" });
                 $('#' + departamentos).parent().parent().children('span').text("").show();
                 //$('#' + distrito).parent().parent().children('span').css({ "color": "green" });
                 //$('#' + distrito).parent().parent().append("<span id='glypcn" + distrito + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                 return true;                 
             }
         }

         function comprobarProvincias() {
             a = 2;
             provincias_valor = document.getElementById("<%=ddlProvincias.ClientID%>").value;
             //alert(tipocargo);                       
             provincias = document.getElementById("<%=ddlProvincias.ClientID%>").id;
             <%--distrito = document.getElementById("<%=ddlDistritos.ClientID%>").id;--%>

             if (provincias_valor == 0) {                 
                 $("#glypcn" + provincias).remove(); /*esto es para remover el icono*/
                 $('#lblProvincias').css({ "color": "brown" });
                 $('#' + provincias).css({ "border": "2px solid brown" });
                 $('#' + provincias).parent().parent().children('span').text("Seleccione una provincia").show();
                 $('#' + provincias).parent().parent().children('span').css({ "color": "brown" });
                 $('#' + provincias).parent().parent().append("<span id='glypcn" + provincias + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                 return false;

             } else {
                 $("#glypcn" + provincias).remove();
                 //$("#glypcn" + distrito).remove();
                 $('#' + provincias).css({ "border-color": "green", "border": "2px solid green" });
                 $('#lblProvincias').css({ "color": "green" });
                 $('#' + provincias).parent().parent().children('span').text("").show();
                 //$('#' + distrito).parent().parent().children('span').css({ "color": "green" });
                 //$('#' + distrito).parent().parent().append("<span id='glypcn" + distrito + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                 return true;                 
             }
         }



         function comprobarDistritos() {
             distrito_valor = document.getElementById("<%=ddlDistritos.ClientID%>").value;
              //alert(tipocargo);                       
             distrito = document.getElementById("<%=ddlDistritos.ClientID%>").id;

             var tipocargo_mensaje = 'lblTipoCargoMensaje';

             if (distrito_valor == 0) {
                 $("#glypcn" + distrito).remove();
                 $('#lblDistritos').css({ "color": "brown" });
                 $('#' + distrito).css({ "border": "2px solid brown" });
                 $('#' + distrito).parent().parent().children('span').text("Seleccione un distrito").show();
                 $('#' + distrito).parent().parent().children('span').css({ "color": "brown" });
                 $('#' + distrito).parent().parent().append("<span id='glypcn" + distrito + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                 return false;

             } else {

                 $("#glypcn" + distrito).remove();
                 $('#' + distrito).css({ "border-color": "green", "border": "2px solid green" });
                 $('#lblDistritos').css({ "color": "green" });
                 $('#' + distrito).parent().parent().children('span').text("OK").show();
                 $('#' + distrito).parent().parent().children('span').css({ "color": "green" });
                 $('#' + distrito).parent().parent().append("<span id='glypcn" + distrito + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                 return true;                 
             }
          }
                

         $(function () {
             $("#txtFechaNacimiento").datepicker();
         });


          
         
        var v = true;
        $("span.help-block").hide();


         function RegistroCompleto() {
             $('<audio id="registro_personal_completo"><source src="notify.ogg" type="audio/ogg"><source src="/pages/audio/exito.mp3" " type="audio/mpeg"><source src="notify.wav" type="audio/wav"></audio>').appendTo('body');
             $('#registro_personal_completo')[0].play();
             swal({
                 title: "Registro Exitoso!",
                 text: "Se registro a la persona!",
                 icon: "success",
                 button: "Cerrar!",
                 
             }).then(function () {
                 // Redirect the user
                 window.location.href = "gestionar-personal.aspx";
                 //console.log('The Ok Button was clicked.');
                 
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

         <%--$("#<%=btnRegistrar.ClientID%>").click(function () {
            
         });--%>
         
         function verificar() {

             


             var v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0, v7 = 0, v8 = 0, v9 = 0, v10 = 0, v11 = 0, v12 = 0, v13 = 0;

             v1 = validacion('txtNombres');
             v2 = validacion('txtApellidos');
             v3 = validacion('txtDireccion');
             
             v4 = validacion('txtCelular');
             v5 = validacion('txtTelefono');
             v6 = validacion('txtCorreo');
             v7 = validacion('txtDocumento');
             v8 = validacion('txtFechaNacimiento');
             v9 = validacion("<%=ddlTipoCargo.ClientID%>");

             if (a === 0) {
                 comprobarDepartamentos();
             }
             else if (a === 1) {
                 comprobarProvincias();
             }
             else if (a === 2) {
                 comprobarDistritos();
             }

             //if (comprobar_tipo_Cargo===0) {
             //    comprobarTipoCargo();
             //}
            
             if (v1 === false || v2 === false || v3 === false || v4 === false || v5 === false || v6 === false || v7 === false || v8 === false || v9 === false) {                 
                
                 document.getElementById('verificado').value = 0;
             } else {
                 document.getElementById('verificado').value = 1;
                 $("#<%=btnRegistrar.ClientID%>").attr("disabled", true);
                
                 $("#error").hide();
                 $("#exito").hide();
                 $("#enviarcorreo").hide();  
             }
         }

        function validacion(campo) {
            var a = 0;
            if (campo === 'txtNombres') {
                nombres = document.getElementById(campo).value;
                if (nombres == null || nombres.length == 0 || nombres == "" ) {
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
                else if ((apellidos == nombre) || ((apellidos == nombre+(/[a-zA-Z]\s{2,}/.test(apellidos))))) {
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



            if (campo === 'txtDireccion') {
                nombre = document.getElementById('txtNombres').value;
                apellidos = document.getElementById('txtApellidos').value;
                direccion = document.getElementById(campo).value;
                if (direccion == null || direccion.length == 0) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();                    
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese su dirección").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^(\s)+/.test(direccion)) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();                   
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco al inicio").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }

                else if (direccion == nombre) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();                    
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Su Dirección no puede ser igual que su Nombre").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (direccion == apellidos) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();                   
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Su Dirección no puede ser igual que su Apellido").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{49,}$/.test(direccion)) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();                    
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten mas de 40 letras").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]{0,9}$/.test(direccion)) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();                    
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Mínimo 10 letras y Máximo 50 letras").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/(([a-zA-Z0-9]{1,}\s{2,}))+$/.test(direccion)) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();                    
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permite espacios en blanco seguidos").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/\b(\w+)(\1)+\b$/.test(direccion)) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();                    
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese correctamente su dirección").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^(([a-zA-Z0-9áéíóúÁÉÍÓÚñÑ.]\s{0,1}){9,49})[^\s]$/.test(direccion)) {
                    direccion_seleccionada = "completo";
                    $("#glypcn" + campo).remove();                   
                    $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#' + campo).parent().css({ "color": "green" });
                    $('#' + campo).parent().children('span').text("OK").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    return true;
                }
            }

          
                <%--ddlDepartamentos = document.getElementById("<%=ddlDepartamentos.ClientID%>").value;
                dlProvincias = document.getElementById("<%=ddlProvincias.ClientID%>").value;
                ddlDistritos = document.getElementById("<%=ddlDistritos.ClientID%>").value;--%>

            if (campo == '0') {
                comprobarDepartamentos();
            }

            if (campo == '0' )
                {
                comprobarProvincias();
            }

            if (campo == '0') {
                comprobarProvincias();
            }                                    
             
            
            if (campo === 'txtCelular') {
                celular = document.getElementById(campo).value;
               
                if (celular == null || celular.length == 0) {
                   
                    $("#glypcn" + campo).remove();                    
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese su celular").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/(\s)/.test(celular)) {
                    celular_completo = "no completo";
                    $("#glypcn" + campo).remove();                    
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{10,}$/.test(celular)) {
                    celular_completo = "no completo";
                    $("#glypcn" + campo).remove();                    
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("El máximo de digitos permitidos son 9").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{0,8}$/.test(celular)) {
                    celular_completo = "no completo";
                    $("#glypcn" + campo).remove();                   
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese mas dígitos , necesarios 9").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/[^0-9]+$/.test(celular)) {
                    celular_completo = "no completo";
                    $("#glypcn" + campo).remove();                   
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese solo números").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{9,9}$/.test(celular)) {

                    $.ajax({
                        type: "POST",
                        //url: "inicio.aspx/comprobardocumento",
                        url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/comprobarcelular")%>',
                        data: '{celular: "' + celular + '" }',
                        dataType: 'JSON',
                        contentType: "application/json; charset=utf-8",
                        success: function (res) {
                            if (res.d) {
                                celular_completo = "no completo";
                                campo = 'txtCelular';
                                $("#glypcn" + campo).remove();                                
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Este Celular ya existe").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else {
                                celular_completo = "completo";
                                $("#glypcn" + campo).remove();                               
                                $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                                $('#' + campo).parent().css({ "color": "green" });
                                $('#' + campo).parent().children('span').text("OK").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                                return true;
                            }
                        }
                    });
                }
             }


            if (campo === 'txtTelefono') {
                telefono = document.getElementById(campo).value;
                if (telefono == null || telefono.length == 0) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese algo").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;

                }
                else if (/(\s)/.test(telefono)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-8]{8,}$/.test(telefono)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("El máximo de digitos permitos son 7").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-8]{0,6}$/.test(telefono)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese mas dígitos").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-8]{7,8}$/.test(telefono)) {
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

            //Creado por royer
            if (campo === 'txtCorreo') {
                email = document.getElementById(campo).value;
               
                <%--versiexistecorreo = document.getElementById('<%=verificarsiexistecorreo.ClientID %>').value;--%>
                <%-- var correo = $("<%=txtCorreo.ClientID%>").val();--%>
                $.ajax({
                    type: "POST",
                    //url: "registrar-personal.aspx/comprobarcorreo",
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
                     }
                     else
                     {

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



            if (campo === ("<%=ddlTipoCargo.ClientID%>")) {

                var tipocargo_valor = document.getElementById("<%=ddlTipoCargo.ClientID%>").value;
                var tipocargo = document.getElementById("<%=ddlTipoCargo.ClientID%>").id;
                if (tipocargo_valor == 0) {

                     //alert("Seleccione un tipo de documento");
                    $("#glypcn" + tipocargo).remove();
                    $('#lblTipoCargo').css({ "color": "brown" });
                    $('#' + tipocargo).css({ "border": "2px solid brown" });
                    $('#' + tipocargo).parent().parent().children('span').text("Seleccione un tipo de cargo").show();
                    $('#' + tipocargo).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + tipocargo).parent().parent().append("<span id='glypcn" + tipocargo + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + tipocargo).remove();
                    $('#' + tipocargo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#lblTipoCargo').css({ "color": "green" });
                    $('#' + tipocargo).parent().parent().children('span').text("OK").show();
                    $('#' + tipocargo).parent().parent().children('span').css({ "color": "green" });
                    $('#' + tipocargo).parent().parent().append("<span id='glypcn" + tipocargo + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;     

                 }
            }

            if (campo === 'txtFechaNacimiento') {
                edad = document.getElementById(campo).value;              
                   
                var fecha = $("#txtFechaNacimiento").val();  // valor del input date

                if (fecha == "") {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese correctamente su fecha de nacimiento").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;                                     // devuelve false 
                } else {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#' + campo).parent().css({ "color": "green" });
                    $('#' + campo).parent().children('span').text("OK").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    return true;                         

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
                else if (/(\s)/.test(salario)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{10,}$/.test(salario)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#' + campo).parent().children('span').text("El máximo de digitos permitos son 9").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{0,1}$/.test(salario)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#' + campo).parent().children('span').text("Ingrese mas dígitos").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{1,9}$/.test(salario)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#' + campo).parent().css({ "color": "green" });
                    $('#' + campo).parent().children('span').text("OK").show();
                    return true;
                }
                else {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#' + campo).parent().children('span').text("Ingrese solo números").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
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
                else if (/(\s)/.test(numerocuenta)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{17,}$/.test(numerocuenta)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#' + campo).parent().children('span').text("El máximo de digitos permitos son 16").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{0,15}$/.test(numerocuenta)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#' + campo).parent().children('span').text("Ingrese mas dígitos").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{16,16}$/.test(numerocuenta)) {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#' + campo).parent().css({ "color": "green" });
                    $('#' + campo).parent().children('span').text("OK").show();
                    return true;
                }
                else {
                    $("#glypcn" + campo).remove();
                    $('#' + campo).parent().parent().attr("class", "form-group has-error has-feedback");
                    $('#' + campo).parent().children('span').text("Ingrese solo números").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
            }
        }
     </script>
</asp:Content>

