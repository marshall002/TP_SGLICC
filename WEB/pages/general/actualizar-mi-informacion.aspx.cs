using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using DAO;
using CTR;
using System.Globalization;
using System.Drawing;
using System.IO;
using System.Security.Cryptography;
using System.Text;

public partial class pages_general_validar_mi_informacion : System.Web.UI.Page
{

    DaoDepartamento da_departamento = new DaoDepartamento();
    DaoProvincia da_provincia = new DaoProvincia();
    DaoDistrito da_distrito = new DaoDistrito();

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
        btnBotonEscondidoDeprovi.Attributes.Add("style", "DISPLAY: none");
        GuardarDepartamentoProvinciaDistrito2.Attributes.Add("style", "DISPLAY: none");
       

        try
        {
            string usuario = Session["id_persona"].ToString();
            if (usuario == null)
            {
                Response.Redirect("~inicio.aspx");
            }
            DaoPersona dao_persona = new DaoPersona();
            if (!IsPostBack)
            {
                CargarMiInformacion();

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


                if((string)Session["enviar_notificacion"] == "si")
                {
                    EnviarNotificacion();
                    Session["enviar_notificacion"] = "no";
                }


            }
        }
        catch
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/inicio.aspx");
        }
    }


    public void CargarMiInformacion()
    {
        DtoPersona dto_persona = new DtoPersona();
        DtoCliente dto_cliente = new DtoCliente();
        CtrCliente ctr_cliente = new CtrCliente();

        int edad;
        dto_persona.id_persona = int.Parse(Session["id_persona"].ToString());
        ctr_cliente.Ctr_CargarMiInformacion(dto_persona, dto_cliente);
        string[] myArray = new string[12] { dto_cliente.nombres, Convert.ToString(dto_cliente.fecha_nac.HasValue ? dto_cliente.fecha_nac.Value.ToString("dd/MM/yyyy") : "No Especificado"), dto_cliente.direccion, dto_cliente.nombre_distrito, Convert.ToString(dto_cliente.celular), String.Format("{0:###-####}", dto_cliente.telefono), dto_cliente.correo, dto_cliente.dni, dto_cliente.nombre_estado, dto_cliente.tipo_perfil, dto_cliente.nombre_empresa, Convert.ToString(dto_cliente.ruc) };
        string[] myArray2 = new string[12] { txtNombrePersona.Text, txtFechaNacimiento.Text, txtDireccion.Text, txtDepartamentoProvinciaDistrito.Text, txtCelular.Text, txtTelefono.Text, txtCorreo.Text, txtDocumento.Text, txtEstado.Text, txtTipo.Text, txtNombre_Empresa.Text, txtRuc.Text };
        int cero = 0;
        string cero2 = Convert.ToString(cero);

        for (int i = 0; i < myArray.Length; i++)
        {
            if (myArray[i] == "" || myArray[i] == null || myArray[i] == cero2 || myArray[i] == "-")
            {
                string a = "No Especificado";
                myArray2[i] = a;
            }
            else
            {
                myArray2[i] = myArray[i];
            }
        }
        //ya muy bravo ya
        int wa;
        string año1 = Convert.ToString(dto_cliente.fecha_nac.HasValue ? dto_cliente.fecha_nac.Value.ToString("yyyy") : "No Especificado");
        int? año2 = Int32.TryParse(año1, out wa) ? Int32.Parse(año1) : (int?)null;

        string mes1 = Convert.ToString(dto_cliente.fecha_nac.HasValue ? dto_cliente.fecha_nac.Value.ToString("MM") : "No Especificado");
        int? mes2 = Int32.TryParse(mes1, out wa) ? Int32.Parse(mes1) : (int?)null;

        string dia1 = Convert.ToString(dto_cliente.fecha_nac.HasValue ? dto_cliente.fecha_nac.Value.ToString("dd") : "No Especificado");
        int? dia2 = Int32.TryParse(dia1, out wa) ? Int32.Parse(dia1) : (int?)null;
        var today = DateTime.Today;
        //DateTime fechaNacimiento = new DateTime(año2.HasValue ? año2.Value : today.Year,  mes2.HasValue ? mes2.Value : today.Year, dia2.HasValue ? dia2.Value : today.Year);
        if (año1 != "No Especificado" && mes1 != "No Especificado" && dia1 != "No Especificado")
        {
            DateTime fechaNacimiento = new DateTime(año2.HasValue ? año2.Value : año2.Value, mes2.HasValue ? mes2.Value : mes2.Value, dia2.HasValue ? dia2.Value : dia2.Value);
            DateTime now = DateTime.Today;
            edad = DateTime.Today.Year - fechaNacimiento.Year;
            if (DateTime.Today < fechaNacimiento.AddYears(edad))
                edad--;
            txtFechaNacimiento.Text = myArray2[1] + "  ----> Edad : " + edad;
        }
        else
        {
            txtFechaNacimiento.Text = myArray2[1] + "  ----> Edad : ---";
        }
        img_Perfil.ImageUrl = dto_cliente.img_ruta;
        txtNombrePersona.Text = myArray2[0];
        //txtFechaNacimiento.Text = myArray2[1] + "  ----> Edad : ";
        txtDireccion.Text = myArray2[2];
        txtDepartamentoProvinciaDistrito.Text = myArray2[3];
        txtCelular.Text = myArray2[4];
        txtTelefono.Text = myArray2[5];
        txtCorreo.Text = myArray2[6];
        txtDocumento.Text = myArray2[7];
        txtEstado.Text = myArray2[8];
        txtTipo.Text = myArray2[9];
        txtNombre_Empresa.Text = myArray2[10];
        txtRuc.Text = myArray2[11];
        logo_empresa.ImageUrl = dto_cliente.logo;


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

    protected void btnGuardarInfo_Click(object sender, EventArgs e)
    {
        txtNombrePersona.Text = Request.Form["txtNombres"] + Request.Form["txtApellidos"];
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

    protected void volver1_Click(object sender, EventArgs e)
    {
        ddlDepartamentos.Visible = true;
        ddlProvincias.Visible = false;
        ddlDistritos.Visible = false;
        volver1.Visible = false;
        Session["comprobar_drop"] = 2;
        Session["visible1"] = 1;
    }

    protected void GuardarDepartamentoProvinciaDistrito_Click(object sender, EventArgs e)
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

    }

    protected void btnBotonEscondidoDeprovi_Click(object sender, EventArgs e)
    {
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

        Session["comprobar_drop"] = 0;
        Session["Departamento"] = 0;
        Session["Provincia"] = 0;
        Session["Distrito"] = 0;
        Session["visible1"] = 0;
        Session["visible2"] = 0;
        Session["llave"] = 0;
        Session["llave2"] = 0;

       
        Session["pase"] = 0;

        Session["completado"] = "no";
    }

    protected void btnoSubirImagen_Click(object sender, EventArgs e)
    {

        // Specify the path on the server to
        // save the uploaded file to.
        String savePath = @"C:\Users\Roger\Desktop\Cursos 2016-I\Taller de Gerencia de Proyectos\2018-1\1er Entregable\SGLTCC\WEB\pages\imagenes\usuarios_perfil\";


        // Append the name of the file to upload to the path.
        savePath += "270621.jpg";

        // Call the SaveAs method to save the 
        // uploaded file to the specified path.
        // This example does not perform all
        // the necessary error checking.               
        // If a file with the same name
        // already exists in the specified path,  
        // the uploaded file overwrites it.
        fuploadImagen.SaveAs(savePath);

        // Notify the user that the file was uploaded successfully.


        // Call a helper routine to display the contents
        // of the file to upload.



    }




    protected void btnActualizar_Click(object sender, EventArgs e)
    {
        //if(MandamosImagenParaActualizar.Text!="" || MandamosImagenParaActualizar.Text != null)
        // {

        // }

        //Convert.ToString(dto_cliente.fecha_nac.HasValue ? dto_cliente.fecha_nac.Value.ToString("dd/MM/yyyy") : "No Especificado")

        DtoPersona dto_persona = new DtoPersona();
        DtoUsuario dto_usuario = new DtoUsuario();
        DtoDireccion_Especifica dto_direccion_especifica = new DtoDireccion_Especifica();

        aux_DtoUsuario aux_dto_usuario = new aux_DtoUsuario();
        aux_Dto_Direccion_Especifica aux_dto_direccion_especifica = new aux_Dto_Direccion_Especifica();

        CtrUsuario ctr_usuario = new CtrUsuario();

        dto_usuario.id_persona = int.Parse(Session["id_persona"].ToString());

        string[] myArraytxt1 = new string[11] {
            MandamosImagenParaActualizar.Text,
            txtNombres_Mandado_Para_Actualizar.Text,
            txtApellidos_Mandado_Para_Actualizar.Text,
            txtDireccionEscritaOEscogida.Text,
            txtLatitud.Text,
            txtLongitud.Text,
            txtRegion.Text,
            txtCorreo_Mandado_Para_Actualizar.Text,
            txtDocumento_Mandado_Para_Actualizar.Text,
            txtImagenEmpresa_Mandar_Actualizar.Text,
            NombreEmpresa_Mandar_Actualizar.Text,

    };

        string[] myArraytxt2 = new string[1] {
            txtFechaNacimiento_Mandado_Para_Actualizar.Text,
         };

        string[] myArraytxt3 = new string[4] {
             txtId_distrito_Mandado_Para_Actualizar.Text,
             txtCelular_Mandado_Para_Actualizar.Text,
             txtTelefono_Mandado_Para_Actualizar.Text,
             Ruc_Mandar_Actualizar.Text,
         };


        string[] myArraydto1 = new string[11] {
            dto_usuario.img_ruta,
            dto_usuario.nombres,
            dto_usuario.apellidos,
            dto_usuario.direccion,
            dto_direccion_especifica.latitud,
            dto_direccion_especifica.longitud,
            dto_direccion_especifica.region,
            dto_usuario.correo,
            dto_usuario.dni,
            dto_usuario.logo,
            dto_usuario.nombre_empresa,
        };

        DateTime[] myArraydto2 = new DateTime[1] {
           aux_dto_usuario.fecha_nac,
        };

        int[] myArraydto3 = new int[4] {
           aux_dto_usuario.id_distrito,
           aux_dto_usuario.celular,
           aux_dto_usuario.telefono,
           aux_dto_usuario.ruc,
        };

        for (int i = 0; i < myArraytxt1.Length; i++)
        {
            if (myArraytxt1[i] == null || myArraytxt1[i] == "")
            {
                string a = "No Especificado";
                myArraytxt1[i] = a;
                myArraydto1[i] = myArraytxt1[i];
            }
            else
            {
                myArraydto1[i] = myArraytxt1[i];
            }
        }

        for (int j = 0; j < myArraytxt2.Length; j++)
        {
            if (myArraytxt2[j] == null || myArraytxt2[j] == "")
            {
                string a = "01-01-1900";
                myArraytxt2[j] = a;
                myArraydto2[j] = Convert.ToDateTime(myArraytxt2[j]);
            }
            else
            {
                myArraydto2[j] = Convert.ToDateTime(myArraytxt2[j]);
            }
        }

        for (int h = 0; h < myArraytxt3.Length; h++)
        {
            if (myArraytxt3[h] == null || myArraytxt3[h] == "")
            {
                string a = "0";
                myArraytxt3[h] = a;
                myArraydto3[h] = int.Parse(myArraytxt3[h]);
            }
            else
            {
                myArraydto3[h] = int.Parse(myArraytxt3[h]);
            }
        }
        dto_usuario.img_ruta = myArraydto1[0];
        dto_usuario.nombres = myArraydto1[1];
        dto_usuario.apellidos = myArraydto1[2];
        dto_usuario.direccion = myArraydto1[3];
        dto_direccion_especifica.latitud = myArraydto1[4];
        dto_direccion_especifica.longitud = myArraydto1[5];
        dto_direccion_especifica.region = myArraydto1[6];
        dto_usuario.correo = "No Especificado";
        dto_usuario.dni = myArraydto1[8];
        dto_usuario.logo = myArraydto1[9];
        dto_usuario.nombre_empresa = myArraydto1[10];

        aux_dto_usuario.fecha_nac = myArraydto2[0];

        aux_dto_usuario.id_distrito = myArraydto3[0];
        aux_dto_usuario.celular = myArraydto3[1];
        aux_dto_usuario.telefono = myArraydto3[2];
        aux_dto_usuario.ruc = myArraydto3[3];

        if (dto_usuario.img_ruta != null || dto_usuario.img_ruta != "" || dto_usuario.logo != null || dto_usuario.logo != "")
        {
            //String savePath = @"C:\Users\Roger\Desktop\Cursos 2016-I\Taller de Gerencia de Proyectos\2018-1\1er Entregable\SGLTCC\WEB\pages\imagenes\usuarios_perfil\";
            //String savePath2 = @"C:\Users\Roger\Desktop\Cursos 2016-I\Taller de Gerencia de Proyectos\2018-1\1er Entregable\SGLTCC\WEB\pages\imagenes\logo_empresas\";

            if (fuploadImagen.HasFile)
            {

                string fileName = Path.Combine(Server.MapPath("/pages/imagenes/usuarios_perfil/"), fuploadImagen.FileName);
                fuploadImagen.SaveAs(fileName);
                //savePath += fuploadImagen.FileName;
                //fuploadImagen.SaveAs(savePath);
                ctr_usuario.Ctr_ActualizarMiInformacion(dto_usuario, aux_dto_usuario, dto_direccion_especifica);
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensajeActualizacion", "ActualizadaCompleta();", true);
                img_Perfil.ImageUrl = Constante.FOTO_PERFIL + dto_usuario.img_ruta;
                //Response.AddHeader("REFRESH", "2;URL=actualizar-mi-informacion.aspx");
                //Response.Redirect("actualizar-mi-informacion.aspx");
            }

            if (fuploadImagenEmpresa.HasFile)
            {
                string fileName = Path.Combine(Server.MapPath("/pages/imagenes/logo_empresas/"), fuploadImagenEmpresa.FileName);
                fuploadImagenEmpresa.SaveAs(fileName);
                ctr_usuario.Ctr_ActualizarMiInformacion(dto_usuario, aux_dto_usuario, dto_direccion_especifica);
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensajeActualizacion", "ActualizadaCompleta();", true);
                logo_empresa.ImageUrl = Constante.URL_IMAGEN_EMPRESA + dto_usuario.logo;
            }
        }
        else
        {
            ctr_usuario.Ctr_ActualizarMiInformacion(dto_usuario, aux_dto_usuario, dto_direccion_especifica);
        }

        if (txtCorreo_Mandado_Para_Actualizar.Text!= "")
        {
            EnviarCorreo();
            Session["enviar_notificacion"] = "si";
            //Response.AddHeader("REFRESH", "1;URL=actualizar-mi-informacion.aspx");            
            Response.Redirect("actualizar-mi-informacion.aspx");
            //EnviarNotificacion();
        }

        ctr_usuario.Ctr_ActualizarMiInformacion(dto_usuario, aux_dto_usuario, dto_direccion_especifica);

        //Esto es solo para saber si mostrar el mensaje de alerta o no
        if (

        dto_usuario.img_ruta != "No Especificado" ||

        dto_usuario.nombres != "No Especificado" ||

        dto_usuario.apellidos != "No Especificado" ||

        dto_usuario.direccion != "No Especificado" ||

        dto_direccion_especifica.latitud != "No Especificado" ||

        dto_direccion_especifica.longitud != "No Especificado" ||

        dto_direccion_especifica.region != "No Especificado" ||

        aux_dto_usuario.fecha_nac != Convert.ToDateTime("01-01-1900") ||
        //dto_usuario.correo != "No Especificado" ||

        dto_usuario.dni != "No Especificado" ||

        dto_usuario.logo != "No Especificado" ||

        dto_usuario.nombre_empresa != "No Especificado" ||

        aux_dto_usuario.id_distrito != 0 ||
        aux_dto_usuario.celular != 0 ||
        aux_dto_usuario.telefono != 0 ||
        aux_dto_usuario.ruc != 0)
        {
            ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensajeActualizacion", "ActualizadaCompleta();", true);

        }
        //dto_usuario.fecha_nac= Convert.ToDateTime(txtFechaNacimiento_Mandado_Para_Actualizar.Text);        
        //dto_direccion_especifica.latitud = txtLatitud.Text;
        //dto_direccion_especifica.longitud = txtLongitud.Text;
        //dto_direccion_especifica.region = txtRegion.Text;
        //dto_usuario.direccion = txtDireccionEscritaOEscogida.Text;
        //dto_usuario.id_distrito = int.Parse(txtId_distrito_Mandado_Para_Actualizar.Text);
        //dto_usuario.celular = int.Parse(txtCelular_Mandado_Para_Actualizar.Text);
        //dto_usuario.telefono = int.Parse(txtTelefono_Mandado_Para_Actualizar.Text);
        //dto_usuario.correo = txtCorreo_Mandado_Para_Actualizar.Text;
        //dto_usuario.dni = txtDocumento_Mandado_Para_Actualizar.Text;
        //dto_usuario.logo = txtImagenEmpresa_Mandar_Actualizar.Text;
        //dto_usuario.nombre_empresa = NombreEmpresa_Mandar_Actualizar.Text;
        //dto_usuario.ruc = int.Parse(Ruc_Mandar_Actualizar.Text);

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

        DtoUsuario dto_usuario = new DtoUsuario();
        CtrUsuario ctr_usuario = new CtrUsuario();

        dto_usuario.correo = txtCorreo_Mandado_Para_Actualizar.Text;

        string correonuevo = txtCorreo_Mandado_Para_Actualizar.Text;
        

        dto_usuario.id_persona = int.Parse(Session["id_persona"].ToString());
        /*-------------------------MENSAJE DE CORREO----------------------*/
        string nombres = Session["nombres"].ToString();
        string apellidos = Session["apellidos"].ToString();
        string correoantiguo = Session["correo"].ToString();
        string activarcorreonuevo = "activarcorreonuevo";
        string cancelarcorreonuevo = "cancelarcorreonuevo";
        string token1 = Helper.EncodePassword(activarcorreonuevo);
        string token2 = Helper.EncodePassword(cancelarcorreonuevo);
        string token3 = Helper.EncodePassword(correonuevo);
        string url_activar = "http://localhost:14169/inicio.aspx?correo="+correonuevo+"&activarcorreo="+ Server.UrlEncode(token1) + "&token="+ token3 ;
        string url_cancelar = "http://localhost:14169/inicio.aspx?correo="+correonuevo+"&cancelarcorreo=" + Server.UrlEncode(token2) + "&token=" + token3;

        ctr_usuario.Ctr_Poner_Token_Por_Correo_Cambiado(dto_usuario,token3);

        System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();
            mmsg.To.Add(correoantiguo);
            mmsg.Subject = "Cambiaste tu correo en MiHogar-Perú";
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

            //Direccion de correo electronico que queremos que reciba una copia del mensaje
            //mmsg.Bcc.Add("destinatariocopia@servidordominio.com"); //Opcional

            mmsg.Body = "<div style='margin-top:20px; margin-bottom:20px; margin-right:auto; margin-left:auto; border-style:groove; position:relative; min-height:1px; padding-right:15px; " +
            "padding-left:15px; -webkit-box-flex:0; -webkit-flex: 0 0 50%; -ms-flex: 0 0 50%; flex: 0 0 50%; max-width:50%;'>" +
            "<div style='-webkit-box-flex:1; -webkit-flex:1 1 auto; -ms-flex:1 1 auto; flex:1 1 auto; padding:1.25rem'>" +
            "<div style='background-color:limegreen; margin-top:7px; margin-bottom:17px; padding-top:30px; padding-bottom:30px; align-items:center;'>" +
            "<h4 style='font-size:45px; margin-top:5px; margin-bottom:5px; color:#fff; text-align:center; font-weight:800;'> MiHogar-Perú </h4>" +
            "</div>" +

            "<p style ='margin-bottom:0;'> Hola " + nombres + " " + apellidos + " , recientemente cambiaste tu correo en MiHogar-Perú , a:</p>" +
            "<div style='margin-top:10px; margin-bottom:10px; margin-right:auto; margin-left:auto; position:relative; width:100%; min-height:1px; padding-right:15px; padding-left:15px; -webkit-box-flex:0;" +
            "-webkit-flex:0 0 33.333333 %; -ms-flex:0 0 33.333333 %; flex:0 0 33.333333 %; max-width:33.333333 %; -webkit-box-flex: 0;'>" +
            
            "<p><span style='color:red;'> Correo : </span> " + correonuevo + "</p>" +           
            "</div>" +

            "<p style='margin-bottom:0'>" +
            "Para confirmar el cambio de correo , por favor confirma el cambio presionando en el siguiente enlace :" +
            "<a href=" + url_activar + " style='text-decoration:none;'> CONFIMAR CORREO </a> , gracias." +
            "</p>" +

            "<p style='margin-bottom:0'>" +
            "De lo contrario , para cancelar el cambio de correo haslo presionando en el siguiente enlace :" +
            "<a href=" + url_cancelar + " style='text-decoration:none;'> CANCELAR CORREO </a> , gracias." +
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
        txtCorreo_Mandado_Para_Actualizar.Text = "";
    }

    public void EnviarNotificacion()
    {
        DtoNotificacion dto_notificacion = new DtoNotificacion();
        CtrNotificacion ctr_notificacion = new CtrNotificacion();
        dto_notificacion.fecha_emision = System.DateTime.Now;
        dto_notificacion.clase_visto = "novisto";
        dto_notificacion.flg_visto = "0";
        dto_notificacion.titulo_color = "text-success";
        dto_notificacion.titulo = "Confirmar cambio de correo";
        dto_notificacion.mensaje = "Hola , " + Session["nombres"].ToString() + " , para confirmar el cambio de tu correo , debes confirmarlo mediante tu correo actual , solo así lo actualizaremos al nuevo que ingresaste , gracias";
        dto_notificacion.imagen = "mihogar-peru.png";
        dto_notificacion.flg_noti_mostrado = "0";
        dto_notificacion.id_persona = int.Parse(Session["id_persona"].ToString());
        ctr_notificacion.Ctr_InsertarNotificaciones(dto_notificacion);
    }

    }
