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
            <div class="col-md-1">
                <asp:TextBox ID="TxtTitre" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1">Auteur</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtAuteur" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1">Prix</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtPrix" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row"><div class="col-md-1"></div><div class="col-md-1"><asp:RadioButton ID="RadioNeuf" runat="server" Text="Neuf" GroupName="Etat"/></div></div>
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
