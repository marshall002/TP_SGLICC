using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data.SqlClient;
using System.Data;

namespace DAO
{
    public class DaoAviso
    {
        SqlConnection conexion;

        public DaoAviso()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }
        public List<DtoAviso> Dao_Listar_Avisos_de_Inmueble(int tipo_cliente, int estado)
        {
            SqlCommand cmd = new SqlCommand("sp_Listar_Avisos_de_Inmueble", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tipo_cliente", tipo_cliente);
            cmd.Parameters.AddWithValue("@estado", estado);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoAviso> listarAvisosdeInmuebles = new List<DtoAviso>();
            DtoAviso dto_aviso;

            while (reader.Read())
            {
                dto_aviso = new DtoAviso();
                dto_aviso.id_persona = int.Parse(reader[0].ToString());
                dto_aviso.codigo = int.Parse(reader[1].ToString());
                dto_aviso.nombre_propietario = reader[2].ToString().Trim();
                dto_aviso.tipo_servicio = reader[3].ToString();
                dto_aviso.descripcion_subtipo_inmueble = reader[4].ToString();
                dto_aviso.precio = double.Parse(reader[5].ToString());
                dto_aviso.estado = reader[6].ToString();
                dto_aviso.fecha_inicio = reader.GetDateTime(7);
                listarAvisosdeInmuebles.Add(dto_aviso);
            }
            conexion.Close();
            return listarAvisosdeInmuebles;
        }
        public List<DtoAviso> Dao_Carga_información_del_Aviso(DtoAviso dto_avisos)

        {
            SqlCommand cmd = new SqlCommand("sp_Cargar_informacion_del_aviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo", dto_avisos.codigo);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoAviso> listarInformaciondeAviso = new List<DtoAviso>();
            while (reader.Read())
            {
                dto_avisos.tipo_servicio = reader[0].ToString();
                dto_avisos.descripcion_tipo_inmueble = reader[1].ToString();
                dto_avisos.descripcion_subtipo_inmueble = reader[2].ToString();
                dto_avisos.titulo = reader[3].ToString();
                dto_avisos.descripcion = reader[4].ToString();
                dto_avisos.direccion = reader[5].ToString();
                dto_avisos.precio = double.Parse(reader[6].ToString());
                dto_avisos.fecha_inicio = reader.GetDateTime(7);
                dto_avisos.fecha_fin = reader.GetDateTime(8);
                dto_avisos.aviso_tipo = reader[9].ToString();
                dto_avisos.tiempo = int.Parse(reader[10].ToString());
                listarInformaciondeAviso.Add(dto_avisos);
            }
            conexion.Close();
            return listarInformaciondeAviso;
        }
        public List<DtoCaracteristicasAviso> Dao_Cargar_sub_caracteristicas_del_aviso(DtoCaracteristicasAviso dto_aviso1)
        {
            SqlCommand cmd = new SqlCommand("sp_Cargar_sub_caracteristicas_del_aviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo", dto_aviso1.codigo);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoCaracteristicasAviso> listarSubCaracteristicasdeAviso = new List<DtoCaracteristicasAviso>();
            DtoCaracteristicasAviso dto_subcaviso;
            while (reader.Read())
            {
                dto_subcaviso = new DtoCaracteristicasAviso();
                dto_subcaviso.descripcion_sub_caracteristica = reader[0].ToString();
                listarSubCaracteristicasdeAviso.Add(dto_subcaviso);
            }
            conexion.Close();
            return listarSubCaracteristicasdeAviso;
        }
        public List<DtoCaracteristicasAviso> Dao_Cargar_Caracteristicas_Adicionales_del_Aviso(DtoCaracteristicasAviso dto_aviso, int caracteristica)
        {
            SqlCommand cmd = new SqlCommand("sp_Listar_Caracteristicas_del_Aviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_caracteristica", caracteristica);
            cmd.Parameters.AddWithValue("@codigo", dto_aviso.codigo);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoCaracteristicasAviso> listarSubCaracteristicasdeAviso = new List<DtoCaracteristicasAviso>();
            DtoCaracteristicasAviso dto_subcaviso;
            while (reader.Read())
            {
                dto_subcaviso = new DtoCaracteristicasAviso();
                dto_subcaviso.descripcion_sub_caracteristica = reader[0].ToString();
                listarSubCaracteristicasdeAviso.Add(dto_subcaviso);
            }
            conexion.Close();
            return listarSubCaracteristicasdeAviso;
        }
        public void Dao_Actualizar_Estado_de_Aviso(DtoAviso dto_aviso, int estado)
        {
            SqlCommand cmd = new SqlCommand("sp_Actualizar_Estado_de_Aviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo", dto_aviso.codigo);
            cmd.Parameters.AddWithValue("@estado", estado);
            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();
        }
        public List<DtoAviso> Dao_Carga_localizacion_del_aviso(DtoAviso dto_aviso)
        {
            SqlCommand cmd = new SqlCommand("sp_Cargar_localizacion_de_inmueble", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo", dto_aviso.codigo);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoAviso> listarlocalizacion = new List<DtoAviso>();
            while (reader.Read())
            {
                dto_aviso.latitud = reader[0].ToString();
                dto_aviso.longitud = reader[1].ToString();
                dto_aviso.region_inmueble = reader[2].ToString();
                dto_aviso.departamento_provincia_distrito = reader[3].ToString();
            }
            conexion.Close();
            return listarlocalizacion;
        }
        public List<DtoAviso> Dao_Listar_Proyectos_Inmobiliarios(int tipo_cliente, int estado)
        {
            SqlCommand cmd = new SqlCommand("sp_Listar_Proyectos_Inmobiliarios", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tipo_cliente", tipo_cliente);
            cmd.Parameters.AddWithValue("@estado", estado);
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoAviso> listarproyectos = new List<DtoAviso>();
            while (reader.Read())
            {
                DtoAviso dto_aviso = new DtoAviso();
                dto_aviso.id_persona = int.Parse(reader[0].ToString());
                dto_aviso.codigo = int.Parse(reader[1].ToString());
                dto_aviso.nombre_propietario = reader[2].ToString();
                dto_aviso.tipo_servicio = reader[3].ToString();
                dto_aviso.descripcion_tipo_inmueble = reader[4].ToString();
                dto_aviso.estado = reader[5].ToString();
                dto_aviso.fecha_inicio = reader.GetDateTime(6);
                listarproyectos.Add(dto_aviso);

            }
            return listarproyectos;
        }

        //creados por marcial
        public void Dao_Actualizar_estado_de_compra(int id_aviso, int estado)
        {
            SqlCommand cmd = new SqlCommand("Actualizar_estado_de_compra", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_aviso", id_aviso);
            cmd.Parameters.AddWithValue("@estado", estado);
            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();

        }
        public List<DtoCompra> Dao_Listar_compras_x_estado_1(int codigo_de_estado_Compra)
        {
            SqlCommand cmd = new SqlCommand("sp_Listar_Compras_por_estado", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_compra_estado", codigo_de_estado_Compra);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoCompra> listarCompras = new List<DtoCompra>();
            DtoCompra dto_compra;
            while (reader.Read())
            {
                dto_compra = new DtoCompra();
                dto_compra.id_vendedor_persona = int.Parse(reader[0].ToString());
                dto_compra.id_comprador_persona = int.Parse(reader[1].ToString());
                dto_compra.codigo = int.Parse(reader[2].ToString());
                dto_compra.nombre_vendedor = reader[3].ToString();
                dto_compra.nombre_comprador = reader[4].ToString();
                dto_compra.estado = reader[5].ToString();
                dto_compra.descripcion_subtipo_inmueble = reader[6].ToString();
                dto_compra.precio = double.Parse(reader[7].ToString());
                dto_compra.tipo_servicio = reader[8].ToString();
                dto_compra.fecha_compra = DateTime.Parse(reader[9].ToString());
                dto_compra.id_aviso = int.Parse(reader[10].ToString());

                listarCompras.Add(dto_compra);
            }
            conexion.Close();
            return listarCompras;
        }
        public DataTable ListarCompras()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_Listar_Compras", conexion);
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
        //star
        public DataSet Dao_ListarVentas_Avisos_Inmobiliarios(int id_persona)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_VerVentas_Avisos_Inmobiliarios", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }

        //Estrella: ver-compras-avisos-inmobiliarios
        public DataSet Dao_ListarCompras_Avisos_Inmobiliarios(int id_persona)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_VerCompras_Avisos_Inmobiliarios", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }

        //Estrella: ver-ventas-proyectos-inmobiliarios
        public DataSet Dao_ListarVentas_Proyectos_Inmobiliarios(int id_persona)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_VerVentas_Proyectos_Inmobiliarios", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }

        //Estrella: ver-compras-proyectos-inmobiliarios
        public DataSet Dao_ListarCompras_Proyectos_Inmobiliarios(int id_persona)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_VerCompras_Proyectos_Inmobiliarios", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }

        public DataSet Dao_Listar_aviso_Ventas(int id_persona)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_listar_ventas_avisos", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public DataSet Dao_Listar_aviso_Ventas_usuario()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_listar_ventas_avisos_usuario", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public DataSet Dao_Listar_aviso_alquiler(int id_persona)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_listar_alquiler_avisos", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public DataSet Dao_Listar_aviso_alquiler_usuario()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_listar_alquiler_avisos_usuarios", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public DataSet Dao_Listar_aviso_proyecto(int id_persona)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_listar_proyectos_avisos", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public DataSet Dao_Listar_aviso_proyecto_usuario()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_listar_proyectos_avisos_usuarios", conexion);
                cmd.CommandType = CommandType.StoredProcedure;

                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public DataSet Dao_buscar_aviso_alquiler(int id_persona, int id_distrito)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_buscar_avisos_alquiler", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                cmd.Parameters.AddWithValue("@id_distrito", id_distrito);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public DataSet Dao_buscar_aviso_ventas(int id_persona, int id_distrito)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_buscar_avisos_ventas", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                cmd.Parameters.AddWithValue("@id_distrito", id_distrito);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public DataSet Dao_buscar_aviso_proyecto(int id_persona, int id_distrito)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_buscar_avisos_proyecto", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                cmd.Parameters.AddWithValue("@id_distrito", id_distrito);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }

        public DataSet Dao_buscar_aviso_proyecto_usuario( int id_distrito)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_buscar_avisos_proyecto_usuario", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                
                cmd.Parameters.AddWithValue("@id_distrito", id_distrito);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public DataSet Dao_buscar_aviso_ventas_usuario(int id_distrito)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_buscar_avisos_ventas_usuario", conexion);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id_distrito", id_distrito);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public DataSet Dao_buscar_aviso_alquiler_usuario(int id_distrito)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_buscar_avisos_alquiler_usuario", conexion);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id_distrito", id_distrito);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }




        //royer
        public void Dao_RegistrarAviso(aux_DtoAviso aux_dtoaviso)
        {

            SqlCommand cmd = new SqlCommand("sp_RegistrarAviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@id_cliente", aux_dtoaviso.id_cliente);
            cmd.Parameters.AddWithValue("@id_tipo_servicio", aux_dtoaviso.id_tipo_servicio);
            cmd.Parameters.AddWithValue("@id_tipo_inmueble", aux_dtoaviso.id_tipo_inmueble);
            cmd.Parameters.AddWithValue("@id_sub_tipo_inmueble", aux_dtoaviso.id_sub_tipo_inmueble);
            cmd.Parameters.AddWithValue("@titulo", aux_dtoaviso.titulo);
            cmd.Parameters.AddWithValue("@descripcion", aux_dtoaviso.descripcion);
            cmd.Parameters.AddWithValue("@direccion", aux_dtoaviso.direccion);
            cmd.Parameters.AddWithValue("@visitas", aux_dtoaviso.visitas);
            cmd.Parameters.AddWithValue("@codigo", aux_dtoaviso.codigo);
            cmd.Parameters.AddWithValue("@precio", aux_dtoaviso.precio);
            cmd.Parameters.AddWithValue("@fecha_inicio", aux_dtoaviso.fecha_inicio);
            cmd.Parameters.AddWithValue("@fecha_fin", aux_dtoaviso.fecha_fin);
            cmd.Parameters.AddWithValue("@id_distrito", aux_dtoaviso.id_distrito);
            cmd.Parameters.AddWithValue("@id_persona_cliente", aux_dtoaviso.id_persona_cliente);
            cmd.Parameters.AddWithValue("@estado", aux_dtoaviso.estado);
            cmd.Parameters.AddWithValue("@tipo_aviso", aux_dtoaviso.tipo_aviso);
            cmd.Parameters.AddWithValue("@tiempo_aviso", aux_dtoaviso.tiempo_aviso);
            cmd.Parameters.AddWithValue("@latitud", aux_dtoaviso.latitud);
            cmd.Parameters.AddWithValue("@longitud", aux_dtoaviso.longitud);
            cmd.Parameters.AddWithValue("@region_inmueble", aux_dtoaviso.region_inmueble);


            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();

        }


        public DataSet Dao_SeleccionarUltimoRegistroAviso(aux_DtoAviso aux_dtoaviso)
        {
            SqlCommand cmd = new SqlCommand("sp_SeleccionarUltimoRegistroAviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            //unComando.Parameters.AddWithValue("@idviaje", dtoviaje.codViaje);
            DataSet ds = new DataSet();
            conexion.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            da.Dispose();

            if (ds.Tables[0].Rows.Count == 1)
            {
                aux_dtoaviso.id_aviso = (int)ds.Tables[0].Rows[0].ItemArray[0];
            }
            conexion.Close();
            conexion.Dispose();
            return ds;
        }





        public List<aux_DtoAviso2> Dao_ListarAvisosCreados(DtoAviso dto_aviso)
        {
            SqlCommand cmd = new SqlCommand("sp_ListarAvisosCreados", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_persona", dto_aviso.id_persona);
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<aux_DtoAviso2> listar_avisos_creados = new List<aux_DtoAviso2>();
            aux_DtoAviso2 aux_dtoaviso2;
            while (reader.Read())
            {
                aux_dtoaviso2 = new aux_DtoAviso2();
                //DtoAviso dto_aviso = new DtoAviso();
                aux_dtoaviso2.id_aviso = int.Parse(reader[0].ToString());
                aux_dtoaviso2.codigo = int.Parse(reader[1].ToString());
                aux_dtoaviso2.nombre_tipo_servicio = reader[2].ToString();
                aux_dtoaviso2.nombre_tipo_inmueble = reader[3].ToString();
                aux_dtoaviso2.precio = int.Parse(reader[4].ToString());
                aux_dtoaviso2.nombre_estado = reader[5].ToString();
                aux_dtoaviso2.fecha_inicio = reader.GetDateTime(6);

                listar_avisos_creados.Add(aux_dtoaviso2);

            }
            return listar_avisos_creados;
        }



    }
}