<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="GestionRéservation.aspx.cs" Inherits="TATrouvaille.GestionRéservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
    <asp:GridView runat="server" ID="gdvGestion" OnSelectedIndexChanged="gdvGestion_SelectedIndexChanged" AutoGenerateColumns="false" OnRowCommand="gdvGestion_RowCommand" OnRowDeleting="gdvGestion_RowDeleting" OnRowUpdating="gdvGestion_RowUpdating">
        <Columns>
            <asp:BoundField HeaderText ="# de réservation" DataField ="ReservID"  ReadOnly="true" />
            <asp:BoundField HeaderText ="# de livre" DataField ="IDLivre" ReadOnly="true" />
            <asp:BoundField HeaderText="Titre du livre" DataField="Titre" ReadOnly ="true" />
            <asp:BoundField HeaderText="Nom" DataField="Nom" ReadOnly="true" />
            <asp:BoundField HeaderText="Prénom" DataField="Prenom" ReadOnly="true" />
            <asp:BoundField HeaderText="# Étudiant" DataField="NumEtudiant" ReadOnly ="true" />
            <asp:BoundField HeaderText="Échéance" DataField="DateFinReserv" ReadOnly="true" />
            <asp:ButtonField ButtonType="Button"  CommandName="Update" HeaderText="Annuler Réservation"  ShowHeader="false" Text="Annuler Réservation" />
            <asp:ButtonField CommandName="Delete" HeaderText="" CausesValidation="false" ShowHeader="false" Text="Terminer réservation"  />
        </Columns>
    </asp:GridView>
</asp:Content>
