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
    public class CtrCaracteristicaInmueble
    {
        DaoCaracteristicaInmueble dao_caracteristica_inmueble;

        public CtrCaracteristicaInmueble()
        {
            dao_caracteristica_inmueble = new DaoCaracteristicaInmueble();
        }

        public List<DtoCaracteristicasInmueble> Ctr_Cargar_Caracteristicas_Inmueble(DtoTipoInmueble dto_inmueble)
        {
            return dao_caracteristica_inmueble.Dao_Cargar_Caracteristicas_Inmueble(dto_inmueble);
        }
        public DataTable Ctr_Listar_Dormitorios()
        {
            return dao_caracteristica_inmueble.Dao_Listar_Dormitorios();
        }
        public DataTable Ctr_Listar_Baños()
        {
            return dao_caracteristica_inmueble.Dao_Listar_Baños();
        }
        public DataTable Ctr_Listar_Cocheras()
        {
            return dao_caracteristica_inmueble.Dao_Listar_Cocheras();
        }
        public DataTable Ctr_Listar_Antiguedad_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_Antiguedad_Inmueble();
        }
        public DataTable Ctr_Listar_Estado_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_Estado_Inmueble();
        }
        public DataTable Ctr_Listar_Tipo_Anunciante()
        {
            return dao_caracteristica_inmueble.Dao_Listar_Tipo_Anunciante();
        }
        public DataTable Ctr_Listar_Caracteristicas_Adicionales_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_Caracteristicas_Adicionales_de_Inmueble();
        }
        public DataTable Ctr_Listar_Servicios_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_Servicios_de_Inmueble();
        }
        public DataTable Ctr_Listar_Ambientes_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_Ambientes_de_Inmueble();
        }
        public DataTable Ctr_Listar_Adicionales_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_Adicionales_de_Inmueble();
        }
        public DataTable Ctr_Listar_AreasComunes_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_AreasComunes_de_Inmueble();
        }
        public DataTable Ctr_Listar_CaracteristicasGenerales_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_CaracteristicasGenerales_de_Inmueble();
        }       
        public DataTable Ctr_Listar_NroPisos_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_NroPisos_de_Inmueble();
        }
        public DataTable Ctr_Listar_TipoSuelo_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_TipoSuelo_de_Inmueble();
        }
        public DataTable Ctr_Listar_AreaTotal_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_AreaTotal_de_Inmueble();
        }
        public DataTable Ctr_Listar_DepartamentosPorPiso_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_DepartamentosPorPiso_de_Inmueble();
        }
        public DataTable Ctr_Listar_TipoPublicacion_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_TipoPublicacion_de_Inmueble();
        }
        public DataTable Ctr_Listar_Detalles_de_Inmueble()
        {
            return dao_caracteristica_inmueble.Dao_Listar_Detalles_de_Inmueble();
        }

    }
}
