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


public partial class inicio : System.Web.UI.Page
{

    DaoDepartamento da_departamento = new DaoDepartamento();
    DaoProvincia da_provincia = new DaoProvincia();
    DaoDistrito da_distrito = new DaoDistrito();

    DataTable Tabla;
    private CtrNotificacion ctrNotificacion;

    protected void Page_Load(object sender, EventArgs e)
    {
        //string token = Convert.ToString(Request.QueryString["token"]);
        //if(token!="")
        //{
        //    DtoUsuario dto_usuario = new DtoUsuario();
        //    CtrUsuario ctr_usuario = new CtrUsuario();
        //    if(ctr_usuario.Ctr_VerificarToken(dto_usuario,token))
        //    {

        //    }
        //}

        if (!IsPostBack)
        {

            CargarDepartamentos();
            CargarProvincias();
            CargarDistritos();
            ddlDepartamentos.AutoPostBack = true;
            ddlProvincias.AutoPostBack = true;
            ddlDistritos.AutoPostBack = true;
            ctrNotificacion = new CtrNotificacion();
        }

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
        ddlProvincias.Enabled = true;
        ddlDistritos.Enabled = true;
        CargarProvinciaDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
        CargarDistritosDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
    }

    protected void ddlProvincias_SelectedIndexChanged(object sender, EventArgs e)
    {
        CargarDistritosDeProvincia(int.Parse(ddlProvincias.SelectedValue));
        ddlProvincias.Enabled = true;
        ddlDistritos.Enabled = true;

        if (int.Parse(ddlProvincias.SelectedValue) < 1)
        {
            CargarDistritosDeDepartamento(int.Parse(ddlDepartamentos.SelectedValue));
        }
    }

    protected void ddlDistritos_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlProvincias.Enabled = true;
        ddlDistritos.Enabled = true;
    }

    protected void bDepartamento_Click(object sender, EventArgs e)
    {

    }

    protected void bCancelar_Click(object sender, EventArgs e)
    {

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        Session["id_Distritox"] = ddlDistritos.SelectedValue;
        Response.Redirect("Listar_buscar_avisos.aspx");
    }
}


