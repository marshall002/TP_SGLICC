using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using DAO;
using CTR;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
using System.Web.Script.Services;

public partial class MasterPagePanel : System.Web.UI.MasterPage
{
    DtoNotificacion dto_notificacion = new DtoNotificacion();
    DtoNotificacion dto_notificacion2 = new DtoNotificacion();
    CtrNotificacion ctr_notificacion = new CtrNotificacion();

    DtoCliente dto_cliente = new DtoCliente();
    CtrCliente ctr_cliente = new CtrCliente();

    protected void Page_Load(object sender, EventArgs e)
    {
        titulo.Attributes.Add("style", "DISPLAY: none");
        fecha_emision.Attributes.Add("style", "DISPLAY: none");
        mensaje.Attributes.Add("style", "DISPLAY: none");
        flg_noti_mostrado.Attributes.Add("style", "DISPLAY: none");
        imagen.Attributes.Add("style", "DISPLAY: none");

        try
        {
            string usuario = Session["id_persona"].ToString();
            if (!IsPostBack)
            {
                int perfil = int.Parse(Session["id_perfil"].ToString());
                switch (perfil)
                {
                    case Constante.ROL_ADMINISTRADOR:
                        perfil_administrador();
                        break;
                    case Constante.ROL_JEFE_DE_VENTAS:
                        perfil_jefe_de_ventas();
                        break;
                    case Constante.ROL_JEFE_DE_COMPRAS:
                        perfil_jefe_de_compras();
                        break;
                    case Constante.ROL_PROVEEDOR:
                        perfil_proveedor();
                        break;
                    case Constante.ROL_CLIENTE:
                        perfil_cliente();
                        break;
                    case Constante.ROL_JEFE_DE_PROYECTOS:
                        perfil_jefe_de_proyectos();
                        break;
                    case Constante.ROL_JEFE_DE_FINANZAS:
                        perfil_jefe_de_finanzas();
                        break;
                    default:
                        Session.Clear();
                        Session.Abandon();
                        Response.Redirect("~/inicio.aspx");
                        break;
                }
                //divName.InnerHtml = Session["nombre"].ToString();
                //divEmail.InnerHtml = Session["correo"].ToString();
            }
            cargarNotificaciones(usuario);
            Bienvenida();
        }
        catch
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/inicio.aspx");
        }



