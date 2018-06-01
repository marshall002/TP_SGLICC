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
    public class DaoCompra
    {
        SqlConnection conexion;

        public DaoCompra()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }
        public void reaistrar_compra(DtoCompra dtoCompra)
        {
           
                try
                {
                    conexion.Open();
                SqlCommand cmd = new SqlCommand("sp_realizar_compra_aviso", conexion);
                    cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id_aviso", dtoCompra.id_aviso);
                cmd.Parameters.AddWithValue("@id_persona_Compradora", dtoCompra.id_comprador_persona);
                cmd.Parameters.AddWithValue("@id_persona_Vendedora", dtoCompra.id_vendedor_persona);
                cmd.Parameters.AddWithValue("@cantidad_c", dtoCompra.cuotas);
                cmd.Parameters.AddWithValue("@Primer_Pago", dtoCompra.subtotal);


                cmd.ExecuteNonQuery();
                    conexion.Close();

                  
                }
                catch (Exception ex)
                {
                    throw ex;
                }

            }
        

    }
}
