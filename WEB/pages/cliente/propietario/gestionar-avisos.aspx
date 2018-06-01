<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPageTipoCliente.master" AutoEventWireup="true" CodeFile="gestionar-avisos.aspx.cs" Inherits="pages_cliente_propietario_gestionar_avisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="grid_AvisosCreados" class="body table-responsive">
        
        <div class="">
                       <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>   <%--table table-bordered table-hover--%>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">                            
                        <ContentTemplate>
                            <asp:GridView ID="gvAvisosCreados" runat="server" DataKeyNames="id_aviso" CssClass="contenedor-gridview"  AutoGenerateColumns="False" EmptyDataText="No hay avisos creados" ShowHeaderWhenEmpty="True" OnRowCommand="gvAvisosCreados_RowCommand" OnSelectedIndexChanged="gvAvisosCreados_SelectedIndexChanged" AllowPaging="true" OnPageIndexChanging="gvAvisosCreados_PageIndexChanging">
                                <HeaderStyle CssClass="cabeza-gridview" />                                
                                <RowStyle CssClass="fila-gridview" />
                               <pagersettings mode="Numeric" position="Bottom" pagebuttoncount="10"/>
                               <pagerstyle backcolor="Azure" height="30px" verticalalign="Bottom" horizontalalign="Center"/>

                                <Columns>
                                    <asp:BoundField HeaderStyle-CssClass="" ItemStyle-CssClass="" DataField="id_aviso" HeaderText="ID" Visible="false">
                                    <HeaderStyle CssClass="text-sm-center"></HeaderStyle>
                                    <ItemStyle CssClass="text-sm-center"></ItemStyle>
                                    </asp:BoundField>
                                   
                                    <asp:BoundField DataField="codigo"        HeaderText="Codigo" />
                                    <asp:BoundField DataField="nombre_tipo_servicio"            HeaderText="Tipo Servicio" />                                   
                                    <asp:BoundField DataField="nombre_tipo_inmueble"         HeaderText="Tipo Inmueble" />
                                    <asp:BoundField DataField="precio"    HeaderText="Precio" />
                                    <asp:BoundField DataField="nombre_estado"    HeaderText="Estado" />
                                    <asp:BoundField DataField="fecha_inicio"    HeaderText="Fecha Creacion" DataFormatString="{0:d}"/>
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


      <div class="modal-footer contenedor-boton-crear-publicacion">
         <asp:Button ID="btnCrearPublicacion" runat="server" CssClass="btn btn-success" Width="14%" Text="Crear Aviso Inmobiliario " OnClick="btnCrearPublicacion_Click" />
       </div>                   

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

