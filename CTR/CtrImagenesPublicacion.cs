using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;


namespace CTR
{
    public class CtrImagenesPublicacion
    {
        DaoImagenesPublicacion dao_imagenes_publicacion;

        public CtrImagenesPublicacion()
        {
            dao_imagenes_publicacion = new DaoImagenesPublicacion();
        }

        public void Ctr_Insertar_Imagenes_De_Propietario(DtoCliente dto_cliente , DtoImagenesPublicacion dto_imagenes_publicacion)
        {
            dao_imagenes_publicacion.Dao_Insertar_Imagenes_De_Propietario(dto_cliente, dto_imagenes_publicacion);
        }
    }
}
