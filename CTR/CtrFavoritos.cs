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
    public class CtrFavoritos
    {
        DaoFavoritos dao_favoritos;
        public CtrFavoritos()
        {
            dao_favoritos = new DaoFavoritos();
        }

        public DataSet Ctr_ListarFavoritos(int id_persona)
        {

            return dao_favoritos.Dao_ListarFavoritos(id_persona);
        }

        //ver-favoritos-proyectos-inmobiliarios
        public DataSet Ctr_ListarFavoritos_Proyectos_Inmobiliarios(int id_persona)
        {

            return dao_favoritos.Dao_ListarFavoritos_Proyectos_Inmobiliarios(id_persona);
        }
        public void Ctr_EliminarFavorito(DtoFavoritos dto_favoritos)
        {
            dao_favoritos.Dao_Eliminar_Favoritos(dto_favoritos);
        }
        public void Ctr_InsertarFavorito(DtoFavoritos dto_favoritos)
        {
            dao_favoritos.Dao_Insertar_Favoritos(dto_favoritos);
        }
    }
}
