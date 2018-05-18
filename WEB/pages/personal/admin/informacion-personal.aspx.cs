using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using DAO;
using CTR;
using System.Globalization;

public partial class pages_personal_admin_informacion_personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DaoPersonal dao_personal = new DaoPersonal();

        if (!IsPostBack)
        {
            if ((string)Session["id_cliente"] != null)
            {
                Cargar_Informacion_Cliente();
                btnRegresarPersonal.Visible = false;
            }
            else
            {
            if ((string)Session["id_personal"] != null)
            {
             Cargar_Informacion_Personal();
             btnRegresarClientes.Visible = false;
            }

            }
        }
    }

    public void Cargar_Informacion_Personal()
    {
        DtoPersona dto_persona = new DtoPersona();
        DtoPersonal dto_personal = new DtoPersonal();        
        CtrPersonal ctr_personal = new CtrPersonal();
        int edad;
        dto_persona.id_persona = int.Parse(Session["id_personal"].ToString());
        ctr_personal.Ctr_CargarInformacionPersonal(dto_persona,dto_personal);

        //"MMMM d, yyyy  <--- marzo 7 1994
        //creado por royer ya muy bravo ya
        string[] myArray = new string[12]  {dto_personal.nombres, Convert.ToString(dto_personal.fecha_nac.HasValue ? dto_personal.fecha_nac.Value.ToString("dd-MM-yyyy") : "No Especificado"), dto_personal.direccion, dto_personal.nombre_distrito, Convert.ToString(dto_personal.celular), String.Format("{0:###-####}", dto_personal.telefono ), dto_personal.correo , dto_personal.dni , dto_personal.nombre_estado , dto_personal.tipo_perfil , dto_personal.nombre_empresa, Convert.ToString(dto_personal.ruc) };
        string[] myArray2 = new string[12] {txtNombrePersonal.Text, txtFechaNacimiento.Text, txtDireccion.Text     , txtProvinciaDistrito.Text   , txtCelular.Text                       , txtTelefono.Text                            , txtCorreo.Text  , txtDocumento.Text,   txtEstado.Text    , txtTipo.Text                  , txtNombre_Empresa.Text ,                       txtRuc.Text };
        int cero = 0;
        string cero2 = Convert.ToString(cero);
        for (int i = 0; i < myArray.Length; i++)
        {
            if (myArray[i] == "" || myArray[i] == null || myArray[i] == cero2 || myArray[i] == "-")
            {
                string a = "No Especificado";
                myArray2[i] = a;

            }
            else
            {
                myArray2[i] = myArray[i];
            }
        }
        //ya muy bravo ya
        int wa;
        string año1 = Convert.ToString(dto_personal.fecha_nac.HasValue ? dto_personal.fecha_nac.Value.ToString("yyyy") : "No Especificado");
        int? año2 = Int32.TryParse(año1, out wa) ? Int32.Parse(año1) : (int?)null;

        string mes1 = Convert.ToString(dto_personal.fecha_nac.HasValue ? dto_personal.fecha_nac.Value.ToString("MM") : "No Especificado");
        int? mes2 = Int32.TryParse(mes1, out wa) ? Int32.Parse(mes1) : (int?)null;

        string dia1 = Convert.ToString(dto_personal.fecha_nac.HasValue ? dto_personal.fecha_nac.Value.ToString("dd") : "No Especificado");
        int? dia2 = Int32.TryParse(dia1, out wa) ? Int32.Parse(dia1) : (int?)null;
        var today = DateTime.Today;
        //DateTime fechaNacimiento = new DateTime(año2.HasValue ? año2.Value : today.Year,  mes2.HasValue ? mes2.Value : today.Year, dia2.HasValue ? dia2.Value : today.Year);
        if (año1 != "No Especificado" && mes1 != "No Especificado" && dia1 != "No Especificado")
        {
            DateTime fechaNacimiento = new DateTime(año2.HasValue ? año2.Value : año2.Value, mes2.HasValue ? mes2.Value : mes2.Value, dia2.HasValue ? dia2.Value : dia2.Value);
            DateTime now = DateTime.Today;
            edad = DateTime.Today.Year - fechaNacimiento.Year;
            if (DateTime.Today < fechaNacimiento.AddYears(edad))
                edad--;
            txtFechaNacimiento.Text = myArray2[1] + "  ----> Edad : " + edad;
        }
        else
        {
            txtFechaNacimiento.Text = myArray2[1] + "  ----> Edad : ---";
        }
        img_Perfil.ImageUrl = dto_personal.img_ruta;
        txtNombrePersonal.Text = myArray2[0];
        //txtFechaNacimiento.Text = myArray2[1] + "  ----> Edad : " + edad;
        txtDireccion.Text = myArray2[2];
        txtProvinciaDistrito.Text = myArray2[3];
        txtCelular.Text = myArray2[4];
        txtTelefono.Text = myArray2[5];
        txtCorreo.Text = myArray2[6];
        txtDocumento.Text = myArray2[7];
        txtEstado.Text = myArray2[8];
        txtTipo.Text = myArray2[9];
        txtNombre_Empresa.Text = myArray2[10];
        txtRuc.Text = myArray2[11];
        logo_empresa.ImageUrl = dto_personal.logo;

        //txtNombrePersonal.Text = dto_personal.nombres;
        //txtFechaNacimiento.Text = dto_personal.fecha_nac;
        //txtDireccion.Text = dto_personal.direccion;
        //txtProvinciaDistrito.Text = dto_personal.nombre_distrito;
        //txtCelular.Text = Convert.ToString(dto_personal.celular);
        //txtTelefono.Text = Convert.ToString(dto_personal.telefono);
        //txtCorreo.Text = dto_personal.correo;
        //txtDocumento.Text = dto_personal.dni;
        //txtEstado.Text = dto_personal.estado;
        //txtTipo.Text = dto_personal.tipo_perfil;
        //txtNombre_Empresa.Text = dto_personal.nombre_empresa;
        //txtRuc.Text = Convert.ToString(dto_personal.ruc);

        
    }
    public void Cargar_Informacion_Cliente()
    {
        DtoPersona dto_persona = new DtoPersona();
        DtoCliente dto_cliente = new DtoCliente();
        CtrCliente ctr_cliente = new CtrCliente();
        int edad;
        dto_persona.id_persona = int.Parse(Session["id_cliente"].ToString());
        ctr_cliente.Ctr_CargarInformacionCliente(dto_persona, dto_cliente);

        //"MMMM d, yyyy  <--- marzo 7 1994
        //creado por royer ya muy bravo ya
        string[] myArray = new string[12] { dto_cliente.nombres, Convert.ToString(dto_cliente.fecha_nac.HasValue ? dto_cliente.fecha_nac.Value.ToString("dd-MM-yyyy") : "No Especificado"), dto_cliente.direccion, dto_cliente.nombre_distrito, Convert.ToString(dto_cliente.celular), String.Format("{0:###-####}", dto_cliente.telefono), dto_cliente.correo, dto_cliente.dni, dto_cliente.nombre_estado, dto_cliente.tipo_perfil, dto_cliente.nombre_empresa, Convert.ToString(dto_cliente.ruc) };
        string[] myArray2 = new string[12] { txtNombrePersonal.Text, txtFechaNacimiento.Text, txtDireccion.Text, txtProvinciaDistrito.Text, txtCelular.Text, txtTelefono.Text, txtCorreo.Text, txtDocumento.Text, txtEstado.Text, txtTipo.Text, txtNombre_Empresa.Text, txtRuc.Text };
        int cero = 0;
        string cero2 = Convert.ToString(cero);
        for (int i = 0; i < myArray.Length; i++)
        {
            if (myArray[i] == "" || myArray[i] == null || myArray[i] == cero2 || myArray[i] == "-")
            {
                string a = "No Especificado";
                myArray2[i] = a;

            }
            else
            {
                myArray2[i] = myArray[i];
            }
        }
        //ya muy bravo ya
        int wa;
        string año1 = Convert.ToString(dto_cliente.fecha_nac.HasValue ? dto_cliente.fecha_nac.Value.ToString("yyyy") : "No Especificado");
        int? año2 = Int32.TryParse(año1, out wa) ? Int32.Parse(año1) : (int?)null;

        string mes1 = Convert.ToString(dto_cliente.fecha_nac.HasValue ? dto_cliente.fecha_nac.Value.ToString("MM") : "No Especificado");
        int? mes2 = Int32.TryParse(mes1, out wa) ? Int32.Parse(mes1) : (int?)null;

        string dia1 = Convert.ToString(dto_cliente.fecha_nac.HasValue ? dto_cliente.fecha_nac.Value.ToString("dd") : "No Especificado");
        int? dia2 = Int32.TryParse(dia1, out wa) ? Int32.Parse(dia1) : (int?)null;
        var today = DateTime.Today;
        //DateTime fechaNacimiento = new DateTime(año2.HasValue ? año2.Value : today.Year,  mes2.HasValue ? mes2.Value : today.Year, dia2.HasValue ? dia2.Value : today.Year);
        if (año1 != "No Especificado" && mes1 != "No Especificado" && dia1 != "No Especificado")
        {
            DateTime fechaNacimiento = new DateTime(año2.HasValue ? año2.Value : año2.Value, mes2.HasValue ? mes2.Value : mes2.Value, dia2.HasValue ? dia2.Value : dia2.Value);
            DateTime now = DateTime.Today;
            edad = DateTime.Today.Year - fechaNacimiento.Year;
            if (DateTime.Today < fechaNacimiento.AddYears(edad))
                edad--;
            txtFechaNacimiento.Text = myArray2[1] + "  ----> Edad : " + edad;
        }
        else
        {
            txtFechaNacimiento.Text = myArray2[1] + "  ----> Edad : ---";
        }
        img_Perfil.ImageUrl = dto_cliente.img_ruta;
        txtNombrePersonal.Text = myArray2[0];
        //txtFechaNacimiento.Text = myArray2[1] + "  ----> Edad : " + edad;
        txtDireccion.Text = myArray2[2];
        txtProvinciaDistrito.Text = myArray2[3];
        txtCelular.Text = myArray2[4];
        txtTelefono.Text = myArray2[5];
        txtCorreo.Text = myArray2[6];
        txtDocumento.Text = myArray2[7];
        txtEstado.Text = myArray2[8];
        txtTipo.Text = myArray2[9];
        txtNombre_Empresa.Text = myArray2[10];
        txtRuc.Text = myArray2[11];
        logo_empresa.ImageUrl = dto_cliente.logo;

        //txtNombrePersonal.Text = dto_personal.nombres;
        //txtFechaNacimiento.Text = dto_personal.fecha_nac;
        //txtDireccion.Text = dto_personal.direccion;
        //txtProvinciaDistrito.Text = dto_personal.nombre_distrito;
        //txtCelular.Text = Convert.ToString(dto_personal.celular);
        //txtTelefono.Text = Convert.ToString(dto_personal.telefono);
        //txtCorreo.Text = dto_personal.correo;
        //txtDocumento.Text = dto_personal.dni;
        //txtEstado.Text = dto_personal.estado;
        //txtTipo.Text = dto_personal.tipo_perfil;
        //txtNombre_Empresa.Text = dto_personal.nombre_empresa;
        //txtRuc.Text = Convert.ToString(dto_personal.ruc);


    }
    protected void btnRegresarPersonal_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('hola')</script>");
    }

    protected void btnRegresarClientes_Click(object sender, EventArgs e)
    {

    }
}