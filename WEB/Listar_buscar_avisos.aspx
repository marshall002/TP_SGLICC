<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageInicio.master" AutoEventWireup="true" CodeFile="Listar_buscar_avisos.aspx.cs" Inherits="Listar_ventas_avisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="h1">
      <div class="body table-responsive" style="margin-bottom:300px;  margin-top:100px">
        
          
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">                            
                        <ContentTemplate>
                            <asp:GridView ID="gvAventas" runat="server" DataKeyNames="id_persona,codigo" CssClass="contenedor-gridview"  AutoGenerateColumns="False" EmptyDataText="No ha encontrado nada en su busqueda" ShowHeaderWhenEmpty="True" OnRowCommand="gvAventas_RowCommand" OnSelectedIndexChanged="gvAventas_SelectedIndexChanged" AllowPaging="true" OnPageIndexChanging="gvAventas_PageIndexChanging">
                                <HeaderStyle CssClass="cabeza-gridview" />                                
                                <RowStyle CssClass="fila-gridview" />
                               <pagersettings mode="Numeric" position="Bottom" pagebuttoncount="10"/>
                               <pagerstyle backcolor="Azure" height="30px" verticalalign="Bottom" horizontalalign="Center"/>

                                <Columns>
                                    <asp:BoundField HeaderStyle-CssClass="" ItemStyle-CssClass="" DataField="id_aviso" HeaderText="ID" Visible="false">
                                    <HeaderStyle CssClass="text-sm-center"></HeaderStyle>
                                    <ItemStyle CssClass="text-sm-center"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:ImageField DataImageUrlField="imagen" HeaderText="">
                                    <ControlStyle Height="100px" Width="100px" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="Codigo"        HeaderText="Codigo" />
                                    <asp:BoundField DataField="Titulo"            HeaderText="Titulo" />                                   
                                    <asp:BoundField DataField="Inmueble"         HeaderText="Tipo Inmueble" />
                                    <asp:BoundField DataField="Subtipo_Inmueble"    HeaderText="Subtipo Inmueble" />
                                    <asp:BoundField DataField="Precio"    HeaderText="Precio"  />
                                    <asp:ButtonField ButtonType="Button" HeaderText="Acción" CommandName="ver" Text="Ver Información">
                                    <ControlStyle CssClass="btn btn-info" />
                                    </asp:ButtonField>
                                </Columns>
                            </asp:GridView>

                           
                        </ContentTemplate>                             
                          
                        </asp:UpdatePanel>
             </div>
          </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

