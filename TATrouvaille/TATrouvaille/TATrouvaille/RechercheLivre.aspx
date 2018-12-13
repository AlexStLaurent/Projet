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
        <div class="col-md-1"><asp:Button ID="BtnRecherche" runat="server" Text="Rechercher" OnClick="BtnRecherche_Click"  /></div>
    </div>
        </div>

            <div­>
    <asp:GridView ShowHeaderWhenEmpty="true" ID="grvResultat" runat="server" AutoGenerateColumns="False" Width="600px" OnSelectedIndexChanged="grvResultat_SelectedIndexChanged">
    <Columns>
        <asp:BoundField HeaderText="ID du livre" DataField="IDLivre" ReadOnly="true" />
        <asp:BoundField HeaderText="Titre" DataField="Titre" ReadOnly="True" />
        <asp:BoundField HeaderText="Auteur" DataField="Auteur" ReadOnly="True" />
        <asp:BoundField HeaderText="Prix" DataField="Prix" ReadOnly="True" />
        <asp:ButtonField CommandName="Select" HeaderText="Reservation" ShowHeader="True" Text="Réserver" />    
    </Columns>
</asp:GridView>
    </div>
        


















    














</asp:Content>



