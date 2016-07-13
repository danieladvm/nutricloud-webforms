using System.Collections.Generic;
using System.Linq;
using nutricloud_webforms.DataBase;
using System;

namespace nutricloud_webforms.Repositories
{
    public class AlimentoRepository
    {
        private nutricloudEntities c = new nutricloudEntities();

        //mostrar todos los alimentos
        public List<alimento> ListarAlimento()
        {
            List<alimento> al = (from a in c.alimento select a).ToList();
            return al;
        }

        //muestra un solo alimento
        public alimento ListarUnAlimento(int idali)
        {
            alimento al = (from a in c.alimento where a.id_alimento == idali select a).FirstOrDefault();
            return al;
        }

        //buscar y listar alimentos por nombre ingresado
        public List<alimento> BuscarAlimento(string parametro)
        {
            var resultado = (from a in c.alimento where a.alimento1.Contains(parametro) select a).ToList();

            return resultado;
        }

        public alimento BuscarAlimentoId(string parametro)
        {
            int param = Convert.ToInt32(parametro);
            var resultado = (from a in c.alimento where a.id_alimento == param select a).First();

            
            return resultado;
        }

    }
}