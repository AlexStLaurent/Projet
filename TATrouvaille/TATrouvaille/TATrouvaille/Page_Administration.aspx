<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="Page_Administration.aspx.cs" Inherits="TATrouvaille.Page_Administration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">

    <div class="container">
        <div class="row">            
            <div class="col-md-5"><div class="h1">Information du livre</div></div>
        </div>
        <div class="row">
            <div class="col-md-1">Titre</div>
            <div class="col-md-2">
                <asp:TextBox ID="TxtTitre" runat="server" PlaceHolder="Titre du livre"></asp:TextBox></div>
                <div class="col-md-3">
                <asp:RequiredFieldValidator ID="RequiredTitre" runat="server" ErrorMessage="Obligatoire" ForeColor="Red" ControlToValidate="TxtTitre" ></asp:RequiredFieldValidator>
                </div>
        </div>
        <div class="row">
            <div class="col-md-1">Auteur</div>
            <div class="col-md-2">
                <asp:TextBox ID="TxtAuteur" runat="server" PlaceHolder="Nom de l'auteur"></asp:TextBox>
            </div>
            <div class="col-md-3">
                <asp:RequiredFieldValidator ID="RequiredAuteur" runat="server" ErrorMessage="Obligatoire" ForeColor="Red" ControlToValidate="TxtAuteur"></asp:RequiredFieldValidator>
                </div>
        </div>
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
        <div class="row"><div class="col-md-1"></div><div class="col-md-1"><asp:RadioButton ID="RadioNeuf" runat="server" Text="Neuf" GroupName="Etat" Checked="true"/></div></div>
        <div class="row">
            <div class="col-md-1">État</div>
            <div class="col-md-2"><asp:RadioButton ID="RadioAcceptable" runat="server" Text="Acceptable"  GroupName="Etat"/></div>
        </div>
        <div class="row"><div class="col-md-1"></div><div class="col-md-1"><asp:RadioButton ID="RadioUsagé" runat="server" Text="Usagé" GroupName="Etat"/></div></div>
    <div class="row">
        <div class="col-md-1"><asp:Button ID="BtnValider" runat="server" Text="Valider" PostBackUrl="~/Administration.aspx"  /></div>
    </div>
        </div>
        

































</asp:Content>
