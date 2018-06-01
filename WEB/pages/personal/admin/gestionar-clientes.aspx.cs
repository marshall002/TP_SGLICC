using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using DAO;
using CTR;

public partial class pages_personal_admin_gestionar_clientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ListarClientes();
    }

    public void ListarClientes()
    {

        DtoCliente dto_cliente = new DtoCliente();
        CtrCliente ctr_cliente = new CtrCliente();

        gvClientes.DataSource = ctr_cliente.Ctr_ListarClientes();
        gvClientes.DataBind();
    }

    protected void gvClientes_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ver")
        {
            int index = Convert.ToInt32(e.CommandArgument);

            DtoPersonal dto_personal = new DtoPersonal();

            var colsNoVisible = gvClientes.DataKeys[index].Values;
            string id = colsNoVisible[0].ToString();
            Session["id_cliente"] = id;
            //int id_colaborador = int.Parse(Session["id_colaborador"].ToString());
            //codUsuario = codViajero
            //Response.Redirect("Informacion-colaborador.aspx?id=" + id);  //aqui mandaba por la url el id , pero ahora ya no se manda pes
            Response.Redirect("Informacion-personal.aspx");
        }
    }

    protected void gvClientes_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvClientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvClientes.PageIndex = e.NewPageIndex;
        ListarClientes();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
}