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

            c.usuario_alimento.Add(diario);
            c.SaveChanges();
            
        }


    }
}