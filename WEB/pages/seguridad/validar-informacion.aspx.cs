using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Timers;
using DTO;
using DAO;
using CTR;
using System.Web.Services;
using System.Web.Script.Services;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

public partial class pages_seguridad_validar_informacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    static SqlConnection conexion = new SqlConnection("data source=(local); initial catalog=BD_SGLTCC; integrated security=SSPI;");


    [WebMethod]
    [ScriptMethod]
    public static string comprobarcelular(int celular)
    {
        conexion.Close();
        string SQL = "select convert(varchar(10),celular) from Persona where celular = '" + celular + "'";
        DataTable DATACELULAR = new DataTable();
        SqlDataAdapter DTA_celular = new SqlDataAdapter(SQL, conexion);
        conexion.Close();
        DTA_celular.Fill(DATACELULAR);
        if (DATACELULAR.Rows.Count > 0)
        {
            return DATACELULAR.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";

    }


    [WebMethod]
    [ScriptMethod]
    public static string comprobarcorreo(string correo)
    {
        conexion.Close();
        string SQL = "select correo from Persona where correo = '" + correo + "'";
        DataTable DATACORREO = new DataTable();
        SqlDataAdapter DTA_correo = new SqlDataAdapter(SQL, conexion);
        conexion.Close();
        DTA_correo.Fill(DATACORREO);
        if (DATACORREO.Rows.Count > 0)
        {
            return DATACORREO.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";

    }

    [WebMethod]
    [ScriptMethod]
    public static string comprobardocumento(string documento)
    {
        conexion.Close();
        string SQL = "select dni from Persona where dni = '" + documento + "'";
        DataTable DATADOCUMENTO = new DataTable();
        SqlDataAdapter DTA_documento = new SqlDataAdapter(SQL, conexion);

        DTA_documento.Fill(DATADOCUMENTO);
        if (DATADOCUMENTO.Rows.Count > 0)
        {
            return DATADOCUMENTO.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";

    }

    [WebMethod]
    [ScriptMethod]
    public static string comprobarruc(int ruc)
    {
        conexion.Close();
        string SQL = "select ruc from Usuarios where ruc = '" + ruc + "'";
        DataTable DATARUC = new DataTable();
        SqlDataAdapter DTA_ruc = new SqlDataAdapter(SQL, conexion);
        conexion.Close();
        DTA_ruc.Fill(DATARUC);
        if (DATARUC.Rows.Count > 0)
        {
            return DATARUC.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";

    }


    [WebMethod]
    [ScriptMethod]
    public static string comprobar_nombre_empresa(string nombre_empresa)
    {
        conexion.Close();
        string SQL = "select nombre_empresa from Usuarios where nombre_empresa = '" + nombre_empresa + "'";
        DataTable DATANOMBREEMPRESA = new DataTable();
        SqlDataAdapter DTA_nombreempresa = new SqlDataAdapter(SQL, conexion);
        conexion.Close();
        DTA_nombreempresa.Fill(DATANOMBREEMPRESA);
        if (DATANOMBREEMPRESA.Rows.Count > 0)
        {
            return DATANOMBREEMPRESA.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";

    }


    [WebMethod]
    [ScriptMethod]
    public static string comprobartoken(string token)
    {
        conexion.Close();
        string SQL = "select token from Persona where token = '" + token + "' AND id_estado = 1";
        DataTable DATATOKEN = new DataTable();
        SqlDataAdapter DTA_token = new SqlDataAdapter(SQL, conexion);
        conexion.Close();
        DTA_token.Fill(DATATOKEN);
        if (DATATOKEN.Rows.Count > 0)
        {
            return DATATOKEN.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";

    }

    [WebMethod]
    [ScriptMethod]
    public static string activarcuentaportoken(string tokensacado)
    {
        conexion.Close();
        string SQL = "update Persona set id_estado='2' where token = '" + tokensacado + "' AND id_estado = 1";
        DataTable DATATOKEN = new DataTable();
        SqlDataAdapter DTA_token = new SqlDataAdapter(SQL, conexion);
        conexion.Close();
        DTA_token.Fill(DATATOKEN);
        if (DATATOKEN.Rows.Count > 0)
        {
            return DATATOKEN.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";
    }

    [WebMethod]
    [ScriptMethod]
    public static string TokenYaUsado(string token)
    {
        conexion.Close();
        string SQL = "select token from Persona where token = '" + token + "' AND id_estado = 2";
        DataTable DATATOKEN = new DataTable();
        SqlDataAdapter DTA_token = new SqlDataAdapter(SQL, conexion);
        conexion.Close();
        DTA_token.Fill(DATATOKEN);
        if (DATATOKEN.Rows.Count > 0)
        {
            return DATATOKEN.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";
    }



    //---------------------------------------------------------------------
    //Confirmar nuevo correo
    internal class Helper
    {
        public static string EncodePassword(string originalPassword)
        {
            SHA1 sha1 = new SHA1CryptoServiceProvider();

            byte[] inputBytes = (new UnicodeEncoding()).GetBytes(originalPassword);
            byte[] hash = sha1.ComputeHash(inputBytes);

            return Convert.ToBase64String(hash);
        }
    }

    

    [WebMethod]
    [ScriptMethod]
    public static string comprobartokendecorreonuevo(string activarcorreonuevo , string tokenparacorreonuevo)
    {
        //en activarcorreonuevo esta encriptado esta palabra "activarcorreonuevo"   y  en tokenparacorreonuevo esta encriptado el correo nuevo que ya esta en la bd
        string correonuevo1 = "activarcorreonuevo";
        string cancelarcorreonuevo1 = "cancelarcorreonuevo";
        string token1 = Helper.EncodePassword(correonuevo1);
        string token2 = Helper.EncodePassword(cancelarcorreonuevo1);

        conexion.Close();
        string SQL = "select token from Persona where token = '" + tokenparacorreonuevo + "' ";
        DataTable DATATOKEN = new DataTable();
        SqlDataAdapter DTA_token = new SqlDataAdapter(SQL, conexion);
        conexion.Close();
        DTA_token.Fill(DATATOKEN);
        if (DATATOKEN.Rows.Count > 0 && token1 == activarcorreonuevo)
        {
            return DATATOKEN.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";
    }

    [WebMethod]
    [ScriptMethod]
    public static string activarcorreonuevo(string tokensacado, string correonuevo)
    {
        //en activarcorreonuevo esta encriptado esta palabra "activarcorreonuevo"   y  en tokenparacorreonuevo esta encriptado el correo nuevo que ya esta en la bd
        
        string correo_activado = "correocambiado";
        string token3 = Helper.EncodePassword(correo_activado);
    
        conexion.Close();
        string SQL = "update Persona set correo = '" + correonuevo + "' , token ='"+token3+ "'  where token = '" + tokensacado + "' ";
        DataTable DATATOKEN = new DataTable();
        SqlDataAdapter DTA_token = new SqlDataAdapter(SQL, conexion);
        conexion.Close();
        DTA_token.Fill(DATATOKEN);
        if (DATATOKEN.Rows.Count > 0 )
        {
            return DATATOKEN.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";
    }



    [WebMethod]
    [ScriptMethod]
    public static string comprobarcorreoyacambiado(string token)
    {
        //string token , no lo uso

        string correo_activado = "correocambiado";
        string token3 = Helper.EncodePassword(correo_activado);

        conexion.Close();
        string SQL = "select token from Persona  where token = '" + token3 + "' ";
        DataTable DATATOKEN = new DataTable();
        SqlDataAdapter DTA_token = new SqlDataAdapter(SQL, conexion);
        conexion.Close();
        DTA_token.Fill(DATATOKEN);
        if (DATATOKEN.Rows.Count > 0)
        {
            return DATATOKEN.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";
    }



    [WebMethod]
    [ScriptMethod]
    public static string comprobarinmueble(int id_inmueble_elegido)
    {
        conexion.Close();
        string SQL = "SELECT Caracteristica_Inmueble.descripcion_caracteristica_inmueble FROM Caracteristica_Inmueble,Inmueble_X_Caracteristicas_Inmueble,Inmueble " +
        " WHERE Inmueble.id_inmueble = '" + id_inmueble_elegido + "' AND " +
        " Inmueble.id_inmueble = Inmueble_X_Caracteristicas_Inmueble.id_inmueble AND " +
        " Inmueble_X_Caracteristicas_Inmueble.id_caracteristica = Caracteristica_Inmueble.id_caracteristica ";
        DataTable DATACELULAR = new DataTable();
        SqlDataAdapter DTA_celular = new SqlDataAdapter(SQL, conexion);
        conexion.Close();
        DTA_celular.Fill(DATACELULAR);
        if (DATACELULAR.Rows.Count > 0)
        {
            return DATACELULAR.Rows[0].ItemArray[0].ToString();
        }
        conexion.Close();
        return "";

    }


}
