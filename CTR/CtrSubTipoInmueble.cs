using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;

namespace CTR
{
    public class CtrSubTipoInmueble
    {
        DaoSubTipoInmueble dao_subtipo_inmueble;

        public CtrSubTipoInmueble()
        {
            dao_subtipo_inmueble = new DaoSubTipoInmueble();
        }

        public List<DtoSubTipoInmueble> Ctr_Listar_SubTipo_De_Inmueble_Seleccionado(int id_tipo_inmueble)
        {
            return dao_subtipo_inmueble.Dao_Listar_SubTipo_De_Inmueble_Seleccionado(id_tipo_inmueble);
        }
    }
}
