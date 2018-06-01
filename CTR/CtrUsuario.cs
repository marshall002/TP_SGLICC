using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;

namespace CTR
{
    public class CtrUsuario
    {       
        DaoUsuario dao_usuario;
        public CtrUsuario()
        {
            dao_usuario = new DaoUsuario();           
        }

        public bool Ctr_VerificarToken(DtoUsuario dto_usuario, string token)
        {
            return dao_usuario.Dao_VerificarToken(dto_usuario,token);
        }
        public void Ctr_ActualizarMiInformacion(DtoUsuario dto_usuario , aux_DtoUsuario aux_dto_usuario, DtoDireccion_Especifica dto_direccion_especifica)
        {
            dao_usuario.Dao_ActualizarMiInformacion(dto_usuario, aux_dto_usuario, dto_direccion_especifica);
        }
        public void Ctr_Poner_Token_Por_Correo_Cambiado(DtoUsuario dto_usuario , string token3)
        {
            dao_usuario.Dao_Poner_Token_Por_Correo_Cambiado(dto_usuario, token3);
        }
    }
}
