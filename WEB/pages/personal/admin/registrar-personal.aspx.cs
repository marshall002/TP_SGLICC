using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using CTR;
using DTO;
using System.Data;
using System.Web.Services;

using System.Configuration;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Web.Script.Services;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

public partial class pages_personal_admin_registrar_personal : System.Web.UI.Page
{
    DaoDepartamento da_departamento = new DaoDepartamento();
    DaoProvincia da_provincia = new DaoProvincia();
    DaoDistrito da_distrito = new DaoDistrito();

    DataTable Tabla;
    private CtrNotificacion ctrNotificacion;
    string confirmadocorreo = "";
    string confirmadodocumento = "";

    DtoPersona dto_persona = new DtoPersona();
    CtrPersona ctr_persona = new CtrPersona();

    CtrPersonal ctr_personal = new CtrPersonal();
    DaoPersonal dao_personal = new DaoPersonal();

    CtrNotificacion ctr_notificacion = new CtrNotificacion();
    DtoNotificacion dto_notificacion = new DtoNotificacion();

    protected void Page_Load(object sender, EventArgs e)
    {
        Correo_existe.Text = "";
        Documento_existe.Attributes.Add("style", "DISPLAY: none");
        Correo_existe.Attributes.Add("style", "DISPLAY: none");
        ApagarTimer.Attributes.Add("style", "DISPLAY: none");

        
        //txtCorreo.Attributes.Add("onKeyUp", "validacion(this)");
        //ScriptManager.RegisterClientScriptBlock(UpdatePanel4, this.GetType(), "script", "popup(); ", true);

        //ScriptManager.RegisterClientScriptBlock(this.UpdatePanel1,this.GetType(), "script", "popup();", true);

        //ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "RegistroCompleto();", true);

        //ScriptManager.RegisterClientScriptBlock(UpdatePanel1, this.GetType(), "script", "alert('Hi');", true);

        //MensajeCorreoDefault();


        img_personal.ImageUrl = "~/pages/imagenes/paginas/personal.png";

        if (!IsPostBack)
        {
            CargarPerfilesPersonal();
            CargarDepartamentos();
            CargarProvincias();
            CargarDistritos();
            ddlDepartamentos.Visible = true;
            ddlProvincias.Visible = false;
            ddlDistritos.Visible = false;
            ddlDepartamentos.AutoPostBack = true;
            ddlProvincias.AutoPostBack = true;
            ddlDistritos.AutoPostBack = true;
            volver1.Visible = false;
            volver2.Visible = false;
            //ddlTipoCargo.AutoPostBack = true;
        }
    }


    static SqlConnection conexion = new SqlConnection("data source=(local); initial catalog=BD_SGLTCC; integrated security=SSPI;");

    [WebMethod]
    [ScriptMethod]
    public static string comprobarcorreo(string correo)
    {
        string SQL = "select correo from Persona where correo = '" + correo + "'";
        DataTable DATA = new DataTable();
        SqlDataAdapter DTA = new SqlDataAdapter(SQL, conexion);
        DTA.Fill(DATA);
        if (DATA.Rows.Count > 0)
        {
            return DATA.Rows[0].ItemArray[0].ToString();
        }
        return "";
    }

    [WebMethod]
    [ScriptMethod]
    public static string comprobardocumento(string documento)
    {
        string SQL = "select dni from Persona where dni = '" + documento + "'";
        DataTable DATA = new DataTable();
        SqlDataAdapter DTA = new SqlDataAdapter(SQL, conexion);
        DTA.Fill(DATA);
        if (DATA.Rows.Count > 0)
        {
            return DATA.Rows[0].ItemArray[0].ToString();
        }
        return "";
    }

    public void CargaDefaultPorUpdatePanel() //solo se llama a esta carga cuando la session completado esta en si
    {
        CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
        ddlDepartamentos.Visible = false;
        ddlProvincias.Visible = false;
        ddlDistritos.Visible = true;
        volver1.Visible = false;
        volver2.Visible = true;
        ddlDistritos.SelectedValue = Session["Distrito"].ToString();
        Session["visible2"] = 2;
        Session["llave2"] = 1;
        Session["completado"] = "si";
    }

