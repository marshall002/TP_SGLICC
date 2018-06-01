<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPagePanel.master" AutoEventWireup="true" CodeFile="ver_informacion_de_sub_aviso.aspx.cs" Inherits="pages_personal_jefe_de_ventas_ver_informacion_de_sub_aviso" %>

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
    <div id="ver_publicacion_aviso" class="contenedor-publicacion">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
             <div class="card columna-crear-publicacion">
                 <div class="card-block header-titulo-crear-publicacion">                       
                       <h4 class="card-title titulo-crear-publicacion" ><b><p class="title" >Aviso</p></b></h4>                    
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
                         <asp:Label ID="lblPrecio" runat="server" Text="Precio" CssClass="texto-publicacion-venta"></asp:Label>
                         </div>

                         <div class="">
                         <span  class="help-block"></span>
                         <asp:TextBox ID="txtPrecio" runat="server" Class="form-control" ReadOnly="true"></asp:TextBox>
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
                               <img src="<%#Container.DataItem %>" style="margin-bottom:auto ; margin-top:auto" class="col-md-3"/>
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



                         <div id="Areas_Comunes" class="row-perso-reg fila2-contenedor1 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding-right: 0px !important; padding-left: 0px !important; float:left; ">
                         <div class="fila2-caja1">
                         <asp:TextBox ID="TextBox10" type="hidden" runat="server" Class="form-control"></asp:TextBox>
                         <asp:Label ID="lblAreasComunes" runat="server" CssClass="texto-publicacion-venta" Text="Areas Comunes"></asp:Label>                         
                         </div>

                         <div class="checkAreasComunes1">
                          <asp:UpdatePanel ID="UpdatePanel6" runat="server"  >
                             <ContentTemplate>
                             <asp:CheckBoxList ID="checkAreasComunes"  RepeatLayout="Table" RepeatDirection="Horizontal" style="margin-bottom:10px;"  Class="checkAreasComunes form-control-personalizado-crear-publicacion-venta "
                              CellPadding="5"
                              CellSpacing="5"
                              RepeatColumns="2"           
                              TextAlign="Right"
          
                              runat="server">

                             </asp:CheckBoxList>
                             </ContentTemplate>
                             <Triggers>
                             <asp:AsyncPostBackTrigger ControlID="checkAreasComunes"  />
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
            <div id="registro_publicacion" class="row-personalizado-publicacion col-lg-12 col-md-12 col-sm-12 col-xs-12" Style="display:flex !important">

                       <div class="row-perso-reg" style="float:left;">
                       <asp:UpdatePanel ID="UpdatePanel28" runat="server" UpdateMode="conditional"
                       ChildrenAsTriggers="true" >
                       <ContentTemplate>
                       <asp:Button ID="btnAceptarAviso" runat="server" CssClass="btn btn-success" Style="float:right !important;margin-left:auto !important;" Text="Regresar" OnClientClick="javascript: return history.back()"/>
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
    
  <script>
        

         window.onload = function () {

             $('#<%=lblTipoInmueble.ClientID%>').css({ "color": "blue" });
             $('#<%=lblSubTipoInmueble.ClientID%>').css({ "color": "blue" });
             $('#<%=lblDescripcion.ClientID%>').css({ "color": "blue" });
             $('#<%=lblPrecio.ClientID%>').css({ "color": "blue" });
             $('#lblDepaProDis').css({ "color": "blue" });
             $('#<%=lblImagen.ClientID%>').css({ "color": "blue" });
             $('#lblDepartamentos').css({ "color": "blue" });
             $('#lblProvincias').css({ "color": "blue" });
             $('#lblDistritos').css({ "color": "blue" });
             $('#<%=lblNro_Pisos.ClientID%>').css({ "color": "blue" });
             $('#<%=lblTipodePublicacion.ClientID%>').css({ "color": "blue" });
             $('#<%=lblDepartamento.ClientID%>').css({ "color": "blue" });
             $('#<%=lblDetalles.ClientID%>').css({ "color": "blue" });  
         }
  </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

