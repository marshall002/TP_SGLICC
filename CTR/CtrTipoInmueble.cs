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
    public class CtrTipoInmueble
    {
        DaoTipoInmueble dao_tipo_inmueble;

        public CtrTipoInmueble()
        {
            dao_tipo_inmueble = new DaoTipoInmueble();
        }

        public DataTable Ctr_ListarTipoInmuebles()
        {
            return dao_tipo_inmueble.Dao_ListarTipoInmuebles();
        }
        
    }
}
