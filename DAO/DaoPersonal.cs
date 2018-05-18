using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace DAO
{
    public class DaoPersonal
    {
        SqlConnection conexion;

        public DaoPersonal()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }
        public List<DtoPersonal> Dao_ListarPersonal()
        {
            SqlCommand cmd = new SqlCommand("sp_ListarPersonal", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoPersonal> listarPersonal = new List<DtoPersonal>();
            DtoPersonal dto_personal;           
            while (reader.Read())
            {
                dto_personal = new DtoPersonal();
                dto_personal.id_persona = int.Parse(reader[0].ToString());
                dto_personal.nombres = reader[1].ToString().Trim();
                dto_personal.dni = reader[2].ToString();
                dto_personal.img_ruta = Constante.FOTO_PERFIL+reader[3].ToString();
                dto_personal.nombre_estado = reader[4].ToString();
                dto_personal.tipo_perfil = reader[5].ToString();                

                listarPersonal.Add(dto_personal);
            }
            conexion.Close();
            return listarPersonal;
        }

        
        public List<DtoPersona> Dao_CargarInformacionPersonal(DtoPersona dto_persona,DtoPersonal dto_personal)
        {
            SqlCommand cmd = new SqlCommand("sp_CargarInformacionDePersonal", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_persona",dto_persona.id_persona);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoPersona> listarInformacionPersonal = new List<DtoPersona>();
            
            while (reader.Read())
            {         
                dto_personal.id_persona = int.Parse(reader[0].ToString());
                dto_personal.nombres = reader[1].ToString();
                dto_personal.fecha_nac = reader[2]== DBNull.Value ? (DateTime?)null : reader.GetDateTime(2);
                dto_personal.dni = reader[3].ToString().Trim();
                dto_personal.celular = reader[4] == System.DBNull.Value ? default(int) : int.Parse(reader[4].ToString());
                dto_personal.telefono = reader[5] == System.DBNull.Value ? default(int) : int.Parse(reader[5].ToString());
                dto_personal.direccion = reader[6].ToString().Trim();
                dto_personal.correo = reader[7].ToString().Trim();
                dto_personal.img_ruta = Constante.FOTO_PERFIL+reader[8].ToString();
                dto_personal.nombre_estado = reader[9].ToString();
                dto_personal.tipo_perfil = reader[10].ToString();
                dto_personal.nombre_distrito = reader[11].ToString();
                dto_personal.nombre_empresa = reader[12].ToString();
                dto_personal.ruc = reader[13] == System.DBNull.Value ? default(int) : int.Parse(reader[13].ToString());
                dto_personal.logo = Constante.URL_IMAGEN_EMPRESA+reader[14].ToString();

                listarInformacionPersonal.Add(dto_personal);
            }
            conexion.Close();
            return listarInformacionPersonal;
        }       


        public DataTable Dao_ListarPerfilesPersonal()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_ListarPerfilesPersonal", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public void Dao_Registrar_Nuevo_Personal(DtoPersonal dto_personal)
        {
            SqlCommand cmd = new SqlCommand("sp_Registrar_Nuevo_Personal", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nombres", dto_personal.nombres);
            cmd.Parameters.AddWithValue("@apellidos", dto_personal.apellidos);
            cmd.Parameters.AddWithValue("@direccion", dto_personal.direccion);
            cmd.Parameters.AddWithValue("@id_distrito", dto_personal.id_distrito);
            cmd.Parameters.AddWithValue("@celular", dto_personal.celular);
            cmd.Parameters.AddWithValue("@telefono", dto_personal.telefono);
            cmd.Parameters.AddWithValue("@correo", dto_personal.correo);
            cmd.Parameters.AddWithValue("@documento", dto_personal.dni);
            cmd.Parameters.AddWithValue("@fecha_nac", dto_personal.fecha_nac);
            cmd.Parameters.AddWithValue("@id_perfil", dto_personal.id_perfil);
            cmd.Parameters.AddWithValue("@clave", dto_personal.clave); 
            cmd.Parameters.AddWithValue("@img_perfil", dto_personal.img_ruta);
            cmd.Parameters.AddWithValue("@id_estado", dto_personal.id_estado);
            cmd.Parameters.AddWithValue("@fecha_registro", dto_personal.fecha_registro);
            cmd.Parameters.AddWithValue("@logo_empresa", dto_personal.logo);
            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();
        }


        //public List<AuxUsuario> dao_ListarUsuarios(AuxUsuario aux_dto_usuario)
        //{
        //    SqlCommand cmd = new SqlCommand("sp_ListarUsuarios", conexion);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    conexion.Open();

        //    SqlDataReader reader = cmd.ExecuteReader();
        //    List<AuxUsuario> listarUsuarios = new List<AuxUsuario>();

        //    while (reader.Read())
        //    {
        //        aux_dto_usuario = new AuxUsuario();
        //        //dto_personal2.id_persona = reader[0].ToString();
        //        aux_dto_usuario.id_persona = int.Parse(reader[0].ToString());
        //        aux_dto_usuario.nombres = reader[1].ToString();
        //        aux_dto_usuario.dni = reader[2].ToString();
        //        aux_dto_usuario.img_ruta = reader[3].ToString();
        //        aux_dto_usuario.estado = reader[4].ToString();
        //        aux_dto_usuario.tipo_usuario reader[5].ToString();

        //        listarUsuarios.Add(aux_usuario);
        //    }
        //    conexion.Close();
        //    return listarUsuarios;
        //}
    }
}
