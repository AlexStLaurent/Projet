﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="GestionListe.aspx.cs" Inherits="TATrouvaille.GestionListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
        <asp:GridView runat="server" ID="grvListe" AutoGenerateColumns="false" OnSelectedIndexChanged="grvListe_SelectedIndexChanged" OnRowCommand="grvListe_RowCommand" OnRowDeleting="grvListe_RowDeleting">
        <Columns>
            <asp:BoundField HeaderText="Titre du livre" DataField="Titre" ReadOnly="true" />
            <asp:BoundField HeaderText="Auteur" DataField="Auteur" ReadOnly="true" />
            <asp:ButtonField CommandName="Delete" HeaderText="" CausesValidation="false" ShowHeader="false" Text="Enlever de la liste" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="txtRetour" runat="server" Text="Retour" PostBackUrl="~/Administration.aspx" />
</asp:Content>