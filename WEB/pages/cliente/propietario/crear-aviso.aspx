﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPageTipoCliente.master" AutoEventWireup="true" CodeFile="crear-aviso.aspx.cs" Inherits="pages_cliente_propietario_crear_publicacion_venta" %>
<%@ Register Namespace="CuteWebUI" Assembly="CuteWebUI.AjaxUploader" TagPrefix="CuteWebUI" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <div id="publicacion" class="contenedor-publicacion">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
             <div class="card columna-crear-publicacion">
                 <div class="card-block header-titulo-crear-publicacion">                       
                       <h4 class="card-title titulo-crear-publicacion" ><b><p class="title" >Mi Publicación</p></b></h4>                    
                    </div>
                 
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 

                     
                       <div id="" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="row-perso-reg fila2-contenedor1 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblAviso" runat="server" Text="Aviso Tipo" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">                                           
                         <asp:TextBox ID="txtAvisoTipo" runat="server" CssClass="form-control contenido-columna1-fila2-registro-fechanacimiento col-lg-5 col-md-5 col-sm-5 col-xl-5"></asp:TextBox>
                         </div>
                         </div>


                         <div class="row-perso-reg fila2-contenedor2 col-lg-5 col-md-5 col-sm-5 col-xs-5" style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblTiempoAviso" runat="server" Text="Tiempo Aviso" CssClass="texto-publicacion-venta"></asp:Label>    
                         </div>

                         <div class="">                                           
                         <asp:TextBox ID="txtTiempoAviso" runat="server" CssClass="form-control contenido-columna1-fila2-registro-fechanacimiento col-lg-5 col-md-5 col-sm-5 col-xl-5"></asp:TextBox>
                         </div>
                         </div>
                     </div>




                     <div class="fila1-crear-publicacion-venta col-lg-9 col-md-9 col-sm-9 col-xs-9">                                                 
                         <div class="fila1-caja1">
                         <asp:Label ID="lblTipoServicio" runat="server" Text="Tipo de Servicio" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="">
                         <asp:UpdatePanel ID="UpdatePanel9" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                         <ContentTemplate>
                         <asp:DropDownList ID="ddlTipoServicio" style="margin-bottom:10px;" runat="server"  CssClass="form-control-personalizado-crear-publicacion-venta" onchange="comprobarTipoServicio(this);"></asp:DropDownList>
                         </ContentTemplate>
                         <Triggers>
                         <asp:AsyncPostBackTrigger ControlID="ddlTipoServicio" EventName="selectedindexchanged" />
                         </Triggers>
                         </asp:UpdatePanel>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtTipoServicio_Para_Insertar" runat="server" Class="form-control" type="hidden"></asp:TextBox>
                         </div>
                     </div>

                     <div id="dropdownlist_tipo_inmueble" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="row-perso-reg fila2-contenedor1 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblTipoInmueble" runat="server" Text="Tipo Inmueble" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div>
                         <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                         <ContentTemplate>
                         <asp:DropDownList ID="ddlTipoInmueble" style="margin-bottom:10px;"  runat="server"  OnSelectedIndexChanged="ddlTipoInmueble_SelectedIndexChanged" Class="form-control-personalizado-crear-publicacion-venta" onchange="comprobarTipoInmueble(this);"></asp:DropDownList>
                         </ContentTemplate>
                         <Triggers>
                         <asp:AsyncPostBackTrigger ControlID="ddlTipoInmueble" EventName="selectedindexchanged" />
                         </Triggers>
                         </asp:UpdatePanel>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtTipoInmueble_Para_Actualizar" runat="server" Class="form-control" type="hidden"></asp:TextBox>
                         </div>
                         </div>


                         <div class="row-perso-reg fila2-contenedor2 col-lg-5 col-md-5 col-sm-5 col-xs-5" style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblSubTipoInmueble" runat="server" Text="SubTipo de Inmueble" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div>
                         <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                         <ContentTemplate>
                         <asp:DropDownList ID="ddlSubTipoInmueble" style="margin-bottom:10px;" runat="server"  OnSelectedIndexChanged="ddlSubTipoInmueble_SelectedIndexChanged" Class="form-control-personalizado-crear-publicacion-venta" onchange="comprobarSubTipoInmueble(this);"></asp:DropDownList>
                         </ContentTemplate>
                         <Triggers>
                         <asp:AsyncPostBackTrigger ControlID="ddlSubTipoInmueble" EventName="selectedindexchanged" />
                         </Triggers>
                         </asp:UpdatePanel>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtSubTipoInmueble_Para_Actualizar" runat="server" Class="form-control" type="hidden"></asp:TextBox>
                         </div>
                         </div>

                     </div>



                      <div class="fila3-crear-publicacion-venta col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="fila3-caja1">
                         <asp:Label ID="lblTitulo" runat="server" Text="Título" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="" >
                             <input type="text" ID="txtTitulo" name="txtTitulo" Class="form-control" Style="margin-bottom:10px;" onkeyup="validacion('txtTitulo');" />
                       <%--  <asp:TextBox ID="txtTitulo" runat="server" Class="form-control" Style="margin-bottom:10px;"></asp:TextBox>--%>
                         <span class="help-block mensaje-alerta"></span>
                         </div>            
                      </div>


                      <div class="fila4-crear-publicacion-venta col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="fila3-caja1">
                         <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="">
                         <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                         <ContentTemplate>
                         <asp:TextBox ID="txtDescripcion" runat="server" Class="form-control" style="height:200px;" TextMode="MultiLine"></asp:TextBox>
                          
                         <span class="help-block mensaje-alerta"></span>
                         <asp:Label ID="Label1" runat="server" Text="" style="margin-top:10px;float:right;color:red;"></asp:Label>
                         </ContentTemplate>
                         </asp:UpdatePanel>
                         </div>
                      </div>


                      <div class="fila5-crear-publicacion-venta col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="fila3-caja1">
                         <asp:Label ID="lblDireccion1" runat="server" Text="Mi Direccion" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="" >
                             <asp:TextBox ID="txtDireccion_BD" runat="server" Class="form-control"></asp:TextBox>
                             <asp:TextBox ID="txtLatitud_BD" runat="server" Class="form-control" type="hidden"></asp:TextBox>
                             <asp:TextBox ID="txtLongitud_BD" runat="server" Class="form-control" type="hidden"></asp:TextBox>
                             <asp:TextBox ID="txtRegion_BD" runat="server" Class="form-control" type="hidden"></asp:TextBox>
                             
                         </div>            
                      </div>



                      <div id="" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="row-perso-reg fila2-contenedor1 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblPrecio" runat="server" Text="Precio" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>
                         
                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9" style="padding-right: 0px !important; padding-left: 0px !important">
                         <%--<asp:TextBox ID="txtPrecio" runat="server" Class="form-control"></asp:TextBox>--%>

                             <div class="row-perso-reg "> 
                            
                             <asp:DropDownList Cssclass="contenido-columna2-fila2-registro-distritos  row-perso-reg col-lg-3 col-md-3 col-sm-3 col-xs-3" ID="ddlTipoDolar" runat="server">                              
                             </asp:DropDownList>
                             <input type="text" ID="txtPrecio" name="txtPrecio" Class="form-control-aviso  row-perso-reg col-lg-8 col-md-8 col-sm-8 col-xs-8" Style="margin-bottom:10px;" onkeyup="validacion('txtPrecio');" />
                             <span class="help-block mensaje-alerta"></span>     
                            </div>


                          </div>
                         </div> 

                          <div class="row-perso-reg fila2-contenedor2 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important">
                            <div class="fila2-caja1" style="margin-bottom:3px !important">
                            <label id="lblDepaProDis" class="texto-publicacion-venta">Departamento / Provincia / Distrito:</label>
                            </div>

                            <div>
                            <asp:TextBox ID="txtDepartamentoProvinciaDistrito" TextMode="MultiLine" class="form-control  col-lg-10 col-md-10 col-xl-10 col-sm-10" runat="server" Text="Label"></asp:TextBox>
                            </div>                            
                              
                          </div>
                     </div>


                       <div id="" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="row-perso-reg fila2-contenedor1 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblFechaInicio" runat="server" Text="Fecha Inicio" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="">
                         <asp:TextBox id="txtFechaInicio" name="txtFechaInicio" runat="server" CssClass="form-control contenido-columna1-fila2-registro-fechanacimiento col-lg-9 col-md-9 col-sm-9 col-xl-9"></asp:TextBox>
                          <%--<input type="date" id="txtFechaInicio" name="txtFechaInicio" class="form-control contenido-columna1-fila2-registro-fechanacimiento col-lg-9 col-md-9 col-sm-9 col-xl-9"  onchange="validacion('txtFechaNacimiento');"/>
                        --%>
                         </div>  
                         </div>


                         <div class="row-perso-reg fila2-contenedor2 col-lg-5 col-md-5 col-sm-5 col-xs-5" style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblFechaFin" runat="server" Text="Fecha Fin" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="" >
                         <asp:TextBox id="txtFechaFin" name="txtFechaFin" runat="server" CssClass="form-control contenido-columna1-fila2-registro-fechanacimiento col-lg-9 col-md-9 col-sm-9 col-xl-9"></asp:TextBox>
                         <%--<input type="date"  id="txtFechaFin" name="txtFechaNacimiento" step="1" min="1990-01-01" max="2018-12-31" class="form-control contenido-columna1-fila2-registro-fechanacimiento col-lg-9 col-md-9 col-sm-9 col-xl-9"  onchange="validacion('txtFechaNacimiento');"/>
                         --%>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>

                     </div>

                     


                       <div id="archivos_inmueble" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">

                         <div class="fila2-caja1 col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-right:0px; padding-left:0px !important " >
                         <asp:Label ID="lblDocumentos" runat="server" Text="Documentos de propiedad " CssClass="texto-publicacion-venta"></asp:Label>
                         <asp:Label ID="lblNota" runat="server" Text="(Debe brindar los 3 documentos de lo contrario no será aceptado su aviso ) " style="font-size:15px; color:red" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>
                        

                          <div class="fila2-caja1 col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-right:0px; padding-left:0px !important " >
                          <asp:FileUpload ID="SubirDocumentos" AllowMultiple="true" runat="server" />
                          <span class="help-block mensaje-alerta"></span>
                          
                          </div>


                           <script>
                               function Imagen1(evt) {

                               var fileExtension = ['pdf'];
                               var ta = document.getElementById('<%=SubirDocumentos.ClientID%>');
                               var size = ta.files[0].size;
                               var error = 0;
                               campo = ('<%=SubirDocumentos.ClientID%>');
                               if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {                                   
                                   error = 1;
                                   $("#glypcn" + campo).remove();
                                   $('#<%=lblDocumentos.ClientID%>').css({ "color": "brown" });
                                   $('#' + campo).parent().css({ "color": "brown" });
                                   $('#' + campo).css({ "border": "2px solid brown" });
                                   $('#' + campo).parent().children('span').text("Solo formatos pdf por favor").show();
                                   $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                   
                               }
                               else if (size > 222048576)// checks the file more than 1 MB
                               {
                                   error = 2;
                                   $("#glypcn" + campo).remove();
                                   $('#<%=lblDocumentos.ClientID%>').css({ "color": "brown" });
                                   $('#' + campo).parent().css({ "color": "brown" });
                                   $('#' + campo).css({ "border": "2px solid brown" });
                                   $('#' + campo).parent().children('span').text("El tamaño del archivo es muy grande").show();
                                   $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                   return false;
                               } else if (error == 0) {
                                   var files = evt.target.files; // FileList object
                                   //Obtenemos la imagen del campo "file". 
                                   for (var i = 0, f; f = files[i]; i++) {
                                       //Solo admitimos imágenes.
                                       if (!f.type.match('image.*')) {
                                           continue;
                                       }
                                       var reader = new FileReader();
                                       reader.onload = (function (theFile) {
                                           return function (e) {
                                              
                                       m = e.target.result;
                                   };
                               })(f);
                               reader.readAsDataURL(f);
                               }
                               $("#glypcn" + campo).remove();
                               $('#<%=lblDocumentos.ClientID%>').css({ "color": "green" });
                               $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                               $('#' + campo).parent().css({ "color": "green" });
                               $('#' + campo).parent().children('span').text("OK").show();
                               $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                               return true;
                               }
                               }
                               document.getElementById('<%=SubirDocumentos.ClientID%>').addEventListener('change', Imagen1, false); 
                           </script>




                           </div>
                       
                       


                       <div id="fotos_inmueble" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                          <div class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important">
                          <div class="fila2-caja1">
                          <asp:Label ID="lblSubirImagenes" runat="server" Text="Subir Imagenes" CssClass="texto-publicacion-venta"></asp:Label>
                          </div>
                               
                          <div class="">
                           
                          <div class="content">			
			              <p>
				          Sube las imagénes de tu inmueble que especifiquen exáctamente lo que ofreces.
			              </p>
			              <p style="color: red">
				          Click encima de tus imágenes para editar.
			              </p>
                               

			             <div id="grid" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="border-style: dotted;">
			             </div>

			             <div id="insertbtn"></div>

			             <CuteWebUI:UploadAttachments runat="server" DropZoneID="form1" ManualStartUpload="true" ID="Uploader1" ShowQueueTable="false"
			            	InsertButtonID="insertbtn" OnFileUploaded="Uploader1_FileUploaded">
				            <ValidateOption MaxSizeKB="10240" />
			             </CuteWebUI:UploadAttachments>

			             <p>

                      
				           <asp:Button runat="server" ID="SubmitButton" Text="Upload Files Now" OnClientClick="verificar()" OnClick="SubmitButton_Click1" Font-Size="18px" />
			             
                         
                         <script>
                             function RegistroAviso() {
                                 $('<audio id="aviso_creado"><source src="notify.ogg" type="audio/ogg"><source src="/pages/audio/exito.mp3" " type="audio/mpeg"><source src="notify.wav" type="audio/wav"></audio>').appendTo('body');
                                 $('#aviso_creado')[0].play();
                                 swal({
                                     title: "Registro Exitosa!",
                                     text: "Registrate tu Aviso!",
                                     icon: "success",
                                     button: "Cerrar!",
                                 }).then(function () {
                                     // Redirect the user
                                     window.location.href = "gestionar-avisos.aspx?idtipo=1";
                                     //console.log('The Ok Button was clicked.');

                                 });
                             }

                         </script>
                         
                         
                         
                         </p>    
		                  </div>
                          </div>
                          </div>
                       </div>


                      <asp:Literal ID="Literal1" runat="server"></asp:Literal>

                       <div id="caracteristicas_inmueble" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div id="Dormitorios" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;float:left">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="txtIdCaracteristica" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblDormitorios" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel10" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlDormitorios"  runat="server" onchange="comprobarDormitorios(this);">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlDormitorios" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <%--<span class="help-block mensaje-alerta"></span>--%>
                         <span  class="help-block"></span>
                         </div>  
                         </div>


                         <div id="Baños" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4" style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox1" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblBaños" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel11" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlBaños"  runat="server" onchange="comprobarBaños(this);">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlBaños" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>


                         <div id="Cocheras" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox2" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblCocheras" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel12" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlCocheras"  runat="server" onchange="comprobarCocheras();">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlCocheras" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>

                         <div id="Antiguedad_Inmueble" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox3" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblAntiguedad_Inmueble" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel13" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlAntiguedad_Inmueble"  runat="server" onchange="comprobarAntiguedad();">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlAntiguedad_Inmueble" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>

                         <div id="Estado_Inmueble" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox4" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblEstado_Inmueble" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel14" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlEstado_Inmueble"  runat="server" onchange="comprobarEstadoInmueble();">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlEstado_Inmueble" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>

                         <div id="Tipo_Anunciante" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox5" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblTipo_Anunciante" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel15" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlTipo_Anunciante"  runat="server" onchange="comprobarTipoAnunciante();">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlTipo_Anunciante" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>


                         <div id="Caracteristicas" class="row-perso-reg fila2-contenedor1 col-lg-9 col-md-9 col-sm-9 col-xs-9 " style="padding-right: 0px !important; padding-left: 0px !important; ">   <!-- margin-right:auto;margin-left:auto -->
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox6" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblCaracteristicas" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel16" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkCaracteristicas" CheckedChanged="checkCaracteristicas_CheckedChangedttom" style="margin-bottom:10px;"  Class="checkCaracteristicas form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" AutoPostBack="True" onclick="javascript:saberSeleccionadoCheckBoxCaracteristica(this)" runat="server"></asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkCaracteristicas"  />
                             </Triggers>
                         </asp:UpdatePanel>
                               <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>
                           
                           <asp:TextBox ID="Camposllenos" runat="server" Class="form-control" type="hidden"></asp:TextBox>
                           <input id="verificado" style="width: 210px;" name="verificado" type="hidden" class="form-control" />
                           <input id="comprobado" style="width: 210px;" name="comprobado" type="hidden" class="form-control" />
                          
                    <script>
                    function saberSeleccionadoCheckBoxCaracteristica(obj) {
                    var caracteristicas_val = $("#<%=checkCaracteristicas.ClientID%>").val();
                    var caracteristicas = document.getElementById("<%=checkCaracteristicas.ClientID%>").id;

                    if ($('#<%=checkCaracteristicas.ClientID%> input:checkbox:checked').length <= 0)  {                          

                    $("#glypcn" + caracteristicas).remove();
                    $('#<%=lblCaracteristicas.ClientID%>').css({ "color": "brown" });
                    $('#' + caracteristicas).css({ "border": "2px solid brown" });
                    $('#' + caracteristicas).parent().parent().children('span').text("Seleccione las características").show();
                    $('#' + caracteristicas).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + caracteristicas).parent().parent().append("<span id='glypcn" + caracteristicas + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;
                    }
                    else 
                    {
                    $("#glypcn" + caracteristicas).remove();
                    $('#' + caracteristicas).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblCaracteristicas.ClientID%>').css({ "color": "green" });
                    $('#' + caracteristicas).parent().parent().children('span').text("OK").show();
                    $('#' + caracteristicas).parent().parent().children('span').css({ "color": "green" });
                    $('#' + caracteristicas).parent().parent().append("<span id='glypcn" + caracteristicas + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;
                    }
                    }




                     function saberSeleccionadoCheckBoxServicios() {
                     var servicios_val = $("#<%=checkServicios.ClientID%>").val();
                     var servicios = document.getElementById("<%=checkServicios.ClientID%>").id;
                     if ($('#<%=checkServicios.ClientID%> input:checkbox:checked').length <= 0) {    
                     $("#glypcn" + servicios).remove();
                     $('#<%=lblServicios.ClientID%>').css({ "color": "brown" });
                     $('#' + servicios).css({ "border": "2px solid brown" });
                     $('#' + servicios).parent().parent().children('span').text("Seleccione los servicios").show();
                     $('#' + servicios).parent().parent().children('span').css({ "color": "brown" });
                     $('#' + servicios).parent().parent().append("<span id='glypcn" + servicios + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                     return false;
                     }
                     else
                     {
                     $("#glypcn" + servicios).remove();
                     $('#' + servicios).css({ "border-color": "green", "border": "2px solid green" });
                     $('#<%=lblServicios.ClientID%>').css({ "color": "green" });
                     $('#' + servicios).parent().parent().children('span').text("OK").show();
                     $('#' + servicios).parent().parent().children('span').css({ "color": "green" });
                     $('#' + servicios).parent().parent().append("<span id='glypcn" + servicios + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                     return true;
                     }
                     }



                       function saberSeleccionadoCheckBoxAmbientes() {
                       var ambientes_val = $("#<%=checkAmbientes.ClientID%>").val();
                       var ambientes = document.getElementById("<%=checkAmbientes.ClientID%>").id;

                       if ($('#<%=checkAmbientes.ClientID%> input:checkbox:checked').length <= 0) {
                      

                       $("#glypcn" + ambientes).remove();
                       $('#<%=lblAmbientes.ClientID%>').css({ "color": "brown" });
                       $('#' + ambientes).css({ "border": "2px solid brown" });
                       $('#' + ambientes).parent().parent().children('span').text("Seleccione los ambientes").show();
                       $('#' + ambientes).parent().parent().children('span').css({ "color": "brown" });
                       $('#' + ambientes).parent().parent().append("<span id='glypcn" + ambientes + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                       return false;
                       }
                       else {
                       $("#glypcn" + ambientes).remove();
                       $('#' + ambientes).css({ "border-color": "green", "border": "2px solid green" });
                       $('#<%=lblAmbientes.ClientID%>').css({ "color": "green" });
                       $('#' + ambientes).parent().parent().children('span').text("OK").show();
                       $('#' + ambientes).parent().parent().children('span').css({ "color": "green" });
                       $('#' + ambientes).parent().parent().append("<span id='glypcn" + ambientes + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                       return true;
                       }
                       }




                        function saberSeleccionadoCheckBoxAdicionales() {
                        var adicionales_val = $("#<%=checkAdicionales.ClientID%>").val();
                        var adicionales = document.getElementById("<%=checkAdicionales.ClientID%>").id;

                        if ($('#<%=checkAdicionales.ClientID%> input:checkbox:checked').length <= 0) {                       

                        $("#glypcn" + adicionales).remove();
                        $('#<%=lblAdicionales.ClientID%>').css({ "color": "brown" });
                        $('#' + adicionales).css({ "border": "2px solid brown" });
                        $('#' + adicionales).parent().parent().children('span').text("Seleccione las características adicionales").show();
                        $('#' + adicionales).parent().parent().children('span').css({ "color": "brown" });
                        $('#' + adicionales).parent().parent().append("<span id='glypcn" + adicionales + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                        return false;
                        }
                        else {
                        $("#glypcn" + adicionales).remove();
                        $('#' + adicionales).css({ "border-color": "green", "border": "2px solid green" });
                        $('#<%=lblAdicionales.ClientID%>').css({ "color": "green" });
                        $('#' + adicionales).parent().parent().children('span').text("OK").show();
                        $('#' + adicionales).parent().parent().children('span').css({ "color": "green" });
                        $('#' + adicionales).parent().parent().append("<span id='glypcn" + adicionales + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                        return true;
                        }
                        }



                        function saberSeleccionadoCheckBoxAreasComunes() {
                        var areas_comunes_val = $("#<%=checkAreasComunes.ClientID%>").val();
                        var areas_comunes = document.getElementById("<%=checkAreasComunes.ClientID%>").id;
                        if ($('#<%=checkAreasComunes.ClientID%> input:checkbox:checked').length <= 0) {
                        

                        $("#glypcn" + areas_comunes).remove();
                        $('#<%=lblAreasComunes.ClientID%>').css({ "color": "brown" });
                        $('#' + areas_comunes).css({ "border": "2px solid brown" });
                        $('#' + areas_comunes).parent().parent().children('span').text("Seleccione las areas comunes").show();
                        $('#' + areas_comunes).parent().parent().children('span').css({ "color": "brown" });
                        $('#' + areas_comunes).parent().parent().append("<span id='glypcn" + areas_comunes + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                        return false;
                        }
                        else {
                        $("#glypcn" + areas_comunes).remove();
                        $('#' + areas_comunes).css({ "border-color": "green", "border": "2px solid green" });
                        $('#<%=lblAreasComunes.ClientID%>').css({ "color": "green" });
                        $('#' + areas_comunes).parent().parent().children('span').text("OK").show();
                        $('#' + areas_comunes).parent().parent().children('span').css({ "color": "green" });
                        $('#' + areas_comunes).parent().parent().append("<span id='glypcn" + areas_comunes + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                        return true;
                        }
                        }




                        function saberSeleccionadoCheckBoxGenerales() {
                        var generales_val = $("#<%=checkGenerales.ClientID%>").val();
                        var generales = document.getElementById("<%=checkGenerales.ClientID%>").id;
                        if ($('#<%=checkGenerales.ClientID%> input:checkbox:checked').length <= 0) {

                            $("#glypcn" + generales).remove();
                            $('#<%=lblGenerales.ClientID%>').css({ "color": "brown" });
                            $('#' + generales).css({ "border": "2px solid brown" });
                            $('#' + generales).parent().parent().children('span').text("Seleccione las características generales").show();
                            $('#' + generales).parent().parent().children('span').css({ "color": "brown" });
                            $('#' + generales).parent().parent().append("<span id='glypcn" + generales + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                        return false;
                        }
                        else {
                            $("#glypcn" + generales).remove();
                            $('#' + generales).css({ "border-color": "green", "border": "2px solid green" });
                            $('#<%=lblGenerales.ClientID%>').css({ "color": "green" });
                            $('#' + generales).parent().parent().children('span').text("OK").show();
                            $('#' + generales).parent().parent().children('span').css({ "color": "green" });
                            $('#' + generales).parent().parent().append("<span id='glypcn" + generales + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                        return true;
                        }
                        }



                           </script>
                         <div id="Servicios" class="row-perso-reg fila2-contenedor1 col-lg-9 col-md-9 col-sm-9 col-xs-9 " style="padding-right: 0px !important; padding-left: 0px !important; ">   <!-- margin-right:auto;margin-left:auto -->
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox7" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblServicios" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel17" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkServicios"  RepeatLayout="Table" RepeatDirection="Horizontal" style="margin-bottom:10px;"  Class="checkServicios form-control-personalizado-crear-publicacion-venta " onclick="javascript:saberSeleccionadoCheckBoxServicios(this)"  AutoPostBack="True"
                              CellPadding="5"
                              CellSpacing="5"
                              RepeatColumns="4"           
                              TextAlign="Right"
          
                              runat="server">

                             </asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkServicios"  />
                             </Triggers>
                         </asp:UpdatePanel>
                             <span class="help-block mensaje-alerta"></span> 
                         </div>  
                         </div>


                         <div id="Ambientes" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; ">   <!-- margin-right:auto;margin-left:auto -->
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox8" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblAmbientes" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="row-perso-reg">
                          <asp:UpdatePanel ID="UpdatePanel18" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkAmbientes"  RepeatLayout="Table" RepeatDirection="Horizontal"  Class="row-perso-reg checkAmbientes form-control-personalizado-crear-publicacion-venta " onclick="javascript:saberSeleccionadoCheckBoxAmbientes(this)" style="margin-bottom:10px;"  AutoPostBack="True"
                              CellPadding="5"
                              CellSpacing="5"
                              RepeatColumns="5"           
                             
          
                              runat="server">

                             </asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkAmbientes"  />
                             </Triggers>
                         </asp:UpdatePanel>
                             <span class="help-block mensaje-alerta"></span> 
                         </div>  
                         </div>


                         <div id="Adicionales" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; ">   <!-- margin-right:auto;margin-left:auto -->
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox9" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblAdicionales" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel19" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkAdicionales"  RepeatLayout="Table" RepeatDirection="Horizontal" style="margin-bottom:10px;"  Class="checkAdicionales form-control-personalizado-crear-publicacion-venta " onclick="javascript:saberSeleccionadoCheckBoxAdicionales(this)" AutoPostBack="True"
                              CellPadding="5"
                              CellSpacing="5"
                              RepeatColumns="3"           
                              TextAlign="Right"
          
                              runat="server">

                             </asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkAdicionales"  />
                             </Triggers>
                         </asp:UpdatePanel>
                             <span class="help-block mensaje-alerta"></span> 
                         </div>  
                         </div>



                         <div id="Areas_Comunes" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; ">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox10" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblAreasComunes" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="checkAreasComunes1">
                          <asp:UpdatePanel ID="UpdatePanel20" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkAreasComunes"  RepeatLayout="Table" RepeatDirection="Horizontal" style="margin-bottom:10px;"  Class="checkAreasComunes form-control-personalizado-crear-publicacion-venta " onclick="javascript:saberSeleccionadoCheckBoxAreasComunes(this)" AutoPostBack="True"
                              CellPadding="5"
                              CellSpacing="5"
                              RepeatColumns="3"           
                              TextAlign="Right"
          
                              runat="server">

                             </asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkAreasComunes"  />
                             </Triggers>
                         </asp:UpdatePanel>
                             <span class="help-block mensaje-alerta"></span> 
                         </div>  
                         </div>


                         <div id="Generales" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; " >
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox11" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblGenerales" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel21" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkGenerales"  RepeatLayout="Table" RepeatDirection="Horizontal" style="margin-bottom:10px;"  Class="checkGenerales form-control-personalizado-crear-publicacion-venta " onclick="javascript:saberSeleccionadoCheckBoxGenerales(this)" AutoPostBack="True"
                              CellPadding="5"
                              CellSpacing="5"
                              RepeatColumns="3"           
                              TextAlign="Right"
          
                              runat="server">

                             </asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkGenerales"  />
                             </Triggers>
                         </asp:UpdatePanel>
                             <span class="help-block mensaje-alerta"></span> 
                         </div>  
                         </div>


                         <div id="Nro_pisos" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;float:left">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox12" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblNroPisos" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel22" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlNroPisos"  runat="server" onchange="comprobarNroPisos(this);">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlNroPisos" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>

                         <div id="Tipo_Suelo" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;float:left">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox13" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblTipoSuelo" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel23" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlTipoSuelo"  runat="server" onchange="comprobarTipoSuelo(this);">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlTipoSuelo" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>

                         <div id="Area_Total" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;float:left">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox14" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblArea_Total" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel24" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlArea_Total"  runat="server" onchange="comprobarAreaTotal(this);">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlArea_Total" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>

                         <div id="Departamentos_por_piso" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;float:left">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox15" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblDepartamentos_por_piso" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel25" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlDepartamentos_por_piso"  runat="server" onchange="comprobarDepartamentosPorPiso(this);">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlDepartamentos_por_piso" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>

                         <div id="Tipo_de_publicacion" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;float:left">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox16" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblTipoPublicacion" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel26" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlTipoPublicacion"  runat="server" onchange="comprobarTipoPublicacion(this);">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlTipoPublicacion" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>

                        <div id="Detalles" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;float:left">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox17" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblDetalles" runat="server" CssClass="texto-publicacion-venta"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel27" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList  style="margin-bottom:10px;"  Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ID="ddlDetalles"  runat="server" onchange="comprobarDetalles(this);">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlDetalles" EventName="selectedindexchanged" />
                             </Triggers>
                         </asp:UpdatePanel>
                         <span class="help-block mensaje-alerta"></span>
                         </div>  
                         </div>


                       </div>


                       <div id="registro_publicacion" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9" Style="display:flex !important">

                       <div class="row-perso-reg" style="float:right;margin-left:auto">
                       <asp:UpdatePanel ID="UpdatePanel29" runat="server" UpdateMode="conditional"
                       ChildrenAsTriggers="true" >
                       <ContentTemplate>
                       <asp:Button ID="btnRegresar" runat="server" CssClass="btn btn-danger" Style="float: right;margin-right:20px;" Text="Regresar" OnClick="btnRegresar_Click" PostBackUrl="~/pages/cliente/propietario/tipo-aviso.aspx?idtipo=1"/>
                       </ContentTemplate>
                       <Triggers>
                       <asp:AsyncPostBackTrigger ControlID="btnRegistrarPublicacion" EventName="Click" />
                       </Triggers>
                       </asp:UpdatePanel>
                       </div>

                       <div class="row-perso-reg" style="float:right;">
                       <asp:UpdatePanel ID="UpdatePanel28" runat="server" UpdateMode="conditional"
                       ChildrenAsTriggers="true" >
                       <ContentTemplate>
                       <asp:Button ID="btnRegistrarPublicacion" runat="server" CssClass="btn btn-success" Style="float:right !important;margin-left:auto !important;" Text="Registrar" OnClientClick="verificar()" OnClick="btnRegistrarPublicacion_Click" />
                       </ContentTemplate>
                       <Triggers>
                       <asp:AsyncPostBackTrigger ControlID="btnRegistrarPublicacion" EventName="Click" />
                       </Triggers>
                       </asp:UpdatePanel>
                       </div>


                           <script>

                               $("#<%=btnRegistrarPublicacion.ClientID%>").click(function () {
                                  <%-- $("#<%=Button1.ClientID%>").click();--%>
                               });

                           </script>
                       </div>
                       </div>
                       <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>


                      <style>
                          /*.checkServicios input{margin:10px}
                          .checkServicios label{margin-right:40px}*/

                          .checkCaracteristicas tr label{
                         margin-left:10px;
                         margin-right:10px;
                         }


                          .checkServicios tr{
                             display:inline-block;
                             margin-right:20px;
                          }
                              
                          .checkServicios tr label{
                         margin-left:10px;
                         margin-right:10px;
                         }


                         
                            
                        .checkAmbientes tbody{
                        display: -ms-flexbox;
                        display: flex;
                        -ms-flex-wrap: wrap;
                        flex-wrap: wrap;                             
                         }


                        .checkAmbientes tr{
                        display: -ms-flexbox;
                        /*display: flex;*/
                        -ms-flex-wrap: wrap;
                        flex-wrap: wrap;                             
                         }
                          .checkAmbientes td{
                        display: -ms-flexbox;
                        /*display: flex;*/
                        -ms-flex-wrap: wrap;
                        flex-wrap: wrap;                   
                         }

                         .checkAmbientes label{
                         margin-left:10px;
                         margin-right:10px; 
                          -ms-flex-wrap: wrap;
                         flex-wrap: wrap; 
                         }





                         .checkAdicionales tr td label{
                         margin-left:10px;
                         margin-right:10px;
                         }



                        
                         .checkAreasComunes tr td label{
                         margin-left:10px;
                         margin-right:10px;
                         }

                         .checkGenerales tr td label{
                         margin-left:10px;
                         margin-right:10px;
                         }
                      </style>
                      <script>
                          function comprobarTipoInmueble() {

                              tipoinmueble_valor = document.getElementById("<%=ddlTipoInmueble.ClientID%>").value;
                              tipoinmueble = document.getElementById("<%=ddlTipoInmueble.ClientID%>").id;

                              subtipoinmueble_valor = document.getElementById("<%=ddlSubTipoInmueble.ClientID%>").value;
                              subtipoinmueble = document.getElementById("<%=ddlSubTipoInmueble.ClientID%>").id;

                              if (tipoinmueble_valor == 0) {
                                  $("#Dormitorios").hide();
                                  $("#Baños").hide();
                                  $("#Cocheras").hide();
                                  $("#Antiguedad_Inmueble").hide();
                                  $("#Estado_Inmueble").hide();
                                  $("#Tipo_Anunciante").hide();
                                  $("#Caracteristicas").hide();
                                  $("#Servicios").hide();
                                  $("#Ambientes").hide();
                                  $("#Adicionales").hide();
                                  $("#Areas_Comunes").hide();
                                  $("#Generales").hide();
                                  $("#Nro_pisos").hide();                             
                                  $("#Tipo_Suelo").hide();                              
                                  $("#Area_Total").hide();                              
                                  $("#Departamentos_por_piso").hide();                              
                                  $("#Tipo_de_publicacion").hide();                             
                                  $("#Detalles").hide();

                                  $("#glypcn" + tipoinmueble).remove();
                                  $('#<%=lblTipoInmueble.ClientID%>').css({ "color": "brown" });
                                  $('#' + tipoinmueble).css({ "border": "2px solid brown" });
                                  $('#' + tipoinmueble).parent().parent().children('span').text("Seleccione un Tipo Inmueble").show();
                                  $('#' + tipoinmueble).parent().parent().children('span').css({ "color": "brown" });
                                  $('#' + tipoinmueble).parent().parent().append("<span id='glypcn" + tipoinmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");

                                  $("#glypcn" + subtipoinmueble).remove();
                                  $('#<%=lblSubTipoInmueble.ClientID%>').css({ "color": "brown" });
                                  $('#' + subtipoinmueble).css({ "border": "2px solid brown" });
                                  $('#' + subtipoinmueble).parent().parent().children('span').text("Seleccione un SubTipo de Inmueble").show();
                                  $('#' + subtipoinmueble).parent().parent().children('span').css({ "color": "brown" });
                                  $('#' + subtipoinmueble).parent().parent().append("<span id='glypcn" + subtipoinmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");

                                  return false;

                              } else {
                                  var id_tipoinmueble_elegido = $("#<%=ddlTipoInmueble.ClientID%>").val();
                                 
                                  $("#Dormitorios").hide();
                                  $("#Baños").hide();
                                  $("#Cocheras").hide();
                                  $("#Antiguedad_Inmueble").hide();
                                  $("#Estado_Inmueble").hide();
                                  $("#Tipo_Anunciante").hide();
                                  $("#Caracteristicas").hide();
                                  $("#Servicios").hide();
                                  $("#Ambientes").hide();
                                  $("#Adicionales").hide();
                                  $("#Areas_Comunes").hide();
                                  $("#Generales").hide();
                                  $("#Nro_pisos").hide();
                                  $("#Tipo_Suelo").hide();
                                  $("#Area_Total").hide();
                                  $("#Departamentos_por_piso").hide();
                                  $("#Tipo_de_publicacion").hide();
                                  $("#Detalles").hide();
                                      $.ajax({

                                          type: "POST",
                                   <%--   url: '<%=ResolveUrl("~/pages/cliente/propietario/crear-publicacion-venta.aspx/comprobarinmueble")%>',--%>
                                          url: '<%=ResolveUrl("~/pages/cliente/propietario/crear-aviso.aspx/comprobartipoinmueble")%>',
                                          data: '{id_tipoinmueble_elegido: "' + id_tipoinmueble_elegido + '" }',
                                          dataType: 'JSON',
                                          contentType: "application/json; charset=utf-8",
                                          success: function (res) {
                                              if (res.d) {
                                                  var dormitorios = "Dormitorios";
                                                  var baños = "Baños";
                                                  var cocheras = "Cocheras";
                                                  var antiguedad = "Antiguedad";
                                                  var estado = "Estado Inmueble";
                                                  var tipo_anunciante = "Tipo de Anunciante";
                                                  var caracteristicas = "Caracteristicas";
                                                  var servicios = "Servicios";
                                                  var ambientes = "Ambientes";
                                                  var adicionales = "Adicionales";
                                                  var areas_comunes = "Áreas Comunes";
                                                  var generales = "Generales";
                                                  var nro_pisos = "Nro de Pisos";
                                                  var tipo_suelo = "Tipo de Suelo";
                                                  var area_total = "Area Total m2";
                                                  var departamentos_por_piso = "Departamentos por piso";
                                                  var tipo_publicacion = "Tipo de publicación";
                                                  var detalles = "Detalles";

                                                  for (var i = 0; i < res.d.length; i++)
                                                  {
                                                      if (res.d[i].descripcion_caracteristica_inmueble == dormitorios)
                                                      {
                                                          $("#Dormitorios").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == baños) {
                                                          $("#Baños").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == cocheras) {
                                                          $("#Cocheras").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == antiguedad) {
                                                          $("#Antiguedad_Inmueble").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == antiguedad) {
                                                          $("#Antiguedad_Inmueble").show();                                                          
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == estado) {
                                                          $("#Estado_Inmueble").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == tipo_anunciante) {
                                                          $("#Tipo_Anunciante").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == caracteristicas) {
                                                          $("#Caracteristicas").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == servicios) {
                                                          $("#Servicios").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == ambientes) {
                                                          $("#Ambientes").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == adicionales) {
                                                          $("#Adicionales").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == areas_comunes) {
                                                          $("#Areas_Comunes").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == generales) {
                                                          $("#Generales").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == nro_pisos) {
                                                          $("#Nro_pisos").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == tipo_suelo) {
                                                          $("#Tipo_Suelo").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == area_total) {
                                                          $("#Area_Total").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == departamentos_por_piso) {
                                                          $("#Departamentos_por_piso").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == tipo_publicacion) {
                                                          $("#Tipo_de_publicacion").show();
                                                      }
                                                      if (res.d[i].descripcion_caracteristica_inmueble == detalles) {
                                                          $("#Detalles").show();
                                                      }
                                                  }

                                                  

                                              }
                                          }
                                      });
                                  

                          $("#glypcn" + tipoinmueble).remove();
                          $('#' + tipoinmueble).css({ "border-color": "green", "border": "2px solid green" });
                          $('#<%=lblTipoInmueble.ClientID%>').css({ "color": "green" });
                          $('#' + tipoinmueble).parent().parent().children('span').text("OK").show();
                          $('#' + tipoinmueble).parent().parent().children('span').css({ "color": "green" });
                          $('#' + tipoinmueble).parent().parent().append("<span id='glypcn" + tipoinmueble + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");

                          $("#glypcn" + subtipoinmueble).remove();
                          $('#<%=lblSubTipoInmueble.ClientID%>').css({ "color": "brown" });
                          $('#' + subtipoinmueble).css({ "border": "2px solid brown" });
                          $('#' + subtipoinmueble).parent().parent().children('span').text("Seleccione un SubTipo de Inmueble").show();
                          $('#' + subtipoinmueble).parent().parent().children('span').css({ "color": "brown" });
                          $('#' + subtipoinmueble).parent().parent().append("<span id='glypcn" + subtipoinmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");

                          return true;
                          }
                          }

                          function comprobarDormitorios(campo) {


                              var dormitorios_val = $("#<%=ddlDormitorios.ClientID%>").val();
                              var dormitorios = document.getElementById("<%=ddlDormitorios.ClientID%>").id;


                              if (dormitorios_val == 0) {
                                  $("#glypcn" + dormitorios).remove();
                                  $('#<%=lblDormitorios.ClientID%>').css({ "color": "brown" });
                                  $('#' + dormitorios).css({ "border": "2px solid brown" });
                                  $('#' + dormitorios).parent().parent().children('span').text("Seleccione cantidad de dormitorios").show();
                                  $('#' + dormitorios).parent().parent().children('span').css({ "color": "brown" });
                                  $('#' + dormitorios).parent().parent().append("<span id='glypcn" + dormitorios + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                  return false;

                              }
                              else {
                                  $("#glypcn" + dormitorios).remove();
                                  $('#<%=lblDormitorios.ClientID%>').css({ "color": "green" });
                                  $('#' + dormitorios).css({ "border-color": "green", "border": "2px solid green" });
                                  $('#' + dormitorios).parent().parent().children('span').text("OK").show();
                                  $('#' + dormitorios).parent().parent().children('span').css({ "color": "green" });
                                  $('#' + dormitorios).parent().parent().append("<span id='glypcn" + dormitorios + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                  return true;

                              }
                          }
                             
                              function comprobarBaños(campo) {

                                  var baños_val = $("#<%=ddlBaños.ClientID%>").val();
                                  var baños = document.getElementById("<%=ddlBaños.ClientID%>").id;
                                  if (baños_val == 0) {
                                      $("#glypcn" + baños).remove();
                                      $('#<%=lblBaños.ClientID%>').css({ "color": "brown" });
                                      $('#' + baños).css({ "border": "2px solid brown" });
                                      $('#' + baños).parent().parent().children('span').text("Seleccione cantidad de baños").show();
                                      $('#' + baños).parent().parent().children('span').css({ "color": "brown" });
                                      $('#' + baños).parent().parent().append("<span id='glypcn" + baños + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                      return false;

                                  }
                                  else {
                                      $("#glypcn" + baños).remove();
                                      $('#<%=lblBaños.ClientID%>').css({ "color": "green" });
                                      $('#' + baños).css({ "border-color": "green", "border": "2px solid green" });
                                      $('#' + baños).parent().parent().children('span').text("OK").show();
                                      $('#' + baños).parent().parent().children('span').css({ "color": "green" });
                                      $('#' + baños).parent().parent().append("<span id='glypcn" + baños + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                      return true;
                                  }
                              }

                              function comprobarCocheras(campo) {
                                  var cocheras_val = $("#<%=ddlCocheras.ClientID%>").val();
                                  var cocheras = document.getElementById("<%=ddlCocheras.ClientID%>").id;
                                  if (cocheras_val == 0) {
                                      $("#glypcn" + cocheras).remove();
                                      $('#<%=lblCocheras.ClientID%>').css({ "color": "brown" });
                                      $('#' + cocheras).css({ "border": "2px solid brown" });
                                      $('#' + cocheras).parent().parent().children('span').text("Seleccione cantidad de cocheras").show();
                                      $('#' + cocheras).parent().parent().children('span').css({ "color": "brown" });
                                      $('#' + cocheras).parent().parent().append("<span id='glypcn" + cocheras + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                      return false;

                                  }
                                  else {
                                      $("#glypcn" + cocheras).remove();
                                      $('#<%=lblCocheras.ClientID%>').css({ "color": "green" });
                                      $('#' + cocheras).css({ "border-color": "green", "border": "2px solid green" });
                                      $('#' + cocheras).parent().parent().children('span').text("OK").show();
                                      $('#' + cocheras).parent().parent().children('span').css({ "color": "green" });
                                      $('#' + cocheras).parent().parent().append("<span id='glypcn" + cocheras + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                      return true;
                                  }
                              }

                              function comprobarAntiguedad(campo) {
                                  var Antiguedad_Inmueble_val = $("#<%=ddlAntiguedad_Inmueble.ClientID%>").val();
                                  var Antiguedad_Inmueble = document.getElementById("<%=ddlAntiguedad_Inmueble.ClientID%>").id;
                                  if (Antiguedad_Inmueble_val == 0) {
                                      $("#glypcn" + Antiguedad_Inmueble).remove();
                                      $('#<%=lblAntiguedad_Inmueble.ClientID%>').css({ "color": "brown" });
                                      $('#' + Antiguedad_Inmueble).css({ "border": "2px solid brown" });
                                      $('#' + Antiguedad_Inmueble).parent().parent().children('span').text("Seleccione la antiguedad").show();
                                      $('#' + Antiguedad_Inmueble).parent().parent().children('span').css({ "color": "brown" });
                                      $('#' + Antiguedad_Inmueble).parent().parent().append("<span id='glypcn" + Antiguedad_Inmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                      return false;

                                  }
                                  else {
                                      $("#glypcn" + Antiguedad_Inmueble).remove();
                                      $('#<%=lblAntiguedad_Inmueble.ClientID%>').css({ "color": "green" });
                                      $('#' + Antiguedad_Inmueble).css({ "border-color": "green", "border": "2px solid green" });
                                      $('#' + Antiguedad_Inmueble).parent().parent().children('span').text("OK").show();
                                      $('#' + Antiguedad_Inmueble).parent().parent().children('span').css({ "color": "green" });
                                      $('#' + Antiguedad_Inmueble).parent().parent().append("<span id='glypcn" + Antiguedad_Inmueble + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                      return true;
                                  }
                              }
                              

                              function comprobarEstadoInmueble(campo) {
                                  var Estado_Inmueble_val = $("#<%=ddlEstado_Inmueble.ClientID%>").val();
                                  var Estado_Inmueble = document.getElementById("<%=ddlEstado_Inmueble.ClientID%>").id;
                                  if (Estado_Inmueble_val == 0) {
                                      $("#glypcn" + Estado_Inmueble).remove();
                                      $('#<%=lblEstado_Inmueble.ClientID%>').css({ "color": "brown" });
                                      $('#' + Estado_Inmueble).css({ "border": "2px solid brown" });
                                      $('#' + Estado_Inmueble).parent().parent().children('span').text("Seleccione el estado").show();
                                      $('#' + Estado_Inmueble).parent().parent().children('span').css({ "color": "brown" });
                                      $('#' + Estado_Inmueble).parent().parent().append("<span id='glypcn" + Estado_Inmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                      return false;

                                  }
                                  else {
                                      $("#glypcn" + Estado_Inmueble).remove();
                                      $('#<%=lblEstado_Inmueble.ClientID%>').css({ "color": "green" });
                                      $('#' + Estado_Inmueble).css({ "border-color": "green", "border": "2px solid green" });
                                      $('#' + Estado_Inmueble).parent().parent().children('span').text("OK").show();
                                      $('#' + Estado_Inmueble).parent().parent().children('span').css({ "color": "green" });
                                      $('#' + Estado_Inmueble).parent().parent().append("<span id='glypcn" + Estado_Inmueble + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                      return true;
                                  }
                              }


                              function comprobarTipoAnunciante(campo) {
                                  var Tipo_Anunciante_val = $("#<%=ddlTipo_Anunciante.ClientID%>").val();
                                  var Tipo_Anunciante = document.getElementById("<%=ddlTipo_Anunciante.ClientID%>").id;

                                  if (Tipo_Anunciante_val == 0) {
                                      $("#glypcn" + Tipo_Anunciante).remove();
                                      $('#<%=lblTipo_Anunciante.ClientID%>').css({ "color": "brown" });
                                      $('#' + Tipo_Anunciante).css({ "border": "2px solid brown" });
                                      $('#' + Tipo_Anunciante).parent().parent().children('span').text("Seleccione el tipo de anunciante").show();
                                      $('#' + Tipo_Anunciante).parent().parent().children('span').css({ "color": "brown" });
                                      $('#' + Tipo_Anunciante).parent().parent().append("<span id='glypcn" + Tipo_Anunciante + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                      return false;

                                  }
                                  else {
                                      $("#glypcn" + Tipo_Anunciante).remove();
                                      $('#<%=lblTipo_Anunciante.ClientID%>').css({ "color": "green" });
                                      $('#' + Tipo_Anunciante).css({ "border-color": "green", "border": "2px solid green" });
                                      $('#' + Tipo_Anunciante).parent().parent().children('span').text("OK").show();
                                      $('#' + Tipo_Anunciante).parent().parent().children('span').css({ "color": "green" });
                                      $('#' + Tipo_Anunciante).parent().parent().append("<span id='glypcn" + Tipo_Anunciante + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                      return true;
                                  }
                              }


                              function comprobarNroPisos(campo) {
                                  var NroPisos_val = $("#<%=ddlNroPisos.ClientID%>").val();
                                  var NroPisos = document.getElementById("<%=ddlNroPisos.ClientID%>").id;

                                  if (NroPisos_val == 0) {
                                      $("#glypcn" + NroPisos).remove();
                                      $('#<%=lblNroPisos.ClientID%>').css({ "color": "brown" });
                                      $('#' + NroPisos).css({ "border": "2px solid brown" });
                                      $('#' + NroPisos).parent().parent().children('span').text("Seleccione el Nro de Pisos").show();
                                      $('#' + NroPisos).parent().parent().children('span').css({ "color": "brown" });
                                      $('#' + NroPisos).parent().parent().append("<span id='glypcn" + NroPisos + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                      return false;

                                  }
                                  else {
                                      $("#glypcn" + NroPisos).remove();
                                      $('#<%=lblNroPisos.ClientID%>').css({ "color": "green" });
                                      $('#' + NroPisos).css({ "border-color": "green", "border": "2px solid green" });
                                      $('#' + NroPisos).parent().parent().children('span').text("OK").show();
                                      $('#' + NroPisos).parent().parent().children('span').css({ "color": "green" });
                                      $('#' + NroPisos).parent().parent().append("<span id='glypcn" + NroPisos + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                      return true;
                                  }
                              }

                                
                              function comprobarTipoSuelo(campo) {
                                  var TipoSuelo_val = $("#<%=ddlTipoSuelo.ClientID%>").val();
                                  var TipoSuelo = document.getElementById("<%=ddlTipoSuelo.ClientID%>").id;

                                  if (TipoSuelo_val == 0) {
                                      $("#glypcn" + TipoSuelo).remove();
                                      $('#<%=lblNroPisos.ClientID%>').css({ "color": "brown" });
                                      $('#' + TipoSuelo).css({ "border": "2px solid brown" });
                                      $('#' + TipoSuelo).parent().parent().children('span').text("Seleccione el tipo de suelo").show();
                                      $('#' + TipoSuelo).parent().parent().children('span').css({ "color": "brown" });
                                      $('#' + TipoSuelo).parent().parent().append("<span id='glypcn" + TipoSuelo + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                      return false;

                                  }
                                  else {
                                      $("#glypcn" + TipoSuelo).remove();
                                      $('#<%=lblTipoSuelo.ClientID%>').css({ "color": "green" });
                                      $('#' + TipoSuelo).css({ "border-color": "green", "border": "2px solid green" });
                                      $('#' + TipoSuelo).parent().parent().children('span').text("OK").show();
                                      $('#' + TipoSuelo).parent().parent().children('span').css({ "color": "green" });
                                      $('#' + TipoSuelo).parent().parent().append("<span id='glypcn" + TipoSuelo + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                      return true;
                                  }
                              }


                              function comprobarAreaTotal(campo) {
                                  var Area_Total_val = $("#<%=ddlArea_Total.ClientID%>").val();
                                  var Area_Total = document.getElementById("<%=ddlArea_Total.ClientID%>").id;

                                  if (Area_Total_val == 0) {
                                      $("#glypcn" + Area_Total).remove();
                                      $('#<%=lblArea_Total.ClientID%>').css({ "color": "brown" });
                                      $('#' + Area_Total).css({ "border": "2px solid brown" });
                                      $('#' + Area_Total).parent().parent().children('span').text("Seleccione el area total").show();
                                      $('#' + Area_Total).parent().parent().children('span').css({ "color": "brown" });
                                      $('#' + Area_Total).parent().parent().append("<span id='glypcn" + Area_Total + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                      return false;

                                  }
                                  else {
                                      $("#glypcn" + Area_Total).remove();
                                      $('#<%=lblArea_Total.ClientID%>').css({ "color": "green" });
                                      $('#' + Area_Total).css({ "border-color": "green", "border": "2px solid green" });
                                      $('#' + Area_Total).parent().parent().children('span').text("OK").show();
                                      $('#' + Area_Total).parent().parent().children('span').css({ "color": "green" });
                                      $('#' + Area_Total).parent().parent().append("<span id='glypcn" + Area_Total + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                      return true;
                                  }
                              }

                             
                              function comprobarDepartamentosPorPiso(campo) {
                                  var Departamentos_por_piso_val = $("#<%=ddlDepartamentos_por_piso.ClientID%>").val();
                                  var Departamentos_por_piso = document.getElementById("<%=ddlDepartamentos_por_piso.ClientID%>").id;

                                  if (Departamentos_por_piso_val == 0) {
                                      $("#glypcn" + Departamentos_por_piso).remove();
                                      $('#<%=lblDepartamentos_por_piso.ClientID%>').css({ "color": "brown" });
                                      $('#' + Departamentos_por_piso).css({ "border": "2px solid brown" });
                                      $('#' + Departamentos_por_piso).parent().parent().children('span').text("Seleccione los departamentos por piso").show();
                                      $('#' + Departamentos_por_piso).parent().parent().children('span').css({ "color": "brown" });
                                      $('#' + Departamentos_por_piso).parent().parent().append("<span id='glypcn" + Departamentos_por_piso + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                      return false;

                                  }
                                  else {
                                      $("#glypcn" + Departamentos_por_piso).remove();
                                      $('#<%=lblDepartamentos_por_piso.ClientID%>').css({ "color": "green" });
                                      $('#' + Departamentos_por_piso).css({ "border-color": "green", "border": "2px solid green" });
                                      $('#' + Departamentos_por_piso).parent().parent().children('span').text("OK").show();
                                      $('#' + Departamentos_por_piso).parent().parent().children('span').css({ "color": "green" });
                                      $('#' + Departamentos_por_piso).parent().parent().append("<span id='glypcn" + Departamentos_por_piso + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                      return true;
                                  }
                              }

                              
                              function comprobarTipoPublicacion(campo) {
                                  var TipoPublicacion_val = $("#<%=ddlTipoPublicacion.ClientID%>").val();
                                  var TipoPublicacion = document.getElementById("<%=ddlTipoPublicacion.ClientID%>").id;

                                  if (TipoPublicacion_val == 0) {
                                      $("#glypcn" + TipoPublicacion).remove();
                                      $('#<%=lblTipoPublicacion.ClientID%>').css({ "color": "brown" });
                                      $('#' + TipoPublicacion).css({ "border": "2px solid brown" });
                                      $('#' + TipoPublicacion).parent().parent().children('span').text("Seleccione el tipo de publicación").show();
                                      $('#' + TipoPublicacion).parent().parent().children('span').css({ "color": "brown" });
                                      $('#' + TipoPublicacion).parent().parent().append("<span id='glypcn" + TipoPublicacion + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                      return false;

                                  }
                                  else {
                                      $("#glypcn" + TipoPublicacion).remove();
                                      $('#<%=lblTipoPublicacion.ClientID%>').css({ "color": "green" });
                                      $('#' + TipoPublicacion).css({ "border-color": "green", "border": "2px solid green" });
                                      $('#' + TipoPublicacion).parent().parent().children('span').text("OK").show();
                                      $('#' + TipoPublicacion).parent().parent().children('span').css({ "color": "green" });
                                      $('#' + TipoPublicacion).parent().parent().append("<span id='glypcn" + TipoPublicacion + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                      return true;
                                  }
                              }

                              
                              function comprobarDetalles(campo) {
                                  var Detalles_val = $("#<%=ddlDetalles.ClientID%>").val();
                                  var Detalles = document.getElementById("<%=ddlDetalles.ClientID%>").id; 

                                  if (Detalles_val == 0) {
                                      $("#glypcn" + Detalles).remove();
                                      $('#<%=lblDetalles.ClientID%>').css({ "color": "brown" });
                                      $('#' + Detalles).css({ "border": "2px solid brown" });
                                      $('#' + Detalles).parent().parent().children('span').text("Seleccione los detalles").show();
                                      $('#' + Detalles).parent().parent().children('span').css({ "color": "brown" });
                                      $('#' + Detalles).parent().parent().append("<span id='glypcn" + Detalles + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                                      return false;

                                  }
                                  else {
                                      $("#glypcn" + Detalles).remove();
                                      $('#<%=lblDetalles.ClientID%>').css({ "color": "green" });
                                      $('#' + Detalles).css({ "border-color": "green", "border": "2px solid green" });
                                      $('#' + Detalles).parent().parent().children('span').text("OK").show();
                                      $('#' + Detalles).parent().parent().children('span').css({ "color": "green" });
                                      $('#' + Detalles).parent().parent().append("<span id='glypcn" + Detalles + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                                      return true;
                                  }
                              }
                                

                              

                          
                          

                     </Script>
                      
                 </div>
             </div>
        </div>
  



    <%-- Esto es el modal de Departamento - Provincia y Distrito--%>
        <div >            
            <div class="modal fade" id="departamento-provincia-distrito-modal">
                <div class="modal-dialog" style="width:30% !important; height:40% !important">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div id="Departamentos_Provincias_Distritos" class="row-personalizado-publicacion" style="width:100%">                               
                            <div class="contenedor-departamento-provincia-distrito-modal">
                            <label id="lblDepartamentos" >Departamento /</label>  <label id="lblProvincias" >Provincia /</label> <label id="lblDistritos">Distrito:</label> 
                            </div>
                            <div class="contenedor-dropdown-modal">                   
                             <asp:UpdatePanel ID="UpdatePanel4" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList Cssclass="dropdown-departamento" ID="ddlDepartamentos" OnSelectedIndexChanged="ddlDepartamentos_SelectedIndexChanged" runat="server" onchange="comprobarDepartamentos(this);">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlDepartamentos" EventName="selectedindexchanged" />
                             </Triggers>
                             </asp:UpdatePanel>
                           
                             <asp:UpdatePanel ID="UpdatePanel5" runat="server"   >
                             <ContentTemplate>
                             <asp:DropDownList Cssclass="dropdown-provincia" ID="ddlProvincias" OnSelectedIndexChanged="ddlProvincias_SelectedIndexChanged" runat="server" onchange="comprobarProvincias(this);">                                                                                    
                             </asp:DropDownList><asp:Button CssClass="volver-select-gestion-perfil" ID="volver1" runat="server" Text="Volver" OnClientClick="volver1_clicked()" OnClick="volver1_Click"/>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlProvincias" EventName="selectedindexchanged" />
                             </Triggers>
                             </asp:UpdatePanel>
                           
                             <asp:UpdatePanel ID="UpdatePanel6" runat="server"   >
                             <ContentTemplate>
                             <asp:DropDownList Cssclass="dropdown-distrito" ID="ddlDistritos" OnSelectedIndexChanged="ddlDistritos_SelectedIndexChanged" runat="server" onchange="comprobarDistritos(this);">                                                                                    
                             </asp:DropDownList><asp:Button CssClass="volver-select-gestion-perfil" ID="volver2" runat="server" Text="Volver" OnClientClick="volver2_clicked()" OncLICK="volver2_Click"/>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlDistritos" EventName="selectedindexchanged" />
                             </Triggers>
                             </asp:UpdatePanel>   
                             <span class="help-block mensaje-alerta"></span>
                             </div>  

                            </div>
                            <div class="modal-footer">
                            <asp:UpdatePanel ID="UpdatePanel7" runat="server"  updatemode="Conditional" ChildrenAsTriggers="true" >
                            <ContentTemplate>
                              <asp:Button ID="GuardarDepartamentoProvinciaDistrito2"  class="btn btn-success" OnClientClick="verificar2()" runat="server" Text="Guardar" OnClick="GuardarDepartamentoProvinciaDistrito2_Click"/>                               
                              </ContentTemplate>
                            <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="GuardarDepartamentoProvinciaDistrito2" EventName="Click" />
                            </Triggers>
                            </asp:UpdatePanel>   

                                
                                <input type="button" ID="GuardarDepartamentoProvinciaDistrito" value="Guardar" class="btn btn-success" OnClick="verificar2();" />  
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                            </div>
                            <%--Aquí mandaré solo el id del distrito--%>
                           <asp:TextBox ID="txtId_distrito_Mandado_Para_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>

     <asp:UpdatePanel ID="UpdatePanel8" runat="server" updatemode="Conditional" ChildrenAsTriggers="true"  >
    <ContentTemplate>
    <asp:Button ID="btnBotonEscondidoDeprovi" runat="server" Text="Button" OnClick="btnBotonEscondidoDeprovi_Click" />
    </ContentTemplate>
    <Triggers>
    <asp:AsyncPostBackTrigger ControlID="btnBotonEscondidoDeprovi" EventName="Click" />
    </Triggers>
    </asp:UpdatePanel> 



    

<style media="screen">
.google_canvas{
margin-top:25px;
 margin-bottom:25px;
margin-right:auto;
margin-left:auto;
height : 55vh;
width:90vh;
}
</style>
<%-- <link href="../../plugins/gmapsjQuery/css/jquery.gmaps.css" rel="stylesheet" />
    <script type="text/javascript" src='<%=ResolveUrl("~/plugins/gmapsjQuery/js/jquery.gmaps.js")%>'></script>--%>

<%-- Este script es para cargar mi ubicación--%>
<%--<script src="http://maps.googleapis.com/maps/api/js?sensor=false?libraries=places&key=AIzaSyCMi_I7Z2iXFBlFNmoxorqOygzVjwwWJrE"></script>--%>
<%--Este script es para cargar el autocomplete de direcciones--%>
<script src="http://maps.googleapis.com/maps/api/js?v=3.exp&signed in=true&libraries=places&key=AIzaSyAtGA4w4HY95vw7HI8XfKAQZXbNsqNCWKQ"></script>
<%--Este script es necesario para mostrar mi dirección en el textbox automáticamente --%>
<script  src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script  src="http://chart.apis.google.com/chart?chst=d_map_pin_shadow"></script>

    <!-- Modal de direccion -->
            <div >            
            <div class="modal fade" style="z-index:20 !important; margin-top:45px;" id="direccion_modal"> <%--con z-index arregle el problema del autocomplete del input con el bootstrap--%>
                <div class="modal-dialog" style="width:50% !important;  ">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div class="row-personalizado-publicacion" style="width:100%">
                              <div id="google_canvas" class="google_canvas">                                  
                              </div>
                          </div>
<style>
/*content este estilo arregle el problema del autocomplete del input con el bootstrap*/
.modal-backdrop {
position: fixed;
top: 0;
right: 0;
bottom: 0;
left: 0;
z-index: 10;
background-color: #000
}
</style>
                             <div class="row-personalizado-publicacion" style="width:100%;margin-bottom:30px;">
                                <div class="contenido-direccion"><span style="color:red">Región Encontrada:</span>
                                </div>
                                <div class="contenido-region">
                               <%-- <asp:TextBox type="text" id="txtautocomplete" style="width:500px;position:absolute; z-index: 2000 !important;" placeholder="Escriba su dirección" runat="server"></asp:TextBox>--%>
                                <%--<div id="txtDireccionLocalizada"></div>--%> <%--<asp:Label id="txtRegionLocalizada" runat="server"></asp:Label> --%>    <asp:TextBox id="txtRegionLocalizada" width="500px" runat="server"></asp:TextBox>                           
                                </div>
                             </div>

                             <div class="row-personalizado-publicacion" style="width:100%;margin-bottom:30px;">
                                <div class="contenido-direccion"><span id="lblDireccion">Escriba su dirección:</span>
                                </div>
                                <div class="contenido-autocomplete">
                               <%-- <asp:TextBox type="text" id="txtautocomplete" style="width:500px;position:absolute; z-index: 2000 !important;" placeholder="Escriba su dirección" runat="server"></asp:TextBox>--%>
                                <input class="input-autocomplete " type="text" id="txtautocomplete" autocomplete="on" placeholder="Escriba su dirección" onkeyup="validacion('txtautocomplete');" />
                                <br /><span style="margin-top:20px;" class="help-block"></span>
                                 <%--<p><label id="lblresult"></label></p>--%>
                                </div>
                             </div>
                           <%-- <div class="container-boton-entrar">
                                <asp:Button ID="Button1" runat="server" CssClass="boton-entrar" Text="Confirmar" OnClick="Entrar_Click" />
                            </div>--%>  
                            <%--Aquí mandaré region , latitud , longitud , y mi direccion escrita o elegida--%>
                             <asp:TextBox ID="txtRegion" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                             <asp:TextBox ID="txtLatitud" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                             <asp:TextBox ID="txtLongitud" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                             <asp:TextBox ID="txtDireccionEscritaOEscogida" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>

                            <div class="modal-footer">
                               <input type="button" id="GuardarDireccion" class="btn btn-info" value="Guardar" onclick ="verificar2();" />  
                               <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    



    <script>

        window.onload = function () {

            $('#<%=lblDocumentos.ClientID%>').css({ "color": "blue" });
            $('#<%=lblAviso.ClientID%>').css({ "color": "green" });
            $('#<%=lblTiempoAviso.ClientID%>').css({ "color": "green" });
            $('#<%=lblTipoServicio.ClientID%>').css({ "color": "blue" });
            $('#<%=lblTipoInmueble.ClientID%>').css({ "color": "blue" });
            $('#<%=lblSubTipoInmueble.ClientID%>').css({ "color": "blue" });
            $('#<%=lblTitulo.ClientID%>').css({ "color": "blue" });
            $('#<%=lblDescripcion.ClientID%>').css({ "color": "blue" });
            $('#<%=lblDireccion1.ClientID%>').css({ "color": "green" });
            $('#<%=lblPrecio.ClientID%>').css({ "color": "blue" });
            $('#lblDepaProDis').css({ "color": "green" });
            $('#<%=lblFechaInicio.ClientID%>').css({ "color": "green" });
            $('#<%=lblFechaFin.ClientID%>').css({ "color": "green" });
            $('#<%=lblSubirImagenes.ClientID%>').css({ "color": "blue" });
            $('#lblDepartamentos').css({ "color": "blue" });
            $('#lblProvincias').css({ "color": "blue" });
            $('#lblDistritos').css({ "color": "blue" });

            $("#Dormitorios").hide();
            $("#Baños").hide();
            $("#Cocheras").hide();
            $("#Antiguedad_Inmueble").hide();
            $("#Estado_Inmueble").hide();
            $("#Tipo_Anunciante").hide();
            $("#Caracteristicas").hide();
            $("#Servicios").hide();
            $("#Ambientes").hide();
            $("#Adicionales").hide();
            $("#Areas_Comunes").hide();
            $("#Generales").hide();
            $("#Nro_pisos").hide();
            $("#Tipo_Suelo").hide();
            $("#Area_Total").hide();
            $("#Departamentos_por_piso").hide();
            $("#Tipo_de_publicacion").hide();
            $("#Detalles").hide();
        }



        $(document).ready(function () {
            var date = new Date();

            var day = date.getDate();
            var month = date.getMonth() + 1;
            var year = date.getFullYear();

            if (month < 10) month = "0" + month;
            if (day < 10) day = "0" + day;

            var today = year + "-" + month + "-" + day;
            //$("#txtFechaInicio").attr("value", today);
            //$("#txtFechaInicio").prop('disabled', true);
            //$("#txtFechaInicio").css({ "background-color": "white" });
            
           <%-- $('#<%=txtAvisoTipo.ClientID%>').prop('disabled', true);
            $('#<%=txtAvisoTipo.ClientID%>').css({ "background-color": "white" });--%>
        });

       


        function limitTextLength(limitField, limitCount, limitNum) {
            if (limitField.value.length > limitNum) {
                limitField.value = limitField.value.substring(0, limitNum);
            } else {
                limitCount.innerHTML = limitField.value.length + " caracteres usados de " + limitNum ;
            }
        }





        function comprobarTipoServicio() {
            
             tiposervicio_valor = document.getElementById("<%=ddlTipoServicio.ClientID%>").value;
             tiposervicio = document.getElementById("<%=ddlTipoServicio.ClientID%>").id;

             if (tiposervicio_valor == 0) {
                 $("#glypcn" + tiposervicio).remove();
                 $('#<%=lblTipoServicio.ClientID%>').css({ "color": "brown" });
                 $('#' + tiposervicio).css({ "border": "2px solid brown" });
                 $('#' + tiposervicio).parent().parent().children('span').text("Seleccione un Tipo de Servicio").show();
                 $('#' + tiposervicio).parent().parent().children('span').css({ "color": "brown" });
                 $('#' + tiposervicio).parent().parent().append("<span id='glypcn" + tiposervicio + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                 return false;

             } else {

                 tiposervicio_seleccionado = $("#<%=ddlTipoServicio.ClientID%>").find('option:selected').text();                 

                 id_del_tiposervicio = $("#<%=ddlTipoServicio.ClientID%>").val();
                 $("#<%=txtTipoServicio_Para_Insertar.ClientID%>").val(id_del_tiposervicio);
               
                 $("#glypcn" + tiposervicio).remove();
                 $('#' + tiposervicio).css({ "border-color": "green", "border": "2px solid green" });
                 $('#<%=lblTipoServicio.ClientID%>').css({ "color": "green" });
                 $('#' + tiposervicio).parent().parent().children('span').text("OK").show();
                 $('#' + tiposervicio).parent().parent().children('span').css({ "color": "green" });
                 $('#' + tiposervicio).parent().parent().append("<span id='glypcn" + tiposervicio + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                 return true;
            }
        }

        

      
<%--        function comprobarTipoInmueble() {
            
            tipoinmueble_valor = document.getElementById("<%=ddlTipoInmueble.ClientID%>").value;
            tipoinmueble = document.getElementById("<%=ddlTipoInmueble.ClientID%>").id;

            if (tipoinmueble_valor == 0) {
                $("#glypcn" + tipoinmueble).remove();
                $('#<%=lblTipoInmueble.ClientID%>').css({ "color": "brown" });
                $('#' + tipoinmueble).css({ "border": "2px solid brown" });
                $('#' + tipoinmueble).parent().parent().children('span').text("Seleccione un Tipo de Inmueble").show();
                $('#' + tipoinmueble).parent().parent().children('span').css({ "color": "brown" });
                $('#' + tipoinmueble).parent().parent().append("<span id='glypcn" + tipoinmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                return false;

            } else {

                id_del_tipoinmueble = $("#<%=ddlTipoInmueble.ClientID%>").val();
                $("#<%=txtTipoInmueble_Para_Actualizar.ClientID%>").val(id_del_tipoinmueble);

                 $("#glypcn" + tipoinmueble).remove();
                 $('#' + tipoinmueble).css({ "border-color": "green", "border": "2px solid green" });
                 $('#<%=lblTipoInmueble.ClientID%>').css({ "color": "green" });
                 $('#' + tipoinmueble).parent().parent().children('span').text("OK").show();
                 $('#' + tipoinmueble).parent().parent().children('span').css({ "color": "green" });
                 $('#' + tipoinmueble).parent().parent().append("<span id='glypcn" + tipoinmueble + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                 return true;
            }
         }--%>
              

         



        

        

        function comprobarSubTipoInmueble() {
           
            subtipoinmueble_valor = document.getElementById("<%=ddlSubTipoInmueble.ClientID%>").value;
            subtipoinmueble = document.getElementById("<%=ddlSubTipoInmueble.ClientID%>").id;

            if (subtipoinmueble_valor == 0) {
                $("#glypcn" + subtipoinmueble).remove();
                 $('#<%=lblSubTipoInmueble.ClientID%>').css({ "color": "brown" });
                 $('#' + subtipoinmueble).css({ "border": "2px solid brown" });
                 $('#' + subtipoinmueble).parent().parent().children('span').text("Seleccione un SubTipo de Inmueble").show();
                 $('#' + subtipoinmueble).parent().parent().children('span').css({ "color": "brown" });
                 $('#' + subtipoinmueble).parent().parent().append("<span id='glypcn" + subtipoinmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                 return false;

            } else {

                 id_del_subtipoinmueble = $("#<%=ddlSubTipoInmueble.ClientID%>").val();
                 $("#<%=txtSubTipoInmueble_Para_Actualizar.ClientID%>").val(id_del_subtipoinmueble);

                 $("#glypcn" + subtipoinmueble).remove();
                 $('#' + subtipoinmueble).css({ "border-color": "green", "border": "2px solid green" });
                 $('#<%=lblSubTipoInmueble.ClientID%>').css({ "color": "green" });
                 $('#' + subtipoinmueble).parent().parent().children('span').text("OK").show();
                 $('#' + subtipoinmueble).parent().parent().children('span').css({ "color": "green" });
                 $('#' + subtipoinmueble).parent().parent().append("<span id='glypcn" + subtipoinmueble + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                 return true;
             }
        }

        //------------------------------------------------------------------------------------------------------------------------------------------
        var a = 0;
        var direccion_seleccionada = "";
        //Estos var es para cuardar lo que escoja del autocomplete
        var direccion_escogido_de_autocomplete;
        var latitud_escogido_de_autocomplete;
        var longitud_escogido_de_autocomplete;

        //var mi_direccion_encontrada_por_googlemaps;
        var mi_latitud_encontrada_por_googlemaps;
        var mi_longitud_encontrada_por_googlemaps;
        
        //Esto es para cuando de click en el text de direccion y se abra el modal     
        $("#<%=txtDireccion_BD.ClientID%>").click(function () {
            $('#direccion_modal').modal('show');
            $("#<%=txtDireccion_BD.ClientID%>").attr("disabled", true);
            $("#txtautocomplete").val(""); //para vaciar la casilla de autocomplete
            getLocation();
            MostrarMiUbicacionEnMaps_Y_Autocomplete();

            $("#glypcntxtautocomplete").remove();
            $("#txtautocomplete").parent().children('span').text(" ").show();
            $("#txtautocomplete").css({ "border-color": "white", "border": "" });
            $('#lblDireccion').parent().css({ "color": "blue" });
        });

        //$("#txtautocomplete").keypress(function (e) {
        //    if (e.which == 13) {
        //        $('#direccion_modal').modal('show');
        //    }
        //});


        //Esta acción se ejecuta al cerrar el modal de dirección       
        $("#direccion_modal").on('hidden.bs.modal', function () {
            $("#<%=txtDireccion_BD.ClientID%>").attr("disabled", false);
            $("#glypcntxtautocomplete").remove();
            $('#txtautocomplete').parent().children('span').text(" ").show();
            direccion_seleccionada = "no completo";
            //$('#txtautocomplete').css({"border-color",""});
        });
        //Cuando presione Guardar en el modal de direccion
        $("#GuardarDireccion").click(function () {
            if (direccion_seleccionada == "completo") {

                var direccion = $("#txtautocomplete").val();
                $("#<%=txtDireccion_BD.ClientID%>").val(direccion);

                var region_encontrada = $("#<%=txtRegionLocalizada.ClientID%>").val();
                var direccion_escrita_o_escogida_en_autocomplete = document.getElementById("txtautocomplete").value;

                if (a == "Mi Ubicacion por google maps") {
                    mi_latitud_encontrada_por_googlemaps;
                    mi_longitud_encontrada_por_googlemaps;

                    $("#<%=txtRegion.ClientID%>").val(region_encontrada); //mando para actualizar
                    $("#<%=txtLatitud.ClientID%>").val(mi_latitud_encontrada_por_googlemaps);//mando para actualizar
                    $("#<%=txtLongitud.ClientID%>").val(mi_longitud_encontrada_por_googlemaps);//mando para actualizar
                    $("#<%=txtDireccionEscritaOEscogida.ClientID%>").val(direccion_escrita_o_escogida_en_autocomplete);//mando para actualizar
                    alert($("#<%=txtDireccionEscritaOEscogida.ClientID%>").val());
                }
                else if (a == "Mi Ubicacion escogida en autocomplete") {
                    latitud_escogido_de_autocomplete;
                    longitud_escogido_de_autocomplete;

                    $("#<%=txtRegion.ClientID%>").val(region_encontrada);//mando para actualizar
                    $("#<%=txtLatitud.ClientID%>").val(latitud_escogido_de_autocomplete);//mando para actualizar
                    $("#<%=txtLongitud.ClientID%>").val(longitud_escogido_de_autocomplete);//mando para actualizar
                    $("#<%=txtDireccionEscritaOEscogida.ClientID%>").val(direccion_escrita_o_escogida_en_autocomplete);//mando para actualizar
                    alert($("#<%=txtDireccionEscritaOEscogida.ClientID%>").val());
                }
                direccion_seleccionada = "";
            }
        });

        //--------------------------------------------------------------------------------------------------------------------------------

        //Esto es para cargar mi dirección region encontrada por google maps en un input text
        var x;
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition, showError);
            }
            else {
                x = "Navegador no soportado";
                $("#<%=txtRegionLocalizada.ClientID%>").val(x);
                }
            }

            function showPosition(position) {
                //x.innerHTML = "latitude = " +position.coords.latitude;
                //x.innerHTML += "<br />"
                //x.innerHTML += "Longitude = " + position.coords.longitude

                var locAPI = "http://maps.googleapis.com/maps/api/geocode/json?latlng=" + position.coords.latitude + "," + position.coords.longitude + "&sensor=true";
                //x.innerHTML = locAPI;
                $.get({
                    url: locAPI,
                    success: function (data) {
                        console.log(data);
                        x = data.results[0].address_components[4].long_name + " " + data.results[0].address_components[5].long_name + " " + data.results[0].address_components[6].long_name;
                        $("#<%=txtRegionLocalizada.ClientID%>").val(x);
                    }
                });
            }

            function showError(error) {
                switch (error.code) {
                    case error.PERMISSION_DENIED:
                        x.innerHTML = "code : " + error.code + " Debes de permitir compartir tu ubicacion";
                        break;

                    case error.POSITION_UNAVAILABLE:
                        x.innerHTML = "code : " + error.code + " La ubicación no esta disponible";
                        break;

                    case error.TIMEOUT:
                        x.innerHTML = "code : " + error.code + " Fuera de tiempo";
                        break;

                    case error.UNKNOWN_ERROR:
                        x.innerHTML = "code : " + error.code + " Error desconocido";
                        break;
                }
            }



            function MostrarMiUbicacionEnMaps_Y_Autocomplete() {
                //mostramos el mapa en el modal de direccion con mi ubicación localizada por google maps
                (function () {
                    if (!!navigator.geolocation) {
                        var map;
                        var mapOptions = {
                            zoom: 16,
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
                        map = new google.maps.Map(document.getElementById("google_canvas"), mapOptions);

                        navigator.geolocation.getCurrentPosition(function (position) {
                            var geolocate = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

                            var marker2 = new google.maps.Marker({
                                icon: 'http://maps.google.com/mapfiles/ms/icons/red-dot.png',
                                position: geolocate,
                                map: map
                            });

                            var marker = new google.maps.Marker({
                                icon: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
                                position: geolocate,
                                map: map
                            });

                            google.maps.event.addListener(marker, 'click', function () {
                                infoWindow.open(map, marker);
                            });

                            var infoWindow = new google.maps.InfoWindow({
                                marker: marker,
                                map: map,
                                position: geolocate,
                                content:
                                '<h3 style="margin-bottom:10px">Esta es tu ubicación</h3>'
                            });
                            a = "Mi Ubicacion por google maps";
                            mi_latitud_encontrada_por_googlemaps = position.coords.latitude;
                            mi_longitud_encontrada_por_googlemaps = position.coords.longitude;
                            map.setCenter(geolocate);

                            //Esto es para cargar el autocomplete de direcciones en el modal
                            google.maps.event.addDomListener(window, 'load');
                <%-- distrito = document.getElementById("<%=txtautocomplete.ClientID%>").id;--%>           
                var autocomplete = new google.maps.places.Autocomplete(document.getElementById("txtautocomplete"));
                google.maps.event.addListener(autocomplete, 'place_changed', function () {
                    w = 1;
                    var place = autocomplete.getPlace();
                    a = "Mi Ubicacion escogida en autocomplete";
                    if (place.geometry.viewport) {
                        map.fitBounds(place.geometry.viewport);
                    } else {
                        map.setCenter(place.geometry.location);
                        map.setZoom(15);
                    }
                    marker2.setPosition(place.geometry.location);


                    //var location = "Address: " + place.formatted_address + "<br/>";
                    //location += "Latitude: " + place.geometry.location.lat() + "<br/>";
                    //location += "Longitude: " + place.geometry.location.lng();
                    //document.getElementById('lblresult').innerHTML = location

                    direccion_escogido_de_autocomplete = place.formatted_address;
                    latitud_escogido_de_autocomplete = place.geometry.location.lat();
                    longitud_escogido_de_autocomplete = place.geometry.location.lng();
                    //esto es por si apreto enter y haga lo mismo

                });

                    });
                } else {
                    document.getElementById("google_canvas").innerHTML = "No se soporta geolocalizacion";
                }
            })();
        }
        //------------------------------------------------------------------------------------------------------------------------------------------
        //Validación para Departamento - Provincia y Distrito 


        var deprovi = 0;
        var departamento_completo = "";
        var provincia_completo = "";
        var distrito_completo = "";

        var departamento_seleccionado = "";
        var provincia_seleccionado = "";
        var distrito_seleccionado = "";

        var id_del_distrito = "";
        //cuando de click en el textbox y se abra el modal de Departamentos - Provincias y Distritos
        $("#<%=txtDepartamentoProvinciaDistrito.ClientID%>").click(function () {
            $('#departamento-provincia-distrito-modal').modal('show');
            $("#<%=txtDepartamentoProvinciaDistrito.ClientID%>").attr("disabled", true);
            document.getElementById('<%=btnBotonEscondidoDeprovi.ClientID %>').click(); //reseteo a su modo inicial los drop

            $('#lblDepartamentos').css({ "color": "blue" });
            $('#lblProvincias').css({ "color": "blue" });
            $('#lblDistritos').css({ "color": "blue" });

            $("#glypcn<%=ddlDepartamentos.ClientID%>").remove();
            $("#<%=ddlDepartamentos.ClientID%>").parent().parent().children('span').text(" ").show();

            $("#glypcn<%=ddlProvincias.ClientID%>").remove();
            $("#<%=ddlProvincias.ClientID%>").parent().parent().children('span').text(" ").show();

            $("#glypcn<%=ddlDistritos.ClientID%>").remove();
            $("#<%=ddlDistritos.ClientID%>").parent().parent().children('span').text(" ").show();

            $('#<%=ddlDepartamentos.ClientID%>').val(0);
            $('#<%=ddlProvincias.ClientID%>').val(0);
            $('#<%=ddlDistritos.ClientID%>').val(0);
            departamento_seleccionado = "";
            provincia_seleccionado = "";
            distrito_seleccionado = "";

            departamento_completo = "";
            provincia_completo = "";
            distrito_completo = "";
            deprovi = 0;

        });

        //Esto es cuando cierre el modal de Departamento Provincia y Distrito
        $("#departamento-provincia-distrito-modal").on('hidden.bs.modal', function () {
            $("#<%=txtDepartamentoProvinciaDistrito.ClientID%>").attr("disabled", false);
            departamento_seleccionado = "";
            provincia_seleccionado = "";
            distrito_seleccionado = "";

            departamento_completo = "";
            provincia_completo = "";
            distrito_completo = "";
            deprovi = 0;

            departamento_completo = "no completo";
            provincia_completo = "no completo";
            distrito_completo = "no completo";
        });

        //Cuando presione Guardar en el modal de Departamento Provincia y Distrito
        $('#GuardarDepartamentoProvinciaDistrito').click(function () {
            document.getElementById('<%=GuardarDepartamentoProvinciaDistrito2.ClientID %>').click();
            if (departamento_completo == "completo" && provincia_completo == "completo" && distrito_completo == "completo") {

                $("#<%=txtDepartamentoProvinciaDistrito.ClientID%>").val(departamento_seleccionado + ' / ' + provincia_seleccionado + ' / ' + distrito_seleccionado);
                $("#<%=txtId_distrito_Mandado_Para_Actualizar.ClientID%>").val(id_del_distrito); //aqui mando el id del distrito para actualizar

            }
        });

        //usaré la variable a para comprobar si seleccione ya el ddl de Departamento , de Provincia o de Distrito , cambiando su estado
        function comprobarDepartamentos() {
            deprovi = 1;
            departamentos_valor = document.getElementById("<%=ddlDepartamentos.ClientID%>").value;
            departamentos = document.getElementById("<%=ddlDepartamentos.ClientID%>").id;

            if (departamentos_valor == 0) {
                $("#glypcn" + departamentos).remove();
                $('#lblDepartamentos').css({ "color": "brown" });
                $('#' + departamentos).css({ "border": "2px solid brown" });
                $('#' + departamentos).parent().parent().children('span').text("Seleccione un departamento").show();
                $('#' + departamentos).parent().parent().children('span').css({ "color": "brown" });
                $('#' + departamentos).parent().parent().append("<span id='glypcn" + departamentos + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                return false;
            } else {

                departamento_seleccionado = $("#<%=ddlDepartamentos.ClientID%>").find('option:selected').text();
                departamento_completo = "completo";

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
            deprovi = 2;
            provincias_valor = document.getElementById("<%=ddlProvincias.ClientID%>").value;
            provincias = document.getElementById("<%=ddlProvincias.ClientID%>").id;
            if (provincias_valor == 0) {
                $("#glypcn" + provincias).remove(); /*esto es para remover el icono*/
                $('#lblProvincias').css({ "color": "brown" });
                $('#' + provincias).css({ "border": "2px solid brown" });
                $('#' + provincias).parent().parent().children('span').text("Seleccione una provincia").show();
                $('#' + provincias).parent().parent().children('span').css({ "color": "brown" });
                $('#' + provincias).parent().parent().append("<span id='glypcn" + provincias + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                return false;

            } else {

                provincia_seleccionado = $("#<%=ddlProvincias.ClientID%>").find('option:selected').text();
                provincia_completo = "completo";
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
             deprovi = 3;
             distrito_valor = document.getElementById("<%=ddlDistritos.ClientID%>").value;
            distrito = document.getElementById("<%=ddlDistritos.ClientID%>").id;

            if (distrito_valor == 0) {
                $("#glypcn" + distrito).remove();
                $('#lblDistritos').css({ "color": "brown" });
                $('#' + distrito).css({ "border": "2px solid brown" });
                $('#' + distrito).parent().parent().children('span').text("Seleccione un distrito").show();
                $('#' + distrito).parent().parent().children('span').css({ "color": "brown" });
                $('#' + distrito).parent().parent().append("<span id='glypcn" + distrito + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                return false;

            } else {

                distrito_seleccionado = $("#<%=ddlDistritos.ClientID%>").find('option:selected').text();
                 departamento_completo = "completo";
                 provincia_completo = "completo";
                 distrito_completo = "completo";

                 id_del_distrito = $("#<%=ddlDistritos.ClientID%>").val();

                 $("#glypcn" + distrito).remove();
                 $('#' + distrito).css({ "border-color": "green", "border": "2px solid green" });
                 $('#lblDistritos').css({ "color": "green" });
                 $('#' + distrito).parent().parent().children('span').text("OK").show();
                 $('#' + distrito).parent().parent().children('span').css({ "color": "green" });
                 $('#' + distrito).parent().parent().append("<span id='glypcn" + distrito + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                 return true;
            }
        }


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

       


        

         
         //Esto es para el nuevo subidor de imagenes con Ajax 

         //prevent the default handling by cancelling the event
         //var cont = 0;

         //$("#insertbtn").click(function () {
         //    cont = cont + 1;
         //})

         //if (cont === 3)
         //{
         //    alert("llegaste al límite");
         //}

         document.ondragover = document.ondragenter = document.ondrop = function (e) {
             e.preventDefault();
             return false;
         }



         // NOTE : Both WebForms/MVC Uploader use the same JavaScript API

         var uploader;
         function CuteWebUI_AjaxUploader_OnInitialize() {
             uploader = this;//get uploader object
             uploader.internalobject.SetDialogAccept("image/*");
         }


         var fileuploaded = false;
         var submitbutton = document.getElementById('<%=SubmitButton.ClientID %>');
         function submitbutton_click() {
            
                 //return true and submit form if event is triggered by submitbutton.click
                 if (fileuploaded)
                     return true;

                 //start uploading after file selection
                 if (uploader.getqueuecount() > 0) {
                     uploader.startupload();//Start the upload of all queued files
                 }
                 else {
                     alert("Please browse files for uploading");
                 }
                 //prevent form submission on button click event
                 return false;
             }
         

        //Fires after all uploads are complete and submit the form
        function CuteWebUI_AjaxUploader_OnPostback() {
            fileuploaded = true;

            //use submitbutton to submit the form
            submitbutton.click();

            //return false to cancel the default form submission
            return false;
        }

        var lastprogress;
        var uploadingitem = null;

        //Fires when new information about the upload progress for a specific file is available.
        function CuteWebUI_AjaxUploader_OnProgress(isuploading, filename, startTime, sentLen, totalLen) {
            if (!isuploading) {
                lastprogress = null;
                return false;
            }
            lastprogress = {};
            lastprogress.name = filename;
            lastprogress.sent = sentLen;
            lastprogress.size = totalLen;
            SetProgress(uploadingitem);
            return false;//hide the default progress bar
        }

        function SetProgress(item) {
            if (!item)
                return;
            if (lastprogress && lastprogress.name == item.name) {
                var p = Math.floor(100 * lastprogress.sent / lastprogress.size);
                if (!isNaN(p)) {
                    item.info.innerHTML = p + "%";
                    return;
                }
            }
            item.info.innerHTML = "-%";
        }

        var divgrid = document.getElementById("grid");

        var imageItems = [];
        function FindItem(guid) {
            for (var i = 0; i < imageItems.length; i++)
                if (imageItems[i].guid == guid)
                    return imageItems[i];
        }

        function CreateItemUI(item) {
            item.div = document.createElement("div");
            item.div.className = "itemdiv";
            item.inner = document.createElement("div");
            item.inner.className = "iteminner";
            item.close = document.createElement("div");
            item.close.className = "itemclose";

            item.cell = document.createElement("span");
            item.cell.className = "itemcell";

            item.image = document.createElement("img");
            item.image.className = "itemimage";

            item.info = document.createElement("div");
            item.info.className = "iteminfo";

            divgrid.appendChild(item.div);
            item.div.appendChild(item.inner);
            item.div.appendChild(item.close);
            item.inner.appendChild(item.cell);
            item.inner.appendChild(item.info);
            item.cell.appendChild(item.image);
            
        }

        var esckeycallback = null;
        document.addEventListener("keydown", function (e) {
            if (e.keyCode == 27 && esckeycallback) {
                var func = esckeycallback;
                esckeycallback = null;
                func();
            }
        });

        function AppendItem(task) {

            var item = {};

            item.guid = task.InitGuid;
            item.name = task.FileName;

            CreateItemUI(item);

            item.close.onclick = function () {
                task.Cancel();
            }

            //Retrieve a list of file items defined by HTML5 <input type=file/>
            var srcfile = task.GetDomFile();
            if (!srcfile || srcfile.type.indexOf("image/") != 0) {
                item.notimage = true;
                item.image.src = "images/file.png";
                var ext = item.name.split('.');
                ext = ext[Math.max(1, ext.length - 1)] || "";
                item.info.innerHTML = "." + ext;
                return item;
            }

            var reader = new FileReader();
            reader.onload = function (e) {
                item.image.src = e.target.result;
            }
            reader.readAsDataURL(srcfile);

            item.image.style.cursor = "pointer";
            item.image.onclick = function () {
                if (!item.container) {
                    item.container = document.createElement("div");
                }

                var full = document.createElement("div");

                var fs = full.style;
                fs.position = "fixed";
                fs.left = fs.top = "0px";
                fs.width = fs.height = "100%";
                document.body.appendChild(full);

                var mask = document.createElement("div");
                var ms = mask.style;
                ms.position = "absolute";
                ms.left = ms.top = "0px";
                ms.width = ms.height = "100%";
                ms.backgroundColor = "rgba(127,127,127,0.5)";

                esckeycallback = mask.onclick = item.container.ondblclick = function () {
                    if (full.parentNode == document.body)
                        document.body.removeChild(full);
                }

                full.appendChild(mask);

                var s = item.container.style;
                s.position = "absolute";
                s.display = "block";
                s.width = s.height = "500px";
                s.border = "solid 1px gray";
                s.backgroundColor = "white";
                s.left = (document.documentElement.clientWidth - 500) / 2 + "px";
                s.top = (document.documentElement.clientHeight - 500) / 2 + "px";

                full.appendChild(item.container);

                if (!item.cropping) {
                    item.cropping = true;
                    StartCropper(item.task, item.container, onchange);
                }
            }

            //Fires after a file gets processed
            function onchange(newfile, dataurl, width, height) {

                //use this function to overwrite the uploader file
                task.OverrideDomFile(newfile);

                item.image.src = dataurl;

            }

            return item;
        }

        function UpdateItem(item, task) {
            item.task = task;

            switch (task.Status) {
                case "Finish":
                    item.div.className = "itemdiv itemdivfinish";
                    item.info.innerHTML = "DONE";
                    break;
                case "Error":
                    item.div.className = "itemdiv itemdiverror";
                    item.info.innerHTML = "ERROR";
                    break;
                case "Upload":
                    item.div.className = "itemdiv itemdivupload";
                    uploadingitem = item;
                    SetProgress(item);
                    break;
                case "Queue":
                    if (item.notimage)
                        item.div.className = "itemdiv itemdivqueue itemnotimage";
                    else
                        item.div.className = "itemdiv itemdivqueue";
                    break;
            }
        }


        function OnItemRemoved(item) {
            divgrid.removeChild(item.div);
        }

        function CuteWebUI_AjaxUploader_OnQueueUI(files) {
            for (var i = 0; i < imageItems.length; i++)
                imageItems[i].exists = false;
            for (var i = 0; i < files.length; i++) {
                var task = files[i];
                var item = FindItem(task.InitGuid);
                if (item == null) {
                    item = AppendItem(task);
                    imageItems.push(item);
                }
                UpdateItem(item, task);
                item.exists = true;
            }
            for (var i = 0; i < imageItems.length; i++) {
                var item = imageItems[i];
                if (item.exists)
                    continue;
                imageItems.splice(i, 1);
                i--;
                OnItemRemoved(item);
            }

            //divgrid.style.backgroundImage = files.length > 0 ? "none" : "";
        }

        function StartCropper(task, div, onchange) {

            //Retrieve a list of file items defined by HTML5 <input type=file/>
            var srcfile = task.GetDomFile();
            if (!srcfile || srcfile.type.indexOf("image/") != 0)
                return;

            var option = {};
            //specify a file object for <input type=file/>
            option.file = srcfile;
            //specify an element for UI container 
            option.container = div;
            //specify the container padding
            option.padding = 5;
            //When square is set to false, uploader will use rectangular crop-area.
            option.square = false;
            //set the minimum width of an element
            option.minWidth = 64;
            //set the minimum height of an element
            option.minHeight = 64;

            //Fires after a file gets processed
            option.onchange = onchange;

            uploader.cropper(option);

        }

        function InitPage() {
            var item = {};
            CreateItemUI(item);
            item.div.className = "itemdiv itemdivaddbtn";
            item.info.appendChild(document.getElementById("insertbtn"));
        }

        InitPage();

       



        function verificar() {

            var v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0, v7 = 0, v8 = 0, v9 = 0, v10 = 0, v11 = 0, v12 = 0;


            v1 = validacion("<%=ddlTipoServicio.ClientID%>");
            v2 = validacion("<%=ddlTipoInmueble.ClientID%>");
            v3 = validacion("<%=ddlSubTipoInmueble.ClientID%>");
            v4 = validacion('txtTitulo');
            v5 = validacion("<%=txtDescripcion.ClientID%>");
            v6 = validacion("<%=txtDireccion_BD.ClientID%>");
            v7 = validacion('txtPrecio');

            v8 = validacion("<%=ddlDormitorios.ClientID%>");
            v9 = validacion("<%=ddlBaños.ClientID%>");
            v10 = validacion("<%=ddlCocheras.ClientID%>");
            v11 = validacion("<%=ddlAntiguedad_Inmueble.ClientID%>");
            v12 = validacion("<%=ddlEstado_Inmueble.ClientID%>");
            v13 = validacion("<%=ddlTipo_Anunciante.ClientID%>");
            v14 = validacion("<%=ddlNroPisos.ClientID%>");
            v15 = validacion("<%=ddlTipoSuelo.ClientID%>");
            v16 = validacion("<%=ddlArea_Total.ClientID%>");
            v17 = validacion("<%=ddlDepartamentos_por_piso.ClientID%>");
            v18 = validacion("<%=ddlTipoPublicacion.ClientID%>");
            v19 = validacion("<%=ddlDetalles.ClientID%>");

            v20 = validacion("<%=checkCaracteristicas.ClientID%>");
            v21 = validacion("<%=checkServicios.ClientID%>");
            v22 = validacion("<%=checkAmbientes.ClientID%>");
            v23 = validacion("<%=checkAdicionales.ClientID%>");
            v24 = validacion("<%=checkAreasComunes.ClientID%>");
            v25 = validacion("<%=checkGenerales.ClientID%>");

            v26 = validacion("<%=SubirDocumentos.ClientID%>");

            if (v1 === false || v2 === false || v3 === false || v4 === false || v5 === false || v6 === false || v7 === false)
            {
                document.getElementById('verificado').value = 0;
            }
            else
            {

                document.getElementById('verificado').value = 1;
                //var jaja = $('#verificado').val();
                //alert(jaja);
            }

            var departamento = $("#<%=ddlTipoInmueble.ClientID%>").val();
               
            if (departamento == 1) {
                
                if (
                    v8 === false || v9 === false || v10 === false
                    || v11 === false || v12 === false || v13 === false 
                    || v20 === false || v21 === false || v22 === false
                    || v23 === false || v24 === false || v25 === false
                    || v14 === false || v17 === false || v18 === false || v19 === false) {
                    document.getElementById('comprobado').value = 0;
                }
                else {
                   
                    document.getElementById('comprobado').value = 1;
                //    var jaja1 = $('#comprobado').val();
                //alert(jaja1);
                }
            }
            else if (departamento == 2) {
                
                if (
                    v8 === false || v9 === false || v10 === false || v11 === false || v12 === false ||
                    v13 === false || v21 === false || v22 === false || v23 === false || v24 === false
                    || v25 === false || v14 === false || v18 === false ) {
                    document.getElementById('comprobado').value = 0;
                }
                else {
                    document.getElementById('comprobado').value = 1;
                }
            }
            else if (departamento == 3) {
                if (
                    v11 === false || v12 === false || v13 === false || v20 === false ||
                    v24 === false || v25 === false || v15 === false || v16 === false || v18 === false
                    || v19 === false) {
                    document.getElementById('comprobado').value = 0;
                }
                else {
                    document.getElementById('comprobado').value = 1;
                }
            }
            else if (departamento == 4) {
                if (
                    v8 === false ||v9 === false || v10 === false || v11 === false || v12 === false
                    || v13 === false || v20 === false || v21 === false || v22 === false || v23 === false
                    || v25 === false || v14 === false || v17 === false || v18 === false || v19 === false ) {
                    document.getElementById('comprobado').value = 0;
                }
                else {
                    document.getElementById('comprobado').value = 1;
                }
            }
            else if (departamento == 5) {
                if (
                    v9 === false || v10 === false || v11 === false || v12=== false|| v13=== false
                    || v20 === false || v21 === false || v24 === false || v25 === false || v14 === false
                    || v18=== false || v19=== false) {
                    document.getElementById('comprobado').value = 0;
                }
                else {
                    document.getElementById('comprobado').value = 1;
                }
            }

                 else if (departamento == 6) {
                if (
                    v8 === false ||v9 === false || v10 === false || v11 === false || v12=== false|| v13=== false
                    || v20 === false || v21 === false || v22 === false || v23 === false || v24 === false
                    || v25=== false || v14=== false|| v15=== false|| v16=== false|| v17=== false || v18=== false || v19=== false) {
                    document.getElementById('comprobado').value = 0;
                }
                else {
                    document.getElementById('comprobado').value = 1;
                }
            }
             
        }
        

         function validacion(campo) {

            if (campo === ("<%=SubirDocumentos.ClientID%>")) {
                file = document.getElementById(campo).value;
                if (file == null || file.length == 0) {
                   
                    $("#glypcn" + campo).remove();
                    $('#lblDocumentos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Suba sus tres documentos de propiedad del inmueble").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else {
                    $('#lblDocumentos').parent().css({ "color": "green" });
                    foto_perfil_completo = "completo";
                }
            }


            if (campo === ("<%=ddlTipoServicio.ClientID%>")) {

                var tiposervicio_valor = document.getElementById("<%=ddlTipoServicio.ClientID%>").value;
                var tiposervicio = document.getElementById("<%=ddlTipoServicio.ClientID%>").id;
                if (tiposervicio_valor == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + tiposervicio).remove();
                    $('#<%=lblTipoServicio.ClientID%>').css({ "color": "brown" });
                    $('#' + tiposervicio).css({ "border": "2px solid brown" });
                    $('#' + tiposervicio).parent().parent().children('span').text("Seleccione un tipo de servicio").show();
                    $('#' + tiposervicio).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + tiposervicio).parent().parent().append("<span id='glypcn" + tiposervicio + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + tiposervicio).remove();
                    $('#' + tiposervicio).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblTipoServicio.ClientID%>').css({ "color": "green" });
                    $('#' + tiposervicio).parent().parent().children('span').text("OK").show();
                    $('#' + tiposervicio).parent().parent().children('span').css({ "color": "green" });
                    $('#' + tiposervicio).parent().parent().append("<span id='glypcn" + tiposervicio + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }

            if (campo === ("<%=ddlTipoInmueble.ClientID%>")) {

                var tipoinmueble_valor = document.getElementById("<%=ddlTipoInmueble.ClientID%>").value;
                var tipoinmueble = document.getElementById("<%=ddlTipoInmueble.ClientID%>").id;
                if (tipoinmueble_valor == 0) {

                    $("#glypcn" + tipoinmueble).remove();
                    $('#<%=lblTipoInmueble.ClientID%>').css({ "color": "brown" });
                    $('#' + tipoinmueble).css({ "border": "2px solid brown" });
                    $('#' + tipoinmueble).parent().parent().children('span').text("Seleccione un tipo de inmueble").show();
                    $('#' + tipoinmueble).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + tipoinmueble).parent().parent().append("<span id='glypcn" + tipoinmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + tipoinmueble).remove();
                    $('#' + tipoinmueble).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblTipoInmueble.ClientID%>').css({ "color": "green" });
                    $('#' + tipoinmueble).parent().parent().children('span').text("OK").show();
                    $('#' + tipoinmueble).parent().parent().children('span').css({ "color": "green" });
                    $('#' + tipoinmueble).parent().parent().append("<span id='glypcn" + tipoinmueble + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }

            if (campo === ("<%=ddlSubTipoInmueble.ClientID%>")) {

                subtipoinmueble_valor = document.getElementById("<%=ddlSubTipoInmueble.ClientID%>").value;
                subtipoinmueble = document.getElementById("<%=ddlSubTipoInmueble.ClientID%>").id;
                if (subtipoinmueble_valor == 0) {
                    $("#glypcn" + subtipoinmueble).remove();
                    $('#<%=lblSubTipoInmueble.ClientID%>').css({ "color": "brown" });
                    $('#' + subtipoinmueble).css({ "border": "2px solid brown" });
                    $('#' + subtipoinmueble).parent().parent().children('span').text("Seleccione un SubTipo de Inmueble").show();
                    $('#' + subtipoinmueble).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + subtipoinmueble).parent().parent().append("<span id='glypcn" + subtipoinmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;
                } else {
                    id_del_subtipoinmueble = $("#<%=ddlSubTipoInmueble.ClientID%>").val();
                    $("#<%=txtSubTipoInmueble_Para_Actualizar.ClientID%>").val(id_del_subtipoinmueble);

                    $("#glypcn" + subtipoinmueble).remove();
                    $('#' + subtipoinmueble).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblSubTipoInmueble.ClientID%>').css({ "color": "green" });
                    $('#' + subtipoinmueble).parent().parent().children('span').text("OK").show();
                    $('#' + subtipoinmueble).parent().parent().children('span').css({ "color": "green" });
                    $('#' + subtipoinmueble).parent().parent().append("<span id='glypcn" + subtipoinmueble + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;
                }
            }


            if (campo === 'txtTitulo') {

                titulo = document.getElementById(campo).value;
                if (titulo == null || titulo.length == 0) {

                    $("#glypcn" + campo).remove();
                    $('#<%=lblTitulo.ClientID%>').css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese el título de la publicación").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^(\s)+/.test(titulo)) {

                    $("#glypcn" + campo).remove();
                    $('#<%=lblTitulo.ClientID%>').css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco al inicio").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }

                else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{99,}$/.test(titulo)) {

                    $("#glypcn" + campo).remove();
                    $('#<%=lblTitulo.ClientID%>').css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten mas de 100 letras").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]{0,9}$/.test(titulo)) {

                    $("#glypcn" + campo).remove();
                    $('#<%=lblTitulo.ClientID%>').css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Mínimo 10 letras y Máximo 50 letras").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/(([a-zA-Z0-9]{1,}\s{2,}))+$/.test(titulo)) {

                    $("#glypcn" + campo).remove();
                    $('#<%=lblTitulo.ClientID%>').css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permite espacios en blanco seguidos").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/\b(\w+)(\1)+\b$/.test(titulo)) {

                    $("#glypcn" + campo).remove();
                    $('#<%=lblTitulo.ClientID%>').css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese correctamente su dirección").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^(([a-zA-Z0-9áéíóúÁÉÍÓÚñÑ.]\s{0,1}){9,49})[^\s]$/.test(titulo)) {
                    $("#glypcn" + campo).remove();
                    $('#<%=lblTitulo.ClientID%>').css({ "color": "green" });
                    $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#' + campo).parent().css({ "color": "green" });
                    $('#' + campo).parent().children('span').text("OK").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    return true;
                }
            }

            if (campo === 'txtautocomplete') {
                direccion = document.getElementById(campo).value;
                if (direccion == null || direccion.length == 0) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblDireccion').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese su dirección").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^(\s)+/.test(direccion)) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblDireccion').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco al inicio").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{49,}$/.test(direccion)) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblDireccion').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten mas de 40 letras").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]{0,9}$/.test(direccion)) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblDireccion').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Mínimo 10 letras y Máximo 50 letras").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/(([a-zA-Z0-9]{1,}\s{2,}))+$/.test(direccion)) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblDireccion').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permite espacios en blanco seguidos").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/\b(\w+)(\1)+\b$/.test(direccion)) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblDireccion').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese correctamente su dirección").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^(([a-zA-Z0-9áéíóúÁÉÍÓÚñÑ.]\s{0,1}){9,49})[^\s]$/.test(direccion)) {
                    direccion_seleccionada = "completo";
                    $("#glypcn" + campo).remove();
                    $('#lblDireccion').parent().css({ "color": "green" });
                    $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#' + campo).parent().css({ "color": "green" });
                    $('#' + campo).parent().children('span').text("OK").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    return true;
                }
            }





            if (campo === 'txtPrecio') {

                precio = document.getElementById(campo).value;
                if (precio == null || precio.length == 0) {

                    $("#glypcn" + campo).remove();
                    $('#<%=lblPrecio.ClientID%>').css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese el precio del inmueble").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }

                else if (/(\s)/.test(precio)) {
                    $("#glypcn" + campo).remove();
                    $('#<%=lblPrecio.ClientID%>').css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{8,}$/.test(precio)) {
                    $("#glypcn" + campo).remove();
                    $('#<%=lblPrecio.ClientID%>').css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("El máximo de digitos permitos son 7").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{0,3}$/.test(precio)) {
                    $("#glypcn" + campo).remove();
                    $('#<%=lblPrecio.ClientID%>').css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese mas dígitos").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/[^0-9]+$/.test(precio)) {
                    $("#glypcn" + campo).remove();
                    $('#<%=lblPrecio.ClientID%>').css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese solo números").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{3,4}$/.test(precio)) {
                    precio_completo = "completo";
                    $("#glypcn" + campo).remove();
                    $('#<%=lblPrecio.ClientID%>').css({ "color": "green" });
                    $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#' + campo).parent().css({ "color": "green" });
                    $('#' + campo).parent().children('span').text("OK").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    return true;
                }

            }





            if (campo === ("<%=ddlDormitorios.ClientID%>")) {

                var dormitorios_valor = document.getElementById("<%=ddlDormitorios.ClientID%>").value;
                var dormitorios = document.getElementById("<%=ddlDormitorios.ClientID%>").id;
                if (dormitorios_valor == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + dormitorios).remove();
                    $('#<%=lblDormitorios.ClientID%>').css({ "color": "brown" });
                    $('#' + dormitorios).css({ "border": "2px solid brown" });
                    $('#' + dormitorios).parent().parent().children('span').text("Seleccione cantidad de dormitorios").show();
                    $('#' + dormitorios).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + dormitorios).parent().parent().append("<span id='glypcn" + dormitorios + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + dormitorios).remove();
                    $('#' + dormitorios).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblDormitorios.ClientID%>').css({ "color": "green" });
                    $('#' + dormitorios).parent().parent().children('span').text("OK").show();
                    $('#' + dormitorios).parent().parent().children('span').css({ "color": "green" });
                    $('#' + dormitorios).parent().parent().append("<span id='glypcn" + dormitorios + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }


            if (campo === ("<%=ddlBaños.ClientID%>")) {

                var baños_valor = document.getElementById("<%=ddlBaños.ClientID%>").value;
                var baños = document.getElementById("<%=ddlBaños.ClientID%>").id;
                if (baños_valor == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + baños).remove();
                    $('#<%=lblBaños.ClientID%>').css({ "color": "brown" });
                    $('#' + baños).css({ "border": "2px solid brown" });
                    $('#' + baños).parent().parent().children('span').text("Seleccione cantidad de baños").show();
                    $('#' + baños).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + baños).parent().parent().append("<span id='glypcn" + baños + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + baños).remove();
                    $('#' + baños).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblBaños.ClientID%>').css({ "color": "green" });
                    $('#' + baños).parent().parent().children('span').text("OK").show();
                    $('#' + baños).parent().parent().children('span').css({ "color": "green" });
                    $('#' + baños).parent().parent().append("<span id='glypcn" + baños + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }



            if (campo === ("<%=ddlCocheras.ClientID%>")) {

                var cocheras_valor = document.getElementById("<%=ddlCocheras.ClientID%>").value;
                var cocheras = document.getElementById("<%=ddlCocheras.ClientID%>").id;
                if (cocheras_valor == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + cocheras).remove();
                    $('#<%=lblCocheras.ClientID%>').css({ "color": "brown" });
                    $('#' + cocheras).css({ "border": "2px solid brown" });
                    $('#' + cocheras).parent().parent().children('span').text("Seleccione cantidad de cocheras").show();
                    $('#' + cocheras).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + cocheras).parent().parent().append("<span id='glypcn" + cocheras + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + cocheras).remove();
                    $('#' + cocheras).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblCocheras.ClientID%>').css({ "color": "green" });
                    $('#' + cocheras).parent().parent().children('span').text("OK").show();
                    $('#' + cocheras).parent().parent().children('span').css({ "color": "green" });
                    $('#' + cocheras).parent().parent().append("<span id='glypcn" + cocheras + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }

            }



            if (campo === ("<%=ddlAntiguedad_Inmueble.ClientID%>")) {

                var antiguedad_inmueble_valor = document.getElementById("<%=ddlAntiguedad_Inmueble.ClientID%>").value;
                var antiguedad_inmueble = document.getElementById("<%=ddlAntiguedad_Inmueble.ClientID%>").id;
                if (antiguedad_inmueble_valor == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + antiguedad_inmueble).remove();
                    $('#<%=lblAntiguedad_Inmueble.ClientID%>').css({ "color": "brown" });
                    $('#' + antiguedad_inmueble).css({ "border": "2px solid brown" });
                    $('#' + antiguedad_inmueble).parent().parent().children('span').text("Seleccione antiguedad de inmueble").show();
                    $('#' + antiguedad_inmueble).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + antiguedad_inmueble).parent().parent().append("<span id='glypcn" + antiguedad_inmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + antiguedad_inmueble).remove();
                    $('#' + antiguedad_inmueble).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblAntiguedad_Inmueble.ClientID%>').css({ "color": "green" });
                    $('#' + antiguedad_inmueble).parent().parent().children('span').text("OK").show();
                    $('#' + antiguedad_inmueble).parent().parent().children('span').css({ "color": "green" });
                    $('#' + antiguedad_inmueble).parent().parent().append("<span id='glypcn" + antiguedad_inmueble + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }




            if (campo === ("<%=ddlEstado_Inmueble.ClientID%>")) {

                var Estado_Inmueble_val = document.getElementById("<%=ddlEstado_Inmueble.ClientID%>").value;
                var Estado_Inmueble = document.getElementById("<%=ddlEstado_Inmueble.ClientID%>").id;
                if (Estado_Inmueble_val == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + Estado_Inmueble).remove();
                    $('#<%=lblEstado_Inmueble.ClientID%>').css({ "color": "brown" });
                    $('#' + Estado_Inmueble).css({ "border": "2px solid brown" });
                    $('#' + Estado_Inmueble).parent().parent().children('span').text("Seleccione estado de inmueble").show();
                    $('#' + Estado_Inmueble).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + Estado_Inmueble).parent().parent().append("<span id='glypcn" + Estado_Inmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + Estado_Inmueble).remove();
                    $('#' + Estado_Inmueble).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblEstado_Inmueble.ClientID%>').css({ "color": "green" });
                    $('#' + Estado_Inmueble).parent().parent().children('span').text("OK").show();
                    $('#' + Estado_Inmueble).parent().parent().children('span').css({ "color": "green" });
                    $('#' + Estado_Inmueble).parent().parent().append("<span id='glypcn" + Estado_Inmueble + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }




            if (campo === ("<%=ddlEstado_Inmueble.ClientID%>")) {

                var Estado_Inmueble_val = document.getElementById("<%=ddlEstado_Inmueble.ClientID%>").value;
                var Estado_Inmueble = document.getElementById("<%=ddlEstado_Inmueble.ClientID%>").id;
                if (Estado_Inmueble_val == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + Estado_Inmueble).remove();
                    $('#<%=lblEstado_Inmueble.ClientID%>').css({ "color": "brown" });
                    $('#' + Estado_Inmueble).css({ "border": "2px solid brown" });
                    $('#' + Estado_Inmueble).parent().parent().children('span').text("Seleccione estado inmueble").show();
                    $('#' + Estado_Inmueble).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + Estado_Inmueble).parent().parent().append("<span id='glypcn" + Estado_Inmueble + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + Estado_Inmueble).remove();
                    $('#' + Estado_Inmueble).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblEstado_Inmueble.ClientID%>').css({ "color": "green" });
                    $('#' + Estado_Inmueble).parent().parent().children('span').text("OK").show();
                    $('#' + Estado_Inmueble).parent().parent().children('span').css({ "color": "green" });
                    $('#' + Estado_Inmueble).parent().parent().append("<span id='glypcn" + Estado_Inmueble + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }



            if (campo === ("<%=ddlTipo_Anunciante.ClientID%>")) {

                var Tipo_Anunciante_val = $("#<%=ddlTipo_Anunciante.ClientID%>").val();
                var Tipo_Anunciante = document.getElementById("<%=ddlTipo_Anunciante.ClientID%>").id;

                if (Tipo_Anunciante_val == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + Tipo_Anunciante).remove();
                    $('#<%=lblTipo_Anunciante.ClientID%>').css({ "color": "brown" });
                    $('#' + Tipo_Anunciante).css({ "border": "2px solid brown" });
                    $('#' + Tipo_Anunciante).parent().parent().children('span').text("Seleccione tipo de anunciante").show();
                    $('#' + Tipo_Anunciante).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + Tipo_Anunciante).parent().parent().append("<span id='glypcn" + Tipo_Anunciante + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + Tipo_Anunciante).remove();
                    $('#' + Tipo_Anunciante).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblTipo_Anunciante.ClientID%>').css({ "color": "green" });
                    $('#' + Tipo_Anunciante).parent().parent().children('span').text("OK").show();
                    $('#' + Tipo_Anunciante).parent().parent().children('span').css({ "color": "green" });
                    $('#' + Tipo_Anunciante).parent().parent().append("<span id='glypcn" + Tipo_Anunciante + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }



            if (campo === ("<%=ddlNroPisos.ClientID%>")) {

                var NroPisos_val = $("#<%=ddlNroPisos.ClientID%>").val();
                var NroPisos = document.getElementById("<%=ddlNroPisos.ClientID%>").id;


                if (NroPisos_val == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + NroPisos).remove();
                    $('#<%=lblNroPisos.ClientID%>').css({ "color": "brown" });
                    $('#' + NroPisos).css({ "border": "2px solid brown" });
                    $('#' + NroPisos).parent().parent().children('span').text("Seleccione número de pisos").show();
                    $('#' + NroPisos).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + NroPisos).parent().parent().append("<span id='glypcn" + NroPisos + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + NroPisos).remove();
                    $('#' + NroPisos).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblNroPisos.ClientID%>').css({ "color": "green" });
                    $('#' + NroPisos).parent().parent().children('span').text("OK").show();
                    $('#' + NroPisos).parent().parent().children('span').css({ "color": "green" });
                    $('#' + NroPisos).parent().parent().append("<span id='glypcn" + NroPisos + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }





            if (campo === ("<%=ddlTipoSuelo.ClientID%>")) {

                var TipoSuelo_val = $("#<%=ddlTipoSuelo.ClientID%>").val();
                var TipoSuelo = document.getElementById("<%=ddlTipoSuelo.ClientID%>").id;


                if (TipoSuelo_val == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + TipoSuelo).remove();
                    $('#<%=lblTipoSuelo.ClientID%>').css({ "color": "brown" });
                    $('#' + TipoSuelo).css({ "border": "2px solid brown" });
                    $('#' + TipoSuelo).parent().parent().children('span').text("Seleccione tipo suelo").show();
                    $('#' + TipoSuelo).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + TipoSuelo).parent().parent().append("<span id='glypcn" + TipoSuelo + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + TipoSuelo).remove();
                    $('#' + TipoSuelo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblTipoSuelo.ClientID%>').css({ "color": "green" });
                    $('#' + TipoSuelo).parent().parent().children('span').text("OK").show();
                    $('#' + TipoSuelo).parent().parent().children('span').css({ "color": "green" });
                    $('#' + TipoSuelo).parent().parent().append("<span id='glypcn" + TipoSuelo + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }







            if (campo === ("<%=ddlArea_Total.ClientID%>")) {

                var Area_Total_val = $("#<%=ddlArea_Total.ClientID%>").val();
                var Area_Total = document.getElementById("<%=ddlArea_Total.ClientID%>").id;


                if (Area_Total_val == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + Area_Total).remove();
                    $('#<%=lblArea_Total.ClientID%>').css({ "color": "brown" });
                    $('#' + Area_Total).css({ "border": "2px solid brown" });
                    $('#' + Area_Total).parent().parent().children('span').text("Seleccione area total").show();
                    $('#' + Area_Total).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + Area_Total).parent().parent().append("<span id='glypcn" + Area_Total + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + Area_Totalo).remove();
                    $('#' + Area_Total).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblArea_Total.ClientID%>').css({ "color": "green" });
                    $('#' + Area_Total).parent().parent().children('span').text("OK").show();
                    $('#' + Area_Total).parent().parent().children('span').css({ "color": "green" });
                    $('#' + Area_Total).parent().parent().append("<span id='glypcn" + Area_Total + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }



            if (campo === ("<%=ddlDepartamentos_por_piso.ClientID%>")) {

                var Departamentos_por_piso_val = $("#<%=ddlDepartamentos_por_piso.ClientID%>").val();
                var Departamentos_por_piso = document.getElementById("<%=ddlDepartamentos_por_piso.ClientID%>").id;


                if (Departamentos_por_piso_val == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + Departamentos_por_piso).remove();
                    $('#<%=lblDepartamentos_por_piso.ClientID%>').css({ "color": "brown" });
                    $('#' + Departamentos_por_piso).css({ "border": "2px solid brown" });
                    $('#' + Departamentos_por_piso).parent().parent().children('span').text("Seleccione departamento por piso").show();
                    $('#' + Departamentos_por_piso).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + Departamentos_por_piso).parent().parent().append("<span id='glypcn" + Departamentos_por_piso + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + Departamentos_por_piso).remove();
                    $('#' + Departamentos_por_piso).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblDepartamentos_por_piso.ClientID%>').css({ "color": "green" });
                    $('#' + Departamentos_por_piso).parent().parent().children('span').text("OK").show();
                    $('#' + Departamentos_por_piso).parent().parent().children('span').css({ "color": "green" });
                    $('#' + Departamentos_por_piso).parent().parent().append("<span id='glypcn" + Departamentos_por_piso + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }


            if (campo === ("<%=ddlTipoPublicacion.ClientID%>")) {

                var TipoPublicacion_val = $("#<%=ddlTipoPublicacion.ClientID%>").val();
                var TipoPublicacion = document.getElementById("<%=ddlTipoPublicacion.ClientID%>").id;


                if (TipoPublicacion_val == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + TipoPublicacion).remove();
                    $('#<%=lblTipoPublicacion.ClientID%>').css({ "color": "brown" });
                    $('#' + TipoPublicacion).css({ "border": "2px solid brown" });
                    $('#' + TipoPublicacion).parent().parent().children('span').text("Seleccione tipo publicación").show();
                    $('#' + TipoPublicacion).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + TipoPublicacion).parent().parent().append("<span id='glypcn" + TipoPublicacion + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + TipoPublicacion).remove();
                    $('#' + TipoPublicacion).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblTipoPublicacion.ClientID%>').css({ "color": "green" });
                    $('#' + TipoPublicacion).parent().parent().children('span').text("OK").show();
                    $('#' + TipoPublicacion).parent().parent().children('span').css({ "color": "green" });
                    $('#' + TipoPublicacion).parent().parent().append("<span id='glypcn" + TipoPublicacion + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }



            if (campo === ("<%=ddlDetalles.ClientID%>")) {

                var Detalles_val = $("#<%=ddlDetalles.ClientID%>").val();
                var Detalles = document.getElementById("<%=ddlDetalles.ClientID%>").id;


                if (Detalles_val == 0) {

                    //alert("Seleccione un tipo de documento");
                    $("#glypcn" + Detalles).remove();
                    $('#<%=lblDetalles.ClientID%>').css({ "color": "brown" });
                    $('#' + Detalles).css({ "border": "2px solid brown" });
                    $('#' + Detalles).parent().parent().children('span').text("Seleccione detalles").show();
                    $('#' + Detalles).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + Detalles).parent().parent().append("<span id='glypcn" + Detalles + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;

                } else {

                    $("#glypcn" + Detalles).remove();
                    $('#' + Detalles).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblDetalles.ClientID%>').css({ "color": "green" });
                    $('#' + Detalles).parent().parent().children('span').text("OK").show();
                    $('#' + Detalles).parent().parent().children('span').css({ "color": "green" });
                    $('#' + Detalles).parent().parent().append("<span id='glypcn" + Detalles + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;

                }
            }

            //verificar checkbox
               <%-- $("#<%=checkCaracteristicas.ClientID%>").attr('checked'); --%>


            //verificar en tiempo real los checkbox

            




            if (campo === ("<%=checkCaracteristicas.ClientID%>")) {
                if ($('#<%=checkCaracteristicas.ClientID%> input:checkbox:checked').length <= 0) {
                    var caracteristicas_val = $("#<%=checkCaracteristicas.ClientID%>").val();
                    var caracteristicas = document.getElementById("<%=checkCaracteristicas.ClientID%>").id;

                    $("#glypcn" + caracteristicas).remove();
                    $('#<%=lblCaracteristicas.ClientID%>').css({ "color": "brown" });
                    $('#' + caracteristicas).css({ "border": "2px solid brown" });
                    $('#' + caracteristicas).parent().parent().children('span').text("Seleccione las características").show();
                    $('#' + caracteristicas).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + caracteristicas).parent().parent().append("<span id='glypcn" + caracteristicas + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;
                }
                else {
                    $("#glypcn" + caracteristicas).remove();
                    $('#' + caracteristicas).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblCaracteristicas.ClientID%>').css({ "color": "green" });
                    $('#' + caracteristicas).parent().parent().children('span').text("OK").show();
                    $('#' + caracteristicas).parent().parent().children('span').css({ "color": "green" });
                    $('#' + caracteristicas).parent().parent().append("<span id='glypcn" + caracteristicas + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;
                }
            }


            if (campo === ("<%=checkServicios.ClientID%>")) {
                if ($('#<%=checkServicios.ClientID%> input:checkbox:checked').length <= 0) {
                    var Servicios_val = $("#<%=checkServicios.ClientID%>").val();
                    var Servicios = document.getElementById("<%=checkServicios.ClientID%>").id;

                    $("#glypcn" + Servicios).remove();
                    $('#<%=lblServicios.ClientID%>').css({ "color": "brown" });
                    $('#' + Servicios).css({ "border": "2px solid brown" });
                    $('#' + Servicios).parent().parent().children('span').text("Seleccione los servicios").show();
                    $('#' + Servicios).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + Servicios).parent().parent().append("<span id='glypcn" + Servicios + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;
                }
                else {
                    $("#glypcn" + Servicios).remove();
                    $('#' + Servicios).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblServicios.ClientID%>').css({ "color": "green" });
                    $('#' + Servicios).parent().parent().children('span').text("OK").show();
                    $('#' + Servicios).parent().parent().children('span').css({ "color": "green" });
                    $('#' + Servicios).parent().parent().append("<span id='glypcn" + Servicios + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;
                }

            }




             if (campo === ("<%=checkAmbientes.ClientID%>")) {
                if ($('#<%=checkAmbientes.ClientID%> input:checkbox:checked').length <= 0) {
                    var Ambientes_val = $("#<%=checkAmbientes.ClientID%>").val();
                    var Ambientes = document.getElementById("<%=checkAmbientes.ClientID%>").id;

                    $("#glypcn" + Ambientes).remove();
                    $('#<%=lblAmbientes.ClientID%>').css({ "color": "brown" });
                    $('#' + Ambientes).css({ "border": "2px solid brown" });
                    $('#' + Ambientes).parent().parent().children('span').text("Seleccione los ambientes").show();
                    $('#' + Ambientes).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + Ambientes).parent().parent().append("<span id='glypcn" + Ambientes + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;
                }
                else {
                    $("#glypcn" + Ambientes).remove();
                    $('#' + Ambientes).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblAmbientes.ClientID%>').css({ "color": "green" });
                    $('#' + Ambientes).parent().parent().children('span').text("OK").show();
                    $('#' + Ambientes).parent().parent().children('span').css({ "color": "green" });
                    $('#' + Ambientes).parent().parent().append("<span id='glypcn" + Ambientes + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;
                }

            }




            if (campo === ("<%=checkAdicionales.ClientID%>")) {
                if ($('#<%=checkAdicionales.ClientID%> input:checkbox:checked').length <= 0) {
                    var Adicionales_val = $("#<%=checkAdicionales.ClientID%>").val();
                    var Adicionales = document.getElementById("<%=checkAdicionales.ClientID%>").id;

                    $("#glypcn" + Adicionales).remove();
                    $('#<%=lblAdicionales.ClientID%>').css({ "color": "brown" });
                    $('#' + Adicionales).css({ "border": "2px solid brown" });
                    $('#' + Adicionales).parent().parent().children('span').text("Seleccione los ambientes").show();
                    $('#' + Adicionales).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + Adicionales).parent().parent().append("<span id='glypcn" + Adicionales + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;
                }
                else {
                    $("#glypcn" + Adicionales).remove();
                    $('#' + Adicionales).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblAdicionales.ClientID%>').css({ "color": "green" });
                    $('#' + Adicionales).parent().parent().children('span').text("OK").show();
                    $('#' + Adicionales).parent().parent().children('span').css({ "color": "green" });
                    $('#' + Adicionales).parent().parent().append("<span id='glypcn" + Adicionales + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;
                }

            }




             if (campo === ("<%=checkAreasComunes.ClientID%>")) {
                if ($('#<%=checkAreasComunes.ClientID%> input:checkbox:checked').length <= 0) {
                    var AreasComunes_val = $("#<%=checkAreasComunes.ClientID%>").val();
                    var AreasComunes = document.getElementById("<%=checkAreasComunes.ClientID%>").id;

                    $("#glypcn" + AreasComunes).remove();
                    $('#<%=lblAreasComunes.ClientID%>').css({ "color": "brown" });
                    $('#' + AreasComunes).css({ "border": "2px solid brown" });
                    $('#' + AreasComunes).parent().parent().children('span').text("Seleccione las Areas Comunes").show();
                    $('#' + AreasComunes).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + AreasComunes).parent().parent().append("<span id='glypcn" + AreasComunes + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;
                }
                else {
                    $("#glypcn" + AreasComunes).remove();
                    $('#' + AreasComunes).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblAreasComunes.ClientID%>').css({ "color": "green" });
                    $('#' + AreasComunes).parent().parent().children('span').text("OK").show();
                    $('#' + AreasComunes).parent().parent().children('span').css({ "color": "green" });
                    $('#' + AreasComunes).parent().parent().append("<span id='glypcn" + AreasComunes + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;
                }

            }





            if (campo === ("<%=checkGenerales.ClientID%>")) {
                if ($('#<%=checkGenerales.ClientID%> input:checkbox:checked').length <= 0) {
                    var Generales_val = $("#<%=checkGenerales.ClientID%>").val();
                    var Generales = document.getElementById("<%=checkGenerales.ClientID%>").id;

                    $("#glypcn" + Generales).remove();
                    $('#<%=lblGenerales.ClientID%>').css({ "color": "brown" });
                    $('#' + Generales).css({ "border": "2px solid brown" });
                    $('#' + Generales).parent().parent().children('span').text("Seleccione los las caracteristicas generales").show();
                    $('#' + Generales).parent().parent().children('span').css({ "color": "brown" });
                    $('#' + Generales).parent().parent().append("<span id='glypcn" + Generales + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");
                    return false;
                }
                else {
                    $("#glypcn" + Generales).remove();
                    $('#' + Generales).css({ "border-color": "green", "border": "2px solid green" });
                    $('#<%=lblGenerales.ClientID%>').css({ "color": "green" });
                    $('#' + Generales).parent().parent().children('span').text("OK").show();
                    $('#' + Generales).parent().parent().children('span').css({ "color": "green" });
                    $('#' + Generales).parent().parent().append("<span id='glypcn" + Generales + "' class='glyphicon glyphicon-ok form-control-feedback' style='color:green'></span>");
                    return true;
                }

            }


        
        


                   // if($("input:checked").is(':checked')) {  
                   //   alert($("input:checked").attr("id"));  
                   //   } else {  
                   //alert("Seleccione las subcaracterísticas de cada característica");  
                   //     }
                

                }
        


         function verificar2() {

             var v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0, v7 = 0, v8 = 0, v9 = 0, v10 = 0, v11 = 0, v12 = 0;
             
             v1 = validacion('txtautocomplete');
            

             if (deprovi === 0) {

                 comprobarDepartamentos();
             }
             else if (deprovi === 1) {

                 comprobarProvincias();
             }
             else if (deprovi === 2) {

                 comprobarDistritos();
             }


             if (v1 === false || v2 === false || v3 === false || v4 === false || v5 === false || v6 === false || v7 === false || v8 === false || v9 === false || v10 === false || v11 === false || v12 === false) {

                 //document.getElementById('verificado2').value = 0;
             } else {
                 //document.getElementById('verificado2').value = 1;
             }
         }


         function verificarCaracteristicasInmueble() {

             var v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0, v7 = 0, v8 = 0, v9 = 0, v10 = 0, v11 = 0, v12 = 0;

             v1 = validacion('txtautocomplete');


             if (deprovi === 0) {

                 comprobarDepartamentos();
             }
             else if (deprovi === 1) {

                 comprobarProvincias();
             }
             else if (deprovi === 2) {

                 comprobarDistritos();
             }


             if (v1 === false || v2 === false || v3 === false || v4 === false || v5 === false || v6 === false || v7 === false || v8 === false || v9 === false || v10 === false || v11 === false || v12 === false) {

                 //document.getElementById('verificado3').value = 0;
             } else {
                 //document.getElementById('verificado3').value = 1;
             }
         }




    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

