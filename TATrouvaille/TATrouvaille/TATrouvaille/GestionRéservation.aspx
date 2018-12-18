<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="GestionRéservation.aspx.cs" Inherits="TATrouvaille.GestionRéservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">


    <%-- ################################################################################################################################################## --%>
    <%-- ##########################################################      GESTION RÉSERVATION      ######################################################### --%>
    <%-- ################################################################################################################################################## --%>


    <%-- ########################## --%>
    <%-- GRID VIEW DES RÉSERVATIONS --%>
    <asp:GridView runat="server" ID="gdvGestion" OnSelectedIndexChanged="gdvGestion_SelectedIndexChanged" AutoGenerateColumns="false" OnRowCommand="gdvGestion_RowCommand" OnRowDeleting="gdvGestion_RowDeleting" OnRowUpdating="gdvGestion_RowUpdating">
        <Columns>
            <asp:BoundField HeaderText="# de réservation" DataField="ReservID" ReadOnly="true" />
            <asp:BoundField HeaderText="# de livre" DataField="IDLivre" ReadOnly="true" />
            <asp:BoundField HeaderText="Titre du livre" DataField="Titre" ReadOnly="true" />
            <asp:BoundField HeaderText="Nom" DataField="Nom" ReadOnly="true" />
            <asp:BoundField HeaderText="Prénom" DataField="Prenom" ReadOnly="true" />
            <asp:BoundField HeaderText="# Étudiant" DataField="NumEtudiant" ReadOnly="true" />
            <asp:BoundField HeaderText="Échéance" DataField="DateFinReserv" ReadOnly="true" />
            <asp:ButtonField  CommandName="Update" HeaderText="Annuler Réservation" ShowHeader="false" Text="Annuler Réservation" />
            <asp:ButtonField CommandName="Delete" HeaderText="" CausesValidation="false" ShowHeader="false" Text="Terminer réservation" />
        </Columns>
    </asp:GridView>
    <%-- GRID VIEW DES RÉSERVATIONS --%>
    <%-- ########################## --%>



    <%-- ############################## --%>
    <%-- LE ROW POUR LE BOUTTON QUITTER --%>
    <div class="row">
        <div class="col-md-1">
            <asp:Button ID="BtnQuit" runat="server" Text="Retour" PostBackUrl="~/Administration.aspx" />
        </div>
    </div>
    <%-- LE ROW POUR LE BOUTTON QUITTER --%>
    <%-- ############################## --%>
</asp:Content>
