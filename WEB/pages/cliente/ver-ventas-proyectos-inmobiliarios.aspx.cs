using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using CTR;

public partial class pages_cliente_ver_ventas_proyectos_inmobiliarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListarVentas_Proyectos_Inmobiliarios();
        }
    }

    public void ListarVentas_Proyectos_Inmobiliarios()
    {

        DtoAviso dto_aviso = new DtoAviso();
        CtrAviso ctr_aviso = new CtrAviso();

        gvVerVentasProyectosInmobiliarios.DataSource = ctr_aviso.Ctr_ListarVentas_Proyectos_Inmobiliarios(int.Parse(Session["id_persona"].ToString()));
        gvVerVentasProyectosInmobiliarios.DataBind();
    }

    //asasd

    protected void gvVerVentasProyectosInmobiliarios_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ver")
        {
            int index = Convert.ToInt32(e.CommandArgument);

            DtoPersonal dto_personal = new DtoPersonal();

            var colsNoVisible = gvVerVentasProyectosInmobiliarios.DataKeys[index].Values;
            string id = colsNoVisible[0].ToString();
            Session["id_aviso"] = id;
            //int id_colaborador = int.Parse(Session["id_colaborador"].ToString());
            //codUsuario = codViajero
            //Response.Redirect("Informacion-colaborador.aspx?id=" + id);  //aqui mandaba por la url el id , pero ahora ya no se manda pes
            Response.Redirect("ver-información-aviso.aspx");
        }
    }

    protected void gvVerVentasProyectosInmobiliarios_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvVerVentasProyectosInmobiliarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvVerVentasProyectosInmobiliarios.PageIndex = e.NewPageIndex;
        ListarVentas_Proyectos_Inmobiliarios();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
}