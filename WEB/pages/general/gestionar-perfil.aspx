<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPagePanel.master" AutoEventWireup="true" CodeFile="gestionar-perfil.aspx.cs" Inherits="pages_general_gestionar_perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="contenedor-gestion-perfil">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="card columna1-gestion-perfil">
                    <div class="card-block header-titulo-gestion-perfil">                       
                       <h4 class="card-title titulo-gestion-perfil" ><b><p class="title" >Mis datos personales</p></b></h4>                    
                    </div> 
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                      
                        <div class="contenedor-imagen-perfil-gestion-perfil col-md-12 col-sm-12 col-xl-12">
                          <asp:Image ID="img_Perfil" CssClass="imagen-perfil-gestion-perfil" runat="server" />
                        </div>

                        <div class="fila-input-gestion-perfil">
                        <div class="row-perso-reg caja-columna1-gestion-perfil" >
                           <label class="texto">Nombre del usuario:</label>                             
                           <asp:Label ID="txtNombrePersonal"  class="form-control-personalizado-gestion-perfil"  runat="server" Text="Label"></asp:Label>
                        </div>                         
                         <div class="row-perso-reg caja-columna2-gestion-perfil" >
                            <label class="texto">Fecha de Nacimiento:</label>                                
                            <asp:Label ID="txtFechaNacimiento" class="form-control-personalizado-gestion-perfil" runat="server" Text="Label" ></asp:Label>
                        </div>
                        </div>

                        <div class="fila-input-gestion-perfil">
                        <div class="row-perso-reg caja-columna1-gestion-perfil">
                            <label class="texto">Dirección:</label>                                
                            <asp:Label  ID="txtDireccion" class="form-control-personalizado-gestion-perfil" runat="server" TextMode="MultiLine" Text="Label"></asp:Label>
                        </div>
                         <div class="row-perso-reg caja-columna2-gestion-perfil">
                            <label class="texto">Departamento / Provincia / Distrito:</label>                                
                            <asp:Label ID="txtProvinciaDistrito" class="form-control-personalizado-gestion-perfil" TextMode="MultiLine" runat="server" Text="Label"></asp:Label>
                        </div>
                        </div>

                        <div class="fila-input-gestion-perfil">
                         <div class="row-perso-reg caja-columna1-gestion-perfil">
                            <label class="texto">Celular:</label>                                
                            <asp:Label ID="txtCelular" class="form-control-personalizado-gestion-perfil" runat="server" Text="Label"></asp:Label>
                        </div>
                         <div class="row-perso-reg caja-columna2-gestion-perfil">
                            <label class="texto">Teléfono:</label>                                
                            <asp:Label ID="txtTelefono" class="form-control-personalizado-gestion-perfil" runat="server" Text="Label"></asp:Label>
                        </div>
                        </div>

                        <div class="fila-input-gestion-perfil">
                        <div class="row-perso-reg caja-columna1-gestion-perfil">
                           <label class="texto">Correo:</label>                                
                           <asp:Label ID="txtCorreo" class="form-control-personalizado-gestion-perfil" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class="row-perso-reg caja-columna2-gestion-perfil">
                            <label class="texto">Documento:</label>                               
                            <asp:Label ID="txtDocumento" class="form-control-personalizado-gestion-perfil" runat="server" Text="Label"></asp:Label>
                        </div>
                        </div>

                        <div class="fila-input-gestion-perfil">
                         <div class="row-perso-reg caja-columna1-gestion-perfil">
                            <label class="texto">Estado de cuenta:</label>                                
                            <asp:Label ID="txtEstado" class="form-control-personalizado-gestion-perfil" runat="server" Text="Label"></asp:Label>
                        </div>
                         <div class="row-perso-reg caja-columna2-gestion-perfil">
                            <label class="texto">Tipo:</label>                                
                            <asp:Label ID="txtTipo" class="form-control-personalizado-gestion-perfil" runat="server" Text="Label"></asp:Label>
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
                        <div class="contenedor-imagen-empresa-gestion-perfil">
                          <asp:Image ID="logo_empresa" CssClass="img-fluid imagen-empresa-gestion-perfil" runat="server"/>
                        </div> 
                        <div class="fila-input-gestion-perfil">
                        <div class="form-group caja-columna1-gestion-perfil ">
                             <label class="texto">Empresa:</label>
                              <asp:Label ID="txtNombre_Empresa" class="form-control-personalizado-gestion-perfil" runat="server" Text="Label"></asp:Label>
                         </div>
                         <div class="form-group caja-columna2">
                             <label class="texto">Ruc:</label>                                
                             <asp:Label ID="txtRuc" class="form-control-personalizado-gestion-perfil" runat="server" Text="Label"></asp:Label>
                         </div>
                         </div>
                         
                         <div class="row clearfix">
                        </div>
                       </div>
                    </div>     
                    
                    <div class="caja-boton-gestion-perfil">    
                    <asp:Button ID="btnModificar" runat="server" CssClass="btn btn-success" Style="margin-right:100px;" Width="33%" Text="Modificar" OnClick="btnModificar_Click" />
                    
                    <asp:Button ID="btnRegresar" runat="server" CssClass="btn btn-danger" Style="float: right" Width="33%" Text="Regresar" OnClick="btnRegresar_Click" PostBackUrl="~/pages/main.aspx"/>
                    </div>
                        
                    
                    <%--                    <asp:Button ID="btnReportar" runat="server" CssClass="btn btn-warning" Style="float: right" Width="33%" Text="Reportar" OnClick="btnReportar_Click"  />--%>
                </div>             
         </div>    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

