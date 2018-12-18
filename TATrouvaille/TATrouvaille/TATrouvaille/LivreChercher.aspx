<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="LivreChercher.aspx.cs" Inherits="TATrouvaille.LivreChercher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">


    <%-- ################################################################################################################################################## --%>
    <%-- #########################################################      LES LIVRES RECHERCHÉS      ######################################################## --%>
    <%-- ################################################################################################################################################## --%>

    <%-- ##################### --%>
    <%-- ROW POUR LE GRID VIEW --%>
    <div class="row">
        <div class="col-md-2"­></div>
        <div>
            <%-- ########################################### --%>
            <%-- LE VIEW POUR LA LISTE DE LIVRE DE RECHERCHÉ --%>
            <asp:GridView ShowHeaderWhenEmpty="true" ID="grvChercher" runat="server" AutoGenerateColumns="False" Width="600px">
                <Columns>
                    <asp:BoundField HeaderText="Titre" DataField="Titre" ReadOnly="True" />
                    <asp:BoundField HeaderText="Auteur" DataField="Auteur" ReadOnly="True" />
                </Columns>
            </asp:GridView>
            <%-- LE VIEW POUR LA LISTE DE LIVRE DE RECHERCHÉ --%>
            <%-- ########################################### --%>
        </div>
     </div>
    <%-- ROW POUR LE GRID VIEW --%>
    <%-- ##################### --%>
</asp:Content>
