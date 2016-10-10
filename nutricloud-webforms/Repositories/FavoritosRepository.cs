using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using nutricloud_webforms.DataBase;

namespace nutricloud_webforms.Repositories
{
    public class FavoritosRepository
    {
        private nutricloudEntities c = new nutricloudEntities();


        public List<usuario_alimento_favorito> Listar()
        {
            try
            {
                var list = (from bn in c.usuario_alimento_favorito select bn).ToList();
                return list;
            }
            catch (Exception e)
            {
                throw (e);
            }

        }

        public usuario_alimento_favorito get(int id)
        {
            try
            {
                return c.usuario_alimento_favorito.Find(id);
            }
            catch (Exception e)
            {
                throw (e);
            }

        }

        public void add(usuario_alimento_favorito fav)
        {
            try
            {
                c.usuario_alimento_favorito.Add(fav);
                c.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);
            }

        }

        public void update(usuario_alimento_favorito fav)
        {
            try
            {
                c.Entry(fav);
                c.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);
            }

        }

        public void delete(usuario_alimento_favorito fav)
        {
            try
            {
                c.usuario_alimento_favorito.Remove(fav);
                c.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);
            }
        }

        public usuario_alimento_favorito BuscarAliFav(int id1,int id2)
        {
            
           var resultado = (from a in c.usuario_alimento_favorito where a.id_alimento == id1 && a.id_usuario == id2 select a).FirstOrDefault();

            return resultado;
        }

        public List<alimento> ListarFavoritos(int idusu)
        {
            var resultado = (from a in c.usuario_alimento_favorito join b in c.alimento on a.id_alimento equals b.id_alimento where a.id_usuario == idusu select b).ToList();

            return resultado;
        }


    }
}