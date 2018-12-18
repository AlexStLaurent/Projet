<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="Page_Administration.aspx.cs" Inherits="TATrouvaille.Page_Administration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">


    <%-- ################################################################################################################################################## --%>
    <%-- #######################################################      AJOUT D'UN LIVRE À VENDRE      ###################################################### --%>
    <%-- ################################################################################################################################################## --%>


    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="container">
                    <%-- ############################ --%>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="h1">Information du livre</div>
                        </div>
                    </div>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <%-- ############################ --%>



                    <%-- ########################## --%>
                    <%-- ROW POUR LE TITRE DU LIVRE --%>
                    <div class="row">
                        <div class="col-md-1">Titre</div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TxtTitre" runat="server" PlaceHolder="Titre du livre"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:RequiredFieldValidator ID="RequiredTitre" runat="server" ErrorMessage="Obligatoire" ForeColor="Red" ControlToValidate="TxtTitre"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LE TITRE DU LIVRE --%>
                    <%-- ########################## --%>



                    <%-- ########################### --%>
                    <%-- ROW POUR LE NOM DE L'AUTEUR --%>
                    <div class="row">
                        <div class="col-md-1">Auteur</div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TxtAuteur" runat="server" PlaceHolder="Nom de l'auteur"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:RequiredFieldValidator ID="RequiredAuteur" runat="server" ErrorMessage="Obligatoire" ForeColor="Red" ControlToValidate="TxtAuteur"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LE NOM DE L'AUTEUR --%>
                    <%-- ########################### --%>



                    <%-- ################ --%>
                    <%-- ROW POUR LE PRIX --%>
                    <div class="row">
                        <div class="col-md-1">Prix</div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TxtPrix" runat="server" PlaceHolder="123.45"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:RequiredFieldValidator ID="RequiredPrix" runat="server" ErrorMessage="Obligatoire" ForeColor="Red" ControlToValidate="TxtPrix" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularPrix" runat="server" ErrorMessage="Utilisez le modèle: 123.45" ValidationExpression="^[0-9]{1,3}[.][0-9]{2}$" ForeColor="Red" ControlToValidate="TxtPrix" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LE PRIX --%>
                    <%-- ################ --%>



                    <%-- ####################################### --%>
                    <%-- ROW POUR LES BOUTTONS VALIDER ET RETOUR --%>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Button ID="BtnValider" runat="server" Text="Valider" OnClick="BtnValider_Click" />
                        </div>
                        <div class="col-md-1">
                            <asp:Button ID="BtnQuit" runat="server" Text="Retour" PostBackUrl="~/Administration.aspx" CausesValidation="false" />
                        </div>
                    </div>
                    <%-- ROW POUR LES BOUTTONS VALIDER ET RETOUR --%>
                    <%-- ####################################### --%>
                </div>
            </div>
            <%-- ####################### --%>
            <%-- LA COLONNE POUR L'IMAGE --%>
            <div class="col-md-6" style="text-align:left;">
                <img src="Image/LivreVend.png" width="800" height="750" />
            </div>
            <%-- LA COLONNE POUR L'IMAGE --%>
            <%-- ####################### --%>
        </div>
    </div>
</asp:Content>
