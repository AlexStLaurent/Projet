<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="CreerCompte.aspx.cs" Inherits="TATrouvaille.CreerCompte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="h1">Création de compte</div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">Nom d'utilisateur:</div>
            <div class="col-md-1">
                <asp:TextBox ID="Txtuser" runat="server" PlaceHolder="Max 20 caractères"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col-md-2">Mot de passe:</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtPass" runat="server" PlaceHolder="Max 15 caractères"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col-md-2">Recopier le mot de passe:</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtRePass" runat="server" PlaceHolder="Doit être identique"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col-md-1">
                <asp:Button ID="BtnCreer" runat="server" Text="Créer" PostBackUrl="~/Connexion.aspx" />
            </div>
        </div>
        </div>























</asp:Content>
