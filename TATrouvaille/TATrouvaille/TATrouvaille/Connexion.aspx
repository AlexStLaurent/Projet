<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="TATrouvaille.Connexion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="h1">Page de Connection</div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">Nom d'utilisateur:</div>
            <div class="col-md-1">
                <asp:TextBox ID="Txtuser" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col-md-2">Mot de passe:</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtPass" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col-md-1">
                <asp:Button ID="BtnConnexion" runat="server" Text="Connection"  OnClick="BtnConnexion_Click"/>
            </div>
        </div>







    </div>
























</asp:Content>
