using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using CTR;


public partial class pages_cliente_empresa_gestionar_proyectos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        ListarClientes(int.Parse(Session["id_persona"].ToString()));
    }

    public void ListarClientes(int id_persona)
    {

        DtoCliente dto_cliente = new DtoCliente();
        CtrCliente ctr_cliente = new CtrCliente();

        gvProyectos.DataSource = ctr_cliente.Ctr_ListarClientes();
        gvProyectos.DataBind();
    }

    protected void gvProyectos_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ver")
        {
            int index = Convert.ToInt32(e.CommandArgument);

            DtoPersonal dto_personal = new DtoPersonal();

            var colsNoVisible = gvProyectos.DataKeys[index].Values;
            string id = colsNoVisible[0].ToString();
            Session["id_cliente"] = id;
            //int id_colaborador = int.Parse(Session["id_colaborador"].ToString());
            //codUsuario = codViajero
            //Response.Redirect("Informacion-colaborador.aspx?id=" + id);  //aqui mandaba por la url el id , pero ahora ya no se manda pes
            Response.Redirect("Informacion-personal.aspx");
        }
    }

    protected void gvProyectos_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvProyectos_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvProyectos.PageIndex = e.NewPageIndex;

        ListarClientes(int.Parse(Session["id_persona"].ToString()));
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }

    protected void btnCrearPublicacion_Click(object sender, EventArgs e)
    {
        Response.Redirect("tipo-aviso-empresa.aspx?idtipo=1");
    }
}