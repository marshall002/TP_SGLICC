using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using DAO;
using CTR;
using System.Collections;

public partial class pages_personal_Jefe_de_Comprs_Detalles_compra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                CargarSubCaractertisticas(txtDormitorio, 1);
                CargarSubCaractertisticas(txtBaño, 2);
                CargarSubCaractertisticas(txtCochera, 3);
                CargarSubCaractertisticas(txtAntiguedad, 4);
                CargarSubCaractertisticas(txtEstado, 5);
                CargarSubCaractertisticas(txtTipoAnunciante, 6);
                CargarSubCaractertisticas(txtNPiso, 13);
                CargarSubCaractertisticas(txtDepartamento, 16);
                CargarSubCaractertisticas(txtTipoPublicacion, 17);
                CargarSubCaractertisticas(txtDetalles, 18);
                Carga_Informacion_del_Propietario();
                CargarInformaciondelAviso();
                CargarImagenes();
                Cargar_Carcteristicas_Adicionales_de_Inmueble();
                Cargar_Servicios_de_Inmueble();
                Cargar_Ambientes_de_Inmueble();
                Cargar_Adicionales_de_Inmueble();
                Cargar_AreasComunes_de_Inmueble();
                Cargar_CaracteristicasGenerales_de_Inmueble();
                Cargar_Nombres_Caracteristicas_del_Inmueble();
                CargarDireccionInmueble();
                Evaluar_Adicionales_de_Inmueble(checkCaracteristicas, 7);
                checkCaracteristicas.Enabled = false;
                Evaluar_Adicionales_de_Inmueble(checkServicios, 8);
                checkServicios.Enabled = false;
                Evaluar_Adicionales_de_Inmueble(checkAmbientes, 9);
                checkAmbientes.Enabled = false;
                Evaluar_Adicionales_de_Inmueble(checkAdicionales, 10);
                checkAdicionales.Enabled = false;
                Evaluar_Adicionales_de_Inmueble(checkAreasComunes, 11);
                checkAreasComunes.Enabled = false;
                Evaluar_Adicionales_de_Inmueble(checkGenerales, 12);
                checkGenerales.Enabled = false;
            }
        }
        catch (Exception error)
        {

            //Session.Clear();
            //Session.Abandon();
            //Response.Redirect("~/inicio.aspx");

        }


    }
    public void Carga_Informacion_del_Propietario()
    {
        DtoPersona dto_persona = new DtoPersona();
        DtoCliente dto_cliente = new DtoCliente();
        CtrCliente ctrl_cliente = new CtrCliente();
        dto_persona.id_persona = int.Parse(Session["id_vendedor_persona"].ToString());
        ctrl_cliente.Ctr_CargarInformacionCliente(dto_persona, dto_cliente);
        txtPropietario.Text = dto_cliente.nombres;
        txtDNI.Text = dto_cliente.dni;
        txtCelular.Text = dto_cliente.celular.ToString();
        txtTelefono.Text = dto_cliente.telefono.ToString();
        TxtComprador.Text = Session["nombre_comprador"].ToString();


    }
    public void CargarInformaciondelAviso()
    {
        DtoAviso dto_aviso = new DtoAviso();
        CtrAviso ctrl_aviso = new CtrAviso();
        dto_aviso.codigo = int.Parse(Session["id_aviso"].ToString());
        ctrl_aviso.Ctrl_CargarInformaciondelAviso(dto_aviso);
        txtTipoServicio.Text = dto_aviso.tipo_servicio.ToString();
        txtTipoInmueble.Text = dto_aviso.descripcion_tipo_inmueble.ToString();
        txtSubTipoInmueble.Text = dto_aviso.descripcion_subtipo_inmueble.ToString();
        txtTitulo.Text = dto_aviso.titulo.ToString();
        txtDescripcion.Text = dto_aviso.descripcion.ToString();
        txtMiDireccion.Text = dto_aviso.direccion.ToString();
        txtPrecio.Text = "S/." + dto_aviso.precio.ToString();
        txtFechaInicio.Text = Convert.ToString(dto_aviso.fecha_inicio.ToString("dd/MM/yyyy"));
        txtFechaFinal.Text = Convert.ToString(dto_aviso.fecha_fin.ToString("dd/MM/yyyy"));
        txtAvisoTipo.Text = dto_aviso.aviso_tipo;
        TtxtTiempo.Text = Convert.ToString(dto_aviso.tiempo.ToString()) + " dias";
    }
    public void CargarImagenes()
    {
        int p = 0;
        DtoAviso dto_aviso1 = new DtoAviso();
        CtrImagen ctrImgen = new CtrImagen();
        DtoImagenes_X_Aviso[] dto_imagen = new DtoImagenes_X_Aviso[100];
        dto_aviso1.codigo = int.Parse(Session["id_aviso"].ToString());
        List<DtoImagenes_X_Aviso> list_imagen = new List<DtoImagenes_X_Aviso>();
        ArrayList Lista = new ArrayList();
        list_imagen = ctrImgen.Ctr_Capturar_Imagen(dto_aviso1);
        for (int i = 0; i < list_imagen.Count(); i++)
        {
            p++;
            dto_imagen[i] = list_imagen.ElementAt(i);
            Lista.Add("/pages/imagenes/inmuebles/" + dto_imagen[i].tipo_servicio + "/" + dto_imagen[i].imagen);
        }
        if (p == 0)
        {
            Repeater1.DataSource = "No ha imagenes";
        }
        else
        {
            Repeater1.DataSource = Lista;
            Repeater1.DataBind();
        }



    }
    public void CargarSubCaractertisticas(TextBox Texto, int caracteristica)
    {
        DtoCaracteristicasAviso dto_aviso = new DtoCaracteristicasAviso();
        DtoCaracteristicasAviso[] dto_sub_c_a = new DtoCaracteristicasAviso[100];
        CtrAviso ctrlsub = new CtrAviso();
        dto_aviso.codigo = int.Parse(Session["id_aviso"].ToString());
        List<DtoCaracteristicasAviso> list_sub_caracteristica_adicionales = new List<DtoCaracteristicasAviso>();
        list_sub_caracteristica_adicionales = ctrlsub.Ctrl_CargaCaracteristicasAdicionalesdelAviso(dto_aviso, caracteristica);
        for (int j = 0; j < list_sub_caracteristica_adicionales.Count(); j++)
        {
            dto_sub_c_a[j] = list_sub_caracteristica_adicionales.ElementAt(j);
        }
        Texto.Text = dto_sub_c_a[0].descripcion_sub_caracteristica;


    }
    public void Cargar_Nombres_Caracteristicas_del_Inmueble()
    {
        checkGenerales.Attributes.Add("style", "background-color: white");
        txtAntiguedad.Attributes.Add("style", "background-color: white");
        txtAvisoTipo.Attributes.Add("style", "background-color: white");
        txtBaño.Attributes.Add("style", "background-color: white");
        txtCelular.Attributes.Add("style", "background-color: white");
        txtCochera.Attributes.Add("style", "background-color: white");
        txtDepartamentoProvinciaDistrito.Attributes.Add("style", "background-color: white");
        txtDescripcion.Attributes.Add("style", "background-color: white");
        txtDNI.Attributes.Add("style", "background-color: white");
        txtDormitorio.Attributes.Add("style", "background-color: white");
        txtEstado.Attributes.Add("style", "background-color: white");
        txtFechaFinal.Attributes.Add("style", "background-color: white");
        txtFechaInicio.Attributes.Add("style", "background-color: white");
        txtMiDireccion.Attributes.Add("style", "background-color: white");
        txtPrecio.Attributes.Add("style", "background-color: white");
        txtPropietario.Attributes.Add("style", "background-color: white");
        txtSubTipoInmueble.Attributes.Add("style", "background-color: white");
        txtTelefono.Attributes.Add("style", "background-color: white");
        txtTipoAnunciante.Attributes.Add("style", "background-color: white");
        txtTipoInmueble.Attributes.Add("style", "background-color: white");
        txtTipoServicio.Attributes.Add("style", "background-color: white");
        txtTitulo.Attributes.Add("style", "background-color: white");
        TtxtTiempo.Attributes.Add("style", "background-color: white");
        txtNPiso.Attributes.Add("style", "background-color: white");
        txtDepartamento.Attributes.Add("style", "background-color: white");
        txtTipoPublicacion.Attributes.Add("style", "background-color: white");
        txtDetalles.Attributes.Add("style", "background-color: white");
        txtDireccionInmueble.Attributes.Add("style", "background-color: white");
        txtRegionLocalizada.Attributes.Add("style", "background-color: white");
        //--------------------------------------------------------------------
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

    }
    public void Cargar_Carcteristicas_Adicionales_de_Inmueble()
    {
        CtrCaracteristicaInmueble ctr_caracteristicas_inmueble = new CtrCaracteristicaInmueble();
        checkCaracteristicas.DataSource = ctr_caracteristicas_inmueble.Ctr_Listar_Caracteristicas_Adicionales_de_Inmueble();
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
    public void Evaluar_Adicionales_de_Inmueble(CheckBoxList checkgeneral, int caracteristica)
    {
        string valuecheck;
        DtoCaracteristicasAviso dto_aviso = new DtoCaracteristicasAviso();
        DtoCaracteristicasAviso[] dto_sub_c_a = new DtoCaracteristicasAviso[100];
        CtrAviso ctrlsub = new CtrAviso();
        dto_aviso.codigo = int.Parse(Session["id_aviso"].ToString());
        List<DtoCaracteristicasAviso> list_sub_caracteristica_adicionales = new List<DtoCaracteristicasAviso>();
        list_sub_caracteristica_adicionales = ctrlsub.Ctrl_CargaCaracteristicasAdicionalesdelAviso(dto_aviso, caracteristica);
        for (int j = 0; j < list_sub_caracteristica_adicionales.Count(); j++)
        {
            dto_sub_c_a[j] = list_sub_caracteristica_adicionales.ElementAt(j);
        }
        foreach (ListItem check in checkgeneral.Items)
        {
            valuecheck = check.Text;
            for (int p = 0; p < list_sub_caracteristica_adicionales.Count(); p++)
            {
                if (valuecheck.Equals(dto_sub_c_a[p].descripcion_sub_caracteristica))
                {
                    check.Selected = true;

                }
            }

        }
    }
    protected void btnAceptarAviso_Click(object sender, EventArgs e)
    {
        int estado_interno_aprobado = 2;
        notificacion_aprobada_a_Comprador();
        notificacion_aprobada_a_Vendedor();
        DtoAviso dto_aviso = new DtoAviso();
        CtrAviso ctr_aviso = new CtrAviso();
        int id_de_aviso = int.Parse(Session["id_aviso_implicado"].ToString());
        ctr_aviso.Ctrl_Actualizar_Estado_Compra(id_de_aviso, estado_interno_aprobado);

        ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "CompraAprobada();", true);

    }
    public void notificacion_aprobada_a_Comprador()
    {
        DtoNotificacion dto_notificacion = new DtoNotificacion();
        DtoPersona dto_persona = new DtoPersona();
        CtrNotificacion ctr_notificacion = new CtrNotificacion();
        dto_persona.id_persona = int.Parse(Session["id_comprador_persona"].ToString());
        dto_notificacion.fecha_emision = System.DateTime.Now;
        dto_notificacion.clase_visto = "novisto";
        dto_notificacion.flg_visto = "0";
        dto_notificacion.titulo_color = "text-success";
        dto_notificacion.titulo = "Peticion Aprobada";
        dto_notificacion.mensaje = "Felicidades su peticion de compra ha sido aprobado";
        dto_notificacion.imagen = "mihogar-peru.png";
        dto_notificacion.flg_noti_mostrado = "0";
        dto_notificacion.id_persona = dto_persona.id_persona;
        ctr_notificacion.Ctr_InsertarNotificaciones(dto_notificacion);
    }
    public void notificacion_aprobada_a_Vendedor()
    {
        DtoNotificacion dto_notificacion = new DtoNotificacion();
        DtoPersona dto_persona = new DtoPersona();
        CtrNotificacion ctr_notificacion = new CtrNotificacion();
        dto_persona.id_persona = int.Parse(Session["id_vendedor_persona"].ToString());
        dto_notificacion.fecha_emision = System.DateTime.Now;
        dto_notificacion.clase_visto = "novisto";
        dto_notificacion.flg_visto = "0";
        dto_notificacion.titulo_color = "text-success";
        dto_notificacion.titulo = "Aprobacion de peticion de compra de su inmueble";
        dto_notificacion.mensaje = "Felicidades su aviso ya está en proceso de compra";
        dto_notificacion.imagen = "mihogar-peru.png";
        dto_notificacion.flg_noti_mostrado = "0";
        dto_notificacion.id_persona = dto_persona.id_persona;
        ctr_notificacion.Ctr_InsertarNotificaciones(dto_notificacion);
    }

    public void notificacion_rechazada_a_vendedor()
    {
        DtoNotificacion dto_notificacion = new DtoNotificacion();
        DtoPersona dto_persona = new DtoPersona();
        DtoAviso dto_aviso = new DtoAviso();
        CtrAviso ctr_aviso = new CtrAviso();
        CtrNotificacion ctr_notificacion = new CtrNotificacion();
        dto_persona.id_persona = int.Parse(Session["id_vendedor_persona"].ToString());
        dto_notificacion.fecha_emision = System.DateTime.Now;
        dto_notificacion.clase_visto = "novisto";
        dto_notificacion.flg_visto = "0";
        dto_notificacion.titulo_color = "text-success";
        dto_notificacion.titulo = "Se ha rechazado la solicitud de compra de su inmueble por " + ListRazon.Text;
        dto_notificacion.mensaje = Request.Form["txtRechazo"];
        dto_notificacion.imagen = "mihogar-peru.png";
        dto_notificacion.flg_noti_mostrado = "0";
        dto_notificacion.id_persona = dto_persona.id_persona;
        ctr_notificacion.Ctr_InsertarNotificaciones(dto_notificacion);
    }
    public void notificacion_rechazada_a_comprador()
    {
        DtoNotificacion dto_notificacion = new DtoNotificacion();
        DtoPersona dto_persona = new DtoPersona();
        DtoAviso dto_aviso = new DtoAviso();
        CtrAviso ctr_aviso = new CtrAviso();
        CtrNotificacion ctr_notificacion = new CtrNotificacion();
        dto_persona.id_persona = int.Parse(Session["id_comprador_persona"].ToString());
        dto_notificacion.fecha_emision = System.DateTime.Now;
        dto_notificacion.clase_visto = "novisto";
        dto_notificacion.flg_visto = "0";
        dto_notificacion.titulo_color = "text-success";
        dto_notificacion.titulo = "Su peticion de compra ha sido rechazada " + ListRazon.Text;
        dto_notificacion.mensaje = Request.Form["txtRechazo"];
        dto_notificacion.imagen = "mihogar-peru.png";
        dto_notificacion.flg_noti_mostrado = "0";
        dto_notificacion.id_persona = dto_persona.id_persona;
        ctr_notificacion.Ctr_InsertarNotificaciones(dto_notificacion);
    }
    protected void btnRechazar_Click(object sender, EventArgs e)
    {
        notificacion_rechazada_a_comprador();
        notificacion_rechazada_a_vendedor();
           DtoAviso dto_aviso = new DtoAviso();
        CtrAviso ctr_aviso = new CtrAviso();
        int id_de_aviso = int.Parse(Session["id_aviso_implicado"].ToString());
        ctr_aviso.Ctrl_Actualizar_Estado_Compra(id_de_aviso, 3);
        ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "CompraRechazada();", true);

    }
    protected void btnCancelar_Click(object sender, EventArgs e)
    {

    }
    protected void ListaRazon_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void CargarDireccionInmueble()
    {
        DtoAviso dto_aviso = new DtoAviso();
        CtrAviso ctrl_aviso = new CtrAviso();
        dto_aviso.codigo = int.Parse(Session["id_aviso"].ToString());
        ctrl_aviso.Ctrl_Cargar_localizacion_del_aviso(dto_aviso);
        txtDepartamentoProvinciaDistrito.Text = dto_aviso.departamento_provincia_distrito;
        txtLatitud.Text = dto_aviso.latitud;
        txtLongitud.Text = dto_aviso.longitud;
        txtRegionLocalizada.Text = dto_aviso.region_inmueble;
        txtRegion.Text = dto_aviso.region_inmueble;
        txtDireccionInmueble.Text = txtMiDireccion.Text;
    }
}

