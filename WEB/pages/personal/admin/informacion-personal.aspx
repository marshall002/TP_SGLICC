<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPagePanel.master" AutoEventWireup="true" CodeFile="informacion-personal.aspx.cs" Inherits="pages_personal_admin_informacion_personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
<%--    Los estilos que estan al ultimo son los que mandan , en caso haya 2 estilos con las mismas propiedades a un solo elemento , manda la importación que se encuentre abajo del otro--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   <%-- style="width: 350px; height:50px;"--%>
    
        <div class="contenedor-informacion-personal">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="card columna1-informacion-personal">
                    <div class="card-block header-titulo-informacion-personal">                       
                       <h4 class="card-title titulo-informacion-personal"><b><p class="title">Datos del Usuario</p></b></h4>                    
                    </div> 
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                       
                        <div class="contenedor-imagen-perfil-informacion-personal col-md-12 col-sm-12 col-xl-12">
                          <asp:Image ID="img_Perfil" CssClass="imagen-perfil-informacion-personal" runat="server" />
                        </div>

                        <div class="fila-input-informacion-personal">
                        <div class="row-perso-reg caja-columna1-informacion-personal" >
                           <label class="texto-informacion-personal">Nombre del usuario:</label>                             
                           <asp:Label ID="txtNombrePersonal" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"></asp:Label>
                        </div>                         
                         <div class="row-perso-reg caja-columna2-informacion-personal" >
                            <label class="texto-informacion-personal">Fecha de Nacimiento:</label>                                
                            <asp:Label ID="txtFechaNacimiento" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"  DataFormatString="{0:d}" ></asp:Label>
                        </div>
                        </div>

                        <div class="fila-input-informacion-personal">
                        <div class="row-perso-reg caja-columna1-informacion-personal">
                            <label class="texto-informacion-personal">Dirección:</label>                                
                            <asp:Label ID="txtDireccion" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"></asp:Label>
                        </div>
                         <div class="row-perso-reg caja-columna2-informacion-personal">
                            <label class="texto-informacion-personal">Departamento / Provincia / Distrito:</label>                                
                            <asp:Label ID="txtProvinciaDistrito" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"></asp:Label>
                        </div>
                        </div>

                        <div class="fila-input-informacion-personal">
                         <div class="row-perso-reg caja-columna1-informacion-personal">
                            <label class="texto-informacion-personal">Celular:</label>                                
                            <asp:Label ID="txtCelular" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"></asp:Label>
                        </div>
                         <div class="row-perso-reg caja-columna2-informacion-personal">
                            <label class="texto-informacion-personal">Teléfono:</label>                                
                            <asp:Label ID="txtTelefono" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"></asp:Label>
                        </div>
                        </div>

                        <div class="fila-input-informacion-personal">
                        <div class="row-perso-reg caja-columna1-informacion-personal">
                           <label class="texto-informacion-personal">Correo:</label>                                
                           <asp:Label ID="txtCorreo" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class="row-perso-reg caja-columna2-informacion-personal">
                            <label class="texto-informacion-personal">Documento:</label>                               
                            <asp:Label ID="txtDocumento" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"></asp:Label>
                        </div>
                        </div>

                        <div class="fila-input-informacion-personal">
                         <div class="row-perso-reg caja-columna1-informacion-personal">
                            <label class="texto-informacion-personal">Estado de cuenta:</label>                                
                            <asp:Label ID="txtEstado" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"></asp:Label>
                        </div>
                         <div class="row-perso-reg caja-columna2-informacion-personal">
                            <label class="texto-informacion-personal">Tipo:</label>                                
                            <asp:Label ID="txtTipo" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"></asp:Label>
                        </div>
                        </div>
                        <div class="row clearfix">
                        </div>
                     </div>
                   </div>
                 </div>
            

                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                   <div class="card columna2-informacion-personal ">   
                        <div class="card-block header-titulo-informacion-personal"> 
                         <h4 class="card-title titulo-informacion-personal"><b><p class="title">Datos de empresa</p></b></h4>   
                        </div>

                       <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                      
                        <div class="contenedor-imagen-empresa-informacion-personal">
                          <asp:Image ID="logo_empresa" CssClass="imagen-empresa-informacion-personal" runat="server"/>
                        </div> 
                        <div class="fila-input-informacion-personal">
                        <div class="row-perso-reg caja-columna1-informacion-personal ">
                             <label class="texto-informacion-personal">Empresa:</label>
                              <asp:Label ID="txtNombre_Empresa" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"></asp:Label>
                         </div>
                         <div class="row-perso-reg caja-columna2-informacion-personal">
                             <label class="texto-informacion-personal">Ruc:</label>                                
                             <asp:Label ID="txtRuc" class="form-control-personalizado-informacion-personal" runat="server" Text="Label"></asp:Label>
                         </div>
                         </div>
                         
                         <div class="row clearfix">
                        </div>
                       </div>
                    </div>     
                    
                    <div class="caja-boton-informacion-personal">                    
                    <asp:Button ID="btnRegresarPersonal" runat="server" CssClass="btn btn-danger" Style="float: right" Width="33%" Text="Regresar" OnClick="btnRegresarPersonal_Click" PostBackUrl="~/pages/personal/admin/gestionar-personal.aspx"/>
                    <asp:Button ID="btnRegresarClientes" runat="server" CssClass="btn btn-danger" Style="float: right" Width="33%" Text="Regresar" OnClick="btnRegresarClientes_Click" PostBackUrl="~/pages/personal/admin/gestionar-clientes.aspx"/>
                   
                    </div>
                        
                    
                    <%--                    <asp:Button ID="btnReportar" runat="server" CssClass="btn btn-warning" Style="float: right" Width="33%" Text="Reportar" OnClick="btnReportar_Click"  />--%>
                </div>             
         </div>    
         
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

