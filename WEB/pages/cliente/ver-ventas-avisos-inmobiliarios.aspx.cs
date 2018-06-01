using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using CTR;

public partial class pages_cliente_ver_ventas_avisos_inmobiliarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListarVentas_Avisos_Inmobiliarios();
        }
    }

    public void ListarVentas_Avisos_Inmobiliarios()
    {

        DtoAviso dto_aviso = new DtoAviso();
        CtrAviso ctr_aviso = new CtrAviso();

        gvVerVentasAI.DataSource = ctr_aviso.Ctr_ListarVentas_Avisos_Inmobiliarios(int.Parse(Session["id_persona"].ToString()));
        gvVerVentasAI.DataBind();
    }

    //asasd

    protected void gvVerVentasAI_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ver")
        {
            int index = Convert.ToInt32(e.CommandArgument);

            DtoPersonal dto_personal = new DtoPersonal();

            var colsNoVisible = gvVerVentasAI.DataKeys[index].Values;
            string id_personax = colsNoVisible[0].ToString();
            string codigo = colsNoVisible[1].ToString();
            string estado = colsNoVisible[2].ToString();
            Session["id_personax"] = id_personax;
            Session["codigo"] = codigo;
            Session["estado"] =estado;
            Session["condicion"] = "Ventas";
            //int id_colaborador = int.Parse(Session["id_colaborador"].ToString());
            //codUsuario = codViajero
            //Response.Redirect("Informacion-colaborador.aspx?id=" + id);  //aqui mandaba por la url el id , pero ahora ya no se manda pes
            Response.Redirect("ver-informacion-de-aviso-cliente.aspx");
        }
    }

    protected void gvVerVentasAI_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvVerVentasAI_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvVerVentasAI.PageIndex = e.NewPageIndex;
        ListarVentas_Avisos_Inmobiliarios();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
}