﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class nutricloudEntities : DbContext
    {
        public nutricloudEntities()
            : base("name=nutricloudEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<alimento> alimento { get; set; }
        public virtual DbSet<alimento_genero> alimento_genero { get; set; }
        public virtual DbSet<alimento_tipo> alimento_tipo { get; set; }
        public virtual DbSet<blog_nota> blog_nota { get; set; }
        public virtual DbSet<comida_tipo> comida_tipo { get; set; }
        public virtual DbSet<consulta_conversacion> consulta_conversacion { get; set; }
        public virtual DbSet<consulta_mensaje> consulta_mensaje { get; set; }
        public virtual DbSet<estilo_vida> estilo_vida { get; set; }
        public virtual DbSet<usuario> usuario { get; set; }
        public virtual DbSet<usuario_alimento> usuario_alimento { get; set; }
        public virtual DbSet<usuario_datos> usuario_datos { get; set; }
        public virtual DbSet<usuario_estilo_vida> usuario_estilo_vida { get; set; }
        public virtual DbSet<usuario_idr> usuario_idr { get; set; }
        public virtual DbSet<usuario_muro> usuario_muro { get; set; }
        public virtual DbSet<usuario_objetivo> usuario_objetivo { get; set; }
        public virtual DbSet<usuario_receta> usuario_receta { get; set; }
        public virtual DbSet<usuario_tipo> usuario_tipo { get; set; }
        public virtual DbSet<usuario_usuario> usuario_usuario { get; set; }
    }
}
