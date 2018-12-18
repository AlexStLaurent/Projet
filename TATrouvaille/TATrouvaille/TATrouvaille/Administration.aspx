<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="TATrouvaille.Administration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">


    <%-- ################################################################################################################################################## --%>
    <%-- ############################################################      ADMINISTRATION      ############################################################ --%>
    <%-- ################################################################################################################################################## --%>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="container" style="align-self: center;">
                    <%-- ############################ --%>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="h1">Que voulez-vous faire?</div>
                        </div>
                    </div>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <%-- ############################ --%>



                    <%-- ################################### --%>
                    <%-- ROW POUR LE BOUTTON CRÉER UN COMPTE --%>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Button ID="BtnCreerCompte" runat="server" Text="Créer un compte" PostBackUrl="~/CreerCompte.aspx" Width="200px" />
                        </div>
                    </div>
                    <%-- ROW POUR LE BOUTTON CRÉER UN COMPTE --%>
                    <%-- ################################### --%>



                    <%-- ############################################# --%>
                    <%-- ROW POUR LE BOUTTON AJOUTER UN LIVRE À VENDRE --%>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Button ID="BtnAjoutLivreVendre" runat="server" Text="Ajouter un livre à vendre" PostBackUrl="~/Page_Administration.aspx" Width="200px" />
                        </div>
                    </div>
                    <%-- ROW POUR LE BOUTTON AJOUTER UN LIVRE À VENDRE --%>
                    <%-- ############################################# --%>



                    <%-- ############################################## --%>
                    <%-- ROW POUR LE BOUTTON AJOUTER UN LIVRE RECHERCHÉ --%>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Button ID="BtnAjoutLivreRecherche" runat="server" Text="Ajouter un livre recherché" PostBackUrl="~/AjoutLivreRecherché.aspx" Width="200px" />
                        </div>
                    </div>
                    <%-- ROW POUR LE BOUTTON AJOUTER UN LIVRE RECHERCHÉ --%>
                    <%-- ############################################## --%>



                    <%-- ######################################### --%>
                    <%-- ROW POUR LE BOUTTON GÉRER LES RÉSERVATION --%>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Button ID="GestionRéserv" runat="server" Text="Gérer les réservations" PostBackUrl="~/GestionRéservation.aspx" Width="200px" />
                        </div>
                    </div>
                    <%-- ROW POUR LE BOUTTON GÉRER LES RÉSERVATION --%>
                    <%-- ######################################### --%>
                </div>
            </div>
            <%-- ####################### --%>
            <%-- LA COLONNE POUR L'IMAGE --%>
            <div class="col-md-6" style="text-align:left;">
                <img src="Image/Administration.png" width="800" height="750" />
            </div>
            <%-- LA COLONNE POUR L'IMAGE --%>
            <%-- ####################### --%>
        </div>
    </div>
</asp:Content>
