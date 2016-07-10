using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutricloud_webforms.Repositories;
using nutricloud_webforms.DataBase;
using nutricloud_webforms.Models;
using System.Data.Entity;

namespace nutricloud_webforms
{
    public partial class Perfil : System.Web.UI.Page
    {
        private nutricloudEntities db = new nutricloudEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargaForm();
            }
        }

        #region Metodos Privados
        private void CargaGeneros()
        {
            ListItem li;
            rblGenero.Items.Clear();

            li = new ListItem();
            li.Text = "Masculino";
            li.Value = "m";
            rblGenero.Items.Add(li);

            li = new ListItem();
            li.Text = "Femenino";
            li.Value = "f";
            rblGenero.Items.Add(li);
        }

        private void CargaActividades()
        {
            ListItem li;
            UsuarioRepository ur = new UsuarioRepository();
            rblActividad.Items.Clear();
            foreach (DataBase.usuario_actividad item in ur.ListarActividades())
            {
                li = new ListItem();
                li.Text = item.usuario_actividad1;
                li.Value = item.id_usuario_actividad.ToString();
                rblActividad.Items.Add(li);
            }
        }

        private void CargaObjetivos()
        {
            ListItem li;
            UsuarioRepository ur = new UsuarioRepository();
            rblObjetivo.Items.Clear();
            foreach (var item in ur.ListarObjetivos())
            {
                li = new ListItem();
                li.Text = item.usuario_objetivo1;
                li.Value = item.id_usuario_objetivo.ToString();
                rblObjetivo.Items.Add(li);
            }
        }

        private void CargaForm()
        {
            UsuarioCompleto usuario = (UsuarioCompleto)Session["UsuarioCompleto"];

            CargaGeneros();
            CargaActividades();
            CargaObjetivos();

            //Datos generales
            LblFechaRegistro.Text = usuario.Usuario.f_registro.ToString("dd/MM/yyyy hh:mm");
            LblFechaUltimoIngreso.Text = usuario.Usuario.f_ultimo_ingreso != null ? usuario.Usuario.f_ultimo_ingreso.ToString() : "";
            TxtEmail.Text = usuario.Usuario.email;
            TxtNombre.Text = !string.IsNullOrEmpty(usuario.Usuario.nombre) ? usuario.Usuario.nombre : "";
            rblGenero.SelectedValue = !string.IsNullOrEmpty(usuario.Usuario.sexo) ? usuario.Usuario.sexo : "";
            LblFechaNacimiento.Text = usuario.Usuario.f_nacimiento != null ? usuario.Usuario.f_nacimiento.ToString() : "";

            if (usuario.UsuarioDatos != null)
            {
                TxtPeso.Text = usuario.UsuarioDatos.peso_kg.ToString();
                TxtAltura.Text = usuario.UsuarioDatos.altura_cm.ToString();
            }
        }

        private void MapeaFormUsuario()
        {

        }
        #endregion

        #region Eventos
        protected void btnActualizarInfoGral_Click(object sender, EventArgs e)
        {
            //UsuarioCompleto userSession = (UsuarioCompleto)Session["UsuarioCompleto"];

            //var user = db.usuario.Find(userSession.Usuario.id_usuario);
            //user.nombre = TxtNombre.Text;
            //user.email = TxtEmail.Text;
            //var userData = db.usuario_datos.Find(userSession.UsuarioDatos.id_usuario_datos);
            //userData.peso_kg = Decimal.Parse(TxtPesoActual.Text);

            //// Actualizo la base de datos
            //db.Entry(user);
            //db.Entry(userData);
            //db.SaveChanges();

            //// Actualizo datos de la session
            //userSession.Usuario = user;
            //userSession.UsuarioDatos = userData;
        }

        protected void btnActualizarDatosFisicos_Click(object sender, EventArgs e)
        {
        }
        #endregion
    }
}