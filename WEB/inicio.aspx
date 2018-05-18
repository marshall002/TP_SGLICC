<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageInicio.master" AutoEventWireup="true" CodeFile="inicio.aspx.cs" Inherits="inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">     
   
        
    <style>
        

.slider {
width : 100%;
margin:auto;

}

.slider ul {
display : flex;
padding:0;
width:1100%;

animation: cambio 70s infinite alternate;
animation-timing-function: ease-out;
}

.slider li {
width : 100%;
list-style:none;

}

.slider img {
   width : 100%;
}

       @keyframes cambio {
0% { margin-left:0; }
7.8% { margin-left:0;}

9.2% {margin-left: -100%;}
17% {margin-left: -100%;}


18.4% {margin-left: -200%;}
26.2% {margin-left: -200%;}

27.6% {margin-left: -300%;}
35.4% {margin-left: -300%;}

36.8% {margin-left: -400%;}
44.6% {margin-left: -400%;}

46% {margin-left: -500%;}
53.8% {margin-left: -500%;}

55.2% {margin-left: -600%;}
63% {margin-left: -600%;}

64.4% {margin-left: -700%;}
72.2% {margin-left: -700%;}

73.6% {margin-left: -800%;}
81.4% {margin-left: -800%;}

82.8% {margin-left: -900%;}
90.6% {margin-left: -900%;}

92% {margin-left: -1000%;}
100% {margin-left: -1000%;}
}

    </style>
     <header data-require="home" class='home-header'>

            <div class="swiper-container home-header-bg js-bgSlider">
                <div class="swiper-wrapper">
                   <div class="slider">
                   <ul>
                        <li><img src="plugins/inicio/imagenes/fondo/imagenfondo.jpg" alt="" /></li>
                        <li><img src="plugins/inicio/imagenes/fondo/imagenfondo2.jpg" alt="" /></li>
                        <li><img src="plugins/inicio/imagenes/fondo/imagenfondo3.jpg" alt="" /></li>
                        <li><img src="plugins/inicio/imagenes/fondo/imagenfondo4.jpg" alt="" /></li>
                        <li><img src="plugins/inicio/imagenes/fondo/imagenfondo5.jpg" alt="" /></li>
                        <li><img src="plugins/inicio/imagenes/fondo/imagenfondo6.jpg" alt="" /></li>
                        <li><img src="plugins/inicio/imagenes/fondo/imagenfondo7.jpg" alt="" /></li>
                        <li><img src="plugins/inicio/imagenes/fondo/imagenfondo8.jpg" alt="" /></li>
                        <li><img src="plugins/inicio/imagenes/fondo/imagenfondo9.jpg" alt="" /></li>
                        <li><img src="plugins/inicio/imagenes/fondo/imagenfondo10.jpg" alt="" /></li>
                        <li><img src="plugins/inicio/imagenes/fondo/imagenfondo11.jpg" alt="" /></li>
                   </ul>
                   </div>
                 </div>
                </div>
           
            <div class="col-xl-8 col-md-8 col-sm-8 col-lg-8" style="justify-content:center;margin-left:auto;margin-right:auto;">
                <div class="SearchWidget" >
                    <h1 class="SearchWidget-title" style="margin-top:55px;margin-left:64px;" >Encuentra terrenos ,casas, departamentos …</h1>



                    <!-- STOP DROPDOWN TABS MOBILE -->

                    <div class="row-personalizado-inicio SearchWidget-tabsContainer js-searchWidget-tabsContainer col-xl-11 col-md-11 col-sm-11 col-lg-11" style="justify-content:center;margin-left:auto;margin-right:auto;">

                        <div class="row-personalizado1-inicio SearchWidget-tabs" id="search-widget-tabs">
                            <div class="row-perso-reg SearchWidget-tab">
                                <input class="SearchWidget-tab-radio" type="radio"
                                    data-value="offer_type:buy"
                                    name="offer-type"
                                    id="buy-button" checked>
                                <label class="SearchWidget-tab-label" for="buy-button">
                                    <span>COMPRAR</span>
                                </label>
                            </div>
                            <div class="row-perso-reg SearchWidget-tab">
                                <input class="SearchWidget-tab-radio" type="radio"
                                    data-value="offer_type:rent"
                                    name="offer-type"
                                    id="rent-button">
                                <label class="SearchWidget-tab-label" for="rent-button">
                                    <span>ALQUILER</span>
                                </label>
                            </div>
                            <div class="row-perso-reg SearchWidget-tab">
                                <a href="/newdevelopments/"
                                    class="SearchWidget-tab-label"
                                    title="PROYECTOS">
                                    <span>PROYECTOS</span>
                                </a>
                            </div>
                        </div>



                        <div class="col-xl-12 col-md-12 col-sm-12 col-lg-12 SearchWidget-tabBody" style="display: block;">


                            <section class="b-suggestion-block-wrap">
                                <div class="b-suggestion-block b-suggestion-block--project">
                                    <div class="b-suggestion-head">
                                        <h2 class="suggestion-title">Realiza tu búsqueda </h2>
                                    </div>

                                    <div class="row-personalizado-inicio " style="margin-left:auto;margin-right:auto;">
                                        <div class="row-perso-reg col-xl-4 col-md-4 col-sm-4 col-lg-4">
                                            <h3 class=" caja-titulo-disrito">Por Departamento</h3>    
                                            <div>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>
                                                        <asp:DropDownList ID="ddlDepartamentos" CssClass="clase-departamentos" runat="server" OnSelectedIndexChanged="ddlDepartamentos_SelectedIndexChanged"></asp:DropDownList>
                                                    </ContentTemplate>
                                                    <Triggers>
                                                        <asp:AsyncPostBackTrigger ControlID="ddlDepartamentos" EventName="selectedindexchanged" />
                                                    </Triggers>
                                                </asp:UpdatePanel>
                                                </div>
                                        </div>

                                       
                                        <div class="row-perso-reg col-xl-4 col-md-4 col-sm-4 col-lg-4" >
                                          <h3 class="caja-titulo-disrito">Por Provincia</h3>    
                                           <div>
                                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                    <ContentTemplate>
                                                        <asp:DropDownList ID="ddlProvincias" CssClass="clase-provincias" runat="server" OnSelectedIndexChanged="ddlProvincias_SelectedIndexChanged"></asp:DropDownList>
                                                    </ContentTemplate>
                                                    <Triggers>
                                                        <asp:AsyncPostBackTrigger ControlID="ddlProvincias" EventName="selectedindexchanged" />
                                                    </Triggers>
                                                </asp:UpdatePanel>
                                                 </div>
                                        </div>



                                        <div class="row-perso-reg col-xl-4 col-md-4 col-sm-4 col-lg-4">
                                            <h3 class=" caja-titulo-disrito">Por Distrito</h3>                                           
                                                <div class="">
                                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                        <ContentTemplate>
                                                            <asp:DropDownList ID="ddlDistritos" CssClass="clase-distritos" runat="server" OnSelectedIndexChanged="ddlDistritos_SelectedIndexChanged"></asp:DropDownList>
                                                        </ContentTemplate>
                                                        <Triggers>
                                                            <asp:AsyncPostBackTrigger ControlID="ddlDistritos" EventName="selectedindexchanged" />
                                                        </Triggers>
                                                    </asp:UpdatePanel>
                                                </div>                                            
                                        </div>


                                        <div class="row-perso-reg col-xl-2 col-md-2 col-sm-2 col-lg-2" style="margin-left:auto;margin-right:auto;">
                                            <h3 class="caja-titulo-disrito"></h3>     
                                            <asp:Button ID="btnBuscar" class="btn btn-success" OnClick="btnBuscar_Click" runat="server" Text="Buscar" />
                                        </div>

                                    </div>
                                </div>
                            </section>
                        </div>

                    </div>
                </div>

            </div>
            </header>



    


         <div class="b-suggestions-property">

        <section class="b-suggestion-block-wrap">
            <div class="b-suggestion-block b-suggestion-block--project">
                <div class="b-suggestion-head">
                    <h2 class="suggestion-title" style="color:green">Últimos proyectos que tenemos para ti</h2>
                    <a href="proyectos-inmobiliarios-en-peru" class="suggestion-more">Ver más proyectos</a>
                </div>
                <div class="b-suggestion-cards">
                    <div class="js-slider-suggest">
                        <a href=" " class="b-card b-card__project">
                            <div class="b-card-tag">Proyecto</div>
                            <figure class="b-card-image b-card-image--project">
                                <img data-lazy="pages\imagenes\inmuebles\proyectos\imagen5.jpg" width="260" height="228" onerror="'https://cde.urbania.g3c.pe/default/urbania-premium.jpg'">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">MARISCAL CASTILLA PARK TOWER  - FRENTE A PARQUE -</h3>
                                <p class="b-card-subtitle">Desde S/ 365,000</p>
                                <p class="b-card-text">Lince</p>
                            </div>
                            <script type="text/javascript">
                                if (typeof eplAD4M !== "undefined") {
                                    eplAD4M("BoxProyecto1")
                                }
                            </script>
                        </a>
                        <a href=" " class="b-card b-card__project">
                            <div class="b-card-tag">Proyecto</div>
                            <figure class="b-card-image b-card-image--project">
                                <img data-lazy="pages\imagenes\inmuebles\proyectos\imagen6.jpg" width="260" height="228" onerror="'https://cde.urbania.g3c.pe/default/urbania-premium.jpg'"></figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Condominio La Campiña</h3>
                                <p class="b-card-subtitle">Desde S/ 221,067</p>
                                <p class="b-card-text">Santiago De Surco</p>
                            </div>
                            <script type="text/javascript">
                                if (typeof eplAD4M !== "undefined") {
                                    eplAD4M("BoxProyecto2")
                                }
                            </script>
                        </a>
                        <a href="" class="b-card b-card__project">
                            <div class="b-card-tag">Proyecto</div>
                            <figure class="b-card-image b-card-image--project">
                                <img data-lazy="pages\imagenes\inmuebles\proyectos\imagen7.jpg" width="260" height="228" onerror="'https://cde.urbania.g3c.pe/default/urbania-premium.jpg'"></figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">LEVEL -Vive en Jesús María Gold</h3>
                                <p class="b-card-subtitle">Desde S/ 307,956</p>
                                <p class="b-card-text">Jesus Maria</p>
                            </div>
                            <script type="text/javascript">
                                if (typeof eplAD4M !== "undefined") {
                                    eplAD4M("BoxProyecto3")
                                }
                            </script>
                        </a>
                        <a href="" class="b-card b-card__project">
                            <div class="b-card-tag">Proyecto</div>
                            <figure class="b-card-image b-card-image--project">
                                <img data-lazy="pages\imagenes\inmuebles\proyectos\imagen8.jpg" width="260" height="228" onerror="'https://cde.urbania.g3c.pe/default/urbania-premium.jpg'"></figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Edificio San Borja cerca a Chacarilla Calle 24 Desde US$. 265,000 DEPARTAMENTO DE 132 DE AREA TECHADA  02 ESTA</h3>
                                <p class="b-card-subtitle">Desde US$ 265,000</p>
                                <p class="b-card-text">San Borja</p>
                            </div>
                            <script type="text/javascript">
                                if (typeof eplAD4M !== "undefined") {
                                    eplAD4M("BoxProyecto4")
                                }
                            </script>
                        </a>
                    </div>
                </div>
            </div>
        </section>
             
            



     <section class="b-suggestion-block-wrap">
            <div class="b-suggestion-block b-suggestion-block--announcement">
                <div class="b-suggestion-head">
                    <h2 class="suggestion-title" style="color:green">Inmueble destacados en venta</h2>
                    <a href="venta-de-propiedades-en-peru" class="suggestion-more">Ver más inmuebles</a>
                </div>
                <div class="b-suggestion-cards">
                    <div class="js-slider-suggest">
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\13.jpg" width="260" height="183" data-error="/resize/494018/avisos/3879784/home-aviso/494018_5a60acdbbec9f.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Chorrillos</h3>
                                <p class="b-card-subtitle">Desde US$ 434,350</p>
                                <p class="b-card-text">Venta de Local Industrial en Chorrillos</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\14.jpg" width="260" height="183" data-error="/resize/335694/avisos/3902148/home-aviso/335694_59e7c4a95fcaa.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">La Molina</h3>
                                <p class="b-card-subtitle">Desde US$ 2,000,000</p>
                                <p class="b-card-text">Venta de Casa en la Molina</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\15.jpg" width="260" height="183" data-error="/resize/10646/avisos/3939352/home-aviso/10646_5a10677d96ab0.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">San Isidro</h3>
                                <p class="b-card-subtitle">Desde US$ 210,000</p>
                                <p class="b-card-text">Venta de Departamento en San Isidro</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\16.jpg" width="260" height="183" data-error="/resize/552808/avisos/3988405/home-aviso/552808_5a557db44bf3c.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Huaral</h3>
                                <p class="b-card-subtitle">Desde US$ 149,000</p>
                                <p class="b-card-text">Venta de Casa de Campo en Huaral</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\17.jpg" width="260" height="183" data-error="/resize/300320/avisos/3912317/home-aviso/300320_59f2148aa7ff6.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Santiago De Surco</h3>
                                <p class="b-card-subtitle">Desde US$ 460,000</p>
                                <p class="b-card-text">Venta de Casa en Santiago de Surco</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\18.jpg" width="260" height="183" data-error="/resize/394268/avisos/3895974/home-aviso/394268_59e0e30daaa41.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">San Isidro</h3>
                                <p class="b-card-subtitle">Desde US$ 279,990</p>
                                <p class="b-card-text">Venta de Departamento Dúplex en San Isidro</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\19.jpg" width="260" height="183" data-error="/resize/600837/avisos/3993244/home-aviso/600837_5a5a4376b4431.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Santiago De Surco</h3>
                                <p class="b-card-subtitle">Desde US$ 550,000</p>
                                <p class="b-card-text">Venta de Casa en Santiago de Surco</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\20.jpg" width="260" height="183" data-error="/resize/36297/avisos/3290189/home-aviso/36297_5a173632144b9.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Cieneguilla</h3>
                                <p class="b-card-subtitle">Desde US$ 3,850,000</p>
                                <p class="b-card-text">Venta de Terreno en Cieneguilla</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\21.jpg" width="260" height="183" data-error="/resize/497831/avisos/3989596/home-aviso/497831_5a5fc6c73cd7f.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">San Miguel</h3>
                                <p class="b-card-subtitle">Desde US$ 114,000</p>
                                <p class="b-card-text">Venta de Departamento en San Miguel</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\22.jpg" width="260" height="183" data-error="/resize/590556/avisos/4001600/home-aviso/590556_5a64aa0352895.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Ica</h3>
                                <p class="b-card-subtitle">Desde US$ 75,000</p>
                                <p class="b-card-text">Venta de Terreno Residencial en Ica</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\23.jpg" width="260" height="183" data-error="/resize/201980/avisos/3950746/home-aviso/201980_5a1d98e98e98c.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Santiago De Surco</h3>
                                <p class="b-card-subtitle">Desde US$ 362,500</p>
                                <p class="b-card-text">Venta de Departamento en Santiago de Surco</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\venta\24.jpg" width="260" height="183" data-error="/resize/402026/avisos/3942283/home-aviso/402026_5a147fa8298af.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">La Victoria</h3>
                                <p class="b-card-subtitle">Desde US$ 10,000</p>
                                <p class="b-card-text">Venta de Local Comercial en la Victoria</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <section class="b-suggestion-block-wrap">
            <div class="b-suggestion-block b-suggestion-block--announcement">
                <div class="b-suggestion-head">
                    <h2 class="suggestion-title" style="color:green">Inmueble destacados en alquiler</h2>
                    <a href="alquiler-de-propiedades-en-peru" class="suggestion-more">Ver más inmuebles</a>
                </div>
                <div class="b-suggestion-cards">
                    <div class="js-slider-suggest">
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\11.jpg" width="260" height="183" data-error="/resize/578463/avisos/3838509/home-aviso/578463_599eda9a2f329.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">San Isidro</h3>
                                <p class="b-card-subtitle">Desde US$ 400</p>
                                <p class="b-card-text">Alquiler de Departamento en San Isidro</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\12.jpg" width="260" height="183" data-error="/resize/77075/avisos/3250283/home-aviso/77075_5a278e556481e.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Lince</h3>
                                <p class="b-card-subtitle">Desde S/ 1,600</p>
                                <p class="b-card-text">Alquiler de Departamento en Lince</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\13.jpg" width="260" height="183" data-error="/resize/127639/avisos/3884422/home-aviso/127639_59d3fe5483e88.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Miraflores</h3>
                                <p class="b-card-subtitle">Desde US$ 15,120</p>
                                <p class="b-card-text">Alquiler de Local Comercial en Miraflores</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\14.jpg" width="260" height="183" data-error="/resize/127589/avisos/3920831/home-aviso/127589_59fbfc85aa825.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Miraflores</h3>
                                <p class="b-card-subtitle">Desde US$ 1,200</p>
                                <p class="b-card-text">Alquiler de Departamento en Miraflores</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\15.jpg" width="260" height="183" data-error="/resize/372231/avisos/3940390/home-aviso/372231_5a12f13b20c4f.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">San Borja</h3>
                                <p class="b-card-subtitle">Desde US$ 650</p>
                                <p class="b-card-text">Alquiler de Departamento en San Borja</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\16.jpg" width="260" height="183" data-error="/resize/600546/avisos/3988558/home-aviso/600546_5a561155298af.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">San Isidro</h3>
                                <p class="b-card-subtitle">Desde US$ 400</p>
                                <p class="b-card-text">Alquiler de Departamento en San Isidro</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\17.jpg" width="260" height="183" data-error="/resize/563174/avisos/3997905/home-aviso/563174_5a5fc554c451b.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Santiago De Surco</h3>
                                <p class="b-card-subtitle">Desde US$ 1,300</p>
                                <p class="b-card-text">Alquiler de Departamento en Santiago de Surco</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\18.jpg" width="260" height="183" data-error="/resize/566128/avisos/3989642/home-aviso/566128_5a56b185b1da4.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Miraflores</h3>
                                <p class="b-card-subtitle">Desde US$ 1,250</p>
                                <p class="b-card-text">Alquiler de Departamento en Miraflores</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\19.jpg" width="260" height="183" data-error="/resize/546750/avisos/3983109/home-aviso/546750_5a4f18aac3a90.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Magdalena Del Mar</h3>
                                <p class="b-card-subtitle">Desde US$ 700</p>
                                <p class="b-card-text">Alquiler de Departamento en Magdalena del Mar</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\20.jpg" width="260" height="183" data-error="/resize/54017/avisos/3932052/home-aviso/54017_5a088a488bd3d.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">San Isidro</h3>
                                <p class="b-card-subtitle">Desde US$ 1,400</p>
                                <p class="b-card-text">Alquiler de Departamento en San Isidro</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\21.jpg" width="260" height="183" data-error="/resize/537045/avisos/3975688/home-aviso/537045_5a3d871dca3e6.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">Jesus Maria</h3>
                                <p class="b-card-subtitle">Desde S/ 2,350</p>
                                <p class="b-card-text">Alquiler de Departamento en Jesus Maria</p>
                            </div>
                        </a>
                        <a href="" class="b-card">
                            <figure class="b-card-image b-card-image--announcement">
                                <img data-lazy="pages\imagenes\inmuebles\alquiler\22.jpg" width="260" height="183" data-error="/resize/372231/avisos/3955471/home-aviso/372231_5a21d8af9322c.jpeg">
                            </figure>
                            <div class="b-card-information">
                                <h3 class="b-card-title">San Borja</h3>
                                <p class="b-card-subtitle">Desde US$ 600</p>
                                <p class="b-card-text">Alquiler de Departamento en San Borja</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
       </div>

            <script>


                               

                                    (function ($) {
                                        $.get = function (key) {
                                            key = key.replace(/[\[]/, '\\[');
                                            key = key.replace(/[\]]/, '\\]');
                                            var pattern = "[\\?&]" + key + "=([^&#]*)";
                                            var regex = new RegExp(pattern);
                                            var url = unescape(window.location.href);
                                            var results = regex.exec(url);
                                            if (results === null) {
                                                return null;
                                            } else {
                                                return results[1];
                                            }
                                        }
                                    })(jQuery);

                                   
                                  
                                    var token = $.get("token");

                                    if (token !== null) {
                                        $.ajax({
                                            type: "POST",
                                            //url: "inicio.aspx/comprobardocumento",
                                            url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/comprobartoken")%>',
                                            data: '{token: "' + token + '" }',
                                            dataType: 'JSON',
                                            contentType: "application/json; charset=utf-8",
                                            success: function (res) {
                                                if (res.d) {
                                                    var tokensacado = res.d;
                                                    //alert(token);
                                                    $.ajax({
                                                        type: "POST",
                                                        //url: "inicio.aspx/comprobardocumento",
                                                        url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/activarcuentaportoken")%>',
                                                        data: '{tokensacado: "' + tokensacado + '" }',
                                                        dataType: 'JSON',
                                                        contentType: "application/json; charset=utf-8",
                                                        success: function (res2) {
                                                            $('<audio id="cuenta_activada"><source src="notify.ogg" type="audio/ogg"><source src="/pages/audio/exito.mp3" " type="audio/mpeg"><source src="notify.wav" type="audio/wav"></audio>').appendTo('body');
                                                            $('#cuenta_activada')[0].play();
                                                            swal({
                                                                title: "Cuenta activada exitosamente!",
                                                                button: "Cerrar!",

                                                            }).then(function () {
                                                                // Redirect the user
                                                                window.location.href = "inicio.aspx";
                                                                //console.log('The Ok Button was clicked.');

                                                            });
                                                        }
                                                    });
                                                }
                                                else {
                                                    $.ajax({
                                                        type: "POST",
                                                        //url: "inicio.aspx/comprobardocumento",
                                                        url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/TokenYaUsado")%>',
                                                        data: '{token: "' + token + '" }',
                                                        dataType: 'JSON',
                                                        contentType: "application/json; charset=utf-8",
                                                        success: function (res3) {
                                                            if (res3.d) {
                                                                $('<audio id="token_ya_usado"><source src="notify.ogg" type="audio/ogg"><source src="/pages/audio/error.mp3" " type="audio/mpeg"><source src="notify.wav" type="audio/wav"></audio>').appendTo('body');
                                                                $('#token_ya_usado')[0].play();
                                                                swal({                                                                   
                                                                    title: "Esta cuenta ya fue activada!",                                                                    
                                                                    button: "Cerrar!",

                                                                }).then(function () {
                                                                    // Redirect the user
                                                                    window.location.href = "inicio.aspx";
                                                                    //console.log('The Ok Button was clicked.');

                                                                });
                                                            }
                                                               
                                                            }
                                                       
                                                    });
                                                }

                                            }
                                        });
                                    }



                                    var tokenparacorreonuevo = $.get("token");
                                    var activarcorreonuevo = $.get("activarcorreo");
                                    var cancelarcorreonuevo = $.get("cancelarcorreo");
                                    var correonuevodeurl = $.get("correo");
                                    if (activarcorreonuevo !== null) {
                                        $.ajax({
                                            type: "POST",
                                            //url: "inicio.aspx/comprobardocumento",
                                            url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/comprobartokendecorreonuevo")%>',
                                            data: '{activarcorreonuevo: "' + activarcorreonuevo + '" , tokenparacorreonuevo : "' + tokenparacorreonuevo + '" }',
                                            dataType: 'JSON',
                                            contentType: "application/json; charset=utf-8",
                                            success: function (res) {
                                                if (res.d) {
                                                    var tokensacado = res.d;

                                                    //alert(token);
                                                    $.ajax({
                                                        type: "POST",
                                                        //url: "inicio.aspx/comprobardocumento",
                                                        url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/activarcorreonuevo")%>',
                                                        data: '{tokensacado: "' + tokensacado + '" , correonuevo:"' + correonuevodeurl + '" }',
                                                        dataType: 'JSON',
                                                        contentType: "application/json; charset=utf-8",
                                                        success: function (res2) {
                                                            $('<audio id="correo_cambiado"><source src="notify.ogg" type="audio/ogg"><source src="/pages/audio/exito.mp3" " type="audio/mpeg"><source src="notify.wav" type="audio/wav"></audio>').appendTo('body');
                                                            $('#correo_cambiado')[0].play();
                                                            swal({
                                                                title: "Correo cambiado exitosamente!",
                                                                button: "Cerrar!",

                                                            }).then(function () {
                                                                // Redirect the user
                                                                window.location.href = "inicio.aspx";
                                                                //console.log('The Ok Button was clicked.');

                                                            });
                                                        }
                                                    });
                                                }
                                                else {
                                                    $.ajax({
                                                        type: "POST",
                                                        //url: "inicio.aspx/comprobardocumento",
                                                        url: '<%=ResolveUrl("~/pages/seguridad/validar-informacion.aspx/comprobarcorreoyacambiado")%>',
                                                        data: '{token: "' + tokenparacorreonuevo + '" }',
                                                        dataType: 'JSON',
                                                        contentType: "application/json; charset=utf-8",
                                                        success: function (res3) {
                                                            if (res3.d) {
                                                                $('<audio id="correo_ya_cambiado"><source src="notify.ogg" type="audio/ogg"><source src="/pages/audio/error.mp3" " type="audio/mpeg"><source src="notify.wav" type="audio/wav"></audio>').appendTo('body');
                                                                $('#correo_ya_cambiado')[0].play();
                                                                swal({
                                                                    title: "Ya confirmaste el cambio de tu correo!",
                                                                    button: "Cerrar!",

                                                                }).then(function () {
                                                                    // Redirect the user
                                                                    window.location.href = "inicio.aspx";
                                                                    //console.log('The Ok Button was clicked.');

                                                                });
                                                            }
                                                        }
                                                    });
                                                }

                                            }
                                        });
                                    }


                                


                                var yOSON = {
                                    "action": "index",
                                    "page": "home",
                                    //"baseHost": "https://urbania.pe",
                                    //"cssStaticHost": "https://urbania.pe/static/atomic/css/",
                                    //"jsStaticHost": "https://urbania.pe/static/atomic/js/",
                                    "statHost": "https://urbania.pe/static/atomic/",
                                    //"eHost": "https://urbania.pe/static/elements/",
                                    "statVers": "?201801162212",
                                    "AppCore": {},
                                    //"urlTemplates": {
                                    //    ubigeo: "https://urbania.pe/buscar/OPERATION_TYPE_REPLACE-de-PROPERTY_TYPE_REPLACE-en-UBIGEO_REPLACE",
                                    //    freeSearch: "https://urbania.pe/buscar/propiedades?freeSearch=FREE_SEARCH_REPLACE",
                                    //    inputEmpty: "https://urbania.pe/buscar/OPERATION_TYPE_REPLACE-de-PROPERTY_TYPE_REPLACE",
                                    //},
                                    "urlParts": {
                                        typeOperation: "venta",
                                        typeProperty: "departamento"
                                    },
                                    "redirect": {
                                        url: "",
                                        active: ""
                                    },
                                    "idUsuario": 0
                                };
            </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

