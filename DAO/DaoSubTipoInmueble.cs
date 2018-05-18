using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data;

namespace DAO
{
    public class DaoSubTipoInmueble
    {
        SqlConnection conexion;

        public DaoSubTipoInmueble()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }

        public List<DtoSubTipoInmueble> Dao_Listar_SubTipo_De_Inmueble_Seleccionado(int id_tipo_inmueble)
        {
            SqlCommand cmd = new SqlCommand("sp_Listar_SubTipo_De_TipoInmueble_Seleccionado", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@id_tipo_inmueble", id_tipo_inmueble);

            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            List<DtoSubTipoInmueble> listarsubtipoInmuebles = new List<DtoSubTipoInmueble>();
            DtoSubTipoInmueble dto_subtipo_inmueble;
            while (reader.Read())
            {
                dto_subtipo_inmueble = new DtoSubTipoInmueble();
                dto_subtipo_inmueble.id_sub_tipo_inmueble = int.Parse(reader[0].ToString());
                dto_subtipo_inmueble.descripcion_subtipo_inmueble = reader[1].ToString();

                listarsubtipoInmuebles.Add(dto_subtipo_inmueble);
            }
            conexion.Close();
            return listarsubtipoInmuebles;
        }

    }
}
