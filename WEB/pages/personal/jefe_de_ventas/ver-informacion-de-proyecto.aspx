<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPagePanel.master" AutoEventWireup="true" CodeFile="ver-informacion-de-proyecto.aspx.cs" Inherits="pages_personal_jefe_de_ventas_ver_informacion_de_proyecto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script   type="text/javascript" src='<%=ResolveUrl("../plugins/carousel/js/jquery.mousewheel-3.0.6.min.js")%>'></script>
    <script   type="text/javascript" src='<%=ResolveUrl("../plugins/carousel/js/jquery.rondell.min.js")%>'></script>
    <script   type="text/javascript" src='<%=ResolveUrl("../plugins/carousel/js/jquery-1.10.2.min.js")%>'></script>
    <script   type="text/javascript" src='<%=ResolveUrl("../plugins/carousel/js/modernizr-2.0.6.min.js")%>'></script>
   
    <link href="../plugins/carousel/css/jquery.rondell.css" rel="stylesheet" />
    <link href="../plugins/carousel/css/jquery.rondell.min.css" rel="stylesheet" />
    <div id="ver_publicacion" class="contenedor-publicacion">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
             <div class="card columna-crear-publicacion">
                 <div class="card-block header-titulo-crear-publicacion">                       
                       <h4 class="card-title titulo-crear-publicacion" ><b><p class="title" >Proyecto</p></b></h4>                    
                    </div>
             <div id="PropietarioDatos" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                       <div id="PropietarioDatos1" class="row-personalizado-publicacion col-lg-8 col-md-8 col-sm-8 col-xs-8">
                       <div class="contenedor-imagen-empresa-gestion-perfil">
                          <asp:Image ID="logo_empresa" CssClass="img-fluid imagen-empresa-gestion-perfil" style="height: auto !important" runat="server"/>
                        </div> 

                     </div>
                         <div class="row-perso-reg fila2-contenedor1 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblEmpresa" runat="server" Text="Empresa" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtEmpresa" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                         </div>


                         <div class="row-perso-reg fila2-contenedor2 col-lg-5 col-md-5 col-sm-5 col-xs-5" style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblRuC" runat="server" Text="Ruc" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtRuc" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                         </div>

                     </div>


                 <div id="DatosAviso" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="row-perso-reg fila2-contenedor1 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblAvisoTipo" runat="server" Text="Aviso Tipo" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtAvisoTipo" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                         </div>


                         <div class="row-perso-reg fila2-contenedor2 col-lg-5 col-md-5 col-sm-5 col-xs-5" style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblTiempo" runat="server" Text="Tiempo" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="TtxtTiempo" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                         </div>

                     </div>

                   <div class="fila1-crear-publicacion-venta col-lg-9 col-md-9 col-sm-9 col-xs-9">                                                 
                         <div class="fila1-caja1">
                         <asp:Label ID="lblTipoServicio" runat="server" Text="Tipo de Servicio" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="">
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtTipoServicio" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                     </div>

                  <div id="DatosAviso1" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="row-perso-reg fila2-contenedor1 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblTipoInmueble" runat="server" Text="Tipo Inmueble" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtTipoInmueble" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                         </div>


                         <div class="row-perso-reg fila2-contenedor2 col-lg-5 col-md-5 col-sm-5 col-xs-5" style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblSubTipoInmueble" runat="server" Text="Sub Tipo Inmueble" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtSubTipoInmueble" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                         </div>

                     </div>
                  <div class="fila1-crear-publicacion-venta col-lg-9 col-md-9 col-sm-9 col-xs-9">                                                 
                         <div class="fila1-caja1">
                         <asp:Label ID="lblTitulo" runat="server" Text="Tipo de Servicio" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="">
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtTitulo" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                     </div>
                 <div class="fila4-crear-publicacion-venta col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="fila3-caja1">
                         <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="">
                         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                         <ContentTemplate>
                         <asp:TextBox ID="txtDescripcion" runat="server" Class="form-control" style="height:200px;" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
                         </ContentTemplate>
                         </asp:UpdatePanel>
                         </div>
                      </div>
                 
                   <div class="fila1-crear-publicacion-venta col-lg-9 col-md-9 col-sm-9 col-xs-9">                                                 
                         <div class="fila1-caja1">
                         <asp:Label ID="lblMiDireccion" runat="server" Text="Mi Dirección" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="">
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtMiDireccion" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                     </div>
                 
                  <div id="DatosAviso2" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="row-perso-reg fila2-contenedor1 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblPrecio" runat="server" Text="Precio" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtPrecio" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                         </div>


                        <div class="row-perso-reg fila2-contenedor2 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important">
                            <div class="fila2-caja1" style="margin-bottom:3px !important">
                            <label id="lblDepaProDis" class="texto-publicacion-venta">Departamento / Provincia / Distrito:</label>
                            </div>

                            <div>
                            <asp:TextBox ID="txtDepartamentoProvinciaDistrito" TextMode="MultiLine" class="form-control  col-lg-10 col-md-10 col-xl-10 col-sm-10" runat="server" Text="Label" ReadOnly="true"></asp:TextBox>
                            </div>                            
                              
                          </div>
                     </div>
                  <div id="DatosAviso3" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div class="row-perso-reg fila2-contenedor1 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblFechaInicio" runat="server" Text="Fecha Inicio" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtFechaInicio" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                         </div>


                         <div class="row-perso-reg fila2-contenedor2 col-lg-5 col-md-5 col-sm-5 col-xs-5" style="padding-right: 0px !important; padding-left: 0px !important">
                         <div class="fila2-caja1">
                         <asp:Label ID="lblFechaFinal" runat="server" Text="Fecha Final" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div>
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtFechaFinal" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
                         </div>
                         </div>

                     </div>
                  <div class="fila1-crear-publicacion-venta col-lg-9 col-md-9 col-sm-9 col-xs-9">                                                 
                         <div class="fila1-caja1">
                         <asp:Label ID="lblImagen" runat="server" Text="Imagen" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="" id="rondellCarousel">
                         <span  class="help-block"></span>
                        
                 <asp:Repeater ID="Repeater1" runat="server">
                     <ItemTemplate>
                         <a href="<%#Container.DataItem %>">
                               <img src="<%#Container.DataItem %>" />
                         </a>
                       



                     </ItemTemplate>


                 </asp:Repeater>
                         </div>
                     </div>
                   <script>
      $(function() {
          $("#rondellCarousel").rondell({
              preset: "carousel",
          });
      });
       

  </script> 
       <div id="caracteristicas_inmueble" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                         <div id="Dormitorios" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;float:left">
                         <div class="fila2-caja1">
                
                         <asp:Label ID="lblDormitorios" runat="server" CssClass="texto-publicacion-venta" Text="Dormitorios"></asp:Label>  
                                               
                         </div>
                             <div>
                         <span  class="help-block"></span>
                          <asp:TextBox ID="txtDormitorio" runat="server" Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ReadOnly="true"></asp:TextBox>
                         </div>
                           
      </div>
                               <div id="Baños" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto">
                         <div class="fila2-caja1">
                
                         <asp:Label ID="lblBaños" runat="server" CssClass="texto-publicacion-venta" Text="Baños"></asp:Label>  
                                              
                         </div>
                          <div>
                         <span  class="help-block"></span>
                      <asp:TextBox ID="txtBaño" runat="server" Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ReadOnly="true"></asp:TextBox>
                         </div>
      </div>
                               <div id="Cocheras" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto">
                         <div class="fila2-caja1">
                
                         <asp:Label ID="lblCocheras" runat="server" CssClass="texto-publicacion-venta" Text="Cocheras"></asp:Label>  
                                
                         </div>
                              <div>
                         <span  class="help-block"></span>
                        <asp:TextBox ID="txtCochera" runat="server" Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ReadOnly="true"></asp:TextBox>                                   
                         </div>
                                   </div>
                       <div id="Antiguedad_Inmueble" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         
                         <asp:Label ID="lblAntiguedad_Inmueble" runat="server" CssClass="texto-publicacion-venta" Text="Antiguedad Inmueble"></asp:Label>                         
                         </div>
                            <div>
                         <span  class="help-block"></span>
                      <asp:TextBox ID="txtAntiguedad" runat="server" Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ReadOnly="true"></asp:TextBox>
                         </div>
                        </div>
            <div id="Estado_Inmueble" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         
                         <asp:Label ID="lblEstado_Inmueble" runat="server" CssClass="texto-publicacion-venta" Text="Estado de inmueble"></asp:Label>                         
                         </div>
                            <div>
                         <span  class="help-block"></span>
                      <asp:TextBox ID="txtEstado" runat="server" Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ReadOnly="true"></asp:TextBox>
                         </div>
                        </div>
            <div id="Tipo_de_Anunciante" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         
                         <asp:Label ID="lblTipo_Anunciante" runat="server" CssClass="texto-publicacion-venta" Text="Tipo de Anunciante"></asp:Label>                         
                         </div>
                            <div>
                         <span  class="help-block"></span>
                      <asp:TextBox ID="txtTipoAnunciante" runat="server" Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ReadOnly="true"></asp:TextBox>
                         </div>
                        </div>
             <div id="Caracteristicas" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox6" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblCaracteristicas" runat="server" CssClass="texto-publicacion-venta" Text="Caracteristicas"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel2" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkCaracteristicas"  style="margin-bottom:10px;"  Class="checkCaracteristicas form-control-personalizado-crear-publicacion-venta "
                             CellPadding="5"
                              CellSpacing="5"
                              RepeatColumns="3"           
                              
          
                              runat="server">
                             </asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkCaracteristicas" />
                             </Triggers>
                         </asp:UpdatePanel>
                         </div>  
                         </div>
           <div id="Servicios" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox7" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblServicios" runat="server" CssClass="texto-publicacion-venta" Text="Servicios"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel3" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkServicios"  RepeatLayout="Table" RepeatDirection="Horizontal" style="margin-bottom:10px;"  Class="checkServicios form-control-personalizado-crear-publicacion-venta "
                              CellPadding="5"
                              CellSpacing="5"
                              RepeatColumns="2"           
                              TextAlign="Right"
          
                              runat="server">

                             </asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkServicios"  />
                             </Triggers>
                         </asp:UpdatePanel>
                         </div>  
                         </div>


                         <div id="Ambientes" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox8" type="hidden" runat="server" Class="form-control" Text="Ambientes"></asp:TextBox>
                         <asp:Label ID="lblAmbientes" runat="server" CssClass="texto-publicacion-venta" Text="Ambientes"></asp:Label>                         
                         </div>

                         <div class="row-perso-reg">
                          <asp:UpdatePanel ID="UpdatePanel4" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkAmbientes"  RepeatLayout="Table" RepeatDirection="Horizontal"  Class="row-perso-reg checkAmbientes form-control-personalizado-crear-publicacion-venta col-lg-11 col-md-11 col-sm-11 col-xs-11" style="margin-bottom:10px;"
                              CellPadding="5"
                              CellSpacing="5"
                              RepeatColumns="3"           
                             
          
                              runat="server">

                             </asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkAmbientes"  />
                             </Triggers>
                         </asp:UpdatePanel>
                         </div>  
                         </div>


                         <div id="Adicionales" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox9" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblAdicionales" runat="server" CssClass="texto-publicacion-venta" Text="Adicionales"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel5" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkAdicionales"  RepeatLayout="Table" RepeatDirection="Horizontal" style="margin-bottom:10px;"  Class="checkAdicionales form-control-personalizado-crear-publicacion-venta "
                              CellPadding="5"
                              CellSpacing="5"
                              RepeatColumns="2"           
                              TextAlign="Right"
          
                              runat="server">

                             </asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkAdicionales"  />
                             </Triggers>
                         </asp:UpdatePanel>
                         </div>  
                         </div>


                         <div id="Generales" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; margin-left:auto; float:right; " >
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox11" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblGenerales" runat="server" CssClass="texto-publicacion-venta" Text="Generales"></asp:Label>                         
                         </div>

                         <div class="">
                          <asp:UpdatePanel ID="UpdatePanel7" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkGenerales"  RepeatLayout="Table" RepeatDirection="Horizontal" style="margin-bottom:10px;"  Class="checkGenerales form-control-personalizado-crear-publicacion-venta "
                              CellPadding="5"
                              CellSpacing="5"
                              RepeatColumns="1"           
                              TextAlign="Right"
          
                              runat="server">

                             </asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkGenerales"  />
                             </Triggers>
                         </asp:UpdatePanel>
                         </div>  
                         </div>
            <div id="Nro_Pisos" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         
                         <asp:Label ID="lblNro_Pisos" runat="server" CssClass="texto-publicacion-venta" Text="Nro_Piso"></asp:Label>                         
                         </div>
                            <div>
                         <span  class="help-block"></span>
                      <asp:TextBox ID="txtNPiso" runat="server" Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ReadOnly="true"></asp:TextBox>
                         </div>
                        </div>
           <div id="Departamento_por_piso" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         
                         <asp:Label ID="lblDepartamento" runat="server" CssClass="texto-publicacion-venta" Text="Departamento por Piso"></asp:Label>                         
                         </div>
                            <div>
                         <span  class="help-block"></span>
                      <asp:TextBox ID="txtDepartamento" runat="server" Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ReadOnly="true"></asp:TextBox>
                         </div>
                        </div>
           <div id="Tipo_de_Publicacion" class="row-perso-reg fila2-contenedor1 col-lg-4 col-md-4 col-sm-4 col-xs-4 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         
                         <asp:Label ID="lblTipodePublicacion" runat="server" CssClass="texto-publicacion-venta" Text="Tipo de Pubicacion"></asp:Label>                         
                         </div>
                            <div>
                         <span  class="help-block"></span>
                      <asp:TextBox ID="txtTipoPublicacion" runat="server" Class="form-control-personalizado-crear-publicacion-venta col-lg-10 col-md-10 col-sm-10 col-xs-10" ReadOnly="true"></asp:TextBox>
                         </div>
                        </div>
              <div id="Detalles" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
                         <div class="fila2-caja1">
                         
                         <asp:Label ID="lblDetalles" runat="server" CssClass="texto-publicacion-venta" Text="Detalles"></asp:Label>                         
                         </div>
                            <div>
                         <span  class="help-block"></span>
                      <asp:TextBox ID="txtDetalles" runat="server" Class="form-control-personalizado-crear-publicacion-venta col-lg-4 col-md-4 col-sm-4 col-xs-4"></asp:TextBox>
                         </div>
                        </div>
            <!-- Mostrar los subAvisos -->
 <div id="mostrar_sub_Avisos" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto;margin-left:auto"">
     <div class="body table-responsive">
        <div class="fila2-caja1">
            <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>   <%--table table-bordered table-hover--%>
                        <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">                            
                        <ContentTemplate>
                            <asp:GridView ID="gvSubAvisos" runat="server" DataKeyNames="Piso" CssClass="contenedor-gridview"  AutoGenerateColumns="False" EmptyDataText="No hay avisos registrados" ShowHeaderWhenEmpty="True" OnRowCommand="gvSubAvisos_RowCommand" OnSelectedIndexChanged="gvSubAvisos_SelectedIndexChanged" AllowPaging="true" OnPageIndexChanging="gvSubAvisos_PageIndexChanging">
                                <HeaderStyle CssClass="cabeza-gridview" />                                
                                <RowStyle CssClass="fila-gridview" />
                               <pagersettings mode="Numeric" position="Bottom" pagebuttoncount="10"/>
                               <pagerstyle backcolor="Azure" height="30px" verticalalign="Bottom" horizontalalign="Left"/>

                                <Columns>
                                    <asp:BoundField HeaderStyle-CssClass="" ItemStyle-CssClass="" DataField="id_persona" HeaderText="ID" Visible="false">
                                    <HeaderStyle CssClass="text-sm-center"></HeaderStyle>
                                    <ItemStyle CssClass="text-sm-center"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Piso"        HeaderText="Piso" />
                                    <asp:BoundField DataField="cantidad"            HeaderText="Cantidad" />                                   
                                    <asp:BoundField DataField="descripcion_tipo_inmueble"         HeaderText="Tipo Inmueble" />
                                    <asp:BoundField DataField="descripcion_subtipo_inmueble"    HeaderText="Sub Tipo Inmueble" />
                                    <asp:BoundField DataField="precio_sub_aviso"    HeaderText="Precio" DataFormatString="{0:C2}"/>
                                   

                                    <asp:ButtonField ButtonType="Button" HeaderText="Acción" CommandName="ver" Text="Ver Información">
                                    <ControlStyle CssClass="btn btn-info" />
                                    </asp:ButtonField>
                                </Columns>
                            </asp:GridView>

                            <asp:Timer ID="Timer1" Interval="3000" runat="server" OnTick="Timer1_Tick"></asp:Timer>
                        </ContentTemplate>                             
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" /> 
                            </Triggers>
                        </asp:UpdatePanel>



        </div>
    </div>
    </div>
            <div id="registro_publicacion" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9" Style="display:flex !important">
     <div class="row-perso-reg" style="float:right;margin-left:auto">
                       <asp:UpdatePanel ID="UpdatePanel29" runat="server" UpdateMode="conditional"
                       ChildrenAsTriggers="true" >
                       <ContentTemplate>
                       
                        <button class="btn btn-danger" type="button" id="btnRechazar" data-toggle="modal" data-target="#Rechazar" aria-haspopup="true" aria-expanded="false" runat="server" style="float: right;margin-right:20px;">Rechazar</button>
                       </ContentTemplate>
                       <Triggers>
                       <asp:AsyncPostBackTrigger ControlID="btnAceptarAviso" EventName="Click" />
                       </Triggers>
                       </asp:UpdatePanel>
                       </div>

                       <div class="row-perso-reg" style="float:right;">
                       <asp:UpdatePanel ID="UpdatePanel28" runat="server" UpdateMode="conditional"
                       ChildrenAsTriggers="true" >
                       <ContentTemplate>
                       <asp:Button ID="btnAceptarAviso" runat="server" CssClass="btn btn-success" Style="float:right !important;margin-left:auto !important;" Text="Aceptar" OnClick="btnAceptarAviso_Click" />
                       </ContentTemplate>
                       <Triggers>
                       <asp:AsyncPostBackTrigger ControlID="btnAceptarAviso" EventName="Click" />
                       </Triggers>
                       </asp:UpdatePanel>
                       </div>
                </div>



      </div>
        </div>       

