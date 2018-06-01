using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;
namespace CTR
{
   public class CtrImagenes_sub_Avisos
    {
         DaoImagenes_sub_Avisos dao_imagen;
        public CtrImagenes_sub_Avisos()
        {
            dao_imagen = new DaoImagenes_sub_Avisos();
        }
        public List<DtoImagenes_sub_Avisos> Ctr_Capturar_Imagen(DtoAviso dto_aviso,DtoInmuebles_x_avisos dto_subaviso)
        {
            return dao_imagen.Cargar_imagen_sub_aviso(dto_subaviso,dto_aviso);
        }
    }
}
