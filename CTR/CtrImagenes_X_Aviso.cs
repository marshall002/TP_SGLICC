using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using CTR;
using DTO;
using System.Data;
using System.Data.SqlClient;
namespace CTR
{
    public class CtrImagenes_X_Aviso
    {
        DaoImagenes_X_Aviso dao_imagenes_x_aviso;

        public CtrImagenes_X_Aviso()
        {
            dao_imagenes_x_aviso = new DaoImagenes_X_Aviso();
        }


        public void Ctr_Insertar_Imagenes_X_Aviso(DtoImagenes_X_Aviso dto_imagenes_x_aviso)
        {
            dao_imagenes_x_aviso.Dao_Insertar_Imagenes_X_Aviso(dto_imagenes_x_aviso);
        }


    }
}