using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace nutricloud_webforms.Models
{
    /// <summary>
    /// En esta clase ponemos todos los datos que necesitamos en la página
    /// para tener todos los datos del usuario en la sesion
    /// </summary>
    public class UsuarioCompleto
    {
        public string Email { get; set; }
        public string Nombre { get; set; }
        public DateTime F_Nacimiento { get; set; }
        public decimal Peso { get; set; }
        public decimal Altura { get; set; }
        public char Sexo { get; set; }
        public int Actividad { get; set; }
    }
}
