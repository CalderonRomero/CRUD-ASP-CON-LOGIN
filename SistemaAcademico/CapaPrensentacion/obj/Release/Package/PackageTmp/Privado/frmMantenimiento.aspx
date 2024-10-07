<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmMantenimiento.aspx.cs" Inherits="CapaPrensentacion.Privado.frmMantenimiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mantenimiento</title>
                <!-- Enlaces a Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />

<!-- Opcional: Incluir un archivo CSS personalizado -->
<link href="~/Content/Site.css" rel="stylesheet" />
    <!-- Enlace a Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/StyleSheet1.css"/> 
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <h1>Bienvenido al mantenimiento de las tablas
            </h1>
            
            <asp:Menu ID="ctl17" runat="server" DataSourceID="SiteMapDataSource1" DynamicHorizontalOffset="2" Font-Names="Century Gothic" Font-Size="1em" ForeColor="Black" Orientation="Horizontal" StaticDisplayLevels="2" StaticSubMenuIndent="10px" Font-Bold="True">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>

            <asp:SiteMapDataSource runat="server" ID="SiteMapDataSource1"></asp:SiteMapDataSource>
            <div class="d-flex justify-content-end">
                <i class="fas fa-users"> <asp:Button Text="Cerrar Sesión" runat="server" ID="btnSalir" CssClass="btn btn-danger" OnClick="btnSalir_Click" /></i>
            </div>
        </div>
        
        <div class="container">
    <!-- Cards con funcionalidades -->
    <div class="row">

        <div class="col-md-4 mt-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-users"></i> Alumnos</h5>
                    <p class="card-text">Gestiona los alumnos del sistema.</p>
                    <asp:LinkButton ID="btnAlumnos" runat="server" CssClass="btn btn-primary" OnClick="btnAlumnos_Click">Ir a Alumnos</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-md-4 mt-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-graduation-cap"></i> Carreras</h5>
                    <p class="card-text">Gestiona las carreras académicas.</p>
                    <asp:LinkButton ID="btnCarreras" runat="server" CssClass="btn btn-primary" OnClick="btnCarreras_Click">Ir a Carreras</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-md-4 mt-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-book"></i> Asignaturas</h5>
                    <p class="card-text">Gestiona las asignaturas del sistema.</p>
                    <asp:LinkButton ID="btnAsignaturas" runat="server" CssClass="btn btn-primary">Ir a Asignaturas</asp:LinkButton>
                </div>
            </div>
        </div>
        
         <div class="col-md-4 mt-4">
             <div class="card">
                 <div class="card-body">
                     <h5 class="card-title"><i class="fas fa-chalkboard"></i> Docentes</h5>
                     <p class="card-text">Gestiona los docentes del sistema.</p>
                      <asp:LinkButton ID="btnDocentes" runat="server" CssClass="btn btn-primary">Ir a Docentes</asp:LinkButton>
                 </div>
             </div>
        </div>
        <div class="col-md-4 mt-4">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title"><i class="fas fa-book"></i> Cargas</h5>
            <p class="card-text">Gestiona las cargas del sistema.</p>
            <a href="#" class="btn btn-primary">Ir a Cargas</a>
        </div>
    </div>
</div>

 <div class="col-md-4 mt-4">
     <div class="card">
         <div class="card-body">
             <h5 class="card-title"><i class="fas fa-users"></i> Usuario</h5>
             <p class="card-text">Gestiona a los usuarios del sistema.</p>
             <a href="#" class="btn btn-primary">Ir a Usuarios</a>
         </div>
     </div>
</div>
    </div>
</div>
        <img src="../img/bg1.jpg" alt="Fondo" class="img-responsive" />
      <!-- Footer -->
        <footer class="bg-dark text-white text-center py-3 mt-4">
            <div class="container">
                <p>&copy; 2024 Sistema de Mantenimiento. Todos los derechos reservados.</p>
                <p>
                    <a href="#" class="text-white mx-2">Términos y condiciones</a> |
                    <a href="#" class="text-white mx-2">Política de privacidad</a>
                </p>
                <p>Desarrollado por Jherzon Dev</p>
            </div>
        </footer>
    </form>
                <!-- Enlaces a los scripts de Bootstrap y dependencias de JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
