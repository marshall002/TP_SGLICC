using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using System.IO;
using System.Globalization;

namespace CTR
{
    public class CtrUtils
    {
        public string diaDeLaSemana(DateTime fecha)
        {
            switch (fecha.DayOfWeek.ToString())
            {
                case "Sunday":
                    return "Domingo";
                case "Monday":
                    return "Lunes";
                case "Tuesday":
                    return "Martes";
                case "Wednesday":
                    return "Miércoles";
                case "Thursday":
                    return "Jueves";
                case "Friday":
                    return "Viernes";
                case "Saturday":
                    return "Sábado";
                default:
                    return string.Empty;
            }
        }

        public string mesDelAño(DateTime fecha)
        {
            switch (fecha.Month)
            {
                case 1:
                    return "Enero";
                case 2:
                    return "Febrero";
                case 3:
                    return "Marzo";
                case 4:
                    return "Abril";
                case 5:
                    return "Mayo";
                case 6:
                    return "Junio";
                case 7:
                    return "Julio";
                case 8:
                    return "Agosto";
                case 9:
                    return "Septiembre";
                case 10:
                    return "Octubre";
                case 11:
                    return "Noviembre";
                case 12:
                    return "Diciembre";
                default:
                    return string.Empty;
            }
        }

        public string fechaToString(DateTime fecha)
        {
            return diaDeLaSemana(fecha) + " " + fecha.Day + " de " + mesDelAño(fecha) + " del " + fecha.Year;
        }

        public bool isDate(object inValue)
        {
            bool bValid;
            try
            {
                DateTime myDT = DateTime.Parse(inValue.ToString());
                bValid = true;
            }
            catch (Exception e)
            {
                bValid = false;
            }

            return bValid;
        }

        public string getValueById(string tabla, string columna, string columna_where, object valor_where)
        {
            DaoUtil d_util = new DaoUtil();
            return d_util.getValueById(tabla, columna, columna_where, valor_where);
        }

        public string getValueByIds(string tabla, string columna, string columna_where_1, object valor_where_1, string columna_where_2, object valor_where_2)
        {
            DaoUtil d_util = new DaoUtil();
            return d_util.getValueByIds(tabla, columna, columna_where_1, valor_where_1, columna_where_2, valor_where_2);
        }

        public string getLastId(string tabla, string columna)
        {
            DaoUtil d_util = new DaoUtil();
            return d_util.getLastId(tabla, columna);
        }

        public string getDescTurno(string turno)
        {
            DaoUtil d_util = new DaoUtil();
            return d_util.getDescTurno(turno);
        }

        public string actualizarValor(string tabla, string columna_where, object valor_where, string columna_update, object valor_update)
        {

            DaoUtil d_util = new DaoUtil();
            return d_util.updateValue(tabla, columna_where, valor_where, columna_update, valor_update);
        }
    }
}
