using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Constante
    {   
        public const int ERROR_EXIT = 0;
        public const int ERROR_SUCCESS = 1;

        #region RUTAS IMAGENES
        public const string FOTO_PERFIL = "~/pages/imagenes/usuarios_perfil/";
        public const string URL_IMAGEN_NOTI= "/pages/imagenes/usuarios_perfil/";
        public const string URL_IMAGEN_EMPRESA = "~/pages/imagenes/logo_empresas/";

        #endregion

        #region RUTAS DOCUMENTOS
        public const string DOC_RECIBO_PAGO = "../documentos/recibo_pago/";
        #endregion

        #region ESTADOS GENERALES
        public const string FLG_ACTIVO = "1";
        public const string FLG_INACTIVO = "0";

        public const string FLG_VERDADERO = "True";
        public const string FLG_FALSO = "False";

        public const int ESTADO_CUENTA_NO_ACTIVADO = 1;
        public const int ESTADO_CUENTA_ACTIVADO = 2;        
        public const int ESTADO_CUENTA_AMONESTADO = 3;
        public const int ESTADO_CUENTA_SUSPENDIDO = 4;
        #endregion

        #region ROLES
        public const int ROL_ADMINISTRADOR = 1;
        public const int ROL_JEFE_DE_VENTAS= 2;
        public const int ROL_JEFE_DE_COMPRAS = 3;
        public const int ROL_PROVEEDOR = 4;
        public const int ROL_CLIENTE = 5;
        public const int ROL_JEFE_DE_PROYECTOS = 6;
        public const int ROL_JEFE_DE_FINANZAS = 7;

        #endregion


        #region COLORES
        public const string COLOR_ROJO = "bg-red";
        public const string COLOR_ROSA = "bg-pink";
        public const string COLOR_PURPURA = "bg-purple";
        public const string COLOR_MORADO = "bg-deep-purple";
        public const string COLOR_AZUL_OSCURO = "bg-indigo";
        public const string COLOR_AZUL = "bg-blue";
        public const string COLOR_AZUL_CLARO = "bg-light-blue";
        public const string COLOR_CELESTE = "bg-cyan";
        public const string COLOR_VERDE_OSCURO = "bg-teal";
        public const string COLOR_VERDE = "bg-green";
        public const string COLOR_VERDE_CLARO = "bg-light-green";
        public const string COLOR_LIMA = "bg-lime";
        public const string COLOR_AMARILLO = "bg-yellow";
        public const string COLOR_AMBAR = "bg-amber";
        public const string COLOR_NARANJA = "bg-orange";
        public const string COLOR_NARANJA_OSCURO = "bg-deep-orange";
        public const string COLOR_MARRON = "bg-brown";
        public const string COLOR_GRIS = "bg-grey";
        public const string COLOR_HUMO = "bg-blue-grey";
        public const string COLOR_NEGRO = "bg-black";
        #endregion

        #region NIVEL ACADEMICO
        public const int NIVEL_ESCOLAR = 1;
        public const int NIVEL_PRE_UNIVERSITARIO = 2;
        public const int NIVEL_UNIVERSITARIO = 3;
        #endregion


        #region TIPOS_DE_CLIENTE      
        public const int PROPIETARIO = 1;
        public const int EMPRESA = 2;

        #endregion

    }
}
