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
    
    public partial class usuario_idr
    {
        public int id_valores { get; set; }
        public int id_usuario { get; set; }
        public decimal energia_kj { get; set; }
        public decimal energia_kcal { get; set; }
        public decimal sodio_mg { get; set; }
        public decimal potasio_mg { get; set; }
        public decimal calcio_mg { get; set; }
        public decimal fosforo_mg { get; set; }
        public decimal hierro_mg { get; set; }
        public decimal zinc_mg { get; set; }
        public decimal vitamina_c_mg { get; set; }
        public decimal colesterol_mg { get; set; }
        public decimal agua_g { get; set; }
        public decimal grasa_total_g { get; set; }
        public decimal carbohidratos_totales_g { get; set; }
        public decimal carbohidratos_disponibles_g { get; set; }
        public decimal proteinas_g { get; set; }
    
        public virtual usuario usuario { get; set; }
    }
}
