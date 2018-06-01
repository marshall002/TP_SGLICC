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
public partial class pages_MasterPageTipoCliente : System.Web.UI.MasterPage
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

                    DtoTipoCliente dto_tipo_cliente = new DtoTipoCliente();
                    dto_cliente.id_persona = int.Parse(Session["id_persona"].ToString());
                    dto_tipo_cliente.id_tipo_cliente = int.Parse(Request.QueryString["idtipo"].ToString());

                    ctr_cliente.Ctr_Saber_Que_Tipo_Cliente_es(dto_cliente, dto_tipo_cliente);


                    int tipo_cliente = dto_tipo_cliente.id_tipo_cliente;
                    
                    switch (tipo_cliente)
                    {                       
                        case Constante.PROPIETARIO:
                            propietario();
                            break;
                        case Constante.EMPRESA:
                            empresa();
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
         <li class='breadcrumb-item active'>" + minombre + @"</li>");

            this.Literal3.Text = html2;
        }
        

        public void propietario()
        {
        Session["propietario"] = 1;
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
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#Propietario' data-parent='#exampleAccordion'>
                            <i class='material-icons'>accessibility</i><span class='nav-link-text'>Propietario</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='Propietario'>
                            <li>
                                <a class='nav-link' href='/pages/cliente/propietario/gestionar-avisos.aspx?idtipo=1'>Gestionar Avisos</a>
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


        public void empresa()
        {
        Session["empresa"] =2;
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
                         <a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href ='#Proyectos' data-parent='#exampleAccordion'>
                            <i class='material-icons'>accessibility</i><span class='nav-link-text'>Empresa</span>
                        </a>
                        <ul class='sidenav - second - level collapse' id='Proyectos'>
                            <li>
                                <a class='nav-link' href='/pages/cliente/empresa/gestionar-proyectos.aspx?idtipo=2'>Gestionar Proyectos</a>
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
                    <img height='48' width='50' src='" + Constante.URL_IMAGEN_NOTI + lista[i].imagen + @" '>


                    </div>
                   
                    <div class='col-lg-11 col-md-11 col-sm-11 col-xs-11 no-palabras-fuera-de-notificaciones'>                    
                    <a class='dropdown-item' href='#'>              
                    <span class='" + lista[i].titulo_color + @"'>                
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
                imagen.Text = Constante.URL_IMAGEN_NOTI + dto_notificacion.imagen;
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
