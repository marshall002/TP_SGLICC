using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTR;
using DTO;
using DAO;
using System.Data;
using CuteWebUI;
using System.Web.Services;
using System.Web.Script.Services;
using System.Data.SqlClient;

public partial class pages_cliente_propietario_tipo_aviso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Aviso"] = null;
    }


    protected void btnContinuarPremium_Click(object sender, EventArgs e)
    {
        Session["Aviso"] = "Premium";
        Session["CantidadDias"] = 60;
        Response.Redirect("crear-aviso.aspx?idtipo=1");

    }

    protected void btnContinuarDestacado_Click(object sender, EventArgs e)
    {
        Session["Aviso"] = "Destacado";
        Session["CantidadDias"] = 45;
        Response.Redirect("crear-aviso.aspx?idtipo=1");

    }

    protected void btnContinuarSimple_Click(object sender, EventArgs e)
    {
        Session["Aviso"] = "Simple";
        Session["CantidadDias"] = 30;
        Response.Redirect("crear-aviso.aspx?idtipo=1");

    }
}