<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="LivreChercher.aspx.cs" Inherits="TATrouvaille.LivreChercher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
    <div class="row">
    <div class="col-md-2"­></div>
    <div><asp:GridView ShowHeaderWhenEmpty="true" ID="grvChercher" runat="server" AutoGenerateColumns="False" Width="600px">
    <Columns>
        <asp:BoundField HeaderText="Titre" DataField="Titre" ReadOnly="True" />
        <asp:BoundField HeaderText="Auteur" DataField="Auteur" ReadOnly="True" />
    </Columns>
</asp:GridView>
        </div>
        </div>
</asp:Content>