    private void CargarDepartamentos()
    {
        ddlDepartamentos.DataSource = da_departamento.ListarDepartamentos();
        ddlDepartamentos.DataTextField = "nombre";
        ddlDepartamentos.DataValueField = "id_departamento";
        ddlDepartamentos.DataBind();
        ddlDepartamentos.Items.Insert(0, new ListItem("Seleccione un Departamento", "0"));
    }

    private void CargarProvincias()
    {
        ddlProvincias.DataSource = da_provincia.ListarProvincias();
        ddlProvincias.DataTextField = "nombre";
        ddlProvincias.DataValueField = "id_provincia";
        ddlProvincias.DataBind();
        ddlProvincias.Items.Insert(0, new ListItem("Seleccione una Provincia", "0"));
    }
    private void CargarDistritos()
    {
        ddlDistritos.DataSource = da_distrito.ListarDistritos();
        ddlDistritos.DataTextField = "nombre";
        ddlDistritos.DataValueField = "id_distrito";
        ddlDistritos.DataBind();
        ddlDistritos.Items.Insert(0, new ListItem("Seleccione un Distrito", "0"));
    }

    private void CargarProvinciaDeDepartamento(int codDepartamento)
    {

        ddlProvincias.DataSource = da_provincia.getProvincias(int.Parse(ddlDepartamentos.SelectedValue));
        ddlProvincias.DataTextField = "nombre";
        ddlProvincias.DataValueField = "id_provincia";
        ddlProvincias.DataBind();
        ddlProvincias.Items.Insert(0, new ListItem("Seleccione una Provincia", "0"));

    }

    private void CargarDistritosDeDepartamento(int codDepartamento)
    {
        ddlDistritos.DataSource = da_distrito.getDistritosDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
        ddlDistritos.DataTextField = "nombre";
        ddlDistritos.DataValueField = "id_distrito";
        ddlDistritos.DataBind();
        ddlDistritos.Items.Insert(0, new ListItem("Seleccione un Distrito", "0"));

    }

    private void CargarDistritosDeProvincia(int codProvincia)
    {
        ddlDistritos.DataSource = da_distrito.getDistritos(int.Parse(ddlProvincias.SelectedValue));
        ddlDistritos.DataTextField = "nombre";
        ddlDistritos.DataValueField = "id_distrito";
        ddlDistritos.DataBind();
        ddlDistritos.Items.Insert(0, new ListItem("Seleccione un Distrito", "0"));

    }

