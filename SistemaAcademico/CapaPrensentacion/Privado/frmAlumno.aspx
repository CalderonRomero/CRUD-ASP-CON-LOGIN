<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAlumno.aspx.cs" Inherits="CapaPrensentacion.Privado.frmAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <!-- Enlaces a Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    
    <!-- Opcional: Incluir un archivo CSS personalizado -->
    <link href="~/Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
                <h3>Mantenimiento de la tabla Alumno 
                    <asp:Button Text="Volver a Inicio" runat="server" ID="bntInicio" CssClass="btn btn-primary" OnClick="bntInicio_Click" />
                </h3>

                <p>
                    CodAlumno: <asp:TextBox runat="server" id="txtCodAlumno" CssClass="form-control"/> 
                </p>
                <p> 
                    Apellido Paterno: <asp:TextBox runat="server" id="txtApPaterno" CssClass="form-control"/>
                </p>
                <p> 
                    Apellido Materno: <asp:TextBox runat="server" id="txtApMaterno" CssClass="form-control"/>
                </p>
                <p> 
                    Nombres: <asp:TextBox runat="server" id="txtNombres" CssClass="form-control"/>
                </p>
                 <p> 
                    Usuario: <asp:TextBox runat="server" id="txtUsuario" CssClass="form-control"/>
                </p>
                 <p> 
                    CodCarrera: <asp:TextBox runat="server" id="txtCodCarrera" CssClass="form-control"/>
                </p>
                <p>
                    <asp:Button Text="Agregar" runat="server" ID="btnAgregar" CssClass="btn btn-primary" OnClick="btnAgregar_Click" />
                    <asp:Button Text="Eliminar" runat="server" ID="btnEliminar" CssClass="btn btn-danger" OnClick="btnEliminar_Click" />
                    <asp:Button Text="Actualizar" runat="server" ID="btnActualizar" CssClass="btn btn-warning" OnClick="btnActualizar_Click" />

                </p>
                <p>
                     Buscar: <asp:TextBox runat="server" id="txtBuscar" CssClass="form-control"/>
                </p>
                <p>
                    <asp:Button Text="Buscar" runat="server" ID="btnBuscar" CssClass="btn btn-info" OnClick="btnBuscar_Click" />
                </p>
                <p>
                    <asp:GridView runat="server" id="gvAlumno" CssClass="table table-bordered text-center"></asp:GridView>
                </p>
        </div>
    </form>
    <!-- Enlaces a los scripts de Bootstrap y dependencias de JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
