using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nutricloud_web.Models
{
    public class LogInViewModel
    {
        public string Email { get; set; }
        public string Password { get; set; }
    }

    public class SignInViewModel
    {
        public string Email { get; set; }
        public string Password1 { get; set; }
        public string Password2 { get; set; }
        public string IdTipoUsuario { get; set; }
    }
}