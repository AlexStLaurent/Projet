<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="TATrouvaille.Administration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">



    <div class="container">       
        <div class="row">
            <div class="col-md-5">
                <div class="h1">Que voulez-vous faire?</div>
            </div>
            </div>
        <div class="row">
                <div class="col-md-1"><asp:Button ID="BtnCreerCompte" runat="server" Text="Créer un compte" PostBackUrl="~/CreerCompte.aspx" Width="200px" />
            </div>
        </div>
         <div class="row">
            <div class="col-md-1">
                <asp:Button ID="BtnAjoutLivreVendre" runat="server" Text="Ajouter un livre à vendre" PostBackUrl="~/Page_Administration.aspx" Width="200px" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-1">
                <asp:Button ID="BtnAjoutLivreRecherche" runat="server" Text="Ajouter un livre recherché" PostBackUrl="~/AjoutLivreRecherché.aspx" Width="200px" />
            </div>
         </div>
        <div class="row">
                <div class="col-md-1">
                    <asp:Button ID="GestionRéserv" runat="server" Text="Gérer les réservations" PostBackUrl="~/GestionRéservation.aspx" Width="200px" />
                  </div>
           </div>
        </div>      
       
        
















</asp:Content>
