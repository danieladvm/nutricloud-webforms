using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using 

namespace nutricloud_webforms.Repositories
{
    public class DiarioRepository
    {

        DataBase.nutricloudEntities c = new DataBase.nutricloudEntities();

        public void IngresarAlimentoDiario (DataBase.usuario_alimento diario)
        {
            try
            {
                c.usuario_alimento.Add(diario);
                c.SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void EliminarAlimentoUsuario(int id_usuario_alimento)
        {
            try
            {
                var query = (from ua in c.usuario_alimento
                            where ua.id_usuario_alimento == id_usuario_alimento
                            select ua).FirstOrDefault();

                c.usuario_alimento.Remove(query);
                c.SaveChanges();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}