using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using CTR;

public partial class pages_cliente_ver_favoritos_proyectos_inmobiliarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListarFavoritos_Proyectos_Inmobiliarios();
        }
    }

    public void ListarFavoritos_Proyectos_Inmobiliarios()
    {

        DtoFavoritos dto_favoritos = new DtoFavoritos();
        CtrFavoritos ctr_favoritos = new CtrFavoritos();

        gvVerFavoritosProyectosInmobiliarios.DataSource = ctr_favoritos.Ctr_ListarFavoritos_Proyectos_Inmobiliarios(int.Parse(Session["id_persona"].ToString()));
        gvVerFavoritosProyectosInmobiliarios.DataBind();
    }

    //asd

    protected void gvVerFavoritosProyectosInmobiliarios_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ver")
        {
            int index = Convert.ToInt32(e.CommandArgument);

            DtoPersonal dto_personal = new DtoPersonal();

            var colsNoVisible = gvVerFavoritosProyectosInmobiliarios.DataKeys[index].Values;
            string id = colsNoVisible[0].ToString();
            Session["id_aviso"] = id;
            //int id_colaborador = int.Parse(Session["id_colaborador"].ToString());
            //codUsuario = codViajero
            //Response.Redirect("Informacion-colaborador.aspx?id=" + id);  //aqui mandaba por la url el id , pero ahora ya no se manda pes
            Response.Redirect("ver-información-aviso.aspx");
        }
    }

    protected void gvVerFavoritosProyectosInmobiliarios_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvVerFavoritosProyectosInmobiliarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvVerFavoritosProyectosInmobiliarios.PageIndex = e.NewPageIndex;
        ListarFavoritos_Proyectos_Inmobiliarios();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
}