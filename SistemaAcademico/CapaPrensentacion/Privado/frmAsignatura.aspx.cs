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
    public partial class frmAsignatura : System.Web.UI.Page
    {
        private void Listar()
        {
            Asignatura asignatura = new Asignatura();
            gvAsignatura.DataSource = asignatura.Listar();
            gvAsignatura.DataBind();
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
            Asignatura asignatura = new Asignatura();
            asignatura.CodAsignatura = txtCodAsignatura.Text.Trim();
            asignatura.NombreAsignatura = txtAsignatura.Text.Trim();
            asignatura.CodRequisito = txtCodRequisito.Text.Trim();

            if (asignatura.Agregar())
            {
                Listar();
            }
            else
            {
                Response.Write("No se pudo agregar la asignatura.");
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Asignatura asignatura = new Asignatura();
            asignatura.CodAsignatura = txtCodAsignatura.Text.Trim();

            if (asignatura.Eliminar())
            {
                Listar();
            }
            else
            {
                Response.Write("No se pudo eliminar la asignatura.");
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Asignatura asignatura = new Asignatura();
            asignatura.CodAsignatura = txtCodAsignatura.Text.Trim();
            asignatura.NombreAsignatura = txtAsignatura.Text.Trim();
            asignatura.CodRequisito = txtCodRequisito.Text.Trim();

            if (asignatura.Actualizar())
            {
                Listar();
            }
            else
            {
                Response.Write("No se pudo actualizar la asignatura.");
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string criterio = txtBuscar.Text.Trim();
            DataTable resultado = new Asignatura().Buscar(criterio);

            if (resultado.Rows.Count > 0)
            {
                gvAsignatura.DataSource = resultado;
                gvAsignatura.DataBind();
            }
            else
            {
                Response.Write("No se encontraron resultados.");
                gvAsignatura.DataSource = null;
                gvAsignatura.DataBind();
            }
        }
    }
}