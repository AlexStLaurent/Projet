<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="AjoutLivreRecherché.aspx.cs" Inherits="TATrouvaille.AjoutLivreRecherché" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
    <div class="container">
        <div class="row">            
            <div class="col-md-5"><div class="h1">Information du livre recherché</div></div>
        </div>
        <div class="row">
            <div class="col-md-1">Titre</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtTitreRecherche" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredTitre" runat="server" ErrorMessage="Le titre est obligatoire" ControlToValidate="TxtTitreRecherche" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1">Auteur</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtAuteurRecherche" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredAuteur" runat="server" ErrorMessage="L'auteur est obligatoire" ControlToValidate="TxtAuteurRecherche" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    <div class="row">
        <div class="col-md-1"><asp:Button ID="BtnAjout" runat="server" Text="Ajouter" PostBackUrl="~/Administration.aspx" OnClick="BtnAjout_Click"/></div>
    </div>
        </div>
        


</asp:Content>



