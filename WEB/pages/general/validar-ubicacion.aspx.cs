using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_general_validar_ubicacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        show_data();
    }

    protected void btn_save_Click(object sender, EventArgs e)
    {

        foreach (HttpPostedFile p in FileUpload1.PostedFiles)
        {
            p.SaveAs(MapPath("~/pages/imagenes/inmuebles/venta/" + p.FileName));
        }
        Response.Write(FileUpload1.PostedFiles.Count + " file Upload Successfully");
        show_data();
    }

    private void show_data()
    {
        DirectoryInfo d = new DirectoryInfo(MapPath("~/pages/imagenes/inmuebles/venta/"));
        FileInfo[] f = d.GetFiles();
        Repeater1.DataSource = f;
        Repeater1.DataBind();

    }

}