        if (!this.IsPostBack)
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            string usuario = Session["id_persona"].ToString();
            cargarNotificaciones(usuario);
        }


    }
    //<li class="breadcrumb-item active">My Dashboard</li>
    public void Bienvenida()
    { 
        string minombre = Session["nombres"].ToString();
       string html2 = string.Format(@"
         <li class='breadcrumb-item active'>"+minombre+@"</li>");

        this.Literal3.Text = html2;
    }
    public void perfil_administrador()
    {

        string html = string.Format(@"                 
                    <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MiInformacion' data-parent='#exampleAccordion'>
                            <i class='material-icons'>account_circle</i><span class='nav-link-text'> Mi Información</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MiInformacion'>
                            <li>
                                <a class='nav-link' href='../../../pages/general/gestionar-perfil.aspx'> Gestionar Perfil</a>
                            </li>                            
                        </ul>
                    </li>

                    <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#collapseComponents0' data-parent='#exampleAccordion'>
                            <i class='material-icons'>content_paste</i><span class='nav-link-text'> Gestionar Usuarios</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='collapseComponents0'>
                            <li>
                                <a class='nav-link' href='../../../pages/personal/admin/gestionar-clientes.aspx'> Gestionar Clientes</a>
                            </li>
                            <li>
                                 <a class='nav-link' href='../../../pages/personal/admin/gestionar-personal.aspx'> Gestionar Personal</a>
                            </li>   
                        </ul>
                    </li>

                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Charts'>
                        <a class='nav-link' href='academia.aspx'>
                            <i class='material-icons'>settings</i>
                            <span>Configuración</span>
                        </a>
                    </li>
                    ");
        this.Literal1.Text = html;



    }

    public void perfil_jefe_de_ventas()
    {

        string html = string.Format(@"
                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MiInformacion' data-parent='#exampleAccordion'>
                            <i class='material-icons'>account_circle</i><span class='nav-link-text'> Mi Información</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MiInformacion'>
                            <li>
                                <a class='nav-link' href='../../../pages/general/gestionar-perfil.aspx'> Gestionar Perfil</a>
                            </li>                            
                        </ul>
                    </li>

                    <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#GestionarVentas' data-parent='#exampleAccordion'>
                            <i class='material-icons'>accessibility</i><span class='nav-link-text'>Supervisar Avisos</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='GestionarVentas'>
                            <li>
                                <a class='nav-link' href='../../../pages/personal/jefe_de_ventas/gestionar-avisos.aspx'> Gestionar Avisos Inmobiliarios</a>
                            </li> 
                             <li>
                                <a class='nav-link' href='../../../pages/personal/jefe_de_ventas/gestionar-proyectos.aspx'> Gestionar Proyectos Inmobiliarios</a>
                            </li>
                            
                        </ul>
                    </li>

                    
                     <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#c' data-parent='#exampleAccordion'>
                            <i class='material-icons'>accessibility</i><span class='nav-link-text'> Reporte de Ventas</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='c'>
                            <li>
                                <a class='nav-link' href='~/pages/cliente/inquilino/inquilino.aspx'> Reporte de Ventas</a>
                            </li>  
                            
                        </ul>
                    </li>
                   

                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Charts'>
                        <a class='nav-link' href='academia.aspx'>
                            <i class='material-icons'>settings</i>
                            <span>Configuración</span>
                        </a>
                    </li>
                    ");
        this.Literal1.Text = html;
    }

    public void perfil_jefe_de_compras()
    {
       
        string html = string.Format(@"
                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MiInformacion' data-parent='#exampleAccordion'>
                            <i class='material-icons'>account_circle</i><span class='nav-link-text'> Mi Información</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MiInformacion'>
                            <li>
                                <a class='nav-link' href='../../../pages/general/gestionar-perfil.aspx'> Gestionar Perfil</a>
                            </li>                            
                        </ul>
                    </li>

                    <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#Actividad' data-parent='#exampleAccordion'>
                            <i class='material-icons'>accessibility</i><span class='nav-link-text'> Actividad</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='Actividad'>                           
                            <li>
                                <a class='nav-link' href='/pages/personal/jefe_de_compras/Supervisar-Compra-Inmueble.aspx'> Supervisar Compras de Inmueble</a>
                            </li>                            
                        </ul>
                    </li>

                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Charts'>
                        <a class='nav-link' href='academia.aspx'>
                            <i class='material-icons'>settings</i>
                            <span>Configuración</span>
                        </a>
                    </li>
                    ");
        this.Literal1.Text = html;

    }

    public void perfil_proveedor()
    {

        string html = string.Format(@"
                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MiInformacion' data-parent='#exampleAccordion'>
                            <i class='material-icons'>account_circle</i><span class='nav-link-text'> Mi Información</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MiInformacion'>
                            <li>
                                <a class='nav-link' href='../../../pages/general/gestionar-perfil.aspx'> Gestionar Perfil</a>
                            </li>                            
                        </ul>
                    </li>

                    <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#Actividad' data-parent='#exampleAccordion'>
                            <i class='material-icons'>accessibility</i><span class='nav-link-text'> Actividad</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='Actividad'>                           
                            <li>
                                <a class='nav-link' href='/pages/personal/proveedor/gestionar-proyectos-inmobiliarios.aspx'> Gestionar Proyectos Inmobiliarios</a>
                            </li>                            
                        </ul>
                    </li>

                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Charts'>
                        <a class='nav-link' href='academia.aspx'>
                            <i class='material-icons'>settings</i>
                            <span>Configuración</span>
                        </a>
                    </li>
                    ");
        this.Literal1.Text = html;
    }


    public void perfil_jefe_de_proyectos()
    {

        string html = string.Format(@"
                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MiInformacion' data-parent='#exampleAccordion'>
                            <i class='material-icons'>account_circle</i><span class='nav-link-text'> Mi Información</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MiInformacion'>
                            <li>
                                <a class='nav-link' href='../../../pages/general/gestionar-perfil.aspx'> Gestionar Perfil</a>
                            </li>                            
                        </ul>
                    </li>

                    <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#Actividad' data-parent='#exampleAccordion'>
                            <i class='material-icons'>accessibility</i><span class='nav-link-text'> Actividad</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='Actividad'>                           
                            <li>
                                <a class='nav-link' href='/pages/personal/jefe_de_proyectos/gestionar-proveedores.aspx'> Gestionar Proveedores</a>
                            </li> 
                             <li>
                                <a class='nav-link' href='/pages/personal/jefe_de_proyectos/administrar-servicios-de-construccion.aspx'> Administrar Servicios de Construccion</a>
                            </li> 
                            <li>
                                <a class='nav-link' href='/pages/personal/jefe_de_proyectos/seguimiento-de-proveedor.aspx'> Seguimiento de Proveedor/a>
                            </li> 
                        </ul>
                    </li>

                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Charts'>
                        <a class='nav-link' href='academia.aspx'>
                            <i class='material-icons'>settings</i>
                            <span>Configuración</span>
                        </a>
                    </li>
                    ");
        this.Literal1.Text = html;
    }

    public void perfil_jefe_de_finanzas()
    {

        string html = string.Format(@"
                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MiInformacion' data-parent='#exampleAccordion'>
                            <i class='material-icons'>account_circle</i><span class='nav-link-text'> Mi Información</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MiInformacion'>
                            <li>
                                <a class='nav-link' href='../../../pages/general/gestionar-perfil.aspx'> Gestionar Perfil</a>
                            </li>                            
                        </ul>
                    </li>

                    <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#Actividad' data-parent='#exampleAccordion'>
                            <i class='material-icons'>accessibility</i><span class='nav-link-text'> Actividad</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='Actividad'>                           
                            <li>
                                <a class='nav-link' href='/pages/personal/jefe_de_finanzas/supervisar-finanzas.aspx'> Supervisar Finanzas</a>
                            </li>                            
                        </ul>
                    </li>

                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Charts'>
                        <a class='nav-link' href='academia.aspx'>
                            <i class='material-icons'>settings</i>
                            <span>Configuración</span>
                        </a>
                    </li>
                    ");
        this.Literal1.Text = html;
    }

    public void perfil_cliente()
    {
        InsertarTiposDeCliente();


        string html = string.Format(@"
                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MiInformacion' data-parent='#exampleAccordion'>
                            <i class='material-icons'>account_circle</i><span class='nav-link-text'> Mi Información</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MiInformacion'>
                            <li>
                                <a class='nav-link' href='../../../pages/general/gestionar-perfil.aspx'> Gestionar Perfil</a>
                            </li>                            
                        </ul>
                    </li>

                    <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#TipoPerfil' data-parent='#exampleAccordion'>
                            <i class='material-icons'>accessibility</i><span class='nav-link-text'> Tipo Perfil</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='TipoPerfil'>
                           
                            <li>
                                <a class='nav-link' href='/pages/cliente/propietario/propietario.aspx?idtipo=1'> Propietario</a>
                            </li> 
                            <li>
                                <a class='nav-link' href='/pages/cliente/empresa/empresa.aspx?idtipo=2'> Empresa</a>
                            </li> 
                        </ul>
                    </li>


                   


 <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MisActividadesVERVENTAS' data-parent='#exampleAccordion'>
                            <i class='material-icons'>local_activity</i><span class='nav-link-text'>Ver Ventas</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MisActividadesVERVENTAS'>
                            <li>
                                <a class='nav-link' href='/pages/cliente/ver-ventas-avisos-inmobiliarios.aspx'> Avisos Inmobiliarios</a>
                            </li>  

                             <li>
                                <a class='nav-link' href='/pages/cliente/ver-ventas-proyectos-inmobiliarios.aspx'> Proyectos Inmobiliarios</a>
                            </li>  
                           
                        </ul>
                    </li>


                       <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MisActividadesVERCOMPRAS' data-parent='#exampleAccordion'>
                            <i class='material-icons'>local_activity</i><span class='nav-link-text'>Ver Compras</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MisActividadesVERCOMPRAS'>
                            <li>
                                <a class='nav-link' href='/pages/cliente/ver-compras-avisos-inmobiliarios.aspx'> Avisos Inmobiliarios</a>
                            </li>  

                            <li>
                                <a class='nav-link' href='/pages/cliente/ver-compras-proyectos-inmobiliarios.aspx'> Proyectos Inmobiliarios</a>
                            </li>  
                           
                        </ul>
                    </li>

                     <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MisActividadesVERFAVORITOS' data-parent='#exampleAccordion'>
                            <i class='material-icons'>local_activity</i><span class='nav-link-text'>Ver Favoritos</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MisActividadesVERFAVORITOS'>
                            <li>
                                <a class='nav-link' href='/pages/cliente/ver-favoritos-avisos-inmobiliarios.aspx'> Avisos Inmobiliarios</a>
                            </li>  
                             <li>
                                <a class='nav-link' href='/pages/cliente/ver-favoritos-proyectos-inmobiliarios.aspx'> Proyectos Inmobiliarios</a>
                            </li>  
                           
                        </ul>
                    </li>















                    <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MisPagos' data-parent='#exampleAccordion'>
                            <i class='material-icons'>local_grocery_store</i><span class='nav-link-text'>Mis Pagos</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MisPagos'>
                            <li>
                                <a class='nav-link' href='/pages/cliente/ver-pagos.aspx?idtipo=1'> Ver Pagos</a>
                            </li>                                
                        </ul>
                    </li>


                    <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#MisServicios' data-parent='#exampleAccordion'>
                            <i class='material-icons'>home</i><span class='nav-link-text'>Servicios</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='MisServicios'>
                            <li>
                                <a class='nav-link' href='/pages/cliente/ver-pagos.aspx?idtipo=1'> Construcciones</a>
                            </li> 
                             <li>
                                <a class='nav-link' href='/pages/cliente/ver-pagos.aspx?idtipo=1'> Seguimientos</a>
                            </li> 
                        </ul>
                    </li>


                   <li class='nav-item' data-toggle='tooltip' data-placement='right' title='Charts'>
                        <a class='nav-link' href='academia.aspx'>
                            <i class='material-icons'>settings</i>
                            <span>Configuración</span>
                        </a>
                    </li>
                    ");
        this.Literal1.Text = html;

    }


    protected void bCerrarSesion_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("inicio.aspx");
    }
    protected void bPerfil_Click(object sender, EventArgs e)
    {

        Response.Redirect("GestionarPerfil.aspx");
    }

    public void InsertarTiposDeCliente()
    {
        CtrCliente ctr_cliente1 = new CtrCliente();
        int id_persona = int.Parse(Session["id_persona"].ToString());
        ctr_cliente1.Ctr_SeleccionarEstadoCliente(dto_cliente,id_persona);
        string estado_cliente = dto_cliente.estado_cliente;
        if (estado_cliente == "False")
        {
            CtrCliente ctr_cliente2 = new CtrCliente();
            dto_cliente.id_persona = int.Parse(Session["id_persona"].ToString());
            ctr_cliente2.Ctr_InsertarTipoDeCliente(dto_cliente);
        }      
        else
        {

        }
    }



    public void cargarNotificaciones(string usuario)
    {
        string bg_material = "icon-circle bg-light-green";
        string ic_material = "";
        string contenido = "";
        string fecha = "";

        CtrNotificacion c_noti = new CtrNotificacion();
        List<DtoNotificacion> lista = new List<DtoNotificacion>();
        string html = string.Format(@"");
        lista = c_noti.listarNotificacionesByPersona(usuario);
        SqlDataSource1.SelectParameters["idper"].DefaultValue = Session["id_persona"].ToString();
        DataView dataw = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

        if (dataw != null) count_notificaciones.Text = dataw[0].Row[0].ToString();

        if (lista.Count != 0)
        {
            for (int i = 0; i < lista.Count; i++)
            {

                html += string.Format(@" 
                    <ul class='list-group'>
                    <li class='list-group-item " + lista[i].clase_visto + @" '>
                    
                    <div class='notificaciones '>
                    
                    <div class='imagen-noti col-lg-1 col-md-1 col-sm-1 col-xs-1'>
                    <img height='48' width='50' src='"+Constante.URL_IMAGEN_NOTI+lista[i].imagen+@" '>


                    </div>
                   
                    <div class='col-lg-11 col-md-11 col-sm-11 col-xs-11 no-palabras-fuera-de-notificaciones'>                    
                    <a class='dropdown-item' href='#'>              
                    <span class='" + lista[i].titulo_color+ @"'>                
                    <strong><i class=''></i>" + lista[i].titulo + @"</strong>              
                    </span> , hora :
                    <span class='small float - right text - muted'>" + lista[i].fecha_emision + @" </span>
                    <div class='no-palabras-fuera-de-notificaciones dropdown - message small'>" + lista[i].mensaje + @" </div>
                    </a>                    
                    </div>




                    </div>
                    </li>
                    </ul> ");

            }
        }
        this.LiteralNotificaciones.Text = html;
    }

    static SqlConnection conexion = new SqlConnection("data source=(local); initial catalog=BD_SGLTCC; integrated security=SSPI;");

    [WebMethod]
    [ScriptMethod]
    public static string ListaRNotificaciones(int id_persona)
    {
        string SQL = "SELECT TOP 5 " +
       " n.id_notificacion, " +
       " n.fecha_emision, " +
       " n.clase_visto, " +
       " n.flg_visto,       " +
       " n.titulo_color,   " +      
       " n.titulo, " +
       " n.mensaje, " +
       " n.imagen, " +
       " n.flg_noti_mostrado, " +
       " n.id_persona " +
       " FROM Persona p, " +
       " Notificacion n " +
       " WHERE n.id_persona = p.id_persona " +
       " AND p.id_persona = '" +id_persona+ "' ORDER BY n.id_notificacion DESC";

        DataTable DATA = new DataTable();
        SqlDataAdapter DTA = new SqlDataAdapter(SQL, conexion);
        DTA.Fill(DATA);
        if (DATA.Rows.Count > 0)
        {
            return DATA.Rows[0].ItemArray[0].ToString();
        }
        return "";
    }

    //    .text-muted Text styled with class "text-muted"	Try it
    //.text-primary Text styled with class "text-primary"	Try it
    //.text-success Text styled with class "text-success"	Try it
    //.text-info Text styled with class "text-info"	Try it
    //.text-warning Text styled with class "text-warning"	Try it
    //.text-danger
    protected void CerrarSesion_ServerClick(object sender, EventArgs e)
    {

        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/inicio.aspx");
    }

    protected void Timer1_count_notificaciones_Tick(object sender, EventArgs e)
    {
        string usuario = Session["id_persona"].ToString();
        cargarNotificaciones(usuario);
    }

    protected void Timer2_listar_notificaciones_Tick(object sender, EventArgs e)
    {
        string usuario = Session["id_persona"].ToString();
        cargarNotificaciones(usuario);
    }

    protected void Timer3_mostrar_notificacion_Tick(object sender, EventArgs e)
    {

        Panel3.Visible = true;
        ctr_notificacion.Ctr_ConsultarUltimoFLG_NOTI_MOSTRADO_Notificacion(dto_notificacion2, int.Parse(Session["id_persona"].ToString()));
        string flg_noti_mostrado2 = dto_notificacion2.flg_noti_mostrado;

        if (flg_noti_mostrado2 == "False")
        {
            Panel1.Visible = true;
            ctr_notificacion.Ctr_MostrarUltimaNotificacion(dto_notificacion, int.Parse(Session["id_persona"].ToString()));
            int id_notificacion = int.Parse(dto_notificacion.id_notificacion);
            titulo.Text = dto_notificacion.titulo;
            fecha_emision.Text = Convert.ToString(dto_notificacion.fecha_emision);
            mensaje.Text = dto_notificacion.mensaje;
            imagen.Text = Constante.URL_IMAGEN_NOTI+dto_notificacion.imagen;
            flg_noti_mostrado.Text = dto_notificacion.flg_noti_mostrado;

            Session["flg_noti_mostrado"] = "1"; //mando 1 para que se actualize el flg_noti_mostrado a True
            ctr_notificacion.Ctr_ActualizarFLG_NOTI_MOSTRADO(Convert.ToString(Session["flg_noti_mostrado"].ToString()), id_notificacion);

        }
        else
        {
            titulo.Text = "";
            fecha_emision.Text = "";
            mensaje.Text = "";
            flg_noti_mostrado.Text = "";
            imagen.Text = "";
        }
    }
}