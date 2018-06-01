using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using DAO;
using CTR;
using System.Data.SqlClient;
using System.Data;

public partial class pages_personal_Jefe_de_Compras_Supervisar_Compra_Inmueble : System.Web.UI.Page
{

    CtrAviso ctr_Avisos = new CtrAviso();
    int Tipo_de_Cliente=1;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


            if (!IsPostBack)
            {
            Listar_Compras();
            }
        }
        catch (Exception error)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/inicio.aspx");
        }

    }

    public void Listar_Compras()
    {

        DtoAviso dto_aviso = new DtoAviso();
        CtrAviso ctrl_aviso = new CtrAviso();
        gvCompras.DataSource = ctrl_aviso.Ctr_Listar_compra_por_Estado(1);
        gvCompras.DataBind();
    }
    public void Listar_Compras_allItems()
    {

        DtoAviso dto_aviso = new DtoAviso();
        CtrAviso ctrl_aviso = new CtrAviso();
        gvCompras.DataSource = ctrl_aviso.Ctr_Listar_Compras_AllItems();
        gvCompras.DataBind();
    }


    protected void gvAvisos_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvAvisos_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ver")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var colsNoVisible1 = gvCompras.DataKeys[index].Values;
            string id = colsNoVisible1[0].ToString();
            string idc = colsNoVisible1[1].ToString();
            string ida = colsNoVisible1[2].ToString();
            string idavisoimplicado = colsNoVisible1[3].ToString();
            string nom_comprador = colsNoVisible1[4].ToString();
            Session["id_vendedor_persona"] = id;
            Session["id_comprador_persona"] = idc;
            Session["id_aviso"] = ida;
            Session["id_aviso_implicado"] = idavisoimplicado;
            Session["nombre_comprador"] = nom_comprador;
            

            /* int index = Convert.ToInt32(e.CommandArgument);

             DtoPersonal dto_personal = new DtoPersonal();

             var colsNoVisible = gvAvisos.DataKeys[index].Values;
             string id = colsNoVisible[0].ToString();
             Session["id_cliente"] = id;
             //int id_colaborador = int.Parse(Session["id_colaborador"].ToString());
             //codUsuario = codViajero
             //Response.Redirect("Informacion-colaborador.aspx?id=" + id);  //aqui mandaba por la url el id , pero ahora ya no se manda pes*/
            Response.Redirect("Detalles-compra.aspx");
        }
    }
    private void llenarDDL()
    {
        //SqlConnection con = new SqlConnection("data source=MARTIN\\LOCAL; initial catalog=BD_SGLTCC; integrated security=SSPI;");
        //SqlCommand cmd = new SqlCommand("select id_estado,descripcion from Tipo_Estado", con);
        //SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //DataSet ds = new DataSet();
        //sda.Fill(ds);
        //ddl_Tipo_de_estado.DataSource = ds;
        //ddl_Tipo_de_estado.DataTextField = "descripcion";
        //ddl_Tipo_de_estado.DataValueField = "id_estado";
        //ddl_Tipo_de_estado.DataBind();
    }
    protected void gvAvisos_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvCompras.PageIndex = e.NewPageIndex;
        Listar_Compras();
    }
    protected void ddl_Tipo_de_estado_SelectedIndexChanged(object sender, EventArgs e)
    {
        gvCompras.DataSource = ctr_Avisos.Ctr_Listar_compra_por_Estado(int.Parse(ddl_Tipo_de_estado.SelectedValue));
        gvCompras.DataBind();
    }
    protected void Che_AllItems_CheckedChanged(object sender, EventArgs e)
    {

        //if (Che_AllItems.Checked == true)
        //{ Listar_Compras_allItems(); }
        //else
        //{
        //    Listar_Compras();
        //}
    }

    protected void btnbuscar_Click(object sender, EventArgs e)
    {
        gvCompras.DataSource = ctr_Avisos.Ctr_Listar_compra_por_Estado(int.Parse(ddl_Tipo_de_estado.SelectedValue));
        gvCompras.DataBind();
    }
}