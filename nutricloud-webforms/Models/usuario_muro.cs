//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace nutricloud_webforms.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class usuario_muro
    {
        public int id_usuario_muro { get; set; }
        public int id_usuario { get; set; }
        public string estado { get; set; }
        public System.DateTime f_publicacion { get; set; }
    
        public virtual usuario usuario { get; set; }
    }
}