</div>
        </div> 
     <!-- The Modal -->
     <div class="modal fade" id="Rechazar">
          <div class="modal-dialog" style="width:28% !important">
                    <div class="modal-content">
                          <!-- Modal Header -->
                        <div class="caja-loguin">
                             <span class="cabecera-loguin-entrar" style="color:green"><p class="align-content-center">MiHogar-Perú</p>
                            </span>
                      
                            </div>
                           <div id="Opciones" class="row-personalizado-publicacion col-lg-10 col-md-10 col-sm-10 col-xs-10">
                         <div id="Rechazo" class="row-perso-reg fila2-contenedor1 col-lg-10 col-md-10 col-sm-10 col-xs-10" style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto">
                         <div class="fila2-caja1">
                
                         <asp:Label ID="lblRechazo" runat="server" CssClass="texto-publicacion-venta" Text="Razon"></asp:Label>  
                                              
                         </div>
                          <div>
                         <span  class="help-block"></span>
                              <asp:DropDownList ID="ListRazon" runat="server" OnSelectedIndexChanged="ListaRazon_SelectedIndexChanged" CssClass="form-control">
                                   <asp:ListItem Value="Falta de documentos">Falta de documentos</asp:ListItem>
                                   <asp:ListItem Value="Documentos inválidos">Documentos inválidos</asp:ListItem>
                                   <asp:ListItem Value="Falta de información">Falta de información</asp:ListItem>
                                    <asp:ListItem Value="No hay imágenes">No hay imágenes</asp:ListItem>
                                   <asp:ListItem Value="Información Inapropiada">Información Inapropiada</asp:ListItem>
                                  

                              </asp:DropDownList>
                         </div>
      </div>
                        </div>
                             <div id="Opciones2" class="row-personalizado-publicacion col-lg-10 col-md-10 col-sm-10 col-xs-10">
                                 <div id="Mensaje" class="row-perso-reg fila2-contenedor1 col-lg-10 col-md-10 col-sm-10 col-xs-10 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto">
                         <div class="fila2-caja1">
                
                         <asp:Label ID="lblMensaje" runat="server" CssClass="texto-publicacion-venta" Text="Mensaje:"></asp:Label>  
                                              
                         </div>
                          <div>
                          <textarea id="txtRechazo" cols="40" rows="5" class="form-control" style="height:200px;" onkeyup="VerificarTodo();" name="txtRechazo"></textarea>
                               <span  class="help-block"></span>
                         </div>
      </div>
                        </div>
                        <div id="Botones" class="row-personalizado-publicacion col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                 <div id="Aceptar" class="row-perso-reg fila2-contenedor1 col-lg-5 col-md-5 col-sm-5 col-xs-5 " style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto">
                         <div class="fila2-caja1">
                           <span  class="help-block"></span>
                  <asp:Button ID="btnAceptarRechazo" runat="server" CssClass="btn btn-primary" Style="float:right !important;margin-left:auto !important;" Text="Aceptar" OnClick="btnRechazar_Click" />
                             
                         </div>
      </div>
                                <div id="Cancelar" class="row-perso-reg fila2-contenedor1 col-lg-5 col-md-5 col-sm-5 col-xs-5" style="padding-right: 0px !important; padding-left: 0px !important; margin-right:auto">
                         <div class="fila2-caja1">
                           <span  class="help-block"></span>
                             <button type="button" class="btn btn-danger" data-dismiss="modal" style="float: right !important; margin-left:auto !important;">Cancelar</button>
                  
                             
                         </div>
      </div>
                            </div>
               
                        </div>
              </div>
         </div>
  <script>
        

         window.onload = function () {
              $('#<%=lblEmpresa.ClientID%>').css({ "color": "blue" });
             $('#<%=lblRuC.ClientID%>').css({ "color": "blue" });
             $('#<%=lblTiempo.ClientID%>').css({ "color": "blue" });
             $('#<%=lblAvisoTipo.ClientID%>').css({ "color": "blue" });
             $('#<%=lblTipoServicio.ClientID%>').css({ "color": "blue" });
             $('#<%=lblTipoInmueble.ClientID%>').css({ "color": "blue" });
             $('#<%=lblSubTipoInmueble.ClientID%>').css({ "color": "blue" });
             $('#<%=lblTitulo.ClientID%>').css({ "color": "blue" });
             $('#<%=lblDescripcion.ClientID%>').css({ "color": "blue" });
             $('#<%=lblMiDireccion.ClientID%>').css({ "color": "blue" });
             $('#<%=lblPrecio.ClientID%>').css({ "color": "blue" });
             $('#lblDepaProDis').css({ "color": "blue" });
             $('#<%=lblFechaInicio.ClientID%>').css({ "color": "blue" });
             $('#<%=lblFechaFinal.ClientID%>').css({ "color": "blue" });
             $('#<%=lblImagen.ClientID%>').css({ "color": "blue" });
             $('#lblDepartamentos').css({ "color": "blue" });
             $('#lblProvincias').css({ "color": "blue" });
             $('#lblDistritos').css({ "color": "blue" });
             $('#<%=lblNro_Pisos.ClientID%>').css({ "color": "blue" });
             $('#<%=lblTipodePublicacion.ClientID%>').css({ "color": "blue" });
             $('#<%=lblDepartamento.ClientID%>').css({ "color": "blue" });
             $('#<%=lblDetalles.ClientID%>').css({ "color": "blue" });  
         }
         function VerificarTodo() {
          var camp = document.getElementById('txtRechazo').value;
          if (camp == null || camp.length == 0) {
              $("#glypcn" + 'txtRechazo').remove();
              $('#<%=lblMensaje.ClientID%>').css({ "color": "brown" });
              $('#' + 'txtRechazo').parent().css({ "color": "brown" });
              $('#' + 'txtRechazo').css({ "border": "2px solid brown" });
              $('#' + 'txtRechazo').parent().children('span').text("No puede dejar en blanco el texto").show();
              $('#' + 'txtRechazo').parent().append("<span id='glypcn" + 'txtRechazo' + "' class='glyphicon glyphicon-remove form-control-feedback' style='color:brown'></span>");


              return false;
          } else {

              $("#glypcn" + 'txtRechazo').remove();
              $('#<%=lblMensaje.ClientID%>').css({ "color": "green" });
              $('#' + 'txtRechazo').css({ "border-color": "green", "border": "2px solid green" });
              $('#' + 'txtRechazo').parent().css({ "color": "green" });
              $('#' + 'txtRechazo').parent().children('span').text("OK").show();
              $('#' + 'txtRechazo').parent().append("<span id='glypcn" + 'txtRechazo' + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
              return true;
          }
      }
  $("#<%=txtMiDireccion.ClientID%>").click(function () {
          $('#direccion_modal').modal('show');
          MostrarUbicaciondelInmueble();
      });
      function MostrarUbicaciondelInmueble() {
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
                            var latitud = document.getElementById("<%=txtLatitud.ClientID%>").value;
                            var longitud = document.getElementById("<%=txtLongitud.ClientID%>").value;
                            var geolocate = new google.maps.LatLng(latitud, longitud);

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

                    });
                } else {
                    document.getElementById("google_canvas").innerHTML = "No se soporta geolocalizacion";
                }
            })();
        }
         
  </script> 
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
    <!-- Scripts para que se pueda conectar con google map -->
     <%-- Este script es para cargar mi ubicación--%>
    <%--<script src="http://maps.googleapis.com/maps/api/js?sensor=false?libraries=places&key=AIzaSyCMi_I7Z2iXFBlFNmoxorqOygzVjwwWJrE"></script>--%>
    <%--Este script es para cargar el autocomplete de direcciones--%>
    <script src="http://maps.googleapis.com/maps/api/js?v=3.exp&signed in=true&libraries=places&key=AIzaSyAtGA4w4HY95vw7HI8XfKAQZXbNsqNCWKQ"></script>
    <%--Este script es necesario para mostrar mi dirección en el textbox automáticamente --%>
    <script  src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script  src="http://chart.apis.google.com/chart?chst=d_map_pin_shadow"></script>
   <!-- Modal de la Direccion -->  
    <div>
        <div class="modal fade" style="z-index:20 !important; margin-top:45px;" id="direccion_modal">
            <div class="modal-dialog" style="width:50% !important; ">
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
                    <div class="contenido-direccion"><span style="color:red">Región Inmueble</span>
                         </div>
                         <div class="contenido-region">
                        <asp:TextBox id="txtRegionLocalizada" width="500px" runat="server" ReadOnly="true"></asp:TextBox>                           
                                </div>
                     <div class="contenido-direccion"><span style="color:green">Direccion Inmueble</span>
                         </div>
                         <div class="contenido-region">
                        <asp:TextBox id="txtDireccionInmueble" width="500px" runat="server" ReadOnly="true"></asp:TextBox>                           
                                </div>
                             </div>
                            <asp:TextBox ID="txtRegion" Style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                             <asp:TextBox ID="txtLatitud" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                             <asp:TextBox ID="txtLongitud" style="width: 210px;" type="hidden" class="form-control" runat="server"></asp:TextBox>
                            <div class="modal-footer">
                               <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>     
   

      
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

