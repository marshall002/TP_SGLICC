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
    public class CtrPersona
    {
        DaoPersona dao_persona;
        DaoUtil d_util;
        public CtrPersona()
        {
            dao_persona = new DaoPersona();
            d_util = new DaoUtil();
        }
        //creado por royer
        public bool CtrConsultarLogeo(DtoPersona dto_persona, DtoUsuario dto_usuario)
        {
            return dao_persona.DaoConsultarLogueo(dto_persona, dto_usuario);
        }
        public bool CtrconsultarPersonaPorCorreo(string correo)
        {
            return dao_persona.DaoObtenerCorreoPersona(correo);
        }
        public bool CtrConsultarDocumentoPersona(int documento)
        {
            return dao_persona.Dao_ConsultarDocumentoPersona(documento);
        }
        //este de abajo no sirve
        public bool CtrConsultarCorreo_o_Documento(DtoPersona dto_persona, string correo, int documento)
        {
            return dao_persona.Dao_ConsultarCorreo_o_Documento(dto_persona, correo, documento);
        }
        public DataSet Ctr_SeleccionarUltimaPersonaRegistrada(DtoPersona dto_persona)
        {
           return dao_persona.Dao_SeleccionarUltimoRegistroPersona(dto_persona);
        } 
        public void Ctr_RegistrarPersona(DtoCliente dto_cliente)
        {
            dao_persona.Dao_RegistrarPersona(dto_cliente);
        }

        //creado por royer
        //public DataSet ctrSeleccionarUltimaPersonaRegistrada(auxPersona dto_persona)
        //{
        //    return d_persona.daoSelectUltimaPersonaRegistrada(dto_persona);
        //}
    }
}

