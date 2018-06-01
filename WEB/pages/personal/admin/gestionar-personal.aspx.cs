using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using DAO;
using CTR;

public partial class pages_admin_gestionar_personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ListarPersonal();
        Session["comprobar_drop"] = 0;
        Session["Departamento"] = 0;
        Session["Provincia"] = 0;
        Session["Distrito"] = 0;
        Session["visible1"] = 0;
        Session["visible2"] = 0;
        Session["llave"] = 0;
        Session["llave2"] = 0;

      
        Session["pase"] = 0;

        Session["completado"] = "no";
        Session["validar_correo_o_dni"] = 0;

        //Destruyendo la Session Cliente y Session Personal

        Session["id_cliente"] = null;
        Session["id_personal"] = null;
    }

    public void ListarPersonal()
    {
       
        DtoPersonal dto_personal = new DtoPersonal();     
        CtrPersonal ctr_personal = new CtrPersonal();
       
        gvPersonal.DataSource = ctr_personal.Ctr_ListarPersonal();
        gvPersonal.DataBind();
    }


    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("registrar-personal.aspx");
    }

    protected void gvPersonal_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ver")
        {
            int index = Convert.ToInt32(e.CommandArgument);

            DtoPersonal dto_personal = new DtoPersonal();

            var colsNoVisible = gvPersonal.DataKeys[index].Values;
            string id = colsNoVisible[0].ToString();
            Session["id_personal"] = id;
            //int id_colaborador = int.Parse(Session["id_colaborador"].ToString());
            //codUsuario = codViajero
            //Response.Redirect("Informacion-colaborador.aspx?id=" + id);  //aqui mandaba por la url el id , pero ahora ya no se manda pes
            Response.Redirect("Informacion-personal.aspx");
        }
    }

    protected void gvPersonal_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvPersonal_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvPersonal.PageIndex = e.NewPageIndex;
        ListarPersonal();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
}