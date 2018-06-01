using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;


namespace CTR
{
    public class CtrDocumentos_X_Aviso
    {
        DaoDocumento_X_Aviso dao_documentos_x_aviso;

        public CtrDocumentos_X_Aviso()
        {
            dao_documentos_x_aviso = new DaoDocumento_X_Aviso();
        }
        //royer
        public void Ctr_Insertar_Documentos_X_Aviso(DtoDocumentos_X_Aviso dto_documentos_x_aviso)
        {
            dao_documentos_x_aviso.Dao_Insertar_Documentos_X_Aviso(dto_documentos_x_aviso);
        }



    }
}
