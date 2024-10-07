using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPrensentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Deshabilitar el caché del navegador para esta página
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
                Response.Cache.SetNoStore();

                // Si el usuario ya está autenticado, redirigir al sistema
                if (User.Identity.IsAuthenticated)
                {
                    Response.Redirect("~/Privado/frmMantenimiento.aspx");
                }
            }
        }

        protected void Unnamed1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;
            using (SqlConnection conexion = new SqlConnection(cadena))
            {
                string consulta = "SELECT * FROM TUsuario WHERE Usuario = @usuario AND Contrasena = @pass";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                comando.Parameters.AddWithValue("@usuario", Login1.UserName);
                comando.Parameters.AddWithValue("@pass", Login1.Password);
                SqlDataAdapter adapter = new SqlDataAdapter(comando);
                DataTable tabla = new DataTable();
                adapter.Fill(tabla);

                if (tabla.Rows.Count == 0)
                {
                    Login1.FailureText = "Usuario o Contraseña incorrecto!";
                }
                else
                {
                    // Autenticación exitosa: establecer ticket de autenticación
                    FormsAuthentication.SetAuthCookie(Login1.UserName, false);
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
                }
            }
        }
    }
}