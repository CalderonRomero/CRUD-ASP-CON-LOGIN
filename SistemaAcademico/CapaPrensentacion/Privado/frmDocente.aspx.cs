using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPrensentacion.Privado
{
    public partial class frmDocente : System.Web.UI.Page
    {
        private void Listar()
        {
            Docente docente = new Docente();
            gvDocente.DataSource = docente.Listar();
            gvDocente.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // Cargar la lista solo la primera vez que se carga la página
            if (!Page.IsPostBack)
            {
                Listar();
            }

            // Deshabilitar el caché del navegador
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();

            // Verificar si el usuario está autenticado
            if (!User.Identity.IsAuthenticated)
            {
                // Redirigir al formulario de login si la sesión ha expirado
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void bntInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmMantenimiento.aspx");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Docente docente = new Docente();
            docente.CodDocente = txtCodDocente.Text.Trim();
            docente.APaterno = txtApPaterno.Text.Trim();
            docente.AMaterno = txtApMaterno.Text.Trim();
            docente.NombresDocente = txtNombres.Text.Trim();
            docente.UsuarioDocente = txtUsuario.Text.Trim();

            if (docente.Agregar())
            {
                Listar();
            }
            else
            {
                Response.Write("No se pudo agregar el docente. Verifica que el usuario esté registrado en TUsuario.");
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Docente docente = new Docente();
            docente.CodDocente = txtCodDocente.Text.Trim();

            if (docente.Eliminar())
            {
                Listar();
            }
            else
            {
                Response.Write("No se pudo eliminar el docente.");
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Docente docente = new Docente();
            docente.CodDocente = txtCodDocente.Text.Trim();
            docente.APaterno = txtApPaterno.Text.Trim();
            docente.AMaterno = txtApMaterno.Text.Trim();
            docente.NombresDocente = txtNombres.Text.Trim();
            docente.UsuarioDocente = txtUsuario.Text.Trim();

            if (docente.Actualizar())
            {
                Listar();
            }
            else
            {
                Response.Write("No se pudo actualizar el docente.");
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string criterio = txtBuscar.Text.Trim();
            DataTable resultado = new Docente().Buscar(criterio);

            if (resultado.Rows.Count > 0)
            {
                gvDocente.DataSource = resultado;
                gvDocente.DataBind();
            }
            else
            {
                Response.Write("No se encontraron resultados.");
                gvDocente.DataSource = null;
                gvDocente.DataBind();
            }
        }
    }
}