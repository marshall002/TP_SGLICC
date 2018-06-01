<%@ Page Title="" Language="C#" MasterPageFile="~/pages/MasterPageTipoCliente.master" AutoEventWireup="true" CodeFile="tipo-aviso-empresa.aspx.cs" Inherits="pages_cliente_propietario_tipo_aviso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


      <div style="margin-left:auto; margin-right:auto;" class="row col-lg-10 col-md-10 col-sm-10 col-xs-10"> 

          <div style="margin-top:20px; margin-bottom:20px;background-color:#D43020"; class="col-lg-3 col-md-3 col-sm-3 col-xs-3"> 

              <div style="margin-bottom:20px;   margin-top:20px;   text-align:center;  color:aliceblue; ">
                  <span style="font-size:40px;font-weight:bold;">PREMIUM</span><br />
                  <span style="font-size:30px;">S/ 250</span>
              </div>
             
              <div style="text-align: center;margin-bottom:20px;margin-top:20px" >
                
                  <asp:Button ID="btnContinuarPremium" runat="server" CssClass="btn btn-primary col-lg-10 col-md-10 col-sm-10 col-xs-10" Text="Continuar" OnClick="btnContinuarPremium_Click"/>
              </div>

              <div style="margin-bottom:20px;   margin-top:20px;   text-align:center;  color:aliceblue; " class="">
                  <span>60 días de publicación</span><br />
                  <span>Posición superior en resultados</span><br />
                   <span>200 fotos</span><br />
                   <span>Video</span><br />
                   <span>1 Impreso con foto Clasificados MiHogar-Perú ( Domingo )</span><br />
                   <span>1 Impreso con foto Clasificados MiHogar-Perú ( Sábado )</span><br />
                   <span>1 Impreso Clasificados Trome ( Domingo )</span><br />
              </div>

          </div>


          <div style="margin-top:20px; margin-bottom:20px; background-color:#1B5A86; margin-left:auto;margin-right:auto" class="col-lg-3 col-md-3 col-sm-3 col-xs-3"> 
              <div style="margin-bottom:20px;   margin-top:20px;   text-align:center;  color:aliceblue; ">
                  <span style="font-size:40px;font-weight:bold;">DESTACADO</span><br />
                  <span style="font-size:30px;">S/ 150</span>
              </div>

              <div style="text-align: center;margin-bottom:20px;margin-top:20px" >
                  <asp:button  ID="btnContinuarDestacado" runat="server" cssclass="btn btn-primary col-lg-10 col-md-10 col-sm-10 col-xs-10" text="Continuar" OnClick="btnContinuarDestacado_Click"/>                 
              </div>

              <div style="margin-bottom:20px;   margin-top:20px;   text-align:center;  color:aliceblue; " class="">
                  <span>45 días de publicación</span><br />
                  <span>Posición alta en resultados</span><br />
                   <span>40 fotos</span><br />
                   <span>Video</span><br />
                   <span>1 Impreso con foto Clasificados MiHogar-Perú ( Domingo )</span><br />
                   
              </div>
          </div>


          <div style="margin-top:20px; margin-bottom:20px; background-color:green;" class="col-lg-3 col-md-3 col-sm-3 col-xs-3"> 
               <div style="margin-bottom:20px;   margin-top:20px;   text-align:center;  color:aliceblue;" >
                  <span style="font-size:40px;font-weight:bold;">SIMPLE</span><br />
                  <span style="font-size:30px;">S/ 65</span>
              </div>

              <div style="text-align: center;margin-bottom:20px;margin-top:20px" >
                  <asp:button  ID="btnContinuarSimple" runat="server" cssclass="btn btn-primary col-lg-10 col-md-10 col-sm-10 col-xs-10" text="Continuar" OnClick="btnContinuarSimple_Click"/>                 
              </div>

              <div style="margin-bottom:20px;   margin-top:20px;   text-align:center;  color:aliceblue; " class="">
                  <span>30 días de publicación</span><br />
                  <span>Posición inferior en resultados</span><br />
                   <span>20 fotos</span><br />                  
                   <span>Foto mediana en resultados</span><br />                  
              </div>
          </div>

      </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

