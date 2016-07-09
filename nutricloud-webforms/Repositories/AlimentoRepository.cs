using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nutricloud_webforms.Repositories
{
    public class AlimentoRepository
    {
        DataBase.nutricloudEntities c = new DataBase.nutricloudEntities();

        //mostrar todos los alimentos
        public List<DataBase.alimento> ListarAlimento()
        {
            List<DataBase.alimento> al = (from a in c.alimento select a).ToList();
            return al;
        }

        //muestra un solo alimento
        public DataBase.alimento ListarUnAlimento(int idali)
        {
            DataBase.alimento al = (from a in c.alimento
                           where a.id_alimento == idali
                           select a).FirstOrDefault();
            return al;
        }

        //buscar y listar alimentos por nombre ingresado
        public List<DataBase.alimento> BuscarAlimento(string nombrea)
        {

            List<DataBase.alimento> al = (from bu in c.alimento
                                 where bu.alimento1 == nombrea
                                 orderby bu.id_alimento descending
                                 select bu).ToList();



            return al;
        }


    }
}