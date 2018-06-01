using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using CTR;

public partial class pages_cliente_ver_favoritos_avisos_inmobiliarios_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListarFavoritos();
        }

    }

    public void ListarFavoritos()
    {

        DtoFavoritos dto_favoritos = new DtoFavoritos();
        CtrFavoritos ctr_favoritos = new CtrFavoritos();

        gvVerFavoritos_Avisos_Inmobiliarios.DataSource = ctr_favoritos.Ctr_ListarFavoritos(int.Parse(Session["id_persona"].ToString()));
        gvVerFavoritos_Avisos_Inmobiliarios.DataBind();
    }



    protected void gvVerFavoritos_Avisos_Inmobiliarios_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ver")
        {
            int index = Convert.ToInt32(e.CommandArgument);

            DtoPersonal dto_personal = new DtoPersonal();

            var colsNoVisible = gvVerFavoritos_Avisos_Inmobiliarios.DataKeys[index].Values;
            string id = colsNoVisible[0].ToString();
            Session["id_aviso"] = id;
            //int id_colaborador = int.Parse(Session["id_colaborador"].ToString());
            //codUsuario = codViajero
            //Response.Redirect("Informacion-colaborador.aspx?id=" + id);  //aqui mandaba por la url el id , pero ahora ya no se manda pes
            Response.Redirect("ver-información-aviso.aspx");
        }
    }

    protected void gvVerFavoritos_Avisos_Inmobiliarios_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvVerFavoritos_Avisos_Inmobiliarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvVerFavoritos_Avisos_Inmobiliarios.PageIndex = e.NewPageIndex;
        ListarFavoritos();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
}