<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="Réservation.aspx.cs" Inherits="TATrouvaille.Réservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">


    <div class="container">       
        <div class="row">
            <div class="col-md-5">
                <div class="h1">Informations personnelles</div>
            </div>
            </div>
        <div class="row">
            <div class="col-md-2">Titre:</div>
            <div class="col-md-1">
                <asp:Label ID="LblLivre" runat="server" Text="PlaceHolder"></asp:Label>
            </div>
        </div>
         <div class="row">
            <div class="col-md-2">Nom:</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtNomReserv" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">Prénom:</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtPrenomReserv" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">Numero étudiant:</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtNumEtudReserv" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1">
                <asp:Button ID="BtnValider" runat="server" Text="Valider" OnClick="BtnValider_Click" />
            </div>
        </div>

    </div>      
  
















</asp:Content>
