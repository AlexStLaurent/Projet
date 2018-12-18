<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="Réservation.aspx.cs" Inherits="TATrouvaille.Réservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">


    <%-- ################################################################################################################################################## --%>
    <%-- ##########################################################      PAGE POUR RÉSERVER      ########################################################## --%>
    <%-- ################################################################################################################################################## --%>


    <div class="container">
        <div class="row">
            <%-- ########################################## --%>
            <%-- COLONNE POUR LES INFORMATIONS PERSONNELLES --%>
            <div class="col-md-7">
                <div class="container">
                    <%-- ############################ --%>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="h1">Informations personnelles</div>
                        </div>
                    </div>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <%-- ############################ --%>



                    <%-- ############################## --%>
                    <%-- ROW POUR LE NOM DU RÉSERVATEUR --%>
                    <div class="row">
                        <div class="col-md-2">Nom:</div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TxtNomReserv" runat="server" PlaceHolder="Entrez votre nom"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator ID="RequiredNom" runat="server" ErrorMessage="Nom obligatoire" ForeColor="Red" ControlToValidate="TxtNomReserv" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularNom" runat="server" ErrorMessage="Entrez un vrai nom" ForeColor="Red" ControlToValidate="TxtNomReserv" Display="Dynamic" ValidationExpression="^[A-Za-zéÉ]{1}[a-zéêëçà]{1,30}$" ></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LE NOM DU RÉSERVATEUR --%>
                    <%-- ############################## --%>



                    <%-- ################################# --%>
                    <%-- ROW POUR LE PRÉNOM DU RÉSERVATEUR --%>
                    <div class="row">
                        <div class="col-md-2">Prénom:</div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TxtPrenomReserv" runat="server" PlaceHolder="Entrez votre prénom"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator ID="RequiredPrenom" runat="server" ErrorMessage="Prénom obligatoire" ForeColor="Red" ControlToValidate="TxtPrenomReserv" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularPrenom" runat="server" ErrorMessage="Entrez un vrai prénom" ForeColor="Red" ControlToValidate="TxtPrenomReserv" Display="Dynamic" ValidationExpression="^[A-Za-zéÉ]{1}[a-zéêëçà]{1,30}$" ></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LE PRÉNOM DU RÉSERVATEUR --%>
                    <%-- ################################# --%>



                    <%-- ########################### --%>
                    <%-- ROW POUR LE NUMÉRO ÉTUDIANT --%>
                    <div class="row">
                        <div class="col-md-2">Numéro étudiant:</div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TxtNumEtudReserv" runat="server" PlaceHolder="Numéro étudiant"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator ID="RequiredNumEtud" runat="server" ErrorMessage="Numéro étudiant obligatoire" ForeColor="Red" ControlToValidate="TxtNumEtudReserv" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularNumEtud" runat="server" ErrorMessage="Numéro étudiant: 7 chiffres" ForeColor="Red" ControlToValidate="TxtNumEtudReserv" Display="Dynamic" ValidationExpression="^[0-9]{7}$" ></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LE NUMÉRO ÉTUDIANT --%>
                    <%-- ########################### --%>



                    <%-- ########################## --%>
                    <%-- ROW POUR LE BOUTON VALIDER --%>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Button ID="BtnValider" runat="server" Text="Valider" OnClick="BtnValider_Click" />
                        </div>
                        <div class="col-md-1">
                            <asp:Button ID="BtnQuit" runat="server" Text="Retour" PostBackUrl="~/RechercheLivre.aspx" CausesValidation="false" />
                        </div>
                    </div>
                    <%-- ROW POUR LE BOUTON VALIDER --%>
                    <%-- ########################## --%>
                </div>
            </div>
            <%-- COLONNE POUR LES INFORMATIONS PERSONNELLES --%>
            <%-- ########################################## --%>




            <%-- ######################################## --%>
            <%-- LA COLONNE POUR LES INFORMATION DU LIVRE --%>
            <div class="col-md-5" style="text-align:left;">
                
                    <%-- ##################################### --%>
                    <%-- ROW POUR LE DEUXIÈME TITRE DE LA PAGE --%>
                    <div class="row">
                        <div class="col-md-10">
                            <div class="h1">Informations du livre</div>
                        </div>
                    </div>
                    <%-- ROW POUR LE DEUXIÈME TITRE DE LA PAGE --%>
                    <%-- ##################################### --%>



                    <%-- ########################## --%>
                    <%-- ROW POUR LE TITRE DU LIVRE --%>
                    <div class="row">
                        <div class="col-md-3">Titre:</div>
                        <div class="col-md-1">
                            <asp:Label ID="LblLivre" runat="server" Text="PlaceHolder"></asp:Label>
                        </div>
                    </div>
                    <%-- ROW POUR LE TITRE DU LIVRE --%>
                    <%-- ########################## --%>



                    <%-- ########################### --%>
                    <%-- ROW POUR LE NOM DE L'AUTEUR --%>
                    <div class="row">
                        <div class="col-md-3">Nom de l'auteur:</div>
                        <div class="col-md-1">
                            <asp:Label ID="LblAuteur" runat="server" Text="PlaceHolder"></asp:Label>
                        </div>
                    </div>
                    <%-- ROW POUR LE NOM DE L'AUTEUR --%>
                    <%-- ########################### --%>



                    <%-- ######################### --%>
                    <%-- ROW POUR LE PRIX DU LIVRE --%>
                    <div class="row">
                        <div class="col-md-3">Prix:</div>
                        <div class="col-md-1">
                            <asp:Label ID="LblPrix" runat="server" Text="PlaceHolder"></asp:Label>
                        </div>
                    </div>
                    <%-- ROW POUR LE PRIX DU LIVRE --%>
                    <%-- ######################### --%>
            </div>
            <%-- LA COLONNE POUR LES INFORMATION DU LIVRE --%>
            <%-- ######################################## --%>
        </div>
    </div>
</asp:Content>
