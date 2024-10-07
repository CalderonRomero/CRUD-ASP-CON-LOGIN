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
                <asp:Button Text="Cerrar Sesión" runat="server" ID="btnSalir" CssClass="btn btn-danger" OnClick="btnSalir_Click" />
            </div>
        </div>
    </form>
                <!-- Enlaces a los scripts de Bootstrap y dependencias de JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
