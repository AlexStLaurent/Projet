<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="PageGénériqueAdmin.aspx.cs" Inherits="TATrouvaille.PageGénériqueUsager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-2"></div><h1>Opération effectué avec succès!</h1>
    </div>
        <div class="row">
            <asp:Button runat="server" ID="btnRetour" Text="Retour à l'administration" PostBackUrl="~/Administration.aspx" />
        </div>
        </div>

</asp:Content>
