using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using DAO;
using CTR;

public partial class registro : System.Web.UI.Page
{
    CtrPersona ctr_persona = new CtrPersona();
    protected void Page_Load(object sender, EventArgs e)
    {
        Documento_existe.Attributes.Add("style", "DISPLAY: none");
        Correo_existe.Attributes.Add("style", "DISPLAY: none");
        ApagarTimer.Attributes.Add("style", "DISPLAY: none");
    }


    protected void Timer1_Correo_Y_Documento_existen_Tick(object sender, EventArgs e)
    {

        if (Request.Form["txtCorreo"] != "")
        {

            if (ctr_persona.CtrconsultarPersonaPorCorreo(Request.Form["txtCorreo"]))
            {
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "CorreoYaExiste();", true);
                Correo_existe.Text = "Si existe";
            }
            else
            {
                Documento_existe.Text = "No existe";
            }
        }
        if (Request.Form["txtDocumento"] != "")
        {
            if (ctr_persona.CtrConsultarDocumentoPersona(int.Parse(Request.Form["txtDocumento"])))
            {
                Documento_existe.Text = "Si existe";
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), "mostrarMensaje", "DocumentoYaExiste();", true);
            }
            else
            {
                Documento_existe.Text = "No existe";
            }
        }
    }
}