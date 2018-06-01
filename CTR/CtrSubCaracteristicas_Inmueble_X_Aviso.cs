using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;
using System.Data;

namespace CTR
{
    public class CtrSubCaracteristicas_Inmueble_X_Aviso
    {

        DaoSubCaracteristicas_Inmueble_X_Aviso dao_subcaracteristicas_inmueble_x_aviso;
        public CtrSubCaracteristicas_Inmueble_X_Aviso()
        {
            dao_subcaracteristicas_inmueble_x_aviso = new DaoSubCaracteristicas_Inmueble_X_Aviso();
        }
        public void Ctr_Insertar_SubCaracteristicas_X_Aviso(DtoSubCaracteristicas_Inmueble_X_Aviso dto_subcaracteristicas_inmueble_x_aviso)
        {
            dao_subcaracteristicas_inmueble_x_aviso.Dao_Insertar_SubCaracteristicas_X_Aviso(dto_subcaracteristicas_inmueble_x_aviso);
        }
    }
}
