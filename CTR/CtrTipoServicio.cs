using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using System.Data;

namespace CTR
{
    public class CtrTipoServicio
    {
        DaoTipoServicio dao_tiposervicio;
        public CtrTipoServicio()
        {
            dao_tiposervicio = new DaoTipoServicio();
        }

        public DataTable Ctr_Seleccionar_Tipo_Servicio()
        {
            return dao_tiposervicio.Dao_Seleccionar_Tipo_Servicio();
        }
    }
}
