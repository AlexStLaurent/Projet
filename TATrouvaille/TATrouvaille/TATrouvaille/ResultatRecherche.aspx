<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="ResultatRecherche.aspx.cs" Inherits="TATrouvaille.ResultatRecherche" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
    <div class="row">
        <div class="col-md-2"></div>
        <div­>
    <asp:GridView ShowHeaderWhenEmpty="true" ID="grvResultat" runat="server" AutoGenerateColumns="False" Width="600px" OnSelectedIndexChanged="Reserver_Livre">
    <Columns>
        <asp:BoundField HeaderText="ID du livre" DataField="IDLivre" ReadOnly="true" />
        <asp:BoundField HeaderText="Titre" DataField="Titre" ReadOnly="True" />
        <asp:BoundField HeaderText="Auteur" DataField="Auteur" ReadOnly="True" />
        <asp:BoundField HeaderText="Prix" DataField="Prix" ReadOnly="True" />
        <asp:ButtonField CommandName="Select" HeaderText="Reservation" ShowHeader="True" Text="Réserver" />    
    </Columns>
</asp:GridView>
    </div>
        </div>
</asp:Content>
