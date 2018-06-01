using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTR;
using DTO;
using DAO;
using System.Data;
using CuteWebUI;
using System.Web.Services;
using System.Web.Script.Services;
using System.Data.SqlClient;
using System.IO;
using System.Security.Cryptography;
using System.Text;

public partial class pages_cliente_propietario_crear_publicacion_venta : System.Web.UI.Page
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

        txtAvisoTipo.Enabled = false;
        txtTiempoAviso.Enabled = false;
        txtFechaInicio.Enabled = false;
        txtFechaFin.Enabled = false;

        txtAvisoTipo.Attributes.Add("style", "background-color: white");
        txtTiempoAviso.Attributes.Add("style", "background-color: white");
        txtFechaInicio.Attributes.Add("style", "background-color: white");
        txtFechaFin.Attributes.Add("style", "background-color: white");


        ddlTipoDolar.Items.Add("S/");
        ddlTipoDolar.Items.Add("$/");


        if (Session["id_persona"] == null)
        {
            Response.Redirect("~/inicio.aspx");
        }
        if (Session["Aviso"] == null)
        {
            Response.Redirect("tipo-aviso.aspx?idtipo=1");
        }
        btnBotonEscondidoDeprovi.Attributes.Add("style", "DISPLAY: none");
        GuardarDepartamentoProvinciaDistrito2.Attributes.Add("style", "DISPLAY: none");
        try
        {
            //string usuario = Session["id_persona"].ToString();


            AddCharacterLimitEventHandler(txtDescripcion, Label1, 500);
            if (!IsPostBack)
            {
                //ucMultiFileUpload.UploadButtonIsVisible = true;
                //ucMultiFileUpload.DestinationFolder = " ~/pages/documentos";

                FechaInicio();
                FechaFin();
                txtAvisoTipo.Text = Session["Aviso"].ToString();
                txtTiempoAviso.Text = Session["CantidadDias"].ToString() + " días";
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


                Cargar_Nombres_Caracteristicas_de_Inmueble();
                //Aqui Cargare los dropdownlist de cada caracteristica del Inmueble
                Cargar_Dormitorios();
                Cargar_Baños();
                Cargar_Cocheras();
                Cargar_Antiguedad_Inmueble();
                Cargar_Estado_Inmueble();
                Cargar_Tipo_de_Anunciante();
                Cargar_Caracteristicas_Adicionales_de_Inmueble();
                Cargar_Servicios_de_Inmueble();
                Cargar_Ambientes_de_Inmueble();
                Cargar_Adicionales_de_Inmueble();
                Cargar_AreasComunes_de_Inmueble();
                Cargar_CaracteristicasGenerales_de_Inmueble();
                Cargar_NroPisos_de_Inmueble();
                Cargar_TipoSuelo_de_Inmueble();
                Cargar_AreaTotal_de_Inmueble();
                Cargar_DepartamentosPorPiso_Inmueble();
                Cargar_TipoPublicacion_Inmueble();
                Cargar_Detalles_Inmueble();



                CargarTipoServicio();
                CargarTipoInmuebles();
                CargarSubTiposDeInmueble();
                ddlTipoInmueble.AutoPostBack = true;
                CargarMiDireccion();
            }
        }
        catch
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/inicio.aspx");
        }
    }
    public static void AddCharacterLimitEventHandler(
           TextBox pTextBox, Label pLabel, int pCharacterLimit)
    {
        string eventHandler = "limitTextLength(" + pTextBox.ClientID + ", " + pLabel.ClientID + ", " + pCharacterLimit + ")";
        pTextBox.Attributes.Add("onKeyDown", eventHandler);
        pTextBox.Attributes.Add("onKeyUp", eventHandler);
    }

    public void Check_Clicked(Object sender, EventArgs e)
    {

        // Calculate the subtotal and display the result in currency format.
        // Include tax if the check box is selected.


    }


    public void FechaInicio()
    {
        DateTime fechaCad1 = System.DateTime.Now;
        string fechaCad = Convert.ToString(fechaCad1.ToString("dd/MM/yyyy"));
        DateTime fecha = new DateTime(Convert.ToInt32(fechaCad.Substring(6, 4)),
                  Convert.ToInt32(fechaCad.Substring(3, 2)),
                  Convert.ToInt32(fechaCad.Substring(0, 2)));

        txtFechaInicio.Text = fechaCad;
    }

    public void FechaFin()
    {
        DateTime fechaCad1 = System.DateTime.Now;
        String fechaCad = Convert.ToString(fechaCad1);

        int año = Convert.ToInt32(fechaCad.Substring(6, 4));
        int mes = Convert.ToInt32(fechaCad.Substring(3, 2));
        int dia = Convert.ToInt32(fechaCad.Substring(0, 2));

        int dias = int.Parse(Session["CantidadDias"].ToString());
        DateTime today = DateTime.Now;
        DateTime answer = today.AddDays(dias);

        txtFechaFin.Text = Convert.ToString(answer.ToString("dd/MM/yyyy"));
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

    public void CargarTipoServicio()
    {
        CtrTipoServicio ctr_tipo_servicio = new CtrTipoServicio();

        ddlTipoServicio.DataSource = ctr_tipo_servicio.Ctr_Seleccionar_Tipo_Servicio();
        ddlTipoServicio.DataTextField = "descripcion";
        ddlTipoServicio.DataValueField = "id_tipo_servicio";
        ddlTipoServicio.DataBind();
        ddlTipoServicio.Items.Insert(0, new ListItem("Seleccione el Tipo de Servicio", "0"));

    }

    public void Cargar_Caracteristicas_por_tiposervicio()
    {
        string html = String.Format("@<div>Hoala" +
            "</div>");

        this.Literal1.Text = html;
    }
    public void CargarTipoInmuebles()
    {
        CtrTipoInmueble ctr_tipo_inmueble = new CtrTipoInmueble();
        ddlTipoInmueble.DataSource = ctr_tipo_inmueble.Ctr_ListarTipoInmuebles();
        ddlTipoInmueble.DataTextField = "descripcion_tipo_inmueble";
        ddlTipoInmueble.DataValueField = "id_tipo_inmueble";
        ddlTipoInmueble.DataBind();
        ddlTipoInmueble.Items.Insert(0, new ListItem("Seleccione el Tipo Inmueble", "0"));
    }

    public void CargarSubTiposDeInmueble()
    {
        CtrSubTipoInmueble ctr_subtipo_inmueble = new CtrSubTipoInmueble();
        ddlSubTipoInmueble.DataSource = ctr_subtipo_inmueble.Ctr_Listar_SubTipo_De_Inmueble_Seleccionado(int.Parse(ddlTipoInmueble.SelectedValue));
        ddlSubTipoInmueble.DataTextField = "descripcion_subtipo_inmueble";
        ddlSubTipoInmueble.DataValueField = "id_sub_tipo_inmueble";
        ddlSubTipoInmueble.DataBind();
        ddlSubTipoInmueble.Items.Insert(0, new ListItem("Seleccione el Sub Tipo de Inmueble", "0"));
    }

    public void Cargar_Nombres_Caracteristicas_de_Inmueble()
    {

        lblDormitorios.Text = "Dormitorios";
        lblBaños.Text = "Baños";
        lblCocheras.Text = "Cocheras";
        lblAntiguedad_Inmueble.Text = "Antiguedad Inmueble";
        lblEstado_Inmueble.Text = "Estado de Inmueble";
        lblTipo_Anunciante.Text = "Tipo de Anunciante";
        lblCaracteristicas.Text = "Caracteristicas";
        lblServicios.Text = "Servicios";
        lblAmbientes.Text = "Ambientes";
        lblAdicionales.Text = "Adicionales";
        lblAreasComunes.Text = "Áreas Comunes";
        lblGenerales.Text = "Generales";
        lblNroPisos.Text = "Nro de Pisos";
        lblTipoSuelo.Text = "Tipo de Suelo";
        lblArea_Total.Text = "Área Total";
        lblDepartamentos_por_piso.Text = "Departamentos por piso";
        lblTipoPublicacion.Text = "Tipo de Publicación";
        lblDetalles.Text = "Detalles";

        lblDormitorios.Attributes.Add("style", "color: blue");
        lblBaños.Attributes.Add("style", "color: blue");
        lblCocheras.Attributes.Add("style", "color: blue");
        lblAntiguedad_Inmueble.Attributes.Add("style", "color: blue");
        lblEstado_Inmueble.Attributes.Add("style", "color: blue");
        lblTipo_Anunciante.Attributes.Add("style", "color: blue");
        lblCaracteristicas.Attributes.Add("style", "color: blue");
        lblServicios.Attributes.Add("style", "color: blue");
        lblAmbientes.Attributes.Add("style", "color: blue");
        lblAdicionales.Attributes.Add("style", "color: blue");
        lblAreasComunes.Attributes.Add("style", "color: blue");
        lblGenerales.Attributes.Add("style", "color: blue");
        lblNroPisos.Attributes.Add("style", "color: blue");
        lblTipoSuelo.Attributes.Add("style", "color: blue");
        lblArea_Total.Attributes.Add("style", "color: blue");
        lblDepartamentos_por_piso.Attributes.Add("style", "color: blue");
        lblTipoPublicacion.Attributes.Add("style", "color: blue");
        lblDetalles.Attributes.Add("style", "color: blue");
    }

    static SqlConnection conexion = new SqlConnection("data source=KS\\SQLEXPRESS; initial catalog=BD_SGLTCC; integrated security=SSPI;");


    [WebMethod]
    [ScriptMethod]
    public static object comprobartipoinmueble(int id_tipoinmueble_elegido)
    {

        SqlCommand cmd = new SqlCommand("sp_Cargar_Caracteristicas_Inmueble", conexion);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id_tipoinmueble_elegido", id_tipoinmueble_elegido);
        conexion.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        List<DtoCaracteristicasInmueble> listar_caracteristicas_Inmuebles = new List<DtoCaracteristicasInmueble>();
        DtoCaracteristicasInmueble dto_caracteristicas_inmueble;
        while (reader.Read())
        {
            dto_caracteristicas_inmueble = new DtoCaracteristicasInmueble();
            dto_caracteristicas_inmueble.id_caracteristica = int.Parse(reader[0].ToString());
            dto_caracteristicas_inmueble.descripcion_caracteristica_inmueble = reader[1].ToString();

            listar_caracteristicas_Inmuebles.Add(dto_caracteristicas_inmueble);
        }
        conexion.Close();
        return listar_caracteristicas_Inmuebles;

    }




    public void Cargar_Caracteristicas_Inmueble()
    {
        DtoTipoInmueble dto_tipo_inmueble = new DtoTipoInmueble();
        DtoCaracteristicasInmueble dto_caracteristica_inmueble = new DtoCaracteristicasInmueble();
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        dto_tipo_inmueble.id_tipo_inmueble = int.Parse(ddlTipoInmueble.SelectedValue);



        if (dto_tipo_inmueble.id_tipo_inmueble == 0)
        {
            Session["OcultarTodo"] = "Visible";
            Session["Dormitorio"] = "";
            Session["Baños"] = "";
            Session["Cocheras"] = "";
            Session["Antiguedad_Inmueble"] = "";
            Session["Estado_Inmueble"] = "";
            ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "ocultarCaracteristicasInmueble", "Ocultar_Caracteristicas_Inmueble();", true);
        }
        else
        {
            List<DtoCaracteristicasInmueble> listar_caracteristicas_Inmuebles = new List<DtoCaracteristicasInmueble>();
            listar_caracteristicas_Inmuebles = ctr_caracteristicas_inmueble.Ctr_Cargar_Caracteristicas_Inmueble(dto_tipo_inmueble);
            for (int i = 0; i < listar_caracteristicas_Inmuebles.Count; i++)
            {
                //txtIdCaracteristica.Text = dto_caracteristica_inmueble.id
                string ci = listar_caracteristicas_Inmuebles[i].descripcion_caracteristica_inmueble;


                if (ci == lblDormitorios.Text)
                {
                    Session["Dormitorio"] = "Visible";
                }
                if (ci == lblBaños.Text)
                {
                    Session["Baños"] = "Visible";
                }
                if (ci == lblCocheras.Text)
                {
                    Session["Cocheras"] = "Visible";
                }
                if (ci == lblAntiguedad_Inmueble.Text)
                {
                    Session["Antiguedad_Inmueble"] = "Visible";
                }
                if (ci == lblEstado_Inmueble.Text)
                {
                    Session["Estado_Inmueble"] = "Visible";
                }
                if (i + 1 == listar_caracteristicas_Inmuebles.Count)
                {
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarCaracteristicasInmueble", "Caracteristicas_Inmueble();", true);
                }
            }
        }
    }

    public void Cargar_Dormitorios()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlDormitorios.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Dormitorios();
        ddlDormitorios.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlDormitorios.DataValueField = "id_sub_caracteristica";
        ddlDormitorios.DataBind();
        ddlDormitorios.Items.Insert(0, new ListItem("Seleccione la cantidad de dormitorios", "0"));
    }

    public void Cargar_Baños()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlBaños.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Baños();
        ddlBaños.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlBaños.DataValueField = "id_sub_caracteristica";
        ddlBaños.DataBind();
        ddlBaños.Items.Insert(0, new ListItem("Seleccione la cantidad de Baños", "0"));
    }

    public void Cargar_Cocheras()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlCocheras.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Cocheras();
        ddlCocheras.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlCocheras.DataValueField = "id_sub_caracteristica";
        ddlCocheras.DataBind();
        ddlCocheras.Items.Insert(0, new ListItem("Seleccione la cantidad de Cocheras", "0"));
    }

    public void Cargar_Antiguedad_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlAntiguedad_Inmueble.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Antiguedad_Inmueble();
        ddlAntiguedad_Inmueble.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlAntiguedad_Inmueble.DataValueField = "id_sub_caracteristica";
        ddlAntiguedad_Inmueble.DataBind();
        ddlAntiguedad_Inmueble.Items.Insert(0, new ListItem("Seleccione la Antiguedad", "0"));
    }

    public void Cargar_Estado_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlEstado_Inmueble.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Estado_Inmueble();
        ddlEstado_Inmueble.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlEstado_Inmueble.DataValueField = "id_sub_caracteristica";
        ddlEstado_Inmueble.DataBind();
        ddlEstado_Inmueble.Items.Insert(0, new ListItem("Seleccione el Estado", "0"));
    }

    public void Cargar_Tipo_de_Anunciante()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlTipo_Anunciante.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Tipo_Anunciante();
        ddlTipo_Anunciante.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlTipo_Anunciante.DataValueField = "id_sub_caracteristica";
        ddlTipo_Anunciante.DataBind();
        ddlTipo_Anunciante.Items.Insert(0, new ListItem("Seleccione el Estado", "0"));
    }

    public void Cargar_Caracteristicas_Adicionales_de_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        checkCaracteristicas.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Tipo_Anunciante();
        checkCaracteristicas.DataTextField = "descripcion_subcaracteristica_inmueble";
        checkCaracteristicas.DataValueField = "id_sub_caracteristica";
        checkCaracteristicas.DataBind();

    }

    public void Cargar_Servicios_de_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        checkServicios.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Servicios_de_Inmueble();
        checkServicios.DataTextField = "descripcion_subcaracteristica_inmueble";
        checkServicios.DataValueField = "id_sub_caracteristica";
        checkServicios.DataBind();

    }

    public void Cargar_Ambientes_de_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        checkAmbientes.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Ambientes_de_Inmueble();
        checkAmbientes.DataTextField = "descripcion_subcaracteristica_inmueble";
        checkAmbientes.DataValueField = "id_sub_caracteristica";
        checkAmbientes.DataBind();

    }

    public void Cargar_Adicionales_de_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        checkAdicionales.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Adicionales_de_Inmueble();
        checkAdicionales.DataTextField = "descripcion_subcaracteristica_inmueble";
        checkAdicionales.DataValueField = "id_sub_caracteristica";
        checkAdicionales.DataBind();

    }

    public void Cargar_AreasComunes_de_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        checkAreasComunes.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_AreasComunes_de_Inmueble();
        checkAreasComunes.DataTextField = "descripcion_subcaracteristica_inmueble";
        checkAreasComunes.DataValueField = "id_sub_caracteristica";
        checkAreasComunes.DataBind();

    }

    public void Cargar_CaracteristicasGenerales_de_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        checkGenerales.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_CaracteristicasGenerales_de_Inmueble();
        checkGenerales.DataTextField = "descripcion_subcaracteristica_inmueble";
        checkGenerales.DataValueField = "id_sub_caracteristica";
        checkGenerales.DataBind();

    }

    public void CargarMiDireccion()
    {
        DtoCliente dto_cliente = new DtoCliente();
        DtoDireccion_Especifica dto_direccion_especifica = new DtoDireccion_Especifica();
        dto_cliente.id_persona = int.Parse(Session["id_persona"].ToString());
        CtrCliente ctr_cliente = new CtrCliente();
        ctr_cliente.Ctr_Cargar_Mi_Direccion(dto_cliente, dto_direccion_especifica);

        txtDireccionEscritaOEscogida.Text = dto_direccion_especifica.direccion;
        txtLatitud.Text = dto_direccion_especifica.latitud;
        txtLongitud.Text = dto_direccion_especifica.longitud;
        txtRegion.Text = dto_direccion_especifica.region;
        txtDepartamentoProvinciaDistrito.Text = dto_direccion_especifica.nombre_distrito;
        txtId_distrito_Mandado_Para_Actualizar.Text = Convert.ToString(dto_direccion_especifica.id_distrito);


        txtDireccion_BD.Text = dto_direccion_especifica.direccion;
        txtLatitud_BD.Text = dto_direccion_especifica.latitud;
        txtLongitud_BD.Text = dto_direccion_especifica.longitud;
        txtRegion_BD.Text = dto_direccion_especifica.region;

    }



    public void Cargar_NroPisos_de_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlNroPisos.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_NroPisos_de_Inmueble();
        ddlNroPisos.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlNroPisos.DataValueField = "id_sub_caracteristica";
        ddlNroPisos.DataBind();
        ddlNroPisos.Items.Insert(0, new ListItem("Seleccione cantidad de Pisos", "0"));
    }

    public void Cargar_TipoSuelo_de_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlTipoSuelo.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_TipoSuelo_de_Inmueble();
        ddlTipoSuelo.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlTipoSuelo.DataValueField = "id_sub_caracteristica";
        ddlTipoSuelo.DataBind();
        ddlTipoSuelo.Items.Insert(0, new ListItem("Seleccione el tipo de suelo", "0"));
    }

    public void Cargar_AreaTotal_de_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlArea_Total.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_AreaTotal_de_Inmueble();
        ddlArea_Total.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlArea_Total.DataValueField = "id_sub_caracteristica";
        ddlArea_Total.DataBind();
        ddlArea_Total.Items.Insert(0, new ListItem("Seleccione el Area total", "0"));
    }

    public void Cargar_DepartamentosPorPiso_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlDepartamentos_por_piso.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_DepartamentosPorPiso_de_Inmueble();
        ddlDepartamentos_por_piso.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlDepartamentos_por_piso.DataValueField = "id_sub_caracteristica";
        ddlDepartamentos_por_piso.DataBind();
        ddlDepartamentos_por_piso.Items.Insert(0, new ListItem("Seleccione Depas por piso", "0"));
    }

    public void Cargar_TipoPublicacion_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlTipoPublicacion.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_TipoPublicacion_de_Inmueble();
        ddlTipoPublicacion.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlTipoPublicacion.DataValueField = "id_sub_caracteristica";
        ddlTipoPublicacion.DataBind();
        ddlTipoPublicacion.Items.Insert(0, new ListItem("Seleccione Tipo Publicacion", "0"));
    }

    public void Cargar_Detalles_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        ddlDetalles.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Detalles_de_Inmueble();
        ddlDetalles.DataTextField = "descripcion_subcaracteristica_inmueble";
        ddlDetalles.DataValueField = "id_sub_caracteristica";
        ddlDetalles.DataBind();
        ddlDetalles.Items.Insert(0, new ListItem("Seleccione un detalle", "0"));
    }

    protected void ddlTipoInmueble_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Cargar_Caracteristicas_Inmueble();
        CargarSubTiposDeInmueble();
        //Cargar_Caracteristicas_por_tipoventa();

    }

    protected void ddlSubTipoInmueble_SelectedIndexChanged(object sender, EventArgs e)
    {

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

    protected void ddlProvincias_SelectedIndexChanged(object sender, EventArgs e)
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

    protected void ddlDistritos_SelectedIndexChanged(object sender, EventArgs e)
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

    protected void GuardarDepartamentoProvinciaDistrito2_Click(object sender, EventArgs e)
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








    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);

        //Handle the client side onClick event for the Submit button. Script Error Exception will trigger a full page postback.
        SubmitButton.Attributes["onclick"] = "return submitbutton_click()";
        //BotonEnviar1.Attributes["onclick"] = "return submitbutton_click()";
    }


    protected void Uploader1_FileUploaded(object sender, UploaderEventArgs args)
    {
        if ((int.Parse(Request.Form["verificado"]) == 1) && (int.Parse(Request.Form["comprobado"]) == 1))
        {

            CtrAviso ctr_aviso = new CtrAviso();
            DaoAviso dao_aviso = new DaoAviso();

            aux_DtoAviso aux_dtoaviso = new aux_DtoAviso();
            DtoPersona dto_persona = new DtoPersona();

            Random rnd = new Random();
            int codigo_inmueble_aleatorio = rnd.Next(1000, 10001);

            //sacar el identificador de mi tipo_cliente

            DtoCliente_X_Tipo_Cliente dto_cliente_x_tipo_cliente = new DtoCliente_X_Tipo_Cliente();
            dto_cliente_x_tipo_cliente.id_persona = int.Parse(Session["id_persona"].ToString());
            dto_cliente_x_tipo_cliente.id_tipo_cliente = int.Parse(Session["propietario"].ToString());
            CtrCliente_X_Tipo_Cliente ctr_cliente_x_tipo_cliente = new CtrCliente_X_Tipo_Cliente();
            ctr_cliente_x_tipo_cliente.Ctr_Seleccionar_Identificador_de_Tipo_Cliente(dto_cliente_x_tipo_cliente);

            int id_persona_cliente = dto_cliente_x_tipo_cliente.id_persona_cliente;

            aux_dtoaviso.id_cliente = int.Parse(Session["id_persona"].ToString());
            aux_dtoaviso.id_tipo_servicio = ddlTipoServicio.SelectedIndex;
            aux_dtoaviso.id_tipo_inmueble = ddlTipoInmueble.SelectedIndex;
            aux_dtoaviso.id_sub_tipo_inmueble = ddlSubTipoInmueble.SelectedIndex;
            aux_dtoaviso.titulo = Request.Form["txtTitulo"];
            aux_dtoaviso.descripcion = txtDescripcion.Text;
            aux_dtoaviso.direccion = txtDireccion_BD.Text;
            aux_dtoaviso.visitas = 0;
            aux_dtoaviso.codigo = codigo_inmueble_aleatorio;
            aux_dtoaviso.precio = int.Parse(Request.Form["txtPrecio"]);
            aux_dtoaviso.fecha_inicio = Convert.ToDateTime(txtFechaInicio.Text);
            aux_dtoaviso.fecha_fin = Convert.ToDateTime(txtFechaFin.Text);
            aux_dtoaviso.id_distrito = int.Parse(txtId_distrito_Mandado_Para_Actualizar.Text);
            aux_dtoaviso.id_persona_cliente = id_persona_cliente;
            aux_dtoaviso.estado = 1;
            aux_dtoaviso.tipo_aviso = Convert.ToString(Session["Aviso"].ToString());
            aux_dtoaviso.tiempo_aviso = int.Parse(Session["CantidadDias"].ToString());
            aux_dtoaviso.latitud = txtLatitud.Text;
            aux_dtoaviso.longitud = txtLongitud.Text;
            aux_dtoaviso.region_inmueble = txtRegion.Text;

            ctr_aviso.Ctr_RegistrarAviso(aux_dtoaviso);

            //ctr_aviso.Ctr_SeleccionarUltimoRegistroAviso(aux_dtoaviso);

            //subir imagenes del inmueble

            string virpath = "~/pages/imagenes/inmuebles/venta/" + args.FileGuid + System.IO.Path.GetExtension(args.FileName);
            string savepath = Server.MapPath(virpath);
            if (System.IO.File.Exists(savepath))
                return;
            args.MoveTo(savepath);

            DtoImagenes_X_Aviso dto_imagenes_x_aviso = new DtoImagenes_X_Aviso();
            dto_imagenes_x_aviso.imagen = args.FileGuid + System.IO.Path.GetExtension(args.FileName);
            CtrImagenes_X_Aviso ctr_imagenes_x_aviso = new CtrImagenes_X_Aviso();

            ctr_imagenes_x_aviso.Ctr_Insertar_Imagenes_X_Aviso(dto_imagenes_x_aviso);

            //Subir documentos del inmueble
            DtoDocumentos_X_Aviso dto_documentos_x_aviso = new DtoDocumentos_X_Aviso();
            CtrDocumentos_X_Aviso ctr_documentos_x_aviso = new CtrDocumentos_X_Aviso();

            InsertarTodo();


            DtoNotificacion dto_notificacion = new DtoNotificacion();
            CtrNotificacion ctr_notificacion = new CtrNotificacion();
            dto_notificacion.fecha_emision = System.DateTime.Now;
            dto_notificacion.clase_visto = "novisto";
            dto_notificacion.flg_visto = "0";
            dto_notificacion.titulo_color = "text-success";
            dto_notificacion.titulo = "Aviso Registrado";
            dto_notificacion.mensaje = "Hola , " + Session["nombres"].ToString() + " , tu aviso ya fue creado y enviado a un supervisor para evaluarlo , se te notificará si tu aviso es aceptado o rechazado indicándote la razón , gracias por usar nuestros servicios.";
            dto_notificacion.imagen = "mihogar-peru.png";
            dto_notificacion.flg_noti_mostrado = "0";
            dto_notificacion.id_persona = int.Parse(Session["id_persona"].ToString());
            ctr_notificacion.Ctr_InsertarNotificaciones(dto_notificacion);

            ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensajeRegistroAviso", "RegistroAviso();", true);

        }
    }

    protected void SubmitButton_Click1(object sender, EventArgs e)
    {

    }


    protected void ddlDormitorios_SelectedIndexChanged(object sender, EventArgs e)
    {

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

    protected void btnRegistrarPublicacion_Click(object sender, EventArgs e)
    {
        if ((int.Parse(Request.Form["verificado"]) == 1) && (int.Parse(Request.Form["comprobado"]) == 1))
        {
            CtrAviso ctr_aviso = new CtrAviso();
            DaoAviso dao_aviso = new DaoAviso();

            aux_DtoAviso aux_dtoaviso = new aux_DtoAviso();
            DtoPersona dto_persona = new DtoPersona();

            Random rnd = new Random();
            int codigo_inmueble_aleatorio = rnd.Next(1000, 10001);


            DtoDocumentos_X_Aviso dto_documentos_x_aviso = new DtoDocumentos_X_Aviso();
            CtrDocumentos_X_Aviso ctr_documentos_x_aviso = new CtrDocumentos_X_Aviso();
            //sacar el identificador de mi tipo_cliente

            DtoCliente_X_Tipo_Cliente dto_cliente_x_tipo_cliente = new DtoCliente_X_Tipo_Cliente();
            dto_cliente_x_tipo_cliente.id_persona = int.Parse(Session["id_persona"].ToString());
            dto_cliente_x_tipo_cliente.id_tipo_cliente = int.Parse(Session["propietario"].ToString());
            CtrCliente_X_Tipo_Cliente ctr_cliente_x_tipo_cliente = new CtrCliente_X_Tipo_Cliente();
            ctr_cliente_x_tipo_cliente.Ctr_Seleccionar_Identificador_de_Tipo_Cliente(dto_cliente_x_tipo_cliente);

            int id_persona_cliente = dto_cliente_x_tipo_cliente.id_persona_cliente;

            aux_dtoaviso.id_cliente = int.Parse(Session["id_persona"].ToString());
            aux_dtoaviso.id_tipo_servicio = ddlTipoServicio.SelectedIndex;
            aux_dtoaviso.id_tipo_inmueble = ddlTipoInmueble.SelectedIndex;
            aux_dtoaviso.id_sub_tipo_inmueble = ddlSubTipoInmueble.SelectedIndex;
            aux_dtoaviso.titulo = Request.Form["txtTitulo"];
            aux_dtoaviso.descripcion = txtDescripcion.Text;
            aux_dtoaviso.direccion = txtDireccionEscritaOEscogida.Text;
            aux_dtoaviso.visitas = 0;
            aux_dtoaviso.codigo = codigo_inmueble_aleatorio;
            aux_dtoaviso.precio = int.Parse(Request.Form["txtPrecio"]);
            aux_dtoaviso.fecha_inicio = Convert.ToDateTime(txtFechaInicio.Text);
            aux_dtoaviso.fecha_fin = Convert.ToDateTime(txtFechaFin.Text);
            aux_dtoaviso.id_distrito = int.Parse(txtId_distrito_Mandado_Para_Actualizar.Text);
            aux_dtoaviso.id_persona_cliente = id_persona_cliente;
            aux_dtoaviso.estado = 1;
            aux_dtoaviso.tipo_aviso = Convert.ToString(Session["Aviso"].ToString());
            aux_dtoaviso.tiempo_aviso = int.Parse(Session["CantidadDias"].ToString());
            aux_dtoaviso.latitud = txtLatitud.Text;
            aux_dtoaviso.longitud = txtLongitud.Text;
            aux_dtoaviso.region_inmueble = txtRegion.Text;

            ctr_aviso.Ctr_RegistrarAviso(aux_dtoaviso);

            //ctr_aviso.Ctr_SeleccionarUltimoRegistroAviso(aux_dtoaviso);

            ////subir imagenes del inmueble

            //string virpath = "~/pages/imagenes/inmuebles/venta/" + args.FileGuid + System.IO.Path.GetExtension(args.FileName);
            //string savepath = Server.MapPath(virpath);
            //if (System.IO.File.Exists(savepath))
            //    return;
            //args.MoveTo(savepath);

            //DtoImagenes_X_Aviso dto_imagenes_x_aviso = new DtoImagenes_X_Aviso();
            //dto_imagenes_x_aviso.imagen = args.FileGuid + System.IO.Path.GetExtension(args.FileName);
            //CtrImagenes_X_Aviso ctr_imagenes_x_aviso = new CtrImagenes_X_Aviso();

            //ctr_imagenes_x_aviso.Ctr_Insertar_Imagenes_X_Aviso(aux_dtoaviso, dto_imagenes_x_aviso);

            //Subir documentos del inmueble

            foreach (HttpPostedFile thefile in SubirDocumentos.PostedFiles)
            {
                string sfile = thefile.FileName;
                string spath = Server.MapPath("~/pages/documentos/");
                string sfullpath = Path.Combine(spath, sfile);
                thefile.SaveAs(sfullpath);

                dto_documentos_x_aviso.nombre_documento = sfile;
                ctr_documentos_x_aviso.Ctr_Insertar_Documentos_X_Aviso(dto_documentos_x_aviso);


            }
        }
        else
        {

        }

    }
    protected void btnRegresar_Click(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        if (int.Parse(Request.Form["verificado"]) == 1)
        {
            aux_DtoAviso aux_dtoaviso = new aux_DtoAviso();
            CtrAviso ctr_aviso = new CtrAviso();
            ctr_aviso.Ctr_SeleccionarUltimoRegistroAviso(aux_dtoaviso);
            DtoDocumentos_X_Aviso dto_documentos_x_aviso = new DtoDocumentos_X_Aviso();
            CtrDocumentos_X_Aviso ctr_documentos_x_aviso = new CtrDocumentos_X_Aviso();


            foreach (HttpPostedFile thefile in SubirDocumentos.PostedFiles)
            {
                string sfile = thefile.FileName;
                string spath = Server.MapPath("~/pages/documentos/");
                string sfullpath = Path.Combine(spath, sfile);
                thefile.SaveAs(sfullpath);

                dto_documentos_x_aviso.nombre_documento = sfile;
                ctr_documentos_x_aviso.Ctr_Insertar_Documentos_X_Aviso(dto_documentos_x_aviso);


            }
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {


        DtoDocumentos_X_Aviso dto_documentos_x_aviso = new DtoDocumentos_X_Aviso();
        CtrDocumentos_X_Aviso ctr_documentos_x_aviso = new CtrDocumentos_X_Aviso();


        foreach (HttpPostedFile thefile in SubirDocumentos.PostedFiles)
        {
            string sfile = thefile.FileName;
            string spath = Server.MapPath("~/pages/documentos/");
            string sfullpath = Path.Combine(spath, sfile);
            thefile.SaveAs(sfullpath);

            dto_documentos_x_aviso.nombre_documento = sfile;
            ctr_documentos_x_aviso.Ctr_Insertar_Documentos_X_Aviso(dto_documentos_x_aviso);


        }




        DtoSubCaracteristicas_Inmueble_X_Aviso dto_subcaracteristicas_inmueble_x_aviso = new DtoSubCaracteristicas_Inmueble_X_Aviso();
        CtrSubCaracteristicas_Inmueble_X_Aviso ctr_subcaracteristicas_inmueble_x_aviso = new CtrSubCaracteristicas_Inmueble_X_Aviso();

        string interests = string.Empty;
        foreach (ListItem item in this.checkCaracteristicas.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int caracteristicas = 7;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = caracteristicas;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }


        foreach (ListItem item in this.checkServicios.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int servicios = 8;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = servicios;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }


        foreach (ListItem item in this.checkAmbientes.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int ambientes = 9;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = ambientes;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }



        foreach (ListItem item in this.checkAdicionales.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int adicionales = 10;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = adicionales;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }



        foreach (ListItem item in this.checkAreasComunes.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int areas_comunes = 11;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = areas_comunes;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }



        foreach (ListItem item in this.checkGenerales.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int generales = 12;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = generales;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }



    }







    public void InsertarTodo()
    {


        DtoDocumentos_X_Aviso dto_documentos_x_aviso = new DtoDocumentos_X_Aviso();
        CtrDocumentos_X_Aviso ctr_documentos_x_aviso = new CtrDocumentos_X_Aviso();


        foreach (HttpPostedFile thefile in SubirDocumentos.PostedFiles)
        {
            string sfile = thefile.FileName;
            string spath = Server.MapPath("~/pages/documentos/");
            string sfullpath = Path.Combine(spath, sfile);
            thefile.SaveAs(sfullpath);

            dto_documentos_x_aviso.nombre_documento = sfile;
            ctr_documentos_x_aviso.Ctr_Insertar_Documentos_X_Aviso(dto_documentos_x_aviso);


        }




        DtoSubCaracteristicas_Inmueble_X_Aviso dto_subcaracteristicas_inmueble_x_aviso = new DtoSubCaracteristicas_Inmueble_X_Aviso();
        CtrSubCaracteristicas_Inmueble_X_Aviso ctr_subcaracteristicas_inmueble_x_aviso = new CtrSubCaracteristicas_Inmueble_X_Aviso();

        string interests = string.Empty;
        foreach (ListItem item in this.checkCaracteristicas.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int caracteristicas = 7;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = caracteristicas;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }


        foreach (ListItem item in this.checkServicios.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int servicios = 8;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = servicios;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }


        foreach (ListItem item in this.checkAmbientes.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int ambientes = 9;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = ambientes;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }



        foreach (ListItem item in this.checkAdicionales.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int adicionales = 10;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = adicionales;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }



        foreach (ListItem item in this.checkAreasComunes.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int areas_comunes = 11;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = areas_comunes;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }



        foreach (ListItem item in this.checkGenerales.Items)
        {
            if (item.Selected)
            {
                interests = item.Value;
                int generales = 12;
                dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica = generales;
                dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica = int.Parse(interests);
                ctr_subcaracteristicas_inmueble_x_aviso.Ctr_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);


            }

        }



    }
}
