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


public partial class pages_personal_jefe_de_ventas_ver_informacion_de_sub_aviso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  try
        //{
          //  if (!IsPostBack)
           // {

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
                CargarInformaciondelAviso();
                CargarImagenes();
                Cargar_Carcteristicas_Adicionales_de_Inmueble();
                Cargar_Servicios_de_Inmueble();
                Cargar_Ambientes_de_Inmueble();
                Cargar_Adicionales_de_Inmueble();
                Cargar_AreasComunes_de_Inmueble();
                Cargar_CaracteristicasGenerales_de_Inmueble();
                Cargar_Nombres_Caracteristicas_del_Inmueble();
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
        //    }
        //}
     //   catch
       // {

         //   Session.Clear();
           // Session.Abandon();
            //Response.Redirect("~/inicio.aspx");
     //   }



    }

    public void CargarInformaciondelAviso()
    {
        DtoInmuebles_x_avisos dto_subaviso = new DtoInmuebles_x_avisos();
        CtrInmueble_x_avisos ctr_subaviso = new CtrInmueble_x_avisos();
        DtoAviso dto_aviso = new DtoAviso();
        dto_aviso.codigo = int.Parse(Session["id_aviso"].ToString());
        dto_subaviso.Piso= int.Parse(Session["id_subaviso"].ToString());
        ctr_subaviso.Cargar_informacion_de_SubAviso(dto_subaviso, dto_aviso);
        txtTipoInmueble.Text = dto_subaviso.descripcion_tipo_inmueble.ToString();
        txtSubTipoInmueble.Text = dto_subaviso.descripcion_subtipo_inmueble.ToString();
        txtDescripcion.Text = dto_subaviso.descripcion_sub_aviso.ToString();
        txtPrecio.Text = "S/." + dto_subaviso.precio_sub_aviso.ToString();



    }
    public void CargarImagenes()
    {
        int p = 0;
        DtoInmuebles_x_avisos dto_subaviso = new DtoInmuebles_x_avisos();
        DtoAviso dto_aviso = new DtoAviso();
        CtrImagenes_sub_Avisos ctrImgen = new CtrImagenes_sub_Avisos();
        DtoImagenes_sub_Avisos[] dto_imagen = new DtoImagenes_sub_Avisos[100];
        dto_aviso.codigo = int.Parse(Session["id_aviso"].ToString());
        dto_subaviso.Piso = int.Parse(Session["id_subaviso"].ToString());
        List<DtoImagenes_sub_Avisos> list_imagen = new List<DtoImagenes_sub_Avisos>();
        ArrayList Lista = new ArrayList();
        list_imagen = ctrImgen.Ctr_Capturar_Imagen(dto_aviso, dto_subaviso);
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
        DtoInmuebles_x_avisos dto_subaviso = new DtoInmuebles_x_avisos();
        DtoCaracteristicasAviso dto_aviso = new DtoCaracteristicasAviso();
        DtoCaracteristicasAviso[] dto_sub_c_a = new DtoCaracteristicasAviso[100];
        CtrInmueble_x_avisos ctrlsub = new CtrInmueble_x_avisos();
        dto_aviso.codigo = int.Parse(Session["id_aviso"].ToString());
        dto_subaviso.Piso = int.Parse(Session["id_subaviso"].ToString());
        List<DtoCaracteristicasAviso> list_sub_caracteristica_adicionales = new List<DtoCaracteristicasAviso>();
        list_sub_caracteristica_adicionales = ctrlsub.Ctrl_CargaCaracteristicasAdicionalesdelSubAviso(dto_aviso,dto_subaviso,caracteristica);
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
        txtBaño.Attributes.Add("style", "background-color: white");
        txtCochera.Attributes.Add("style", "background-color: white");
        txtDescripcion.Attributes.Add("style", "background-color: white");
        txtDormitorio.Attributes.Add("style", "background-color: white");
        txtEstado.Attributes.Add("style", "background-color: white");
        txtPrecio.Attributes.Add("style", "background-color: white");
        txtSubTipoInmueble.Attributes.Add("style", "background-color: white");
        txtTipoAnunciante.Attributes.Add("style", "background-color: white");
        txtTipoInmueble.Attributes.Add("style", "background-color: white");
        txtNPiso.Attributes.Add("style", "background-color: white");
        txtDepartamento.Attributes.Add("style", "background-color: white");
        txtTipoPublicacion.Attributes.Add("style", "background-color: white");
        txtDetalles.Attributes.Add("style", "background-color: white");
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
        DtoInmuebles_x_avisos dto_subaviso = new DtoInmuebles_x_avisos();
        DtoCaracteristicasAviso dto_aviso = new DtoCaracteristicasAviso();
        dto_subaviso.Piso = int.Parse(Session["id_subaviso"].ToString());
        DtoCaracteristicasAviso[] dto_sub_c_a = new DtoCaracteristicasAviso[100];
        CtrInmueble_x_avisos ctrlsub = new CtrInmueble_x_avisos();
        dto_aviso.codigo = int.Parse(Session["id_aviso"].ToString());
        List<DtoCaracteristicasAviso> list_sub_caracteristica_adicionales = new List<DtoCaracteristicasAviso>();
        list_sub_caracteristica_adicionales = ctrlsub.Ctrl_CargaCaracteristicasAdicionalesdelSubAviso(dto_aviso,dto_subaviso,caracteristica);
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
        

    }


    protected void ListaRazon_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}