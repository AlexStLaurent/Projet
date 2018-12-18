<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="CreerCompte.aspx.cs" Inherits="TATrouvaille.CreerCompte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">


    <%-- ################################################################################################################################################## --%>
    <%-- ############################################################      CREER UN COMPTE      ########################################################### --%>
    <%-- ################################################################################################################################################## --%>


    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="container">
                    <%-- ############################ --%>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="h1">Création de compte</div>
                        </div>
                    </div>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <%-- ############################ --%>



                    <%-- ############################# --%>
                    <%-- ROW POUR LE NOM D'UTILISATEUR --%>
                    <div class="row">
                        <div class="col-md-2">Nom d'utilisateur:</div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TxtUser" runat="server" PlaceHolder="Max 20 caractères"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:RequiredFieldValidator ID="RequiredUser" runat="server" ErrorMessage="Obligatoire" ControlToValidate="TxtUser" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularUser" runat="server" ErrorMessage="5 à 20 charactères" ValidationExpression="^[A-Za-z0-9]{5,20}$" ForeColor="Red" ControlToValidate="TxtUser" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LE NOM D'UTILISATEUR --%>
                    <%-- ############################# --%>



                    <%-- ######################## --%>
                    <%-- ROW POUR LE MOT DE PASSE --%>
                    <div class="row">
                        <div class="col-md-2">Mot de passe:</div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TxtPass" runat="server" PlaceHolder="Min 8 caractères"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:RequiredFieldValidator ID="RequiredPass" runat="server" ErrorMessage="Obligatoire" ControlToValidate="TxtPass" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularPass" runat="server" ErrorMessage="5 à 20 charactères" ValidationExpression="^[A-Za-z0-9]{5,20}$" ForeColor="Red" ControlToValidate="TxtPass" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>

                    </div>
                    <%-- ROW POUR LE MOT DE PASSE --%>
                    <%-- ######################## --%>



                    <%-- ######################################## --%>
                    <%-- ROW POUR LA CONFIRMATION DE MOT DE PASSE --%>
                    <div class="row">
                        <div class="col-md-2">Recopier le mot de passe:</div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TxtRePass" runat="server" PlaceHolder="Doit être identique"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:RequiredFieldValidator ID="RequiredRePass" runat="server" ErrorMessage="Doit être identique au mot de passe" ControlToValidate="TxtRePass" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="ComparePass" runat="server" ErrorMessage="Doit être identique au mot de passe" ForeColor="Red" Display="Dynamic" ControlToValidate="TxtRePass" ControlToCompare="TxtPass"></asp:CompareValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LA CONFIRMATION DE MOT DE PASSE --%>
                    <%-- ######################################## --%>



                    <%-- ##################################### --%>
                    <%-- ROW POUR LES BOUTTONS CREER ET RETOUR --%>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Button ID="BtnCreer" runat="server" Text="Créer" OnClick="BtnCreer_Click" />
                        </div>
                        <div class="col-md-1">
                            <asp:Button ID="BtnQuit" runat="server" Text="Retour" PostBackUrl="~/Administration.aspx" CausesValidation="false" />
                        </div>
                    </div>
                    <%-- ROW POUR LES BOUTTONS CREER ET RETOUR --%>
                    <%-- ##################################### --%>
                </div>
            </div>
            <div class="col-md-6">
                <%-- ####################### --%>
            <%-- LA COLONNE POUR L'IMAGE --%>
            <div class="col-md-6" style="text-align:left;">
                <img src="Image/CreerCompte.png" width="800" height="750" />
            </div>
            <%-- LA COLONNE POUR L'IMAGE --%>
            <%-- ####################### --%>
            </div>
        </div>
    </div>
</asp:Content>
