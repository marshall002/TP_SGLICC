<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPagePanel.master" AutoEventWireup="true" CodeFile="actualizar-mi-informacion.aspx.cs" Inherits="pages_general_validar_mi_informacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="contenedor-gestion-perfil">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="card columna1-gestion-perfil">
                    <div class="card-block header-titulo-gestion-perfil">                       
                       <h4 class="card-title titulo-gestion-perfil"><b><p class="title">Mis datos personales</p></b></h4>                    
                    </div> 
                       <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                      
                        <div class="contenedor-imagen-perfil-gestion-perfil col-md-12 col-sm-12 col-xl-12">
                          <asp:Image ID="img_Perfil" CssClass="imagen-perfil-gestion-perfil" runat="server" />
                        </div>

                        <div class="fila-input-gestion-perfil">
                        <div class="form-group caja-columna1-gestion-perfil" >
                           <label class="texto">Nombre del usuario:</label> 
                            <asp:TextBox ID="txtNombrePersona" class="form-control-personalizado2 col-lg-10 col-md-10 col-xl-10 col-sm-10 "  runat="server"></asp:TextBox>                          
                        </div>                         
                         <div class="form-group caja-columna2-gestion-perfil" >
                            <label class="texto">Fecha de Nacimiento:</label>     
                             <asp:TextBox ID="txtFechaNacimiento" class="form-control-personalizado2 col-lg-10 col-md-10 col-xl-10 col-sm-10 " runat="server" DataFormatString="{0:d}"></asp:TextBox> 
                        </div>
                        </div>

                        <div class="fila-input-gestion-perfil">
                        <div class="form-group caja-columna1-gestion-perfil">
                            <label class="texto">Dirección:</label> 
                             <asp:TextBox ID="txtDireccion" class="form-control-personalizado2 col-lg-10 col-md-10 col-xl-10 col-sm-10" TextMode="MultiLine" placeholder="Ingrese su dirección" runat="server"></asp:TextBox>     
                            <%--<asp:Label ID="txtDireccion" class="control-label col-sm-12" runat="server" Text="Label"></asp:Label>--%>
                        </div>
                         <div class="form-group caja-columna2-gestion-perfil">
                         <label class="texto">Departamento / Provincia / Distrito:</label>        
                            <asp:TextBox ID="txtDepartamentoProvinciaDistrito" TextMode="MultiLine" class="form-control-personalizado2 col-lg-10 col-md-10 col-xl-10 col-sm-10" runat="server" Text="Label"></asp:TextBox>
                        </div>
                        </div>

                        <div class="fila-input-gestion-perfil">
                         <div class="form-group caja-columna1-gestion-perfil">
                            <label class="texto">Celular:</label> 
                             <asp:TextBox ID="txtCelular" class="form-control-personalizado2 col-sm-10" runat="server" ></asp:TextBox>                        
                        </div>
                         <div class="form-group caja-columna2-gestion-perfil">
                            <label class="texto">Teléfono:</label>  
                              <asp:TextBox ID="txtTelefono" class="form-control-personalizado2 col-sm-10 "  runat="server" ></asp:TextBox>                      
                        </div>
                        </div>

                        <div class="fila-input-gestion-perfil">
                        <div class="form-group caja-columna1-gestion-perfil">
                           <label class="texto">Correo:</label>  
                             <asp:TextBox ID="txtCorreo" class="form-control-personalizado2 col-sm-10" runat="server"  ></asp:TextBox> 
                        </div>
                        <div class="form-group caja-columna2-gestion-perfil">
                            <label class="texto">Documento:</label> 
                              <asp:TextBox ID="txtDocumento" class="form-control-personalizado2 col-sm-10" runat="server"  ></asp:TextBox>                            
                        </div>
                        </div>

                        <div class="fila-input-gestion-perfil">
                         <div class="form-group caja-columna1-gestion-perfil">
                            <label class="texto">Estado de cuenta:</label>                                
                            <asp:Label ID="txtEstado" class="form-control-personalizado2 col-sm-10" runat="server" ></asp:Label>
                        </div>
                         <div class="form-group caja-columna2-gestion-perfil">
                            <label class="texto">Tipo:</label>                                
                            <asp:Label ID="txtTipo" class="form-control-personalizado2 col-sm-10" runat="server" ></asp:Label>
                        </div>
                        </div>

                        <div class="row clearfix">
                        </div>
                     </div>
                   </div>
                 </div>
            

                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                   <div class="card columna2-gestion-perfil">   
                        <div class="card-block header-titulo-gestion-perfil"> 
                         <h4 class="card-title titulo-gestion-perfil"><b><p class="title">Mis datos de empresa</p></b></h4>   
                        </div>
                     <div class="card-block col-lg-12 col-md-12 col-sm-12 col-xs-12">                       
                        <div class="contenedor-imagen-empresa-gestion-perfil col-sm-12">
                          <asp:Image ID="logo_empresa" CssClass="img-fluid imagen-empresa-gestion-perfil" runat="server"/>
                        </div> 
                        <div class="fila-input-gestion-perfil">
                        <div class="form-group caja-columna1-gestion-perfil ">
                             <label class="texto">Empresa:</label>
                            <asp:TextBox ID="txtNombre_Empresa" class="form-control-personalizado2 col-sm-10" runat="server"  ></asp:TextBox>                              
                         </div>
                         <div class="form-group caja-columna2-gestion-perfil">
                             <label class="texto">Ruc:</label>   
                             <asp:TextBox ID="txtRuc" class="form-control-personalizado2 col-sm-10" runat="server"  ></asp:TextBox>  
                         </div>
                         </div>
                         
                         <div class="row clearfix">
                        </div>
                       </div>
                    </div>      
                    
                    <div class="caja-boton-gestion-perfil">
                    <%--<asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                    <ContentTemplate>--%>
                    <asp:Button ID="btnActualizar" runat="server" CssClass="btn btn-info" Style="margin-right:100px;" Width="33%" Text="Actualizar" OnClick="btnActualizar_Click" />
                    <asp:Button ID="btnRegresar" runat="server" CssClass="btn btn-danger" Style="float: right" Width="33%" Text="Regresar" OnClick="btnRegresar_Click" PostBackUrl="~/pages/general/gestionar-perfil.aspx"/>
                    <%--</ContentTemplate>
                        <Triggers>
                            <asp:PostBackTrigger ControlID="btnActualizar"  />
                        </Triggers>
                    </asp:UpdatePanel>--%>

                    </div>
                    <%--<asp:Button ID="btnReportar" runat="server" CssClass="btn btn-warning" Style="float: right" Width="33%" Text="Reportar" OnClick="btnReportar_Click"  />--%>
                </div>             
         </div>
    

    
        <%-- Esto es el modal de Mi Foto de Perfil--%>
        <div >            
            <div class="modal fade" id="mifoto-modal">
                <div class="modal-dialog" style="width:30% !important; height:40% !important">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div class="row-personalizado" style="width:100%">                               
                            <div class="contenedor-titulo-imagen-perfil-modal">
                            <label id="lblMiFoto" >Mi Foto :</label> 
                            </div>
                            </div>

                                <div id="seccion_imagen" class="contenedor-imagen-modal">                                
                                <br />
                                <asp:Image ID="img_Nueva_Perfil" style="width:270px;height:300px" ImageUrl="../imagenes/paginas/subefoto.png" runat="server" />                               
                                <br />
                                <br />
                                </div>
                               
                                <div class="contenedor-subir-imagen-modal">
                                <div style="color:red;margin-bottom:10px;"> Imagen : </div>                               
                                <asp:FileUpload ID="fuploadImagen" name="fuploadImagen" runat="server" CssClass="form-control"/>
                              <%--  <input id='fuploadImagen' type='file'name="fuploadImagen" Class="form-control"/>--%>
                                <span class="help-block"></span>
                                <asp:TextBox ID="MandamosImagenParaActualizar" name="MandamosImagenParaActualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox> 
                            </div>
                            <script>
                               
                            </script>

                            <div class="modal-footer">  
                               
                               
                                <input type="button" ID="GuardarImagenNueva" value="Guardar" OnClick="verificar();" class="btn btn-success" /> 
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                            </div>
                            <%--Aquí mandaré solo el id del distrito--%>
                           <asp:TextBox ID="txtImagen_Mandada" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>


            <!-- Modal de nombres y apellidos -->
            <div >            
            <div class="modal fade" id="nombres_apellidos_modal">
                <div class="modal-dialog" style="width:50% !important; height:40% !important">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div class="row-personalizado" style="width:100%">                              
                            <div class="caja-input-modal">
                                <div class="titulo-nombres-modal" ><span id="lblNombres" >Nombres :</span></div>
                                <input id="txtNombres" name="txtNombres" class="contenido-input-modal col-lg-12 col-md-12 col-sm-12 col-xl-12" type="text" placeholder="Ingrese su nombre" onkeyup="validacion('txtNombres');">
                                <span class="help-block"></span>
                            </div>
                            <div class="caja-input-modal">
                                <div class="titulo-apellidos-modal" ><span id="lblApellidos" >Apellidos :</span></div>
                                <input id="txtApellidos" name="txtApellidos" class="contenido-input-modal col-lg-12 col-md-12 col-sm-12 col-xl-12" type="text" placeholder="Ingrese su apellido" onkeyup="validacion('txtApellidos');">
                                <span class="help-block"></span>
                            </div>                           
                            </div>                            
                           <%-- <div class="container-boton-entrar">
                                <asp:Button ID="Button1" runat="server" CssClass="boton-entrar" Text="Confirmar" OnClick="Entrar_Click" />
                            </div>--%>                            
                            <div class="modal-footer">
                                <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                                <ContentTemplate>
                                <div><asp:Button ID="btnGuardarInfo" class="btn btn-success" runat="server" Text="Guardar" OnClick="btnGuardarInfo_Click" /></div>
                                </ContentTemplate>                               
                                <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="btnGuardarInfo" EventName="Click" />
                                </Triggers>       
                                </asp:UpdatePanel>--%>
                                <input type="button" id="GuardarNombresApellidos" value="Guardar" class="btn btn-success" OnClick="verificar();" />                               
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>

                               <%-- Aquí mandare el nombre y apellidos de forma oculta --%>                                
                                <asp:TextBox ID="txtNombres_Mandado_Para_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtApellidos_Mandado_Para_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

       <%-- Esto es el modal de Fecha de Nacimiento--%>
        <div >            
            <div class="modal fade" id="fecha_nacimiento_modal">
                <div class="modal-dialog" style="width:30% !important; height:40% !important">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div class="row-personalizado" style="width:100%">                              
                            <div class="caja-fecha_nacimiento_modal">
                                <div class="titulo-fechanacimiento-modal"><span id="lblFechaNacimiento" >Fecha de Nacimiento :</span></div>
                                <input id="txtFecha_Nacimiento" name="txtFecha_Nacimiento" step="1" min="1990-01-01" max="2017-12-31" class="contenido-input-modal col-lg-12 col-md-12 col-sm-12 col-xl-12" type="date"  onchange="validacion('txtFecha_Nacimiento');"/>
                                <span class="help-block"></span>
                            </div>                 
                            </div>
                            <div class="modal-footer">
                                <input type="button" id="GuardarFechaNacimiento" value="Guardar" class="btn btn-success" OnClick="verificar();" />                               
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>

                               <%-- aquí mandaré de forma oculta la fecha de nacimiento escogida--%>
                               <asp:TextBox ID="txtFechaNacimiento_Mandado_Para_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



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
                          <div class="row-personalizado" style="width:100%">
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
                             <div class="row-personalizado" style="width:100%;margin-bottom:30px;">
                                <div class="contenido-direccion"><span style="color:red">Región Encontrada:</span>
                                </div>
                                <div class="contenido-region">
                               <%-- <asp:TextBox type="text" id="txtautocomplete" style="width:500px;position:absolute; z-index: 2000 !important;" placeholder="Escriba su dirección" runat="server"></asp:TextBox>--%>
                                <%--<div id="txtDireccionLocalizada"></div>--%> <%--<asp:Label id="txtRegionLocalizada" runat="server"></asp:Label> --%>    <asp:TextBox id="txtRegionLocalizada" width="500px" runat="server"></asp:TextBox>                           
                                </div>
                             </div>

                             <div class="row-personalizado" style="width:100%;margin-bottom:30px;">
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
                               <input type="button" id="GuardarDireccion" class="btn btn-info" value="Guardar" onclick ="verificar();" />  
                               <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
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
                          <div id="Departamentos_Provincias_Distritos" class="row-personalizado" style="width:100%">                               
                            <div class="contenedor-departamento-provincia-distrito-modal">
                            <label id="lblDepartamentos" >Departamento /</label>  <label id="lblProvincias" >Provincia /</label> <label id="lblDistritos">Distrito:</label> 
                            </div>
                            <div class="contenedor-dropdown-modal">                   
                             <asp:UpdatePanel ID="UpdatePanel1" runat="server"  >
                             <ContentTemplate>
                             <asp:DropDownList Cssclass="dropdown-departamento" ID="ddlDepartamentos" OnSelectedIndexChanged="ddlDepartamentos_SelectedIndexChanged" runat="server" onchange="comprobarDepartamentos(this);">                                                                                    
                             </asp:DropDownList> 
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlDepartamentos" EventName="selectedindexchanged" />
                             </Triggers>
                             </asp:UpdatePanel>
                           
                             <asp:UpdatePanel ID="UpdatePanel2" runat="server"   >
                             <ContentTemplate>
                             <asp:DropDownList Cssclass="dropdown-provincia" ID="ddlProvincias" OnSelectedIndexChanged="ddlProvincias_SelectedIndexChanged1" runat="server" onchange="comprobarProvincias(this);">                                                                                    
                             </asp:DropDownList><asp:Button CssClass="volver-select-gestion-perfil" ID="volver1" runat="server" Text="Volver" OnClientClick="volver1_clicked()" OnClick="volver1_Click"/>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="ddlProvincias" EventName="selectedindexchanged" />
                             </Triggers>
                             </asp:UpdatePanel>
                           
                             <asp:UpdatePanel ID="UpdatePanel3" runat="server"   >
                             <ContentTemplate>
                             <asp:DropDownList Cssclass="dropdown-distrito" ID="ddlDistritos" OnSelectedIndexChanged="ddlDistritos_SelectedIndexChanged1" runat="server" onchange="comprobarDistritos(this);">                                                                                    
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
                            <asp:UpdatePanel ID="UpdatePanel4" runat="server"  updatemode="Conditional" ChildrenAsTriggers="true" >
                            <ContentTemplate>
                              <asp:Button ID="GuardarDepartamentoProvinciaDistrito2"  class="btn btn-success" OnClientClick="verificar()" runat="server" Text="Guardar" OnClick="GuardarDepartamentoProvinciaDistrito_Click"/>                               
                              </ContentTemplate>
                            <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="GuardarDepartamentoProvinciaDistrito2" EventName="Click" />
                            </Triggers>
                            </asp:UpdatePanel>   

                                
                                <input type="button" ID="GuardarDepartamentoProvinciaDistrito" value="Guardar" class="btn btn-success" OnClick="verificar();" />  
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                            </div>
                            <%--Aquí mandaré solo el id del distrito--%>
                           <asp:TextBox ID="txtId_distrito_Mandado_Para_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>

   <%-- Este es un boton escondido que me servira para reiniciar los drop de Departamentos - Provincias y Distritos a su modo inicial que se activará cuando de click en el txtDepartamentoProvinciasDistritos--%>
    <asp:UpdatePanel ID="UpdatePanel5" runat="server" updatemode="Conditional" ChildrenAsTriggers="true"  >
    <ContentTemplate>
    <asp:Button ID="btnBotonEscondidoDeprovi" runat="server" Text="Button" OnClick="btnBotonEscondidoDeprovi_Click" />
    </ContentTemplate>
    <Triggers>
    <asp:AsyncPostBackTrigger ControlID="btnBotonEscondidoDeprovi" EventName="Click" />
    </Triggers>
    </asp:UpdatePanel>   



    
       <%-- Esto es el modal de Celular--%>
        <div >            
            <div class="modal fade" id="celular_modal">
                <div class="modal-dialog" style="width:30% !important; height:40% !important">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div class="row-personalizado" style="width:100%">                              
                            <div class="caja-celular_modal">
                                <div class="titulo-celular-modal"><span id="lblCelular">Celular :</span></div>
                                <input id="txtCelularNuevo" name="txtCelularNuevo" class="contenido-input-modal col-lg-12 col-md-12 col-sm-12 col-xl-12" type="text"  onkeyup="validacion('txtCelularNuevo');"/>
                                <span class="help-block"></span>
                            </div>                 
                            </div>
                            <div class="modal-footer">
                                <input type="button" id="GuardarCelular" value="Guardar" class="btn btn-success" OnClick="verificar();" />                               
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>

                               <%-- aquí mandaré de forma oculta la fecha de nacimiento escogida--%>
                               <asp:TextBox ID="txtCelular_Mandado_Para_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    <%-- Esto es el modal de teléfono--%>
        <div >            
            <div class="modal fade" id="telefono_modal">
                <div class="modal-dialog" style="width:30% !important; height:40% !important">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div class="row-personalizado" style="width:100%">                              
                            <div class="caja-telefono_modal">
                                <div class="titulo-telefono-modal"><span id="lblTelefono">Teléfono :</span></div>
                                <input id="txtTelefonoNuevo" name="txtTelefonoNuevo" class="contenido-input-modal col-lg-12 col-md-12 col-sm-12 col-xl-12" type="text"  onkeyup="validacion('txtTelefonoNuevo');"/>
                                <span class="help-block"></span>
                            </div>                 
                            </div>
                            <div class="modal-footer">
                                <input type="button" id="GuardarTelefono" value="Guardar" class="btn btn-success" OnClick="verificar();" />                               
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>

                               <%-- aquí mandaré de forma oculta la fecha de nacimiento escogida--%>
                               <asp:TextBox ID="txtTelefono_Mandado_Para_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    <%-- Esto es el modal de Correo--%>
        <div >            
            <div class="modal fade" id="correo_modal">
                <div class="modal-dialog" style="width:30% !important; height:40% !important">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div class="row-personalizado" style="width:100%">                              
                            <div class="caja-correo_modal">
                                <div class="titulo-correo-modal"><span id="lblCorreo">Correo :</span></div>
                                <input id="txtCorreoNuevo" name="txtCorreoNuevo" class="contenido-input-modal col-lg-12 col-md-12 col-sm-12 col-xl-12" type="text"  onkeyup="validacion('txtCorreoNuevo');"/>
                                <span class="help-block"></span>
                            </div>                 
                            </div>
                            <div class="modal-footer">
                                <input type="button" id="GuardarCorreo" value="Guardar" class="btn btn-success" OnClick="verificar();" />                               
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>

                               <%-- aquí mandaré de forma oculta el correo--%>
                               <asp:TextBox ID="txtCorreo_Mandado_Para_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

       
       <%-- Esto es el modal de Documento--%>
        <div >            
            <div class="modal fade" id="documento_modal">
                <div class="modal-dialog" style="width:30% !important; height:40% !important">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div class="row-personalizado" style="width:100%">                              
                            <div class="caja-documento_modal">
                                <div class="titulo-documento-modal"><span id="lblDocumento">Documento :</span></div>
                                <input id="txtDocumentoNuevo" name="txtDocumentoNuevo" class="contenido-input-modal col-lg-12 col-md-12 col-sm-12 col-xl-12" type="text"  onkeyup="validacion('txtDocumentoNuevo');"/>
                                <span class="help-block"></span>
                            </div>                 
                            </div>
                            <div class="modal-footer">
                                <input type="button" id="GuardarDocumento" value="Guardar" class="btn btn-success" OnClick="verificar();" />                               
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>

                               <%-- aquí mandaré de forma oculta el correo--%>
                               <asp:TextBox ID="txtDocumento_Mandado_Para_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


     <%-- Esto es el modal de la foto de mi Empresa--%>
        <div >            
            <div class="modal fade" id="mifotoempresa-modal">
                <div class="modal-dialog" style="width:30% !important; height:40% !important">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div class="row-personalizado" style="width:100%">                               
                            <div class="contenedor-titulo-imagen-empresa-modal">
                            <label id="lblMiFotoEmpresa" >Mi Foto Empresa :</label> 
                            </div>
                            </div>

                                <div id="seccion_imagen_empresa" class="contenedor-imagen-empresa-modal">                                
                                <br />
                                <asp:Image ID="Mi_NuevaImagen_Empresa" style="width:270px;height:300px" ImageUrl="../imagenes/logo_empresas/noimage.png" runat="server" />                               
                                <br />
                                <br />
                                </div>
                               
                            <div class="contenedor-subir-imagen-empresa-modal">
                                <div style="color:red;margin-bottom:10px;"> Archivo : </div>
                             <asp:FileUpload ID="fuploadImagenEmpresa" name="fuploadImagenEmpresa" runat="server" CssClass="form-control"/>
                                <%--<input id='uploadimagenempresa' type='file'name="uploadimagenempresa" Class="form-control"/>--%>
                                <span class="help-block"></span>
                            </div>
                            <div class="modal-footer">                             
                                <input type="button" ID="GuardarImagenEmpresaNueva" value="Guardar" OnClick="verificar();" class="btn btn-success" /> 
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                            </div>
                            <%--Aquí mandaré solo el id del distrito--%>
                            <asp:TextBox ID="txtImagenEmpresa_Mandar_Actualizar" name="txtImagenEmpresa_Mandar_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox> 
                        </div>
                    </div>
                </div>
            </div>
        </div>



     <%-- Esto es el modal de nombre de empresa--%>
        <div >            
            <div class="modal fade" id="nombre_empresa_modal">
                <div class="modal-dialog" style="width:30% !important; height:40% !important">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div class="row-personalizado" style="width:100%">                              
                            <div class="caja-nombre-empresa_modal">
                                <div class="titulo-nombre-empresa-modal"><span id="lblNombreEmpresa">Nombre Empresa :</span></div>
                                <input id="txtNombreEmpresaNuevo" name="txtNombreEmpresaNuevo" class="contenido-input-modal col-lg-12 col-md-12 col-sm-12 col-xl-12" type="text"  onkeyup="validacion('txtNombreEmpresaNuevo');"/>
                                <span class="help-block"></span>
                            </div>                 
                            </div>
                            <div class="modal-footer">
                                <input type="button" id="GuardarNombreEmpresaNuevo" value="Guardar" class="btn btn-success" OnClick="verificar();" />                               
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>

                               <%-- aquí mandaré de forma oculta la fecha de nacimiento escogida--%>
                               <asp:TextBox ID="NombreEmpresa_Mandar_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    
       <%-- Esto es el modal de RUC--%>
        <div >            
            <div class="modal fade" id="ruc_modal">
                <div class="modal-dialog" style="width:30% !important; height:40% !important">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="">
                          <div class="row-personalizado" style="width:100%">                              
                            <div class="caja-ruc_modal">
                                <div class="titulo-ruc-modal"><span id="lblRuc">Ruc :</span></div>
                                <input id="txtRucNuevo" name="txtRucNuevo" class="contenido-input-modal col-lg-12 col-md-12 col-sm-12 col-xl-12" type="text"  onkeyup="validacion('txtRucNuevo');"/>
                                <span class="help-block"></span>
                            </div>                 
                            </div>
                            <div class="modal-footer">
                                <input type="button" id="GuardarRuc" value="Guardar" class="btn btn-success" OnClick="verificar();" />                               
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>

                               <%-- aquí mandaré de forma oculta la fecha de nacimiento escogida--%>
                               <asp:TextBox ID="Ruc_Mandar_Actualizar" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

   <%-- <script src="https://code.jquery.com/jquery-1.10.2.js"></script>--%>

    <script>

        function ActualizadaCompleta() {
            $('<audio id="actualizado"><source src="notify.ogg" type="audio/ogg"><source src="/pages/audio/exito.mp3" " type="audio/mpeg"><source src="notify.wav" type="audio/wav"></audio>').appendTo('body');
            $('#actualizado')[0].play();
            swal({
                title: "Actualización Exitosa!",
                text: "Actualizaste tus datos!",
                icon: "success",
                button: "Cerrar!",
            }).then(function () {
                // Redirect the user
                window.location.href = "actualizar-mi-informacion.aspx";
                //console.log('The Ok Button was clicked.');
               
            });
        }

        window.onload = function () {
            $('#lblMiFoto').parent().css({ "color": "blue" });
            $('#lblNombres').parent().css({ "color": "blue" });
            $('#lblApellidos').parent().css({ "color": "blue" });
            $('#lblFechaNacimiento').parent().css({ "color": "blue" });
            $('#lblDireccion').parent().css({ "color": "blue" });
            $('#lblDepartamentos').css({ "color": "blue" });
            $('#lblProvincias').css({ "color": "blue" });
            $('#lblDistritos').css({ "color": "blue" });               
            $('#lblCelular').parent().css({ "color": "blue" });
            $('#lblTelefono').parent().css({ "color": "blue" });
            $('#lblCorreo').parent().css({ "color": "blue" });
            $('#lblDocumento').parent().css({ "color": "blue" });
            $('#lblMiFotoEmpresa').parent().css({ "color": "blue" });
           <%-- $('#<%=fuploadImagen.ClientID%>').val("");--%>
        }
        //------------------------------------------------------------------------------------------------------------------------------------------
        //Esto es para el Modal de Cambiar mi Foto de Perfil
        var foto_perfil_completo = ""; 
        var m = "";
        $("#<%=img_Perfil.ClientID%>").click(function () {
            $('#mifoto-modal').modal('show');
            $('#lblMiFoto').parent().css({ "color": "blue" });          
            $("#glypcn<%=fuploadImagen.ClientID%>").remove();
            $('#<%=fuploadImagen.ClientID%>').parent().children('span').text(" ").show();
            $("#<%=fuploadImagen.ClientID%>").css({ "border-color": "white", "border": "" });
            $("#<%=fuploadImagen.ClientID%>").val("");
            $("#<%=img_Nueva_Perfil.ClientID%>").attr("src", "../imagenes/paginas/subefoto.png");
        });
        
       <%-- $("#<%=fuploadImagen.ClientID %>").change(function () {--%>
         function Imagen1(evt) {
       
            var fileExtension = ['jpeg', 'jpg', 'png'];
            var ta = document.getElementById('<%=fuploadImagen.ClientID%>');
            var size = ta.files[0].size;
            var error = 0;
            campo = ('<%=fuploadImagen.ClientID%>');
            if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
                error = 1;
                $("#glypcn" + campo).remove();
                $('#lblMiFoto').parent().css({ "color": "brown" });
                $('#' + campo).parent().css({ "color": "brown" });
                $('#' + campo).css({ "border": "2px solid brown" });
                $('#' + campo).parent().children('span').text("Solo formatos jpeg , jpg y png por favor").show();
                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            }
            else if (size > 1048576)// checks the file more than 1 MB
            {
                error = 2;
                $("#glypcn" + campo).remove();
                $('#lblMiFoto').parent().css({ "color": "brown" });
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
                            // Creamos la imagen.
                            $("#<%=img_Nueva_Perfil.ClientID%>").attr("src", e.target.result);  
                            m = e.target.result; 
                        };
                    })(f);
                    reader.readAsDataURL(f);
                }
               <%-- $("#<%=img_Nueva_Perfil.ClientID%>").attr("src", "/pages/imagenes/usuarios_perfil/" + fileName);--%>
                <%-- document.getElementById('<%=btnoSubirImagen.ClientID%>').click();
                var fileInput = document.getElementById('<%=fuploadImagen.ClientID%>');         
                var fileName = fileInput.value.split(/(\\|\/)/g).pop(); // aquí está el nombre de la imagen 
                document.getElementById('<%=btnoSubirImagen.ClientID %>').click(); //simulamos un click para mandar asignar la imagen al aspImage           
                $("#<%=img_Nueva_Perfil.ClientID%>").attr("src", "/pages/imagenes/usuarios_perfil/" + fileName);
                /* $("#seccion_imagen").load(window.location.href + " #seccion_imagen");*/ //esto es para refrescar la página--%>
                foto_perfil_completo = "completo"
                $("#glypcn" + campo).remove();
                $('#lblMiFoto').parent().css({ "color": "green" });
                $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                $('#' + campo).parent().css({ "color": "green" });
                $('#' + campo).parent().children('span').text("OK").show();
                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                return true;
            } 
        }
        document.getElementById('<%=fuploadImagen.ClientID%>').addEventListener('change', Imagen1, false); 

        $("#mifoto-modal").on('hidden.bs.modal', function () { 
         });

        function Imagen2(evt) {
            if (foto_perfil_completo == "completo") {
                $('#lblMiFoto').parent().css({ "color": "green" });
                $("#<%=img_Perfil.ClientID%>").attr("src", m); 
                var fileInput = document.getElementById('<%=fuploadImagen.ClientID%>');
                var fileName = fileInput.value.split(/(\\|\/)/g).pop();
                //$("#seccion_imagen").load(" #seccion_imagen");
                $("#<%=MandamosImagenParaActualizar.ClientID%>").val(fileName);        
                
            }
         }
        
        document.getElementById("GuardarImagenNueva").addEventListener('click', Imagen2, false);

       <%-- $("#GuardarImagenNueva").click(function () {
            if (archivo_completo == "completo") {
                var fileInput = document.getElementById('<%=fuploadImagen.ClientID%>');
                var fileName = fileInput.value.split(/(\\|\/)/g).pop();
                $("#<%=img_Perfil.ClientID%>").attr("src", e.target.result);
                //$("#seccion_imagen").load(" #seccion_imagen");
                $("#<%=MandamosImagenParaActualizar.ClientID%>").val(fileName);//metemos el nombre de la imagen en el asp text oculto
                document.getElementById('<%=btnoSubirImagen.ClientID%>').click();
                
            }
        }); --%>

     
    
            //$("#glypcntxtNombres").remove();
            //$("#txtNombres").parent().children('span').text(" ").show();
            //$("#glypcntxtApellidos").remove();
            //$("#txtApellidos").parent().children('span').text(" ").show();

            //$("#txtNombres").css({ "border-color": "white", "border": "" });
            //$("#txtApellidos").css({ "border-color": "white", "border": "" });
            //$('#lblMiFoto').parent().css({ "color": "blue" });

         //------------------------------------------------------------------------------------------------------------------------------------------
        //Esto es para el modal de Nombres y Apellidos
        var nombre_completo = "";
        var apellido_completo = "";
        //Estp es cuando doy click en el text de Nombre y Apellidos       
        $("#<%=txtNombrePersona.ClientID%>").click(function () {
            $('#nombres_apellidos_modal').modal('show'); 
            $("#<%=txtNombrePersona.ClientID%>").attr("disabled", true); 
            $("#txtNombres").val("");
            $("#txtApellidos").val("");
            $("#glypcntxtNombres").remove();
            $("#txtNombres").parent().children('span').text(" ").show();
            $("#glypcntxtApellidos").remove();
            $("#txtApellidos").parent().children('span').text(" ").show();

            $("#txtNombres").css({ "border-color": "white", "border": "" });  
            $("#txtApellidos").css({ "border-color": "white", "border": "" });        
            $('#lblNombres').parent().css({ "color": "blue" });
            $('#lblApellidos').parent().css({ "color": "blue" });
        
        });
       
        //Esta acción se ejecuta al cerrar el modal de Nombres y Apellidos     
        $("#nombres_apellidos_modal").on('hidden.bs.modal', function () {
            $("#<%=txtNombrePersona.ClientID%>").attr("disabled", false); 
            $("#txtNombres").css({ "border-color": "white", "border": "" });  
            $("#txtApellidos").css({ "border-color": "white", "border": "" });      
            nombre_completo == "no completo"
        });

        //Esto cuando de click en Guardar del modal de Nombres y Apellidos
        $("#GuardarNombresApellidos").click(function () {
            if ((nombre_completo == "completo") && (apellido_completo == "completo"))
            {
                var nombres = $("#txtNombres").val();
                var apellidos = $("#txtApellidos").val();            

                $("#<%=txtNombrePersona.ClientID%>").val(nombres + " " + apellidos);
                $("#<%=txtNombres_Mandado_Para_Actualizar.ClientID%>").val(nombres); //Mando para actualizar
                $("#<%=txtApellidos_Mandado_Para_Actualizar.ClientID%>").val(apellidos); //Mando para actualizar
                
                nombre_completo = "";
                apellido_completo = "";
            }
           
        });
        //------------------------------------------------------------------------------------------------------------------------------------------
        var fecha_nacimiento = "";
        //Esto cuando de click al text de Fecha de Nacimiento para que se habra el modal
        $("#<%=txtFechaNacimiento.ClientID%>").click(function () {
            $('#fecha_nacimiento_modal').modal('show');
            $("#<%=txtFechaNacimiento.ClientID%>").attr("disabled", true); 
            $("#txtFecha_Nacimiento").val("");           
            $("#glypcntxtFecha_Nacimiento").remove();
            $("#txtFecha_Nacimiento").parent().children('span').text(" ").show();

            $("#txtFecha_Nacimiento").css({ "border-color": "white", "border": "" });          
            $('#lblFechaNacimiento').parent().css({ "color": "blue" });
          

        });
        //Esto es cuando cierre el modal de Fechan de Nacimiento
        $("#fecha_nacimiento_modal").on('hidden.bs.modal', function () {
            $("#<%=txtFechaNacimiento.ClientID%>").attr("disabled", false);
            fecha_nacimiento == "no completo"
        });

        function calculateAge(birthday) {
            var birthday_arr = birthday.split("/");
            var birthday_date = new Date(birthday_arr[2], birthday_arr[1] - 1, birthday_arr[0]);
            var ageDifMs = Date.now() - birthday_date.getTime();
            var ageDate = new Date(ageDifMs);
            return Math.abs(ageDate.getUTCFullYear() - 1970);
        }
        function formatofecha(texto) {
            return texto.replace(/^(\d{4})-(\d{2})-(\d{2})$/g, '$3/$2/$1');
        }

        $("#GuardarFechaNacimiento").click(function () {
            if (fecha_nacimiento == "completo") {
                var chaparfecha = formatofecha($("#txtFecha_Nacimiento").val());
                var age = calculateAge(chaparfecha);               
                var fecha_nacimiento_nueva = $("#txtFecha_Nacimiento").val();
                $("#<%=txtFechaNacimiento.ClientID%>").val(formatofecha(fecha_nacimiento_nueva) + " ----> Edad : " + age);
                $("#<%=txtFechaNacimiento_Mandado_Para_Actualizar.ClientID%>").val(fecha_nacimiento_nueva);//Mando para actualizar
               
                fecha_nacimiento = "";
             }
         });

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
        $("#<%=txtDireccion.ClientID%>").click(function () {
            $('#direccion_modal').modal('show');
            $("#<%=txtDireccion.ClientID%>").attr("disabled", true);           
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
            $("#<%=txtDireccion.ClientID%>").attr("disabled", false);
            $("#glypcntxtautocomplete").remove();
            $('#txtautocomplete').parent().children('span').text(" ").show();
            direccion_seleccionada = "no completo";
            //$('#txtautocomplete').css({"border-color",""});
        });
        //Cuando presione Guardar en el modal de direccion
        $("#GuardarDireccion").click(function () {
            if (direccion_seleccionada == "completo") {

                var direccion = $("#txtautocomplete").val();
                $("#<%=txtDireccion.ClientID%>").val(direccion);

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

            deprovi = 0;
            departamento_completo = "";
            provincia_completo = "";
            distrito_completo = "";

        }

        function volver2_clicked() {
            var volver2 = document.getElementById('<%=volver2.ClientID%>');
             distrito = document.getElementById("<%=ddlDistritos.ClientID%>").id;
             //theButton.style.display = 'block';
             $("#glypcn" + distrito).remove();
             //$("#glypcn" + distrito).parent().remove();
             $('#' + distrito).parent().parent().children('span').text("").show();
             $('#lblDistritos').css({ "color": "blue" });

             deprovi = 1;
             provincia_completo = "";
             distrito_completo = "";

        }

        //--------------------------------------------------------------------------------------------------------------------------------
        var celular_completo = "";
        //Esto cuando de click al text de Celular para que se habra el modal
        $("#<%=txtCelular.ClientID%>").click(function () {
             $('#celular_modal').modal('show');
             $("#<%=txtCelular.ClientID%>").attr("disabled", true);
            $("#txtCelularNuevo").val("");
            $("#glypcntxtCelularNuevo").remove();
            $("#txtCelularNuevo").parent().children('span').text(" ").show();

            $("#txtCelularNuevo").css({ "border-color": "white", "border": "" });          
            $('#lblCelular').parent().css({ "color": "blue" });
         });
         //Esto es cuando cierre el modal de celular
        $("#celular_modal").on('hidden.bs.modal', function () {
            $("#<%=txtCelular.ClientID%>").attr("disabled", false);
            celular_completo = "no completo";
        });
        //Cuando de click al boton de Guardar Celular
        $("#GuardarCelular").click(function () {
            if (celular_completo == "completo") {
                var celular_nuevo = $("#txtCelularNuevo").val();
                $("#<%=txtCelular.ClientID%>").val(celular_nuevo);
                $("#<%=txtCelular_Mandado_Para_Actualizar.ClientID%>").val(celular_nuevo);//Mando para actualizar
                celular_completo = "";
            }
        });

        //--------------------------------------------------------------------------------------------------------------------------------
        var telefono_completo = "";
        //Esto cuando de click al text de Celular para que se habra el modal
        $("#<%=txtTelefono.ClientID%>").click(function () {
            $('#telefono_modal').modal('show');
            $("#<%=txtTelefono.ClientID%>").attr("disabled", true);
             $("#txtTelefonoNuevo").val("");
             $("#glypcntxtTelefonoNuevo").remove();
             $("#txtTelefonoNuevo").parent().children('span').text(" ").show();

             $("#txtTelefonoNuevo").css({ "border-color": "white", "border": "" });          
             $('#lblTelefono').parent().css({ "color": "blue" });
        });
        //Esto es cuando cierre el modal de celular
        $("#telefono_modal").on('hidden.bs.modal', function () {
            $("#<%=txtTelefono.ClientID%>").attr("disabled", false);
        });
        function formato(valor) {
            var nums = new Array();
            var simb = "-"; //Éste es el separador
            valor = valor.toString();
            valor = valor.replace(/\D/g, "");   //Ésta expresión regular solo permitira ingresar números
            nums = valor.split(""); //Se vacia el valor en un arreglo
            var long = nums.length - 1; // Se saca la longitud del arreglo
            var patron = 3; //Indica cada cuanto se ponen las comas
            var prox = 3; // Indica en que lugar se debe insertar la siguiente coma
            var res = "";

            while (long > prox) {
                nums.splice((long - prox), 0, simb); //Se agrega la coma
                prox += patron+2; //Se incrementa la posición próxima para colocar la coma
            }

            for (var i = 0; i <= nums.length - 1; i++) {
                res += nums[i]; //Se crea la nueva cadena para devolver el valor formateado
            }

            return res;
        }
       
        //Cuando de click al boton de Guardar Celular
        $("#GuardarTelefono").click(function () {
            if (telefono_completo == "completo") {
                var telefono_nuevo_con_formato = formato($("#txtTelefonoNuevo").val());
                var telefono_nuevo_sin_formato = $("#txtTelefonoNuevo").val();
                $("#<%=txtTelefono.ClientID%>").val(telefono_nuevo_con_formato);
                $("#<%=txtTelefono_Mandado_Para_Actualizar.ClientID%>").val(telefono_nuevo_sin_formato);//Mando para actualizar
               
                telefono_completo = "";
            }
        });


        //--------------------------------------------------------------------------------------------------------------------------------
        var correo_completo = "";
        //Esto cuando de click al text de Celular para que se habra el modal
        $("#<%=txtCorreo.ClientID%>").click(function () {
            $('#correo_modal').modal('show');
            $("#<%=txtCorreo.ClientID%>").attr("disabled", true);
            $("#txtCorreoNuevo").val("");
            $("#glypcntxtCorreoNuevo").remove();
            $("#txtCorreoNuevo").parent().children('span').text(" ").show();

            $("#txtCorreoNuevo").css({ "border-color": "white", "border": "" });        
            $('#lblCorreo').parent().css({ "color": "blue" });
        });
        //Esto es cuando cierre el modal de celular
        $("#correo_modal").on('hidden.bs.modal', function () {
            $("#<%=txtCorreo.ClientID%>").attr("disabled", false);
        });
        //Cuando de click al boton de Guardar Correo
        $("#GuardarCorreo").click(function () {
            if (correo_completo == "completo") {
                var correo_nuevo = $("#txtCorreoNuevo").val();
                $("#<%=txtCorreo.ClientID%>").val(correo_nuevo);
                $("#<%=txtCorreo_Mandado_Para_Actualizar.ClientID%>").val(correo_nuevo);//Mando para actualizar
                correo_completo = "";
            }
        });


        //--------------------------------------------------------------------------------------------------------------------------------
        var documento_completo = "";
        //Esto cuando de click al text de Celular para que se habra el modal
        $("#<%=txtDocumento.ClientID%>").click(function () {
            $('#documento_modal').modal('show');           
            $("#<%=txtDocumento.ClientID%>").attr("disabled", true);
            $("#txtDocumentoNuevo").val("");
            $("#glypcntxtDocumentoNuevo").remove();
            $("#txtDocumentoNuevo").parent().children('span').text(" ").show();

            $("#txtDocumentoNuevo").css({ "border-color": "white", "border": "" });        
            $('#lblDocumento').parent().css({ "color": "blue" });
        });
        //Esto es cuando cierre el modal de celular
        $("#documento_modal").on('hidden.bs.modal', function () {
            $("#<%=txtDocumento.ClientID%>").attr("disabled", false);
        });
        //Cuando de click al boton de Guardar Correo
        $("#GuardarDocumento").click(function () {
            if (documento_completo == "completo") {
                var documento_nuevo = $("#txtDocumentoNuevo").val();
                $("#<%=txtDocumento.ClientID%>").val(documento_nuevo);
                $("#<%=txtDocumento_Mandado_Para_Actualizar.ClientID%>").val(documento_nuevo);//Mando para actualizar
                documento_completo = "";
            }
        });

        //------------------------------------------------------------------------------------------------------------------------------------------
        //Esto es para el Modal de Cambiar mi Foto de Empresa
        var foto_empresa_completo = "";
        var m2 = "";
        $("#<%=logo_empresa.ClientID%>").click(function () {
            $('#mifotoempresa-modal').modal('show');
            $('#lblMiFotoEmpresa').parent().css({ "color": "blue" });
            $("#glypcn<%=fuploadImagenEmpresa.ClientID%>").remove();
             $('#<%=fuploadImagenEmpresa.ClientID%>').parent().children('span').text(" ").show();
            $("#<%=fuploadImagenEmpresa.ClientID%>").css({ "border-color": "white", "border": "" });
            $("#<%=fuploadImagenEmpresa.ClientID%>").val("");
            $("#<%=Mi_NuevaImagen_Empresa.ClientID%>").attr("src", "../imagenes/logo_empresas/noimage.png");
        });

       <%-- $("#<%=fuploadImagen.ClientID %>").change(function () {--%>

        function ImagenEmpresa(evt) {
            var fileExtension = ['jpeg', 'jpg', 'png'];
            var ta = document.getElementById('<%=fuploadImagenEmpresa.ClientID%>');
            var size = ta.files[0].size;
            var error = 0;
            campo = ('<%=fuploadImagenEmpresa.ClientID%>');
            if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
                error = 1;
                $("#glypcn" + campo).remove();
                $('#lblMiFotoEmpresa').parent().css({ "color": "brown" });
                $('#' + campo).parent().css({ "color": "brown" });
                $('#' + campo).css({ "border": "2px solid brown" });
                $('#' + campo).parent().children('span').text("Solo formatos jpeg , jpg y png por favor").show();
                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            }
            else if (size > 1048576)// checks the file more than 1 MB
            {
                error = 2;
                $("#glypcn" + campo).remove();
                $('#lblMiFotoEmpresa').parent().css({ "color": "brown" });
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
                            // Creamos la imagen.
                            $("#<%=Mi_NuevaImagen_Empresa.ClientID%>").attr("src", e.target.result);
                            m2 = e.target.result;
                        };
                    })(f);
                    reader.readAsDataURL(f);
                }
               <%-- $("#<%=img_Nueva_Perfil.ClientID%>").attr("src", "/pages/imagenes/usuarios_perfil/" + fileName);--%>
                <%-- document.getElementById('<%=btnoSubirImagen.ClientID%>').click();
                var fileInput = document.getElementById('<%=fuploadImagen.ClientID%>');         
                var fileName = fileInput.value.split(/(\\|\/)/g).pop(); // aquí está el nombre de la imagen 
                document.getElementById('<%=btnoSubirImagen.ClientID %>').click(); //simulamos un click para mandar asignar la imagen al aspImage           
                $("#<%=img_Nueva_Perfil.ClientID%>").attr("src", "/pages/imagenes/usuarios_perfil/" + fileName);
                /* $("#seccion_imagen").load(window.location.href + " #seccion_imagen");*/ //esto es para refrescar la página--%>
                foto_empresa_completo = "completo"
                $("#glypcn" + campo).remove();
                $('#lblMiFotoEmpresa').parent().css({ "color": "green" });
                $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                $('#' + campo).parent().css({ "color": "green" });
                $('#' + campo).parent().children('span').text("OK").show();
                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                return true;
            }
        }
        document.getElementById('<%=fuploadImagenEmpresa.ClientID%>').addEventListener('change', ImagenEmpresa, false);

        $("#mifotoempresa-modal").on('hidden.bs.modal', function () {
            foto_empresa_completo = "no completo";
        });

        function ImagenEmpresa2(evt) {
            if (foto_empresa_completo == "completo") {
                $("#<%=logo_empresa.ClientID%>").attr("src", m2);
                $('#lblMiFotoEmpresa').parent().css({ "color": "green" });
                var fileInput = document.getElementById('<%=fuploadImagenEmpresa.ClientID%>');
                var fileName = fileInput.value.split(/(\\|\/)/g).pop();
                //$("#seccion_imagen").load(" #seccion_imagen");
                $("#<%=txtImagenEmpresa_Mandar_Actualizar.ClientID%>").val(fileName);
               
            }
        }

        document.getElementById("GuardarImagenEmpresaNueva").addEventListener('click', ImagenEmpresa2, false);


        //--------------------------------------------------------------------------------------------------------------------------------
        var nombre_empresa_completo = "";
        //Esto cuando de click al text de Celular para que se habra el modal
        $("#<%=txtNombre_Empresa.ClientID%>").click(function () {
            $('#nombre_empresa_modal').modal('show');            
            $("#<%=txtNombre_Empresa.ClientID%>").attr("disabled", true);
            $("#txtNombreEmpresaNuevo").val("");
            $("#glypcntxtNombreEmpresaNuevo").remove();
            $("#txtNombreEmpresaNuevo").parent().children('span').text(" ").show();

            $("#txtNombreEmpresaNuevo").css({ "border-color": "white", "border": "" });
            $('#lblNombreEmpresa').parent().css({ "color": "blue" });
            $("#txtNombreEmpresaNuevo").focus();
        });
        //Esto es cuando cierre el modal de celular
        $("#nombre_empresa_modal").on('hidden.bs.modal', function () {
            $("#<%=txtNombre_Empresa.ClientID%>").attr("disabled", false);
        });
        //Cuando de click al boton de Guardar Celular
        $("#GuardarNombreEmpresaNuevo").click(function () {
            if (nombre_empresa_completo == "completo") {
                var nombre_empresa_escrito = $("#txtNombreEmpresaNuevo").val();
                $("#<%=txtNombre_Empresa.ClientID%>").val(nombre_empresa_escrito);
                $("#<%=NombreEmpresa_Mandar_Actualizar.ClientID%>").val(nombre_empresa_escrito);//Mando para actualizar
                nombre_empresa_completo = "";
            }
        });

        //--------------------------------------------------------------------------------------------------------------------------------


        //--------------------------------------------------------------------------------------------------------------------------------
        var ruc_completo = "";
        //Esto cuando de click al text de Celular para que se habra el modal
        $("#<%=txtRuc.ClientID%>").click(function () {
            $('#ruc_modal').modal('show');
            $("#<%=txtRuc.ClientID%>").attr("disabled", true);
            $("#txtRucNuevo").val("");
             $("#glypcntxtRucNuevo").remove();
             $("#txtRucNuevo").parent().children('span').text(" ").show();

             $("#txtRucNuevo").css({ "border-color": "white", "border": "" });
             $('#lblRuc').parent().css({ "color": "blue" });
        });
        //Esto es cuando cierre el modal de celular
        $("#ruc_modal").on('hidden.bs.modal', function () {
            $("#<%=txtRuc.ClientID%>").attr("disabled", false);
        });
        //Cuando de click al boton de Guardar Celular
        $("#GuardarRuc").click(function () {
            if (ruc_completo == "completo") {
                var ruc_nuevo = $("#txtRucNuevo").val();
                $("#<%=txtRuc.ClientID%>").val(ruc_nuevo);
                $("#<%=Ruc_Mandar_Actualizar.ClientID%>").val(ruc_nuevo);//Mando para actualizar
                ruc_completo = "";
            }
        });

        //--------------------------------------------------------------------------------------------------------------------------------









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
                            infoWindow.open(map,marker);
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

       
           
       

        function verificar() {

            var v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0, v7 = 0, v8 = 0, v9 = 0, v10 = 0, v11 = 0, v12 = 0;

           
            v1 = validacion('txtNombres');
            v2 = validacion('txtApellidos');           
            v3 = validacion('txtFecha_Nacimiento');
            v4 = validacion('txtautocomplete');
            v5 = validacion('txtCelularNuevo');
            v6 = validacion('txtTelefonoNuevo');
            v7 = validacion('txtCorreoNuevo');
            v8 = validacion('txtDocumentoNuevo');
            v9 = validacion("<%=fuploadImagen.ClientID%>");
            v10 = validacion("<%=fuploadImagenEmpresa.ClientID%>");
            v11 = validacion('txtNombreEmpresaNuevo');
            v12 = validacion('txtRucNuevo');
           
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
                
                  document.getElementById('verificado').value = 0;
              } else {
                  document.getElementById('verificado').value = 1;                
              }
        }


        function validacion(campo) {


            if (campo === ("<%=fuploadImagen.ClientID%>")) {
                file = document.getElementById(campo).value;
                if (file == null || file.length == 0) {
                    foto_perfil_completo = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblMiFoto').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Suba una imagen").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else {
                    $('#lblMiFoto').parent().css({ "color": "green" });
                    foto_perfil_completo = "completo";
                }
            }


            if (campo === ("<%=fuploadImagenEmpresa.ClientID%>")) {
                file = document.getElementById(campo).value;
                if (file == null || file.length == 0) {
                    foto_empresa_completo = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblMiFoto').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Suba una imagen").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else {
                    foto_empresa_completo = "completo";
                }
            }


            if (campo === 'txtNombres') {
                nombres = document.getElementById(campo).value;
                if (nombres == null || nombres.length == 0 || nombres == "") {
                    $("#glypcn" + campo).remove();
                    $('#lblNombres').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese su nombre").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    $("#txtNombres").focus();
                    return false;

                }
                else if (/^([a-zA-Z]){3,3}\s/.test(nombres)) {
                    $("#glypcn" + campo).remove();
                    $('#lblNombres').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No puedes tener tu primer nombre con solo tres letras.").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^([a-zA-Z]){2,2}\s/.test(nombres)) {
                    $("#glypcn" + campo).remove();
                    $('#lblNombres').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No puedes tener tu primer nombre con solo dos letras.").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^([a-zA-Z]\s)/.test(nombres)) {
                    $("#glypcn" + campo).remove();
                    $('#lblNombres').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No puedes tener tu primer nombre con solo una letra.").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/([a-zA-Z]{1,}\s){2,}/.test(nombres)) {
                    $("#glypcn" + campo).remove();
                    $('#lblNombres').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten poner mas de un espacio en blanco").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/[a-zA-Z]\s{2,}/.test(nombres)) {
                    $("#glypcn" + campo).remove();
                    $('#lblNombres').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten poner mas de un espacio en blanco").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^(\s)+/.test(nombres)) {
                    $("#glypcn" + campo).remove();
                    $('#lblNombres').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco al inicio").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{20,}$/.test(nombres)) {
                    $("#glypcn" + campo).remove();
                    $('#lblNombres').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten mas de 20 letras").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{0,3}$/.test(nombres)) {
                    $("#glypcn" + campo).remove();
                    $('#lblNombres').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Mínimo 4 letras y Máximo 20 letras").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{4,20}$/.test(nombres)) {
                    nombre_completo = "completo";
                    $("#glypcn" + campo).remove();
                    $('#lblNombres').parent().css({ "color": "green" });
                    $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#' + campo).parent().css({ "color": "green" });
                    $('#' + campo).parent().children('span').text("OK").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    return true;
                }
                else {
                    $("#glypcn" + campo).remove();
                    $('#lblNombres').parent().css({ "color": "brown" });
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
                    $('#lblApellidos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese su apellido").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;

                }
                else if (/^(\s)+/.test(apellidos)) {
                    $("#glypcn" + campo).remove();
                    $('#lblApellidos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco al inicio").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^([a-zA-Z]){3,3}\s/.test(apellidos)) {
                    $("#glypcn" + campo).remove();
                    $('#lblApellidos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No puedes tener tu primer apellido con solo tres letras.").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^([a-zA-Z]){2,2}\s/.test(apellidos)) {
                    $("#glypcn" + campo).remove();
                    $('#lblApellidos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No puedes tener tu primer apellido con solo dos letras.").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^([a-zA-Z]\s)/.test(apellidos)) {
                    $("#glypcn" + campo).remove();
                    $('#lblApellidos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No puedes tener tu primer apellido con solo una letra.").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/([a-zA-Z]{1,}\s){2,}/.test(apellidos)) {
                    $("#glypcn" + campo).remove();
                    $('#lblApellidos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permite poner espacios en blanco seguidos").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/[a-zA-Z]\s{2,}/.test(apellidos)) {
                    $("#glypcn" + campo).remove();
                    $('#lblApellidos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permite poner espacios en blanco seguidos").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }

                else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{20,}$/.test(apellidos)) {
                    $("#glypcn" + campo).remove();
                    $('#lblApellidos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten mas de 20 letras").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{0,3}$/.test(apellidos)) {
                    $("#glypcn" + campo).remove();
                    $('#lblApellidos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Mínimo 4 letras y Máximo 20 letras").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if ((apellidos == nombre) || ((apellidos == nombre + (/[a-zA-Z]\s{2,}/.test(apellidos))))) {
                    $("#glypcn" + campo).remove();
                    $('#lblApellidos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Su Apellido no puede ser igual que su Nombre").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{4,20}$/.test(apellidos)) {
                    apellido_completo = "completo";
                    $("#glypcn" + campo).remove();
                    $('#lblApellidos').parent().css({ "color": "green" });
                    $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#' + campo).parent().css({ "color": "green" });
                    $('#' + campo).parent().children('span').text("OK").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    return true;
                }
                else {
                    $("#glypcn" + campo).remove();
                    $('#lblApellidos').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No acepta Números ni otro caracter , solo letras").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
            }


            if (campo === 'txtFecha_Nacimiento') {
                edad = document.getElementById(campo).value;

                var fecha = $("#txtFecha_Nacimiento").val();  // valor del input date

                if (fecha == "") {
                    $("#glypcn" + campo).remove();
                    $('#lblFechaNacimiento').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese correctamente su fecha de nacimiento").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;                                     // devuelve false 
                } else {
                    fecha_nacimiento = "completo";
                    $("#glypcn" + campo).remove();
                    $('#lblFechaNacimiento').parent().css({ "color": "green" });
                    $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#' + campo).parent().css({ "color": "green" });
                    $('#' + campo).parent().children('span').text("OK").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    return true;

                }
            }

            if (campo === 'txtautocomplete') {
                nombre = document.getElementById('txtNombres').value;
                apellidos = document.getElementById('txtApellidos').value;
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

                else if (direccion == nombre) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblDireccion').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Su Dirección no puede ser igual que su Nombre").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (direccion == apellidos) {
                    direccion_seleccionada = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblDireccion').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Su Dirección no puede ser igual que su Apellido").show();
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

            if (campo === 'txtCelularNuevo') {
                celular = document.getElementById(campo).value;
                var celularparseado = parseInt(celular);

                if (celular == null || celular.length == 0) {
                    celular_completo = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblCelular').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese su celular").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/(\s)/.test(celular)) {
                    celular_completo = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblCelular').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{10,}$/.test(celular)) {
                    celular_completo = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblCelular').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("El máximo de digitos permitos son 9").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{0,8}$/.test(celular)) {
                    celular_completo = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblCelular').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese mas dígitos , necesarios 9").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/[^0-9]+$/.test(celular)) {
                    celular_completo = "no completo";
                    $("#glypcn" + campo).remove();
                    $('#lblCelular').parent().css({ "color": "brown" });
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
                                    data: '{celular: "' + celularparseado + '" }',
                                    dataType: 'JSON',
                                    contentType: "application/json; charset=utf-8",
                                    success: function (res) {
                                        if (res.d) {
                                            celular_completo = "no completo";
                                            campo = 'txtCelularNuevo';
                                            $("#glypcn" + campo).remove();
                                            $('#lblCelular').parent().css({ "color": "brown" });
                                            $('#' + campo).parent().css({ "color": "brown" });
                                            $('#' + campo).css({ "border": "2px solid brown" });
                                            $('#' + campo).parent().children('span').text("Este Celular ya existe").show();
                                            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                            return false;                         
                                        }
                                        else {
                                            celular_completo = "completo";
                                            $("#glypcn" + campo).remove();
                                            $('#lblCelular').parent().css({ "color": "green" });
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
                   
            

            if (campo === 'txtTelefonoNuevo') {
                telefono = document.getElementById(campo).value;
                if (telefono == null || telefono.length == 0) {
                    $("#glypcn" + campo).remove();
                    $('#lblTelefono').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese su Teléfono").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;

                }
                else if (/(\s)/.test(telefono)) {
                    $("#glypcn" + campo).remove();
                    $('#lblTelefono').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{8,}$/.test(telefono)) {
                    $("#glypcn" + campo).remove();
                    $('#lblTelefono').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("El máximo de digitos permitos son 7").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{0,6}$/.test(telefono)) {
                    $("#glypcn" + campo).remove();
                    $('#lblTelefono').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese mas dígitos").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/[^0-9]+$/.test(telefono)) {
                    $("#glypcn" + campo).remove();
                    $('#lblTelefono').parent().css({ "color": "brown" });
                    $('#' + campo).parent().css({ "color": "brown" });
                    $('#' + campo).css({ "border": "2px solid brown" });
                    $('#' + campo).parent().children('span').text("Ingrese solo números").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                    return false;
                }
                else if (/^[0-9]{7,8}$/.test(telefono)) {
                    telefono_completo = "completo";
                    $("#glypcn" + campo).remove();
                    $('#lblTelefono').parent().css({ "color": "green" });
                    $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                    $('#' + campo).parent().css({ "color": "green" });
                    $('#' + campo).parent().children('span').text("OK").show();
                    $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                    return true;
                }
               
            }



            if (campo === 'txtCorreoNuevo') {
                email = document.getElementById(campo).value;

                $.ajax({
                    type: "POST",
                    //url: "registrar-personal.aspx/comprobarcorreo",
                    url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/comprobarcorreo")%>',
                    data: '{correo: "' + $("#txtCorreoNuevo").val() + '" }',
                    dataType: 'JSON',
                    contentType: "application/json; charset=utf-8",
                    success: function (res) {
                        if (res.d) {
                            correo_completo = "no completo";
                            campo = 'txtCorreoNuevo';
                            $("#glypcn" + campo).remove();
                            $('#lblCorreo').parent().css({ "color": "brown" });
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
                                $('#lblCorreo').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Ingrese algun Correo").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (/(\s)/.test(email)) {
                                $("#glypcn" + campo).remove();
                                $('#lblCorreo').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (!(/\S+@\S+\.\S+/.test(email))) {
                                $("#glypcn" + campo).remove();
                                $('#lblCorreo').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Ingrese un Correo valido").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else {
                                correo_completo = "completo";
                                $("#glypcn" + campo).remove();
                                $('#lblCorreo').parent().css({ "color": "green" });
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


            if (campo === 'txtDocumentoNuevo') {
                documento = document.getElementById(campo).value;
                $.ajax({
                    type: "POST",
                    //url: "inicio.aspx/comprobardocumento",
                    url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/comprobardocumento")%>',
                    data: '{documento: "' + $("#txtDocumentoNuevo").val() + '" }',
                    dataType: 'JSON',
                    contentType: "application/json; charset=utf-8",
                    success: function (res) {
                        if (res.d) {
                            documento_completo = "no completo";
                            campo = 'txtDocumentoNuevo';
                            $("#glypcn" + campo).remove();
                            $('#lblDocumento').parent().css({ "color": "brown" });
                            $('#' + campo).parent().css({ "color": "brown" });
                            $('#' + campo).css({ "border": "2px solid brown" });
                            $('#' + campo).parent().children('span').text("Este documento ya existe").show();
                            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                            return false;
                           <%-- $('#<%=Correo_existe.ClientID%>').val('Si existe');--%>
                        }
                        else {

                            if (documento == null || documento.length == 0) {
                                documento_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblDocumento').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Ingrese su documento").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (/(\s)/.test(documento)) {
                                documento_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblDocumento').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (/^[0-9]{9,}$/.test(documento)) {
                                documento_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblDocumento').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("El máximo de digitos permitos son 8").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (/^[0-9]{0,7}$/.test(documento)) {
                                documento_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblDocumento').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Ingrese mas dígitos , necesarios 8").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (/^[0-9]{8,8}$/.test(documento)) {
                                documento_completo = "completo";
                                $("#glypcn" + campo).remove();
                                $('#lblDocumento').parent().css({ "color": "green" });
                                $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                                $('#' + campo).parent().css({ "color": "green" });
                                $('#' + campo).parent().children('span').text("OK").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                                return true;
                            }
                            else {
                                documento_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblDocumento').parent().css({ "color": "brown" });
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




            if (campo === 'txtNombreEmpresaNuevo') {
                nombre = document.getElementById('txtNombres').value;
                apellidos = document.getElementById('txtApellidos').value;
                nombre_empresa = document.getElementById(campo).value;
                $.ajax({
                    type: "POST",
                    //url: "inicio.aspx/comprobardocumento",
                    url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/comprobar_nombre_empresa")%>',
                    data: '{nombre_empresa: "' + $("#txtNombreEmpresaNuevo").val() + '" }',
                    dataType: 'JSON',
                    contentType: "application/json; charset=utf-8",
                    success: function (res) {
                        if (res.d) {
                            nombre_empresa_completo = "no completo";
                            campo = 'txtNombreEmpresaNuevo';
                            $("#glypcn" + campo).remove();
                            $('#lblNombreEmpresa').parent().css({ "color": "brown" });
                            $('#' + campo).parent().css({ "color": "brown" });
                            $('#' + campo).css({ "border": "2px solid brown" });
                            $('#' + campo).parent().children('span').text("Este Nombre de Empresa ya existe").show();
                            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                            return false;
                           <%-- $('#<%=Correo_existe.ClientID%>').val('Si existe');--%>
                        }
                        else {
                            if (nombre_empresa == null || nombre_empresa.length == 0) {
                                nombre_empresa_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblNombreEmpresa').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Ingrese el nombre de su empresa").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (/^(\s)+/.test(nombre_empresa)) {
                                nombre_empresa_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblNombreEmpresa').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("No se permiten espacios en blanco al inicio").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }

                            else if (nombre_empresa == nombre) {
                                nombre_empresa_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblNombreEmpresa').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Su Dirección no puede ser igual que su Nombre").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (nombre_empresa == apellidos) {
                                nombre_empresa_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblNombreEmpresa').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Su Dirección no puede ser igual que su Apellido").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (/^[a-zA-Z áéíóúÁÉÍÓÚñÑ]{39,}$/.test(nombre_empresa)) {
                                nombre_empresa_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblNombreEmpresa').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("No se permiten mas de 40 letras").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (/^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]{0,3}$/.test(nombre_empresa)) {
                                nombre_empresa_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblNombreEmpresa').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Mínimo 4 letras y Máximo 40 letras").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (/(([a-zA-Z0-9]{1,}\s{2,}))+$/.test(nombre_empresa)) {
                                nombre_empresa_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblNombreEmpresa').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("No se permite espacios en blanco seguidos").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (/\b(\w+)(\1)+\b$/.test(nombre_empresa)) {
                                nombre_empresa_completo = "no completo";
                                $("#glypcn" + campo).remove();
                                $('#lblNombreEmpresa').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Ingrese correctamente el nombre").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                return false;
                            }
                            else if (/^(([a-zA-Z0-9áéíóúÁÉÍÓÚñÑ.]\s{0,1}){4,39})[^\s]$/.test(nombre_empresa)) {
                                nombre_empresa_completo = "completo";
                                $("#glypcn" + campo).remove();
                                $('#lblNombreEmpresa').parent().css({ "color": "green" });
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

            if (campo === 'txtRucNuevo') {
                ruc = document.getElementById(campo).value;
                var rucparseado = parseInt(ruc);
               
                            if (ruc == null || ruc.length == 0) {
                                $("#glypcn" + campo).remove();
                                $('#lblRuc').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Ingresa el ruc de tu empresa").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                ruc_completo = "no completo";
                                return false;
                            }
                            else if (/(\s)/.test(ruc)) {
                                $("#glypcn" + campo).remove();
                                $('#lblRuc').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("No se permiten espacios en blanco").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                ruc_completo = "no completo";
                                return false;
                            }
                            else if (/^[0-9]{10,}$/.test(ruc)) {
                                $("#glypcn" + campo).remove();
                                $('#lblRuc').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("El máximo de digitos permitos son 9").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                ruc_completo = "no completo";
                                return false;
                            }
                            else if (/^[0-9]{0,8}$/.test(ruc)) {
                                $("#glypcn" + campo).remove();
                                $('#lblRuc').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Ingrese mas dígitos").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                ruc_completo = "no completo";
                                return false;
                            }
                            else if (/[^0-9]+$/.test(ruc)) {
                                $("#glypcn" + campo).remove();
                                $('#lblRuc').parent().css({ "color": "brown" });
                                $('#' + campo).parent().css({ "color": "brown" });
                                $('#' + campo).css({ "border": "2px solid brown" });
                                $('#' + campo).parent().children('span').text("Ingrese solo números").show();
                                $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                ruc_completo = "no completo";
                                return false;
                            }
                            else if (/^[0-9]{8,9}$/.test(ruc)) {
                                $.ajax({
                                    type: "POST",
                                    //url: "inicio.aspx/comprobardocumento",
                                    url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/comprobarruc")%>',
                                    data: '{ruc: "' + rucparseado + '" }',
                                    dataType: 'JSON',
                                    contentType: "application/json; charset=utf-8",
                                    success: function (res) {
                                        if (res.d) {
                                            ruc_completo = "no completo";
                                            campo = 'txtRucNuevo';
                                            $("#glypcn" + campo).remove();
                                            $('#lblRuc').parent().css({ "color": "brown" });
                                            $('#' + campo).parent().css({ "color": "brown" });
                                            $('#' + campo).css({ "border": "2px solid brown" });
                                            $('#' + campo).parent().children('span').text("Este Ruc ya existe").show();
                                            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
                                            return false;
                         
                                        }
                                        else {
                                            celular_completo = "completo";
                                            $("#glypcn" + campo).remove();
                                            $('#lblRuc').parent().css({ "color": "green" });
                                            $('#' + campo).css({ "border-color": "green", "border": "2px solid green" });
                                            $('#' + campo).parent().css({ "color": "green" });
                                            $('#' + campo).parent().children('span').text("OK").show();
                                            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
                                            ruc_completo = "completo";
                                            return true;
                                        }
                                    }
                                });
                            }                            
                        }
                    }
                

    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

