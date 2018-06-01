using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTR;
using DTO;

public partial class Listar_ventas_avisos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            if (Session["id_persona"] == null)
            {
                Listar_ventas_usuario();

            }
            else
            {
                Listar_ventas(int.Parse(Session["id_persona"].ToString()));
            }

           
        }
    }

    public void Listar_ventas_usuario()
    {
        CtrAviso caviso = new CtrAviso();


        gvAventas.DataSource = caviso.Ctr_Listar_avisos_ventas_usuario();
        

        
        gvAventas.DataBind();
    
    }

    public void Listar_ventas(int id_persona)
{
        CtrAviso caviso = new CtrAviso();
       gvAventas.DataSource = caviso.Ctr_Listar_avisos_ventas(id_persona);
        gvAventas.DataBind();
}

protected void gvAventas_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "ver")
    {
        int index = Convert.ToInt32(e.CommandArgument);

       

        var colsNoVisible = gvAventas.DataKeys[index].Values;
        string id = colsNoVisible[0].ToString();
         string ida = colsNoVisible[1].ToString();
          Session["id_cliente"] = id;
          Session["id_aviso"] = ida;

            //int id_colaborador = int.Parse(Session["id_colaborador"].ToString());
            //codUsuario = codViajero
            //Response.Redirect("Informacion-colaborador.aspx?id=" + id);  //aqui mandaba por la url el id , pero ahora ya no se manda pes
            Response.Redirect("ver-informacion-usuario.aspx");
    }
}

protected void gvAventas_SelectedIndexChanged(object sender, EventArgs e)
{

}

protected void gvAventas_PageIndexChanging(object sender, GridViewPageEventArgs e)
{
    
        if (Session["id_persona"] == null)
        {
            gvAventas.PageIndex = e.NewPageIndex;
            Listar_ventas_usuario();
        }
        else
        {
            gvAventas.PageIndex = e.NewPageIndex;
            Listar_ventas(int.Parse(Session["id_persona"].ToString()));
        }
    }

protected void Timer1_Tick(object sender, EventArgs e)
{

}
    public void CargarImagenes()
    {
        int p = 0;
        DtoAviso dto_aviso1 = new DtoAviso();
        CtrImagen ctrImgen = new CtrImagen();
        DtoImagenes_X_Aviso[] dto_imagen = new DtoImagenes_X_Aviso[100];
        dto_aviso1.codigo = int.Parse(Session["id_aviso"].ToString());
        List<DtoImagenes_X_Aviso> list_imagen = new List<DtoImagenes_X_Aviso>();
        ArrayList Lista = new ArrayList();
        list_imagen = ctrImgen.Ctr_Capturar_Imagen(dto_aviso1);
        for (int i = 0; i < list_imagen.Count(); i++)
        {
            p++;
            dto_imagen[i] = list_imagen.ElementAt(i);
            Lista.Add("/pages/imagenes/inmuebles/" + dto_imagen[i].tipo_servicio + "/" + dto_imagen[i].imagen);
        }

        

    }
}
 