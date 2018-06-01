using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using CTR;

public partial class pages_personal_jefe_de_ventas_gestionar_proyectos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ListarProyectos();
    }
    public void ListarProyectos()
    {
        DtoAviso dto_Aviso = new DtoAviso();
        CtrAviso ctrl_aviso = new CtrAviso();
        gvAvisos.DataSource = ctrl_aviso.Ctrl_ListarProyectos();
        gvAvisos.DataBind();
    }
    protected void gvAvisos_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ver")
        {

            int index = Convert.ToInt32(e.CommandArgument);
            var colsNoVisible1 = gvAvisos.DataKeys[index].Values;
            string id = colsNoVisible1[0].ToString();
            string ida = colsNoVisible1[1].ToString();
            Session["id_cliente"] = id;
            Session["id_aviso"] = ida;
            /* int index = Convert.ToInt32(e.CommandArgument);

             DtoPersonal dto_personal = new DtoPersonal();

             var colsNoVisible = gvAvisos.DataKeys[index].Values;
             string id = colsNoVisible[0].ToString();
             Session["id_cliente"] = id;
             //int id_colaborador = int.Parse(Session["id_colaborador"].ToString());
             //codUsuario = codViajero
             //Response.Redirect("Informacion-colaborador.aspx?id=" + id);  //aqui mandaba por la url el id , pero ahora ya no se manda pes*/
            Response.Redirect("ver-informacion-de-proyecto.aspx");
        }
    }

    protected void gvAvisos_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvAvisos_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvAvisos.PageIndex = e.NewPageIndex;
        ListarProyectos();
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
}