    public void CargarPerfilesPersonal()
    {
        ddlTipoCargo.DataSource = ctr_personal.Ctr_ListarPefilesPersonal();
        ddlTipoCargo.DataTextField = "descripcion";
        ddlTipoCargo.DataValueField = "id_perfil";
        ddlTipoCargo.DataBind();
        ddlTipoCargo.Items.Insert(0, new ListItem("Seleccione un Cargo", "0"));
    }
    protected void ddlDepartamentos_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (int.Parse(ddlDepartamentos.SelectedValue) < 1)
        {
            CargarDepartamentos();
            CargarProvincias();
            CargarDistritos();
            ddlDepartamentos.Visible = true;
            ddlProvincias.Visible = false;
            ddlDistritos.Visible = false;
            volver1.Visible = false;
            volver2.Visible = false;
            Session["comprobar_drop"] = 0;
            Session["Departamento"] = 0;
            Session["Provincia"] = 0;
            Session["Distrito"] = 0;
            Session["visible1"] = "destruido";
            Session["visible2"] = "destruido";

        }
        else
        {

            Session["comprobar_drop"] = 2;
            Session["Departamento"] = int.Parse(ddlDepartamentos.SelectedValue);
            CargarProvinciaDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
            //CargarDistritosDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
            ddlDepartamentos.Visible = false;
            ddlProvincias.Visible = true;
            ddlDistritos.Visible = false;
            volver1.Visible = true;
            Session["Provincia"] = 0; // si elijo un nuevo depatamento , reinicio esta session para que no se quede con el anterior guardado
            Session["Distrito"] = 0;  // si elijo un nuevo depatamento , reinicio esta session para que no se quede con el anterior guardado
        }
    }

    protected void ddlProvincias_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (int.Parse(ddlProvincias.SelectedValue) < 1)
        {
            //CargarDistritosDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
            CargarProvinciaDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
            ddlDepartamentos.Visible = false;
            ddlProvincias.Visible = true;
            ddlDistritos.Visible = false;
            volver1.Visible = true;
            volver2.Visible = false;
            Session["comprobar_drop"] = 2;
            //Session["Departamento"] = 0;
            Session["Provincia"] = 0;
            Session["Distrito"] = 0;
            Session["visible2"] = "destruido"; // aqui cambio la sesión de pase , asi evito que cuando seleecione Seleecione una Provincia y presiono Registrar , ya no me lleve al drop de Distrito

        }
        else
        {
            CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
            ddlDepartamentos.Visible = false;
            ddlProvincias.Visible = false;
            ddlDistritos.Visible = true;
            volver1.Visible = false;
            volver2.Visible = true;
            Session["comprobar_drop"] = 3;
            Session["Provincia"] = int.Parse(ddlProvincias.SelectedValue);
            Session["Distrito"] = 0; // Si yo escojo una nueva provincia , distrito se tiene que reiniciar para que no se queda con el anterior guardado
        }
    }

    protected void ddlDistritos_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (int.Parse(ddlDistritos.SelectedValue) < 1)
        {
            //CargarDistritosDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
            CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
            ddlDepartamentos.Visible = false;
            ddlProvincias.Visible = false;
            ddlDistritos.Visible = true;
            volver1.Visible = false;
            volver2.Visible = true;
            Session["comprobar_drop"] = 3;
            Session["Distrito"] = 0;

        }
        else
        {
            ddlDepartamentos.Visible = false;
            ddlProvincias.Visible = false;
            ddlDistritos.Visible = true;
            volver1.Visible = false;
            volver2.Visible = true;
            Session["comprobar_drop"] = 3;
            Session["Distrito"] = int.Parse(ddlDistritos.SelectedValue);
            Session["completado"] = "si";
        }


    }
    protected void btnRegresar_Click(object sender, EventArgs e)
    {

    }

    protected void ddlTipoCargo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    //ddlDepartamentos.SelectedValue = Session["Departamento"].ToString();
    //ddlProvincias.SelectedValue = Session["Provincia"].ToString();

    protected void volver1_Click(object sender, EventArgs e)
    {

        ddlDepartamentos.Visible = true;
        ddlProvincias.Visible = false;
        ddlDistritos.Visible = false;
        volver1.Visible = false;
        Session["comprobar_drop"] = 2;
        Session["visible1"] = 1;

    }

    protected void volver2_Click(object sender, EventArgs e)
    {
        ddlDepartamentos.Visible = false;
        ddlProvincias.Visible = true;
        ddlDistritos.Visible = false;
        volver1.Visible = true;
        volver2.Visible = false;
        Session["comprobar_drop"] = 3;
        Session["visible2"] = 1;

        Session["completado"] = "no";

    }

    public void Verificar1()
    {
        if ((int)Session["validar_correo_o_dni"] == 0)
        {
            if (ctr_persona.CtrconsultarPersonaPorCorreo(Request.Form["txtCorreo"]))
            {
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "CorreoYaExiste();", true);
                ddlDepartamentos.Visible = true;
                ddlProvincias.Visible = false;
                ddlDistritos.Visible = false;
                volver1.Visible = false;
                volver2.Visible = false;

            }
            else if (ctr_persona.CtrConsultarDocumentoPersona(int.Parse(Request.Form["txtDocumento"])))
            {
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "DocumentoYaExiste();", true);
                ddlDepartamentos.Visible = true;
                ddlProvincias.Visible = false;
                ddlDistritos.Visible = false;
                volver1.Visible = false;
                volver2.Visible = false;
                //Session["validar_correo_o_dni"] = 1;

            }
        }
    }
    public void VerificarCorreo_y_Documento()
    {
        CargaDefaultPorUpdatePanel();
        if (Request.Form["txtCorreo"] != "")
        {
            if (ctr_persona.CtrconsultarPersonaPorCorreo(Request.Form["txtCorreo"]))
            {
                CargaDefaultPorUpdatePanel();
                //ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "DocumentoYaExiste();", true);
                Correo_existe.Text = "Si existe";
            }
            else
            {
                Correo_existe.Text = "No existe";
            }
        }
        CargaDefaultPorUpdatePanel();
        if (Request.Form["txtDocumento"] != "")
        {
            CargaDefaultPorUpdatePanel();
            if (ctr_persona.CtrConsultarDocumentoPersona(int.Parse(Request.Form["txtDocumento"])))
            {
                Documento_existe.Text = "Si existe";
                //ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "DocumentoYaExiste();", true);
            }
            else
            {
                Documento_existe.Text = "No existe";
            }
        }
    }


    public void ValidarDepartamentosProvinciasDistritos()
    {
        if ((int)Session["comprobar_drop"] == 2)  //Esto significa que estoy en el drop de Provincias
        {
            if ((int)Session["llave"] == 0) //quiere decir que no eh apretado el boton de volver1 , esto es para cuando presionar Registrar estando en el drop provincias cuando aun no elijo ninguno , se quede ahi y no avance
            {
                if ((int)Session["visible1"] != 1) //quiere decir que no eh apretado el boton de volver1 , esto es para cuando presionar Registrar estando en el drop provincias cuando aun no elijo ninguno , se quede ahi y no avance
                {
                    ddlProvincias.SelectedValue = Session["Provincia"].ToString();
                    ddlDepartamentos.Visible = false;
                    ddlProvincias.Visible = true;
                    ddlDistritos.Visible = false;
                    volver1.Visible = true;
                    volver2.Visible = false;
                    Session["comprobar_drop"] = 2;
                }
                else // quiere decir si aprete el boton volver1
                {
                    if ((int)Session["visible1"] == 1) // ahora pregunto si por si acaso eh presionado ya el boton volver1
                    {
                        CargarProvinciaDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
                        ddlDepartamentos.Visible = false;
                        ddlProvincias.Visible = true;
                        ddlDistritos.Visible = false;
                        volver1.Visible = true;
                        volver2.Visible = false;
                        ddlProvincias.SelectedValue = Session["Provincia"].ToString();
                        Session["comprobar_drop"] = 2;
                        //Session["visible1"] = 2;
                        Session["llave"] = 1;
                    }
                }
            }
            else
            {
                if ((int)Session["visible2"] == 1) // ahora pregunto si por si acaso eh presionado ya el boton volver2
                {
                    CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
                    ddlDepartamentos.Visible = false;
                    ddlProvincias.Visible = false;
                    ddlDistritos.Visible = true;
                    volver1.Visible = false;
                    volver2.Visible = true;
                    //ddlDistritos.SelectedValue = Session["Distrito"].ToString();
                    Session["comprobar_drop"] = 3;
                    Session["visible2"] = 2;
                    Session["llave"] = 0;
                }
                else
                {
                    CargarProvinciaDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
                    ddlDepartamentos.Visible = false;
                    ddlProvincias.Visible = true;
                    ddlDistritos.Visible = false;
                    volver1.Visible = true;
                    volver2.Visible = false;
                    ddlProvincias.SelectedValue = Session["Provincia"].ToString();
                    Session["comprobar_drop"] = 2;
                    Session["llave"] = 0;
                }
            }
        }

        if ((int)Session["comprobar_drop"] == 3)
        {
            if ((int)Session["llave2"] == 0)
            {
                if ((int)Session["visible2"] == 1) // aca digo si presione el Boton volver 2 ,osea si presione de volver de Distritos a Provincia
                {
                    //entonces haré esto
                    CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
                    ddlDepartamentos.Visible = false;
                    ddlProvincias.Visible = false;
                    ddlDistritos.Visible = true;
                    volver1.Visible = false;
                    volver2.Visible = true;
                    ddlDistritos.SelectedValue = Session["Distrito"].ToString();
                    Session["visible2"] = 2;
                    Session["llave2"] = 1;
                }
                else
                {
                    CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
                    ddlDepartamentos.Visible = false;
                    ddlProvincias.Visible = false;
                    ddlDistritos.Visible = true;
                    volver1.Visible = false;
                    volver2.Visible = true;
                    ddlDistritos.SelectedValue = Session["Distrito"].ToString();
                    Session["visible2"] = 2;
                    Session["llave2"] = 1;
                }
            }
            else
            {
                CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
                ddlDepartamentos.Visible = false;
                ddlProvincias.Visible = false;
                ddlDistritos.Visible = true;
                volver1.Visible = false;
                volver2.Visible = true;
                ddlDistritos.SelectedValue = Session["Distrito"].ToString();
                Session["visible2"] = 2;
                Session["llave2"] = 2;
            }
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

    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        
        //creado por royer
        if ((string)Session["completado"] == "no") //Quiere decir que aun no eh seleccionado Departamentos , Provincias y Distritos , necesito elegir un Distrito al final , para que completado sea si
        {

            if ((int)Session["comprobar_drop"] == 2)  //Esto significa que estoy en el drop de Provincias y que solo puedo entrar hasta esta sección
            {

                if ((int)Session["llave"] == 0) //quiere decir que no eh apretado el boton de volver1 , esto es para cuando presionar Registrar estando en el drop provincias cuando aun no elijo ninguno , se quede ahi y no avance
                {

                    if ((int)Session["visible1"] != 1) //quiere decir que no eh apretado el boton de volver1 , esto es para cuando presione Registrar estando en el drop provincias cuando aun no elijo ninguno , se quede ahi y no avance
                    {
                        ddlProvincias.SelectedValue = Session["Provincia"].ToString();
                        ddlDepartamentos.Visible = false;
                        ddlProvincias.Visible = true;
                        ddlDistritos.Visible = false;
                        volver1.Visible = true;
                        volver2.Visible = false;
                        Session["comprobar_drop"] = 2;
                    }
                    else // quiere decir que si aprete el boton volver1
                    {
                        if ((int)Session["visible1"] == 1) // ahora pregunto si por si acaso eh presionado ya el boton volver1 
                        {   //Quiere decir que estoy en Departamentos y si presiono Registrar solo mostrare Provincias
                            CargarProvinciaDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
                            ddlDepartamentos.Visible = false;
                            ddlProvincias.Visible = true;
                            ddlDistritos.Visible = false;
                            volver1.Visible = true;
                            volver2.Visible = false;
                            ddlProvincias.SelectedValue = Session["Provincia"].ToString();
                            Session["comprobar_drop"] = 2;
                            //Session["visible1"] = 2;
                            Session["llave"] = 1; //Aca doy llave para que Ingrese a Distritos , Ya que como presione Volver1 , quiere decir que tal vez eh vuelto de Distritos a Provincias y de Provincias a departamento , asi que doy pase para preguntarle abajo si por si acaso presione volver2
                        }
                    }
                }
                else
                {
                    if ((int)Session["visible2"] == 1) // ahora pregunto si por si acaso antes de presionar volver1 ya habia presionado el boton volver2
                    { //Si de verdad ya habia presionado volver2 , entonces quiere decir que ya habia estado en Distritos , entonces podre acceder nuevamente ahi al presionar Registrar
                        CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
                        ddlDepartamentos.Visible = false;
                        ddlProvincias.Visible = false;
                        ddlDistritos.Visible = true;
                        volver1.Visible = false;
                        volver2.Visible = true;
                        //ddlDistritos.SelectedValue = Session["Distrito"].ToString();
                        Session["comprobar_drop"] = 3;
                        Session["visible2"] = 2;
                        Session["llave"] = 0;
                    }
                    else
                    {   //De  lo contrario si no presione volver2 en ningun momento , entonces quiere decir que solo estaré en Provincias
                        CargarProvinciaDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
                        ddlDepartamentos.Visible = false;
                        ddlProvincias.Visible = true;
                        ddlDistritos.Visible = false;
                        volver1.Visible = true;
                        volver2.Visible = false;
                        ddlProvincias.SelectedValue = Session["Provincia"].ToString();
                        Session["comprobar_drop"] = 2; //Para indicar que estoy en Provincias y solo puedo estar en la sección provincias
                        Session["llave"] = 0; //La llave la vuelvo a poner en 0 para que todo regrese a la normalidad , como si nunca presione volver2 ni volver1
                    }
                }
            }

            if ((int)Session["comprobar_drop"] == 3)
            {
                if ((int)Session["llave2"] == 0)
                {
                    if ((int)Session["visible2"] == 1) // aca digo si presione el Boton volver2 ,osea si presione de volver de Distritos a Provincia
                    {
                        //entonces podre volver a Distritos y muestro
                        CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
                        ddlDepartamentos.Visible = false;
                        ddlProvincias.Visible = false;
                        ddlDistritos.Visible = true;
                        volver1.Visible = false;
                        volver2.Visible = true;
                        ddlDistritos.SelectedValue = Session["Distrito"].ToString();
                        Session["visible2"] = 2;
                        Session["llave2"] = 1; //cambio la llave2 a valor 1 para indicar que el boton volver2 ya fue usado
                        Session["completado"] = "si"; //esto significa que ya escoji departamento , una provincia y un distrito
                    }
                    else
                    {
                        //De lo contrario si visible2 no existe, quiere decir que no eh apretado el boton Volver2 , asi que estaría en Distritos y muestro
                        CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
                        ddlDepartamentos.Visible = false;
                        ddlProvincias.Visible = false;
                        ddlDistritos.Visible = true;
                        volver1.Visible = false;
                        volver2.Visible = true;
                        ddlDistritos.SelectedValue = Session["Distrito"].ToString();
                        Session["visible2"] = 2; //elimino visible2 para que se resetee
                        Session["llave2"] = 1; //cambio la llave2 a valor 1 para indicar que el boton volver2 ya fue usado
                        Session["completado"] = "si"; //esto significa que ya escoji departamento , una provincia y un distrito
                    }
                }
                else
                {
                    CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
                    ddlDepartamentos.Visible = false;
                    ddlProvincias.Visible = false;
                    ddlDistritos.Visible = true;
                    volver1.Visible = false;
                    volver2.Visible = true;
                    ddlDistritos.SelectedValue = Session["Distrito"].ToString();
                    Session["visible2"] = 2; //elimino visible2 para que se resetee
                    Session["llave2"] = 2; //elimino la variable llave2
                    Session["completado"] = "si";
                }
            }
        }
        else
        {
            VerificarCorreo_y_Documento();
            if (int.Parse(Request.Form["verificado"]) != 1)
            {
                VerificarCorreo_y_Documento();

            }
            else if (((int.Parse(Request.Form["verificado"]) == 1) && Documento_existe.Text == "No existe") && Correo_existe.Text == "No existe")
            {
                CargaDefaultPorUpdatePanel();
               
                DtoPersonal dto_personal = new DtoPersonal();
                CtrPersonal ctr_personal = new CtrPersonal();
               
                string doc = Request.Form["txtDocumento"];               
                
                Random rnd = new Random();
                int numero_aleatorio = rnd.Next(1000, 10001);
                string contra_final_no_encriptada = String.Concat(doc,numero_aleatorio);
                string contra_final_encriptada = Helper.EncodePassword(String.Concat(doc,numero_aleatorio));
                Session["clave_por_email"] = contra_final_no_encriptada;

                dto_personal.nombres = Request.Form["txtNombres"];
                dto_personal.apellidos = Request.Form["txtApellidos"];
                dto_personal.direccion = Request.Form["txtDireccion"];
                dto_personal.id_distrito = ddlDistritos.SelectedIndex;
                dto_personal.celular = int.Parse(Request.Form["txtCelular"]);
                dto_personal.telefono = int.Parse(Request.Form["txtTelefono"]);
                dto_personal.correo = Request.Form["txtCorreo"];
                dto_personal.dni = Request.Form["txtDocumento"];
                dto_personal.fecha_nac = Convert.ToDateTime(Request.Form["txtFechaNacimiento"]);
                dto_personal.id_perfil = ddlTipoCargo.SelectedIndex;
                dto_personal.clave = contra_final_encriptada;
                dto_personal.img_ruta = "default-perfil.png";
                dto_personal.id_estado = 2;
                dto_personal.fecha_registro = System.DateTime.Now;
                dto_personal.logo = "noimage.png";

                ctr_personal.Ctr_Registrar_Nuevo_Personal(dto_personal);
                Enviar_Notificacion_y_Correo();

                //Esta notificación es para el Administrador que lo registro en el sistema
                dto_notificacion.fecha_emision = System.DateTime.Now;
                dto_notificacion.clase_visto = "novisto";
                dto_notificacion.flg_visto = "0";
                dto_notificacion.titulo_color = "text-success";
                dto_notificacion.titulo = "Registro Exitoso";
                dto_notificacion.mensaje = "Registraste a : " + Request.Form["txtNombres"] + " para ser parte del personal";
                dto_notificacion.imagen = "mihogar-peru.png";
                dto_notificacion.flg_noti_mostrado = "0";
                dto_notificacion.id_persona = int.Parse(Session["id_persona"].ToString());

                ctr_notificacion.Ctr_InsertarNotificaciones(dto_notificacion);
                Session["clave_por_email"] = "";
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "RegistroCompleto();", true);
                //ClientScript.RegisterStartupScript(GetType(), "mostrarMensaje", "RegistroCompleto();", true);
            }
        }
    }

    public void Enviar_Notificacion_y_Correo()
    {
        DtoNotificacion dto_notificacion2 = new DtoNotificacion();
        CtrNotificacion ctr_notificacion2 = new CtrNotificacion();
        CtrPersona ctr_persona2 = new CtrPersona();

        ctr_persona2.Ctr_SeleccionarUltimaPersonaRegistrada(dto_persona);
        int id_persona = dto_persona.id_persona;
        //Esta notificación es para la persona que fue registrada en el sistema por el admin
        dto_notificacion2.fecha_emision = System.DateTime.Now;
        dto_notificacion2.clase_visto = "novisto";
        dto_notificacion2.flg_visto = "0";
        dto_notificacion2.titulo_color = "text-success";
        dto_notificacion2.titulo = "Registro Exitoso";
        dto_notificacion2.mensaje = "Hola : " + Request.Form["txtNombres"] + " ya eres parte del personal en MiHogar-Perú";
        dto_notificacion2.imagen = "mihogar-peru.png";
        dto_notificacion2.flg_noti_mostrado = "0";
        dto_notificacion2.id_persona = id_persona;

        ctr_notificacion2.Ctr_InsertarNotificaciones(dto_notificacion2);
   

        /*-------------------------MENSAJE DE CORREO----------------------*/

        string nombres = Request.Form["txtNombres"];
        string apellidos = Request.Form["txtApellidos"];      
        string correo = Request.Form["txtCorreo"];
        string documento = Request.Form["txtDocumento"];
        string contra_email = Session["clave_por_email"].ToString();

        System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();
        mmsg.To.Add(correo);
        mmsg.Subject = "Ya eres parte del personal en MiHogar-Perú";
        mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

        //Direccion de correo electronico que queremos que reciba una copia del mensaje
        //mmsg.Bcc.Add("destinatariocopia@servidordominio.com"); //Opcional

        mmsg.Body = "<div style='margin-top:20px; margin-bottom:20px; margin-right:auto; margin-left:auto; border-style:groove; position:relative; min-height:1px; padding-right:15px; " +
        "padding-left:15px; -webkit-box-flex:0; -webkit-flex: 0 0 50%; -ms-flex: 0 0 50%; flex: 0 0 50%; max-width:50%;'>" +
        "<div style='-webkit-box-flex:1; -webkit-flex:1 1 auto; -ms-flex:1 1 auto; flex:1 1 auto; padding:1.25rem'>" +
        "<div style='background-color:limegreen; margin-top:7px; margin-bottom:17px; padding-top:30px; padding-bottom:30px; align-items:center;'>" +
        "<h4 style='font-size:45px; margin-top:5px; margin-bottom:5px; color:#fff; text-align:center; font-weight:800;'> MiHogar-Perú </h4>" +
        "</div>" +

        "<p style ='margin-bottom:0;'> Hola " + nombres + " " + apellidos + " , ya formas parte del personal administrativo en MiHogar-Perú , tus datos registrados fueron:</p>" +
        "<div style='margin-top:10px; margin-bottom:10px; margin-right:auto; margin-left:auto; position:relative; width:100%; min-height:1px; padding-right:15px; padding-left:15px; -webkit-box-flex:0;" +
        "-webkit-flex:0 0 33.333333 %; -ms-flex:0 0 33.333333 %; flex:0 0 33.333333 %; max-width:33.333333 %; -webkit-box-flex: 0;'>" +

        "<p><span style='color:red;'> Correo : </span> " + correo + "</p>"+
        "<p><span style='color:red;'> Dni : </span> " + documento + "</p>" +
        "<p><span style='color:red;'> Clave : </span> " + contra_email + "</p>" +
        "</div>" +

        "<p style='margin-bottom:0'>" +
        "Tus demas datos de información los podras ver ingresando a la página en el panel de usuario y en ´´Mi Información" +        
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














