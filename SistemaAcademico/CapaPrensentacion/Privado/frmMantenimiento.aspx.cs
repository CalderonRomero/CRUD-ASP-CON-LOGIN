using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPrensentacion.Privado
{
    public partial class frmMantenimiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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
        }

        protected void Unnamed2_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            // Cerrar la sesión
            FormsAuthentication.SignOut();
            // Redirigir a la página de inicio de sesión
            Response.Redirect("~/Login.aspx"); // Asegúrate de que esta ruta sea correcta
        }

        protected void btnAlumnos_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmAlumno.aspx");
        }

        protected void btnCarreras_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCarrera.aspx");
        }

        protected void btnAsignaturas_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmAsignatura.aspx");
        }

        protected void btnDocentes_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmDocente.aspx");
        }
    }
}