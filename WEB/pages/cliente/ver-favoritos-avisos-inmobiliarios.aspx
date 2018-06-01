﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPagePanel.master" AutoEventWireup="true" CodeFile="ver-favoritos-avisos-inmobiliarios.aspx.cs" Inherits="pages_cliente_ver_favoritos_avisos_inmobiliarios_" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="body table-responsive">
        
        <div class="">
                       <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>   <%--table table-bordered table-hover--%>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">                            
                        <ContentTemplate>
                            <asp:GridView ID="gvVerFavoritos_Avisos_Inmobiliarios" runat="server" DataKeyNames="Codigo" CssClass="contenedor-gridview"  AutoGenerateColumns="False" EmptyDataText="No hay avisos favoritos registrados" ShowHeaderWhenEmpty="True" OnRowCommand="gvVerFavoritos_Avisos_Inmobiliarios_RowCommand" OnSelectedIndexChanged="gvVerFavoritos_Avisos_Inmobiliarios_SelectedIndexChanged" AllowPaging="true" OnPageIndexChanging="gvVerFavoritos_Avisos_Inmobiliarios_PageIndexChanging">
                                <HeaderStyle CssClass="cabeza-gridview" />                                
                                <RowStyle CssClass="fila-gridview" />
                               <pagersettings mode="Numeric" position="Bottom" pagebuttoncount="10"/>
                               <pagerstyle backcolor="Azure" height="30px" verticalalign="Bottom" horizontalalign="Center"/>

                                <Columns>
                                    <asp:BoundField HeaderStyle-CssClass="" ItemStyle-CssClass="" DataField="id_aviso" HeaderText="ID" Visible="false">
                                    <HeaderStyle CssClass="text-sm-center"></HeaderStyle>
                                    <ItemStyle CssClass="text-sm-center"></ItemStyle>
                                    </asp:BoundField>
                                   
                                    <asp:BoundField DataField="Codigo"        HeaderText="Codigo" />
                                    <asp:BoundField DataField="Titulo"            HeaderText="Título" />                                   
                                    <asp:BoundField DataField="Inmueble"         HeaderText="Inmueble" />
                                    <asp:BoundField DataField="Subtipo_Inmueble"    HeaderText="Subtipo Inmueble" />
                                    <asp:BoundField DataField="Precio"    HeaderText="Precio" DataFormatString="{0:C2}"/>
                                    <asp:ButtonField ButtonType="Button" HeaderText="Acción" CommandName="ver" Text="Ver detalle">
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

                         <div class="modal-footer contenedor-boton-añadir-personal">
                                </div>
                        </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
