<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="ResultatRecherche.aspx.cs" Inherits="TATrouvaille.ResultatRecherche" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
    
    <asp:GridView ShowHeaderWhenEmpty="true" ID="grvResultat" runat="server" AutoGenerateColumns="False" Width="600px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField HeaderText="Titre" ReadOnly="True" />
        <asp:BoundField HeaderText="Auteur" ReadOnly="True" />
        <asp:BoundField HeaderText="Prix" ReadOnly="True" />
        <asp:ButtonField CommandName="Select" HeaderText="Reservation" ShowHeader="True" Text="Réserver" />
    </Columns>
</asp:GridView>
    
</asp:Content>
