using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;
using System.Data;
using System.Data.SqlClient;

namespace CTR
{
    public class CtrInmueble_x_avisos
    {
        DaoInmueble_x_avisos dao_inmueble_x_aviso;
        public CtrInmueble_x_avisos()
        {
            dao_inmueble_x_aviso = new DaoInmueble_x_avisos();
        }
        public List<DtoInmuebles_x_avisos> listar_sub_avisos(DtoAviso dto_aviso)
        {
            return dao_inmueble_x_aviso.Dao_Listar_Sub_Avisos(dto_aviso);
        }
        public List<DtoUsuario> Cargar_informacion_de_Empresa(DtoUsuario dto_usuario)
        {
            return dao_inmueble_x_aviso.Dao_Cargar_informacion_de_la_Empresa(dto_usuario);
        }
        public List<DtoInmuebles_x_avisos> Cargar_informacion_de_SubAviso(DtoInmuebles_x_avisos dto_sub_aviso, DtoAviso dto_aviso)
        {
            return dao_inmueble_x_aviso.Cargar_informacion_del_sub_aviso(dto_sub_aviso, dto_aviso);
        }
        public List<DtoCaracteristicasAviso> Ctrl_CargaCaracteristicasAdicionalesdelSubAviso(DtoCaracteristicasAviso dto_aviso, DtoInmuebles_x_avisos dto_subaviso, int caracteristica)
        {
            return dao_inmueble_x_aviso.Dao_Cargar_Caracteristicas_Adicionales_del_Aviso(dto_aviso, dto_subaviso, caracteristica);

        }
    }
    }
