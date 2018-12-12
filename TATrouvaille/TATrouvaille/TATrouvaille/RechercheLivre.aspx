<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="RechercheLivre.aspx.cs" Inherits="TATrouvaille.RechercheLivre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
    <div class="container">
        <div class="row">            
            <div class="col-md-5"><div class="h1">Recherche de livre</div></div>
        </div>
        <div class="row">
            <div class="col-md-1">Titre</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtTitrerecherche" runat="server"></asp:TextBox>
            </div>
        </div>
        
    <div class="row">
        <div class="col-md-1"><asp:Button ID="BtnRecherche" runat="server" Text="Rechercher" PostBackUrl="~/ResultatRecherche.aspx"  /></div>
    </div>
        </div>
        


















    














</asp:Content>



