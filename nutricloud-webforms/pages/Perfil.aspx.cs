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
            LblEmail.Text = usuario.Usuario.email;
            TxtNombre.Text = !string.IsNullOrEmpty(usuario.Usuario.nombre) ? usuario.Usuario.nombre : "";
            rblGenero.SelectedValue = !string.IsNullOrEmpty(usuario.Usuario.sexo) ? usuario.Usuario.sexo : "";
            TxtFechaNacimiento.Text = usuario.Usuario.f_nacimiento != null ? usuario.Usuario.f_nacimiento.ToString() : "";

            //Datos físicos
            if (usuario.UsuarioDatos != null)
            {
                TxtPeso.Text = usuario.UsuarioDatos.peso_kg.ToString();
                TxtAltura.Text = usuario.UsuarioDatos.altura_cm.ToString();
                rblActividad.SelectedValue = usuario.UsuarioDatos.id_usuario_actividad.ToString();
                rblObjetivo.SelectedValue = usuario.UsuarioDatos.id_usuario_objetivo.ToString();
            }
        }

        private usuario MapeaFormUsuarioInfoGral()
        {
            UsuarioCompleto UsuarioCompleto = (UsuarioCompleto)Session["UsuarioCompleto"];

            //Datos generales
            UsuarioCompleto.Usuario.nombre = TxtNombre.Text;
            UsuarioCompleto.Usuario.sexo = rblGenero.SelectedValue;
            UsuarioCompleto.Usuario.f_nacimiento = DateTime.Parse(TxtFechaNacimiento.Text);

            return UsuarioCompleto.Usuario;
        }

        private usuario_datos MapeaFormUsuarioDatosFisicos()
        {
            UsuarioCompleto UsuarioCompleto = (UsuarioCompleto)Session["UsuarioCompleto"];

            //Datos físicos
            if (UsuarioCompleto.UsuarioDatos == null)
            {
                UsuarioCompleto.UsuarioDatos = new usuario_datos();
            }

            UsuarioCompleto.UsuarioDatos.id_usuario = UsuarioCompleto.Usuario.id_usuario;
            UsuarioCompleto.UsuarioDatos.peso_kg = decimal.Parse(TxtPeso.Text);
            UsuarioCompleto.UsuarioDatos.altura_cm = int.Parse(TxtAltura.Text);
            UsuarioCompleto.UsuarioDatos.id_usuario_actividad = int.Parse(rblActividad.SelectedValue);
            UsuarioCompleto.UsuarioDatos.id_usuario_objetivo = int.Parse(rblObjetivo.SelectedValue);
            UsuarioCompleto.UsuarioDatos.f_ingreso = DateTime.Now;

            return UsuarioCompleto.UsuarioDatos;
        }

        private bool ValidaInfoGral()
        {
            bool errores = false;
            Label lblError;
            ValidRepository vr = new ValidRepository();
            pnlErroresInfoGral.Controls.Clear();

            //Valida vacios
            if (!vr.ValidaVacio(TxtNombre.Text))
            {
                lblError = new Label();
                lblError.Text = "* El nombre no puede estar vacío";
                lblError.CssClass = "text-error";
                pnlErroresInfoGral.Controls.Add(lblError);
                errores = true;
            }

            if (rblGenero.SelectedValue == string.Empty)
            {
                lblError = new Label();
                lblError.Text = "* Debe seleccionar su género";
                lblError.CssClass = "text-error";
                pnlErroresInfoGral.Controls.Add(lblError);
                errores = true;
            }

            if (!vr.ValidaVacio(TxtFechaNacimiento.Text))
            {
                lblError = new Label();
                lblError.Text = "* La fecha de nacimiento no puede estar vacía";
                lblError.CssClass = "text-error";
                pnlErroresInfoGral.Controls.Add(lblError);
                errores = true;
            }

            return !errores;
        }

        private bool ValidaDatosFisicos()
        {
            bool errores = false;
            Label lblError;
            ValidRepository vr = new ValidRepository();
            pnlErroresDatosFisicos.Controls.Clear();

            //Valida vacios
            if (!vr.ValidaVacio(TxtPeso.Text))
            {
                lblError = new Label();
                lblError.Text = "* Su peso no puede estar vacío";
                lblError.CssClass = "text-error";
                pnlErroresDatosFisicos.Controls.Add(lblError);
                errores = true;
            }

            if (!vr.ValidaVacio(TxtAltura.Text))
            {
                lblError = new Label();
                lblError.Text = "* La altura no puede estar vacía";
                lblError.CssClass = "text-error";
                pnlErroresDatosFisicos.Controls.Add(lblError);
                errores = true;
            }

            if (rblActividad.SelectedValue == string.Empty)
            {
                lblError = new Label();
                lblError.Text = "* Debe seleccionar su nivel de actividad";
                lblError.CssClass = "text-error";
                pnlErroresDatosFisicos.Controls.Add(lblError);
                errores = true;
            }

            if (rblObjetivo.SelectedValue == string.Empty)
            {
                lblError = new Label();
                lblError.Text = "* Debe establecer su objetivo";
                lblError.CssClass = "text-error";
                pnlErroresDatosFisicos.Controls.Add(lblError);
                errores = true;
            }

            return !errores;
        }
        #endregion

        #region Eventos
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargaForm();
            }
        }

        protected void btnActualizarInfoGral_Click(object sender, EventArgs e)
        {
            if (ValidaInfoGral())
            {
                UsuarioRepository ur = new UsuarioRepository();
                ur.ActualizarUsuario(MapeaFormUsuarioInfoGral());
            }
        }

        protected void btnActualizarDatosFisicos_Click(object sender, EventArgs e)
        {
            if (ValidaDatosFisicos())
            {
                UsuarioRepository ur = new UsuarioRepository();
                ur.InsertarDatosUsuario(MapeaFormUsuarioDatosFisicos());
            }
        }
        #endregion
    }
}