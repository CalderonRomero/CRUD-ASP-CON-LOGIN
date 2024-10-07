<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CapaPrensentacion.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">  
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Unnamed1_Authenticate">
        <LayoutTemplate>
        <div class="container-lg">
            <div class="card shadow-lg p-3" style="max-width: 900px; width: 100%;">
                <h3 class="text-center mb-4">Iniciar sesión</h3>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel" Text="Nombre de usuario:" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="UserName" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="Login1" ToolTip="El nombre de usuario es obligatorio." ID="UserNameRequired" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel" Text="Contraseña:" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ValidationGroup="Login1" ToolTip="La contraseña es obligatoria." ID="PasswordRequired" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>

                <div class="form-check mb-4">
                    <asp:CheckBox runat="server" ID="RememberMe"  CssClass="form-check-input" />
                    <asp:Label runat="server" AssociatedControlID="" class="form-check-label" for="flexCheckDefault">Recordarme la próxima vez</asp:Label>
                </div>

                <div class="text-center mt-3">
                    <asp:Button runat="server" CommandName="Login" Text="Iniciar sesión" ValidationGroup="Login1" CssClass="btn btn-primary w-100" ID="LoginButton"></asp:Button>
                </div>

                <div class="text-center mt-3">
                    <span class="text-danger">
                        <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                    </span>
                </div>
            </div>
        </div>
    </LayoutTemplate>
    </asp:Login>
    
</asp:Content>
