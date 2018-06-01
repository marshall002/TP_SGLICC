using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class ConexionBD
    {
        public static string CadenaConexion
        {
            get
            {
                return "data source=KS\\SQLEXPRESS; initial catalog=BD_SGLTCC; integrated security=SSPI;";
                //return "data source=PCMYM-PC; initial catalog=BD_SIGDA; integrated security=SSPI;";
            }
        }
    }
}
