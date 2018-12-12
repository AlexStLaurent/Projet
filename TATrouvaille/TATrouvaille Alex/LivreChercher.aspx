<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="LivreChercher.aspx.cs" Inherits="TATrouvaille.LivreChercher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
    
    <asp:GridView ShowHeaderWhenEmpty="true" ID="grvChercher" runat="server" AutoGenerateColumns="False" Width="600px">
    <Columns>
        <asp:BoundField HeaderText="Titre" ReadOnly="True" />
        <asp:BoundField HeaderText="Auteur" ReadOnly="True" />
    </Columns>
</asp:GridView>
</asp:Content>
