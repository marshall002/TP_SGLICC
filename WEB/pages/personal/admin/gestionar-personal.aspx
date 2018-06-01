﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPagePanel.master" AutoEventWireup="true" CodeFile="gestionar-personal.aspx.cs" Inherits="pages_admin_gestionar_personal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">    
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="body table-responsive">
        
        <div class="">
                       <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>   <%--table table-bordered table-hover--%>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">                            
                        <ContentTemplate>
                            <asp:GridView ID="gvPersonal" runat="server" DataKeyNames="id_persona" CssClass="contenedor-gridview"  AutoGenerateColumns="False" EmptyDataText="No hay personal registrados" ShowHeaderWhenEmpty="True" OnRowCommand="gvPersonal_RowCommand" OnSelectedIndexChanged="gvPersonal_SelectedIndexChanged" AllowPaging="true" OnPageIndexChanging="gvPersonal_PageIndexChanging">
                                <HeaderStyle CssClass="cabeza-gridview" />                                
                                <RowStyle CssClass="fila-gridview" />
                               <pagersettings mode="Numeric" position="Bottom" pagebuttoncount="10"/>
                               <pagerstyle backcolor="Azure" height="30px" verticalalign="Bottom" horizontalalign="Center"/>

                                <Columns>
                                    <asp:BoundField HeaderStyle-CssClass="" ItemStyle-CssClass="" DataField="id_persona" HeaderText="ID" Visible="false">
                                    <HeaderStyle CssClass="text-sm-center"></HeaderStyle>
                                    <ItemStyle CssClass="text-sm-center"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:ImageField DataImageUrlField="img_ruta" HeaderText="Perfil">
                                    <ControlStyle Height="35px" Width="35px" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="nombres"        HeaderText="Nombre" />
                                    <asp:BoundField DataField="dni"            HeaderText="Dni" />                                   
                                    <asp:BoundField DataField="nombre_estado"         HeaderText="Estado" />
                                    <asp:BoundField DataField="tipo_perfil"    HeaderText="Cargo" />
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

                         <div class="modal-footer contenedor-boton-añadir-personal">
                                <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-success" Style="float: right" Width="13%" Text="Añadir Personal" OnClick="btnRegistrar_Click" />
                            </div>
                        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

