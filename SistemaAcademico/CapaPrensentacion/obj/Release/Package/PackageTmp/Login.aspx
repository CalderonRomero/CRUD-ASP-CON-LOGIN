<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CapaPrensentacion.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Login
    </h1>    
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Unnamed1_Authenticate"></asp:Login>
    
</asp:Content>
