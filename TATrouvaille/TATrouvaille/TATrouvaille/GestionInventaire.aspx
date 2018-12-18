<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="GestionInventaire.aspx.cs" Inherits="TATrouvaille.GestionInventaire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
    <asp:GridView runat="server" ID="grvInventaire" AutoGenerateColumns="false" OnSelectedIndexChanged="grvInventaire_SelectedIndexChanged" OnRowCommand="grvInventaire_RowCommand" OnRowDeleting="grvInventaire_RowDeleting">
        <Columns>
            <asp:BoundField HeaderText="# de livre" DataField="IDLivre" ReadOnly="true" />
            <asp:BoundField HeaderText="Titre du livre" DataField="Titre" ReadOnly="true" />
            <asp:BoundField HeaderText="Auteur" DataField="Auteur" ReadOnly="true" />
            <asp:BoundField HeaderText="Prix" ReadOnly="true" DataField="Prix" />
            <asp:ButtonField CommandName="Delete" HeaderText="" CausesValidation="false" ShowHeader="false" Text="Terminer réservation" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="txtRetour" runat="server" Text="Retour" PostBackUrl="~/Administration.aspx" />
</asp:Content>
