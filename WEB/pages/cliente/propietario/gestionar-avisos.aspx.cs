using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_cliente_propietario_gestionar_avisos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCrearPublicacion_Click(object sender, EventArgs e)
    {
        Response.Redirect("tipo-aviso.aspx?idtipo=1");
    }
}