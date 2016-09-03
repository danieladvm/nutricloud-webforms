﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using nutricloud_webforms.DataBase;
using nutricloud_webforms.Models;

namespace nutricloud_webforms.Repositories
{
    class UsuarioRepository
    {
        nutricloudEntities c = new nutricloudEntities();

        #region Interaccion con la base
        public void Insertar(usuario u)
        {
            c.usuario.Add(PreparaUsuarioNuevo(u));
            c.SaveChanges();
        }

        public void ActualizarUsuario(usuario u)
        {
            var usuario = c.usuario.Find(u.id_usuario);
            usuario.clave = u.clave;
            usuario.nombre = u.nombre;
            usuario.sexo = u.sexo;
            usuario.f_nacimiento = u.f_nacimiento;

            c.Entry(usuario);
            c.SaveChanges();
        }

        public void ActualizarDatosUsuario(usuario_datos u)
        {
            var usuariod = c.usuario_datos.Find(u.id_usuario_datos);
            usuariod.altura_cm = u.altura_cm;
            usuariod.peso_kg = u.peso_kg;
            usuariod.id_usuario_objetivo = u.id_usuario_objetivo;
            usuariod.id_usuario_actividad = u.id_usuario_actividad;


            c.Entry(usuariod);
            c.SaveChanges();
        }

        public void InsertarDatosUsuario(usuario_datos ud)
        {
            c.usuario_datos.Add(ud);
            c.SaveChanges();
        }

        public usuario BuscarUsuarioLogIn(usuario usuario)
        {
            string claveEncriptada = SeguridadRepository.Encriptar(usuario.clave);

            usuario u = (from us in c.usuario
                         where us.email == usuario.email && us.clave == claveEncriptada
                         select us).FirstOrDefault();

            if (u != null)
            {
                c.Entry(PraparaUsuarioUpdate(u));
                c.SaveChanges();
            }

            return u;
        }

        public List<usuario_tipo> ListarTipoUsuario()
        {
            List<usuario_tipo> tu = (from u in c.usuario_tipo select u).ToList();
            return tu;
        }

        public List<usuario_actividad> ListarActividades()
        {
            return (from u in c.usuario_actividad select u).ToList();
        }

        public usuario_datos Buscar(int idUsuario)
        {
            return (from ud in c.usuario_datos
                    where ud.id_usuario == idUsuario
                    orderby ud.f_ingreso descending
                    select ud).FirstOrDefault();
        }

        public usuario BuscarUsuario(int id_usuario)
        {
            return (from u in c.usuario
                    where u.id_usuario == id_usuario
                    select u).FirstOrDefault();
        }

        public usuario_datos BuscarUsuarioDatos(int id_usuario)
        {
            return (from ud in c.usuario_datos
                    where ud.id_usuario == id_usuario
                    orderby ud.f_ingreso descending
                    select ud).FirstOrDefault();
        }

        public List<usuario_objetivo> ListarObjetivos()
        {
            return (from ob in c.usuario_objetivo select ob).ToList();
        }

        public List<usuario> ListarUsuarios(string nombre)
        {
            return (from us in c.usuario
                    where us.nombre.Contains(nombre) ||
                    us.email.Contains(nombre)
                    select us).ToList();
        }

        #endregion

        #region Metodos
        private usuario PreparaUsuarioNuevo(usuario u)
        {
            string claveEncriptada = SeguridadRepository.Encriptar(u.clave);
            u.clave = claveEncriptada;
            u.f_registro = DateTime.Now;

            return u;
        }

        private usuario PraparaUsuarioUpdate(usuario u)
        {
            u.f_ultimo_ingreso = DateTime.Now;
            return u;
        }

        public int CalcularEdad (usuario u)
        {
            DateTime Hoy = DateTime.Today;
            DateTime Bday = Convert.ToDateTime(u.f_nacimiento);
            int edad = Hoy.Year - Bday.Year;

            if (Bday > Hoy.AddYears(-edad))
               edad--;

            return edad;
        }

        public double CalcularIngesta(UsuarioCompleto u)
        {
                int edad = CalcularEdad(u.Usuario);
                double tmb;
                double tmb2;
                double tmb3;
                double tmbtot;
                char sexo = Convert.ToChar(u.Usuario.sexo);
                int actividad = Convert.ToInt32(u.UsuarioDatos.id_usuario_actividad);
                double ingesta;

                if (sexo == 'm')
                {
                    tmb = (10 * Convert.ToDouble(u.UsuarioDatos.peso_kg));
                    tmb2 = (6.25 * u.UsuarioDatos.altura_cm);
                    tmb3 = (5 * edad);

                    tmbtot = tmb + tmb2 - tmb3 + 5;

                    switch (actividad)
                    {
                        case 1:
                            ingesta = tmbtot * 1.2;
                            break;
                        case 2:
                            ingesta = tmbtot * 1.375;
                            break;
                        case 3:
                            ingesta = tmbtot * 1.55;
                            break;
                        case 4:
                            ingesta = tmbtot * 1.725;
                            break;
                        case 5:
                            ingesta = tmbtot * 1.9;
                            break;
                        default:
                            ingesta = 0;
                            break;
                    }

                    return ingesta;
                }

                else
                {
                    if (sexo == 'f')
                    {
                        tmb = (10 * Convert.ToDouble(u.UsuarioDatos.peso_kg));
                        tmb2 = (6.25 * u.UsuarioDatos.altura_cm);
                        tmb3 = (5 * edad);

                        tmbtot = tmb + tmb2 - tmb3 - 161;

                        switch (actividad)
                        {
                            case 1:
                                ingesta = tmbtot * 1.2;
                                break;
                            case 2:
                                ingesta = tmbtot * 1.375;
                                break;
                            case 3:
                                ingesta = tmbtot * 1.55;
                                break;
                            case 4:
                                ingesta = tmbtot * 1.725;
                                break;
                            case 5:
                                ingesta = tmbtot * 1.9;
                                break;
                            default:
                                ingesta = 0;
                                break;
                        }
                        return ingesta;
                    }
                    else return 0;
                }
            } 
        }
        #endregion
    }
