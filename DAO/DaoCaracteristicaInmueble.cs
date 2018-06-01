using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;
using System.Data;

namespace DAO
{
    public class DaoCaracteristicaInmueble
    {
        SqlConnection conexion;

        public DaoCaracteristicaInmueble()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }

       

        public List<DtoCaracteristicasInmueble> Dao_Cargar_Caracteristicas_Inmueble(DtoTipoInmueble dto_tipo_inmueble)
        {
            SqlCommand cmd = new SqlCommand("sp_Cargar_Caracteristicas_Inmueble", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_tipo_inmueble", dto_tipo_inmueble.id_tipo_inmueble);
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoCaracteristicasInmueble> listar_caracteristicas_Inmuebles = new List<DtoCaracteristicasInmueble>();
            DtoCaracteristicasInmueble dto_caracteristicas_inmueble;
            while (reader.Read())
            {
                dto_caracteristicas_inmueble = new DtoCaracteristicasInmueble();
                dto_caracteristicas_inmueble.id_caracteristica = int.Parse(reader[0].ToString());
                dto_caracteristicas_inmueble.descripcion_caracteristica_inmueble = reader[1].ToString();

                listar_caracteristicas_Inmuebles.Add(dto_caracteristicas_inmueble);
            }
            conexion.Close();
            return listar_caracteristicas_Inmuebles;
        }

        public DataTable Dao_Listar_Dormitorios()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Dormitorios", conexion);
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

        public DataTable Dao_Listar_Baños()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Baños", conexion);
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

        public DataTable Dao_Listar_Cocheras()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Cocheras", conexion);
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

        public DataTable Dao_Listar_Antiguedad_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Antiguedad_Inmueble", conexion);
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

        public DataTable Dao_Listar_Estado_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Estado_Inmueble", conexion);
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

        public DataTable Dao_Listar_Tipo_Anunciante()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Tipo_Anunciante", conexion);
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

        public DataTable Dao_Listar_Caracteristicas_Adicionales_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Caracteristicas_Adicionales_de_Inmueble", conexion);
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

        public DataTable Dao_Listar_Servicios_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Servicios_de_Inmueble", conexion);
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

        public DataTable Dao_Listar_Ambientes_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Ambientes_de_Inmueble", conexion);
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

        public DataTable Dao_Listar_Adicionales_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Adicionales_de_Inmueble", conexion);
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

        public DataTable Dao_Listar_AreasComunes_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_AreasComunes_de_Inmueble", conexion);
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

        public DataTable Dao_Listar_CaracteristicasGenerales_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_CaracteristicasGenerales_de_Inmueble", conexion);
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

        
        public DataTable Dao_Listar_NroPisos_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_NroPisos_de_Inmueble", conexion);
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

        public DataTable Dao_Listar_TipoSuelo_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_TipoSuelo_de_Inmueble", conexion);
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

        public DataTable Dao_Listar_AreaTotal_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_AreaTotal_de_Inmueble", conexion);
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

        public DataTable Dao_Listar_DepartamentosPorPiso_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_DepartamentosPorPiso_de_Inmueble", conexion);
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


        public DataTable Dao_Listar_TipoPublicacion_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_TipoPublicacion_de_Inmueble", conexion);
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

        
        public DataTable Dao_Listar_Detalles_de_Inmueble()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Detalles_de_Inmueble", conexion);
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
    }
}
