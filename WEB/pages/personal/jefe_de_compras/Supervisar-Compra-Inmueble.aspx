<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPagePanel.master" AutoEventWireup="true" CodeFile="Supervisar-Compra-Inmueble.aspx.cs" Inherits="pages_personal_Jefe_de_Compras_Supervisar_Compra_Inmueble" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <ol class="breadcrumb">

            <div id="div_Dropdown" class="col-xl-5">
                <asp:Label runat="server" CssClass="form-group col-md-8"> Filtre por estado: </asp:Label>
                <asp:DropDownList  CssClass="dropdown-toggle form-group col-md-7" runat="server"  ID="ddl_Tipo_de_estado" OnSelectedIndexChanged="ddl_Tipo_de_estado_SelectedIndexChanged">
                    <asp:ListItem Text="Aprobacion pendiente" Value="1" />
                    <asp:ListItem Text="Solicitudes Aprobadas" Value="2" />
                    <asp:ListItem Text="Solicitudes Rechazadas" Value="3" />
                </asp:DropDownList>
                
            </div>
            <div>
                <asp:Button runat="server" ID="btnbuscar" CssClass="btn-primary" OnClick="btnbuscar_Click" Text="Buscar"/>
            </div>
            </ol>
            </div>
    
            <div class="body table-responsive">
                <div class="align-items-sm-stretch">

                    <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>   <%--table table-bordered table-hover--%>
                    <asp:UpdatePanel ID="GVUpdatePanel" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">

                        <ContentTemplate>

                            <asp:GridView ID="gvCompras" runat="server" DataKeyNames="id_vendedor_persona,id_comprador_persona,codigo,id_aviso,nombre_comprador" CssClass="contenedor-gridview" AutoGenerateColumns="False" EmptyDataText="No hay solicitudes de compra" ShowHeaderWhenEmpty="True" OnRowCommand="gvAvisos_RowCommand" OnSelectedIndexChanged="gvAvisos_SelectedIndexChanged" AllowPaging="true" OnPageIndexChanging="gvAvisos_PageIndexChanging">
                                <HeaderStyle CssClass="cabeza-gridview" />
                                <RowStyle CssClass="fila-gridview" />
                                <PagerSettings Mode="Numeric" Position="Bottom" PageButtonCount="10" />
                                <PagerStyle BackColor="Azure" Height="30px" VerticalAlign="Bottom" HorizontalAlign="Center" />
                                

                                <Columns>
                                    <asp:BoundField HeaderStyle-CssClass="" ItemStyle-CssClass="" DataField="id_vendedor_persona" HeaderText="ID" Visible="false">
                                        <HeaderStyle CssClass="text-sm-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-sm-center"></ItemStyle>
                                    </asp:BoundField>                                    
                                    
                                    <asp:BoundField DataField="id_vendedor_persona" HeaderText="Id_vendedor" Visible="false"/>
                                    <asp:BoundField DataField="id_comprador_persona" HeaderText="Id_comprador" Visible="false"/>
                                    <asp:BoundField DataField="id_aviso" HeaderText="di_aviso" Visible="false" />
                                    <asp:BoundField DataField="codigo" HeaderText="Código" />
                                    <asp:boundfield datafield="nombre_vendedor" headertext="vendedor" />
                                    <asp:boundfield datafield="nombre_comprador" headertext="comprador" />
                                    <asp:BoundField DataField="estado" HeaderText="Estado" />
                                    <asp:BoundField DataField="descripcion_subtipo_inmueble" HeaderText="Tipo Inmueble" />
                                    <asp:BoundField DataField="precio" HeaderText="Precio" DataFormatString="{0:C2}" />
                                    <asp:BoundField DataField="tipo_servicio" HeaderText="Tipo Servicio" />
                                    <asp:BoundField DataField="fecha_compra" HeaderText="Fecha de la solicitud" DataFormatString="{0:d}" />
                                    

                                    <asp:ButtonField ButtonType="Button" HeaderText="Acción" CommandName="ver" Text="Ver Información">
                                        <ControlStyle CssClass="btn btn-info" />
                                    </asp:ButtonField>
                                </Columns>
                            </asp:GridView>


                            <%--<asp:Timer ID="Timer1" Interval="3000" runat="server"></asp:Timer>--%>
                        </ContentTemplate>
                        <Triggers>

                            <asp:AsyncPostBackTrigger ControlID="btnbuscar" EventName="Click" />
                            <%--<asp:AsyncPostBackTrigger ControlID="Timer1" />--%>
                        </Triggers>
                    </asp:UpdatePanel>
                </div>


            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

