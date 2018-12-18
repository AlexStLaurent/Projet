<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="TATrouvaille.Connexion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">


    <%-- ################################################################################################################################################## --%>
    <%-- ###########################################################      PAGE DE CONNEXION      ########################################################## --%>
    <%-- ################################################################################################################################################## --%>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="container">
                    <%-- ############################ --%>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="h1">Page de Connection</div>
                        </div>
                    </div>
                    <%-- ROW POUR LE TITRE DE LA PAGE --%>
                    <%-- ############################ --%>



                    <%-- ############################# --%>
                    <%-- ROW POUR LE NOM D'UTILISATEUR --%>
                    <div class="row">
                        <div class="col-md-2">Nom d'utilisateur:</div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:RequiredFieldValidator ID="RequiredUtilisateur" runat="server" ErrorMessage="Veuillez entrez votre nom d'utilisateur" ControlToValidate="TxtUser" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LE NOM D'UTILISATEUR --%>
                    <%-- ############################# --%>



                    <%-- ######################## --%>
                    <%-- ROW POUR LE MOT DE PASSE --%>
                    <div class="row">
                        <div class="col-md-2">Mot de passe:</div>
                        <div class="col-md-2">
                            <asp:TextBox TextMode="Password" ID="TxtPass" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:RequiredFieldValidator ID="RequiredPass" runat="server" ErrorMessage="Veuillez entrez votre mot de passe" ControlToValidate="TxtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <%-- ROW POUR LE MOT DE PASSE --%>
                    <%-- ######################## --%>



                    <%-- ################################ --%>
                    <%-- ROW POUR LE BOUTTON DE CONNEXION --%>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Button ID="BtnConnexion" runat="server" Text="Connexion" OnClick="BtnConnexion_Click" />
                        </div>
                    </div>
                    <%-- ROW POUR LE BOUTTON DE CONNEXION --%>
                    <%-- ################################ --%>
                </div>
            </div>


            <%-- ####################### --%>
            <%-- LA COLONNE POUR L'IMAGE --%>
            <div class="col-md-6" style="text-align:left;">
                <img src="Image/Connexion.jpg" width="800" height="750" />
            </div>
            <%-- LA COLONNE POUR L'IMAGE --%>
            <%-- ####################### --%>
        </div>
    </div>
</asp:Content>
