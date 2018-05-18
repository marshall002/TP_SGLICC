using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Timers;
using DTO;
using DAO;
using CTR;
using System.Web.Services;
using System.Web.Script.Services;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

public partial class MasterPageInicio : System.Web.UI.MasterPage
{
    DtoPersona dto_persona = new DtoPersona();
    CtrPersona ctr_persona = new CtrPersona();

    DtoNotificacion dto_notificacion = new DtoNotificacion();
    CtrNotificacion ctr_notificacion = new CtrNotificacion();

    DtoCliente dto_cliente = new DtoCliente();
    CtrCliente ctr_cliente = new CtrCliente();
   


    protected void Page_Load(object sender, EventArgs e)
    {
        Documento_existe.Attributes.Add("style", "DISPLAY: none");
        Correo_existe.Attributes.Add("style", "DISPLAY: none");
        ApagarTimer.Attributes.Add("style", "DISPLAY: none");


        if (Session["id_persona"] == null)
        {
            ctr_persona = new CtrPersona();          
            string html = string.Format(@"
               <div id='iniciar_sesion' class='btn-group' role='group'>
                   <button class='btn btn-primary' type='button' id='iniciar_sesion' data-toggle='modal' data-target='#IniciarSesion' aria-haspopup='true' aria-expanded='false' runat='server' >
                    <i class='material-icons'> perm_identity</i> Iniciar Sesión / Registrarse
                   </button>                               
               </div> '");
            this.Literal1.Text = html;
        }
        else
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
                    default:
                        Session.Clear();
                        Session.Abandon();
                        Response.Redirect("../../inicio.aspx");
                        break;
                }
                //divName.InnerHtml = Session["nombre"].ToString();
                //divEmail.InnerHtml = Session["correo"].ToString();
            }
        }
    }

    public void perfil_administrador()
    {
        string nombre = Session["nombres"].ToString();
        //Esto es para la página de inicio salga el loguin ya iniciado
        string html = string.Format(@"
               <div class='btn-group' role='group'> 
                               <button class='btn btn-primary' type='button' id='iniciar_sesion' data-toggle='dropdown' aria-haspopup='true' class='btn btn-primary dropdown-toggle'>
                                <i class='material-icons'> perm_identity</i> Bienvenido , <b>" + nombre + @"</b> </button> 
                            <div class='dropdown-menu' aria-labelledby='iniciar_sesion'>
                                    <a class='dropdown-item' href='pages/main.aspx'> Mi Panel</a>
                                    <a class='dropdown-item' href='#'> Mis Mensajes</a>
                                    <a class='dropdown-item' href='#'> Salir</a>
                                </div>
                            </div>  ");

        this.Literal1.Text = html;
    }

    public void perfil_jefe_de_ventas()
    {
        string nombre = Session["nombres"].ToString();
        //Esto es para la página de inicio salga el loguin ya iniciado
        string html = string.Format(@"
               <div class='btn-group' role='group'> 
                               <button class='btn btn-primary' type='button' id='iniciar_sesion' data-toggle='dropdown' aria-haspopup='true' class='btn btn-primary dropdown-toggle'>
                                <i class='material-icons'> perm_identity</i> Bienvenido , <b>" + nombre + @"</b> </button> 
                            <div class='dropdown-menu' aria-labelledby='iniciar_sesion'>
                                    <a class='dropdown-item' href='pages/main.aspx'> Mi Panel</a>
                                    <a class='dropdown-item' href='#'> Mis Mensajes</a>
                                    <a class='dropdown-item' href='#'> Salir</a>
                                </div>
                            </div>  ");

        this.Literal1.Text = html;
    }

    public void perfil_jefe_de_compras()
    {
        string nombre = Session["nombres"].ToString();
        //Esto es para la página de inicio salga el loguin ya iniciado
        string html = string.Format(@"
               <div class='btn-group' role='group'> 
                               <button class='btn btn-primary' type='button' id='iniciar_sesion' data-toggle='dropdown' aria-haspopup='true' class='btn btn-primary dropdown-toggle'>
                                <i class='material-icons'> perm_identity</i> Bienvenido , <b>" + nombre + @"</b> </button> 
                            <div class='dropdown-menu' aria-labelledby='iniciar_sesion'>
                                    <a class='dropdown-item' href='pages/main.aspx'> Mi Panel</a>
                                    <a class='dropdown-item' href='#'> Mis Mensajes</a>
                                    <a class='dropdown-item' href='#'> Salir</a>
                                </div>
                            </div>  ");

        this.Literal1.Text = html;
    }

    public void perfil_proveedor()
    {
        string nombre = Session["nombres"].ToString();
        //Esto es para la página de inicio salga el loguin ya iniciado
        string html = string.Format(@"
               <div class='btn-group' role='group'> 
                               <button class='btn btn-primary' type='button' id='iniciar_sesion' data-toggle='dropdown' aria-haspopup='true' class='btn btn-primary dropdown-toggle'>
                                <i class='material-icons'> perm_identity</i> Bienvenido , <b>" + nombre + @"</b> </button> 
                            <div class='dropdown-menu' aria-labelledby='iniciar_sesion'>
                                    <a class='dropdown-item' href='pages/main.aspx'> Mi Panel</a>
                                    <a class='dropdown-item' href='#'> Mis Mensajes</a>
                                    <a class='dropdown-item' href='#'> Salir</a>
                                </div>
                            </div>  ");

        this.Literal1.Text = html;
    }

    public void perfil_cliente()
    {
        string nombre = Session["nombres"].ToString();
        //Esto es para la página de inicio salga el loguin ya iniciado
        string html = string.Format(@"
               <div class='btn-group' role='group'> 
                               <button class='btn btn-primary' type='button' id='iniciar_sesion' data-toggle='dropdown' aria-haspopup='true' class='btn btn-primary dropdown-toggle'>
                                <i class='material-icons'> perm_identity</i> Bienvenido , <b>" + nombre + @"</b> </button> 
                            <div class='dropdown-menu' aria-labelledby='iniciar_sesion'>
                                    <a class='dropdown-item' href='pages/main.aspx'> Mi Panel</a>
                                    <a class='dropdown-item' href='#'> Mis Mensajes</a>
                                    <a class='dropdown-item' href='#'> Salir</a>
                                </div>
                            </div>  ");

        this.Literal1.Text = html;
    }




    public void CerrarSesion()
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("inicio.aspx");
    }
    protected void Entrar_Click(object sender, EventArgs e)
    {
       
        Session["paso"] = "";
        try
        {
            //if (string.IsNullOrEmpty(dni_o_email))
            //    throw new Exception("Ingrese su Dni o Email");
            //if (string.IsNullOrEmpty(clave))
            //    throw new Exception("Ingrese su contrase&ntilde;a");
            DtoPersona dto_persona = new DtoPersona();
            DtoUsuario dto_usuario = new DtoUsuario();            

            
            string dni_o_email = Request.Form["txtDni_email"];
            //string clave = Helper.EncodePassword(string.Concat(Request.Form["txtDni_email"].Trim(),Request.Form["txtClave"].Trim()));
            string clave = Helper.EncodePassword(Request.Form["txtClave"].Trim());
            //string clave = Request.Form["txtClave"].Trim();

            dto_persona.dni_o_correo = dni_o_email;
            dto_persona.clave = clave;
            
            ctr_persona.CtrConsultarLogeo(dto_persona, dto_usuario);
            //int var = dto_personal.estado;
            //int var1 = dto_persona.id_persona;
            //string var2 = dto_persona.nombres;
            
            if (dto_persona.id_estado.Equals(Constante.ESTADO_CUENTA_ACTIVADO))
            {
                Session["id_persona"] = dto_persona.id_persona;
                Session["nombres"] = dto_persona.nombres;
                Session["apellidos"] = dto_persona.apellidos;
                //Session["fecha_nac"] = dto_persona.fecha_nac;
                Session["dni"] = dto_persona.dni;
                //Session["celular"] = dto_persona.celular;
                //Session["telefono"] = dto_persona.telefono;
                //Session["direccion"] = dto_persona.direccion;
                Session["correo"] = dto_persona.correo;
                Session["clave"] = dto_persona.clave;
                Session["img_ruta"] = dto_persona.img_ruta;
                Session["estado"] = dto_persona.id_estado;
                //Session["id_distrito"] = dto_persona.id_distrito;

                //Session["nombre_empresa"] = dto_usuario.nombre_empresa;
                //Session["ruc"] = dto_usuario.ruc;
                //Session["logo"] = dto_usuario.logo;
                Session["id_perfil"] = dto_usuario.id_perfil;
                Session["paso"] = 1;


                string script = @"<script type='text/javascript'>
                                      location.href='pages/main.aspx';
                                  </script>";
                Session["paso"] = "si";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                //error = Constante.ERROR_SUCCESS;
            }
            else if (dto_persona.id_estado.Equals(Constante.ESTADO_CUENTA_NO_ACTIVADO))
            {               
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "CuentaNoActivada();", true);
                    Session["paso"] = "";
                
            }
            else if (dto_persona.id_estado.Equals(Constante.ESTADO_CUENTA_AMONESTADO))
            {
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "CuentaAmonestada();", true);
            }
            else if (dto_persona.id_estado.Equals(Constante.ESTADO_CUENTA_SUSPENDIDO))
            {
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "CuentaSuspendida();", true);
            }
        }
        catch (Exception ex)
        {
           
        }
        //if (error != Constante.ERROR_SUCCESS)
        //{
        //    //ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "showNotification", "showNotification('" + color + "', '" + msj + "', 'bottom', 'center', null, null);", true);
        //    Response.Write("<script>alert('hola')</script>");
        //}
        //Response.Redirect("Notificaciones.asox")
    }       

    public void ValidarInformacion (int documento , string nombres , string apellidos , string correo , string contra1, string contra2)
    {


    }
    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
            if (Request.Form["txtDocumento"] != "")
            {
                if (ctr_persona.CtrConsultarDocumentoPersona(int.Parse(Request.Form["txtDocumento"])))
                {
                Session["documento"] = "Si existe";
                    //Documento_existe.Text = "Si existe";
                    //ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "DocumentoYaExiste();", true);
                }
                else
                {
                Session["documento"] = "No existe";
                //Documento_existe.Text = "No existe";
            }
            }
            if (Request.Form["txtCorreo"] != "")
            {
                if (ctr_persona.CtrconsultarPersonaPorCorreo(Request.Form["txtCorreo"]))
                {
                Session["correo_para_registro"] = "Si existe";
                //ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "CorreoYaExiste();", true);
                }
                else
                {
                Session["correo_para_registro"] = "No existe";
                //Correo_existe.Text = "No existe";
            }
            }            
        
       
          if (((int.Parse(Request.Form["verificado"]) == 1) && (string)Session["documento"] == "No existe") && (string)Session["correo_para_registro"] == "No existe")
            {
            //Registro a la persona que automáticamente se convierte en Cliente del sistema
            //string password = Helper.EncodePassword(string.Concat(Request.Form["txtCorreo"].Trim(), Request.Form["txtContra2"].Trim()));
            string password = Helper.EncodePassword(Request.Form["txtContra2"].Trim());

            string token = Helper.EncodePassword(string.Concat(Request.Form["txtDocumento"].Trim(),Request.Form["txtCorreo"].Trim(),Request.Form["txtContra2"].Trim()));           

            dto_cliente.dni = Request.Form["txtDocumento"].Trim();
            dto_cliente.nombres = Request.Form["txtNombres"];
            dto_cliente.apellidos = Request.Form["txtApellidos"];
            dto_cliente.correo = Request.Form["txtCorreo"].Trim();
            dto_cliente.clave = password;
            dto_cliente.img_ruta = "default-perfil.png";
            dto_cliente.fecha_registro = System.DateTime.Now;
            dto_cliente.logo = "noimage.png";
            dto_cliente.token = token;
            ctr_persona.Ctr_RegistrarPersona(dto_cliente);
            ctr_persona.Ctr_SeleccionarUltimaPersonaRegistrada(dto_persona);
            int id_persona_ultimo_registro = dto_persona.id_persona;

            dto_notificacion.fecha_emision = System.DateTime.Now;
            dto_notificacion.clase_visto = "novisto";
            dto_notificacion.flg_visto = "0";
            dto_notificacion.titulo_color = "text-success";           
            dto_notificacion.titulo = "Registro Exitoso";
            dto_notificacion.mensaje = "Gracias : "+Request.Form["txtNombres"]+" " +Request.Form["txtApellidos"]+" por registrarte en MiHogar-Perú";
            dto_notificacion.imagen = "mihogar-peru.png";
            dto_notificacion.flg_noti_mostrado = "0";
            dto_notificacion.id_persona = id_persona_ultimo_registro;
            ctr_notificacion.Ctr_InsertarNotificaciones(dto_notificacion);
            Session["documento"] = "destruido";
            Session["correo_para_registro"] = "destruido";
            EnviarCorreo();
            ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "RegistroCompleto();", true);
        }
     }

    internal class Helper
    {
        public static string EncodePassword(string originalPassword)
        {
            SHA1 sha1 = new SHA1CryptoServiceProvider();

            byte[] inputBytes = (new UnicodeEncoding()).GetBytes(originalPassword);
            byte[] hash = sha1.ComputeHash(inputBytes);

            return Convert.ToBase64String(hash);
        }
    }

    public void EnviarCorreo()
    {
        /*-------------------------MENSAJE DE CORREO----------------------*/
        string documento = Request.Form["txtDocumento"].Trim();
        string nombres = Request.Form["txtNombres"];
        string apellidos = Request.Form["txtApellidos"];
        string correo = Request.Form["txtCorreo"].Trim();
        string clave = Request.Form["txtContra2"].Trim();

        string token = Helper.EncodePassword(string.Concat(documento,correo,clave));
        string url = "http://localhost:14169/inicio.aspx?token="+Server.UrlEncode(token);
        System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();
        mmsg.To.Add(correo);
        mmsg.Subject = "Bienvenido a MiHogar-Perú";
        mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

        //Direccion de correo electronico que queremos que reciba una copia del mensaje
        //mmsg.Bcc.Add("destinatariocopia@servidordominio.com"); //Opcional

        mmsg.Body = "<div style='margin-top:20px; margin-bottom:20px; margin-right:auto; margin-left:auto; border-style:groove; position:relative; min-height:1px; padding-right:15px; " +
        "padding-left:15px; -webkit-box-flex:0; -webkit-flex: 0 0 50%; -ms-flex: 0 0 50%; flex: 0 0 50%; max-width:50%;'>" +
        "<div style='-webkit-box-flex:1; -webkit-flex:1 1 auto; -ms-flex:1 1 auto; flex:1 1 auto; padding:1.25rem'>" +
        "<div style='background-color:limegreen; margin-top:7px; margin-bottom:17px; padding-top:30px; padding-bottom:30px; align-items:center;'>" +
        "<h4 style='font-size:45px; margin-top:5px; margin-bottom:5px; color:#fff; text-align:center; font-weight:800;'> MiHogar-Perú </h4>" +
        "</div>" +

        "<p style ='margin-bottom:0;'> Hola " + nombres + " " + apellidos + " , gracias por haberte registrado en MiHogar-Perú , tus datos registrados fueron :</p>" +
        "<div style='margin-top:10px; margin-bottom:10px; margin-right:auto; margin-left:auto; position:relative; width:100%; min-height:1px; padding-right:15px; padding-left:15px; -webkit-box-flex:0;" +
        "-webkit-flex:0 0 33.333333 %; -ms-flex:0 0 33.333333 %; flex:0 0 33.333333 %; max-width:33.333333 %; -webkit-box-flex: 0;'>" +

        "<p><span style='color:red;'> Dni :</span> " + documento + "</p>" +
        "<p><span style='color:red;'> Correo : </span> " + correo + "</p>" +
        "<p><span style='color:red;'> Contraseña :</span> " + clave + "</p>" +
        "</div>" +

        "<p style='margin-bottom:0'>" +
        "Ahora necesitas activar tu cuenta para poder hacer uso de nuestros servicios , por favor activa tu cuenta presionando en el siguiente enlace :" +
        "<a href="+url+" style='text-decoration:none;'> ACTIVAR CUENTA </a> , gracias." +
        "</p>" +
        "<div style='margin-top:20px; padding-top:10px; padding-bottom:10px; background-color: limegreen;' >" +
        "</div>" +
        "</div>" +
        "</div> ";

        mmsg.BodyEncoding = System.Text.Encoding.UTF8;
        mmsg.IsBodyHtml = true; //Si no queremos que se envíe como HTML

        mmsg.From = new System.Net.Mail.MailAddress("mihogarperuu@gmail.com");

        /*-------------------------CLIENTE DE CORREO----------------------*/

        System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();

        cliente.Credentials =
            new System.Net.NetworkCredential("mihogarperuu@gmail.com", "elcastito");
        //Lo siguiente es obligatorio si enviamos el mensaje desde Gmail
        cliente.Port = 25;
        cliente.EnableSsl = true;

        cliente.Host = "smtp.gmail.com"; //Para Gmail "smtp.gmail.com";
        /*-------------------------ENVIO DE CORREO----------------------*/
        try
        {
            cliente.Send(mmsg);
        }
        catch (System.Net.Mail.SmtpException ex)
        {
           
        }
    }


}


