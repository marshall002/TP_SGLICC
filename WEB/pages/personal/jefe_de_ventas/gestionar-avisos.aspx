<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPagePanel.master" AutoEventWireup="true" CodeFile="gestionar-avisos.aspx.cs" Inherits="pages_personal_jefe_de_ventas_gestionar_avisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="body table-responsive">
        <div class="">
            <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>   <%--table table-bordered table-hover--%>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">                            
                        <ContentTemplate>
                            <asp:GridView ID="gvAvisos" runat="server" DataKeyNames="id_persona,codigo" CssClass="contenedor-gridview"  AutoGenerateColumns="False" EmptyDataText="No hay avisos registrados" ShowHeaderWhenEmpty="True" OnRowCommand="gvAvisos_RowCommand" OnSelectedIndexChanged="gvAvisos_SelectedIndexChanged" AllowPaging="true" OnPageIndexChanging="gvAvisos_PageIndexChanging">
                                <HeaderStyle CssClass="cabeza-gridview" />                                
                                <RowStyle CssClass="fila-gridview" />
                               <pagersettings mode="Numeric" position="Bottom" pagebuttoncount="10"/>
                               <pagerstyle backcolor="Azure" height="30px" verticalalign="Bottom" horizontalalign="Center"/>

                                <Columns>
                                    <asp:BoundField HeaderStyle-CssClass="" ItemStyle-CssClass="" DataField="id_persona" HeaderText="ID" Visible="false">
                                    <HeaderStyle CssClass="text-sm-center"></HeaderStyle>
                                    <ItemStyle CssClass="text-sm-center"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="codigo"        HeaderText="Código" />
                                    <asp:BoundField DataField="nombre_propietario"            HeaderText="Propietario" />                                   
                                    <asp:BoundField DataField="tipo_servicio"         HeaderText="Tipo Servicio" />
                                    <asp:BoundField DataField="descripcion_subtipo_inmueble"    HeaderText="Tipo Inmueble" />
                                    <asp:BoundField DataField="precio"    HeaderText="Precio" DataFormatString="{0:C2}"/>
                                    <asp:BoundField DataField="estado"    HeaderText="Estado" />
                                     <asp:BoundField DataField="fecha_inicio"    HeaderText="Fecha Creación" DataFormatString="{0:d}"/>
                                   

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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

