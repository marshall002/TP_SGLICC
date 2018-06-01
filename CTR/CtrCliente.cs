using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using CTR;
using DTO;
using System.Data;

namespace CTR
{
    public class CtrCliente
    {
        DaoCliente dao_cliente;
        public CtrCliente()
        {
            dao_cliente = new DaoCliente();
        }
        public List<DtoCliente> Ctr_ListarClientes()
        {
            return dao_cliente.Dao_ListarClientes();
        }
        public List<DtoCliente> Ctr_CargarInformacionCliente(DtoPersona dto_persona, DtoCliente dto_cliente)
        {
            return dao_cliente.Dao_CargarInformacionCliente(dto_persona, dto_cliente);
        }
        public void Ctr_InsertarTipoDeCliente(DtoCliente dto_cliente)
        {
            dao_cliente.Dao_InsertarTipoDeCliente(dto_cliente);
        }
        public void Ctr_SeleccionarEstadoCliente(DtoCliente dto_cliente,int id_persona)
        {
            dao_cliente.Dao_SeleccionarEstadoCliente(dto_cliente,id_persona);
        }
        public List<DtoCliente> Ctr_CargarMiInformacion(DtoPersona dto_persona,DtoCliente dto_cliente)
        {
            return dao_cliente.Dao_CargarMiInformacion(dto_persona,dto_cliente);
        }

        public void Ctr_Saber_Que_Tipo_Cliente_es(DtoCliente dto_cliente, DtoTipoCliente dto_tipo_cliente)
        {
            dao_cliente.Dao_Saber_Que_Tipo_Cliente_es(dto_cliente, dto_tipo_cliente);
        }

        public void Ctr_Cargar_Mi_Direccion(DtoCliente dto_cliente, DtoDireccion_Especifica dto_direccion_especifica)
        {
            dao_cliente.Dao_Cargar_Mi_Direccion(dto_cliente, dto_direccion_especifica);
        }

        public void Ctr_CargarDormitorios(DtoCliente dto_cliente)
        {
            dao_cliente.Dao_InsertarTipoDeCliente(dto_cliente);
        }
        public List<DtoUsuario> Ctr_EncontrarPerfil(DtoUsuario dto_usuario)
        {
            return dao_cliente.Dao_Encontrar_Perfil(dto_usuario);
        }

    }
}
