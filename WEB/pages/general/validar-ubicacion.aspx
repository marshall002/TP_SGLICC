<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPagePanel.master" AutoEventWireup="true" CodeFile="validar-ubicacion.aspx.cs" Inherits="pages_general_validar_ubicacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
<asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="Save" />
    <br />

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <img src='/pages/imagenes/inmuebles/venta/<%#Eval("name")%>' alt="" height="150" />
        </ItemTemplate>
    </asp:Repeater>




















    <script>
        

</script>


     
         




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

