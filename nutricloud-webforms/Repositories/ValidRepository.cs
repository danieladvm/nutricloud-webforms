using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace nutricloud_webforms.Repositories
{
    class ValidRepository
    {
        public bool ValidaVacio(string text)
        {
            if (string.IsNullOrEmpty(text))
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool ValidaMail(string email)
        {
            // VER ESTO, TODO FUE ENCONTRADO EN INTERNET
            String expresion;
            expresion = @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]";

            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, String.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public bool ValidaRangoLen(string text, int min, int max)
        {
            if (text.Length < min || text.Length > max)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        //Se usaria por ejemplo para validar que las dos password sean iguales
        public bool ValidaIguales(string text1, string text2)
        {
            if (text1.Equals(text2))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
