<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="AjoutLivreRecherché.aspx.cs" Inherits="TATrouvaille.AjoutLivreRecherché" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">


    <%-- ################################################################################################################################################## --%>
    <%-- #######################################################      AJOUT DE LIVRE RECHERCHÉ      ####################################################### --%>
    <%-- ################################################################################################################################################## --%>


    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="container">
                    <%-- ############################ --%>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="h1">Information du livre recherché</div>
                        </div>
                    </div>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <%-- ############################ --%>



                    <%-- #################################### --%>
                    <%-- ROW POUR LE TITRE DU LIVRE RECHERCHÉ --%>
                    <div class="row">
                        <div class="col-md-1">Titre</div>
                        <div class="col-md-5">
                            <asp:TextBox ID="TxtTitreRecherche" runat="server" PlaceHolder="Entrez titre du livre"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredTitre" runat="server" ErrorMessage="Le titre est obligatoire" ControlToValidate="TxtTitreRecherche" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LE TITRE DU LIVRE RECHERCHÉ --%>
                    <%-- #################################### --%>



                    <%-- ########################### --%>
                    <%-- ROW POUR LE NOM DE L'AUTEUR --%>
                    <div class="row">
                        <div class="col-md-1">Auteur</div>
                        <div class="col-md-5">
                            <asp:TextBox ID="TxtAuteurRecherche" runat="server" PlaceHolder="Entrez nom de l'auteur"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredAuteur" runat="server" ErrorMessage="L'auteur est obligatoire" ControlToValidate="TxtAuteurRecherche" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LE NOM DE L'AUTEUR --%>
                    <%-- ########################### --%>



                    <%-- ##################################### --%>
                    <%-- ROW POUR LES BOUTTONS AJOUT ET RETOUR --%>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Button ID="BtnAjout" runat="server" Text="Ajouter" OnClick="BtnAjout_Click" />
                        </div>
                        <div class="col-md-1">
                            <asp:Button ID="BtnQuit" runat="server" Text="Retour" PostBackUrl="~/Administration.aspx" CausesValidation="false" />
                        </div>
                    </div>
                    <%-- ROW POUR LES BOUTTONS AJOUT ET RETOUR --%>
                    <%-- ##################################### --%>
                </div>
            </div>
            <%-- ####################### --%>
            <%-- LA COLONNE POUR L'IMAGE --%>
            <div class="col-md-6" style="text-align: left;">
                <img src="Image/LivreRecherché.jpg" width="800" height="750" />
            </div>
            <%-- LA COLONNE POUR L'IMAGE --%>
            <%-- ####################### --%>
        </div>
    </div>
</asp:Content>



