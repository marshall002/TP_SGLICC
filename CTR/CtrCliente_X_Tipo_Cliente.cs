using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;
using System.Data;

namespace CTR
{
    public class CtrCliente_X_Tipo_Cliente
    {
        DaoCliente_X_Tipo_Cliente dao_cliente_x_tipo_cliente;
        public CtrCliente_X_Tipo_Cliente()
        {
            dao_cliente_x_tipo_cliente = new DaoCliente_X_Tipo_Cliente();
        }

        public List<DtoCliente_X_Tipo_Cliente> Ctr_Seleccionar_Identificador_de_Tipo_Cliente(DtoCliente_X_Tipo_Cliente dto_cliente_x_tipo_cliente)
        {
            return dao_cliente_x_tipo_cliente.Dao_Seleccionar_Identificador_de_Tipo_Cliente(dto_cliente_x_tipo_cliente);
        }



    }

}