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
    public class CtrPersonal
    {
        DaoPersonal dao_personal;
        public CtrPersonal()
        {
            dao_personal = new DaoPersonal();
        }
        public List<DtoPersonal> Ctr_ListarPersonal()
        {
            return dao_personal.Dao_ListarPersonal();
        }
        public List<DtoPersona> Ctr_CargarInformacionPersonal(DtoPersona dto_persona,DtoPersonal dto_personal)
        {
            return dao_personal.Dao_CargarInformacionPersonal(dto_persona,dto_personal);            
        }
        public DataTable Ctr_ListarPefilesPersonal()
        {
            return dao_personal.Dao_ListarPerfilesPersonal();
        }
        public void Ctr_Registrar_Nuevo_Personal(DtoPersonal dto_personal)
        {
            dao_personal.Dao_Registrar_Nuevo_Personal(dto_personal);
        }
    }
}
