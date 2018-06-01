using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using CTR;


public partial class pages_cliente_propietario_gestionar_avisos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ListarAvisosCreados();
    }



    public void ListarAvisosCreados()
    {

        DtoAviso dto_aviso = new DtoAviso();
        CtrAviso ctr_aviso = new CtrAviso();
        dto_aviso.id_persona = int.Parse(Session["id_persona"].ToString());
        gvAvisosCreados.DataSource = ctr_aviso.Ctr_ListarAvisosCreados(dto_aviso);
        gvAvisosCreados.DataBind();
    }


    protected void gvAvisosCreados_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ver")
        {
            int index = Convert.ToInt32(e.CommandArgument);

            DtoPersonal dto_personal = new DtoPersonal();

            var colsNoVisible = gvAvisosCreados.DataKeys[index].Values;
            string id = colsNoVisible[0].ToString();
            Session["id_aviso"] = id;
            //int id_colaborador = int.Parse(Session["id_colaborador"].ToString());
            //codUsuario = codViajero
            //Response.Redirect("Informacion-colaborador.aspx?id=" + id);  //aqui mandaba por la url el id , pero ahora ya no se manda pes
            Response.Redirect("ver-informacion-aviso.aspx");
        }
    }


    protected void gvAvisosCreados_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void gvAvisosCreados_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvAvisosCreados.PageIndex = e.NewPageIndex;
        ListarAvisosCreados();
    }


    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }


    protected void btnCrearPublicacion_Click(object sender, EventArgs e)
    {
        Response.Redirect("tipo-aviso.aspx?idtipo=1");
    }
}