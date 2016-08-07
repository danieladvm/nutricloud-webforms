using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity.Core.Objects;
using nutricloud_webforms.DataBase;

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

        public ObjectResult<sp_alimento_diario_Result> ListarDiario(int id_usuario, int id_comida_tipo, DateTime fecha)
        {
            return c.sp_alimento_diario(id_usuario, id_comida_tipo, fecha);
        }

        public List<comida_tipo> ListarTipoComida()
        {
            return (from ct in c.comida_tipo
                    select ct).ToList();
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