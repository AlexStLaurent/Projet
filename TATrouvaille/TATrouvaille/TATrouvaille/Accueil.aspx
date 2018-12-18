<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="TATrouvaille.Accueil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">
    

    <%-- ################################################################################################################################################## --%>
    <%-- ############################################################      PAGE D'ACCUEIL      ############################################################ --%>
    <%-- ################################################################################################################################################## --%>

    <%-- ############################ --%>
    <%-- ROW POUR LE TITRE DE LA PAGE --%>
    <div class="row" style="text-align:center;">
        <div class="Text">                
            <div class="col-md-12">
                <h3 class="colh" style="color:forestgreen;">Bienvenue sur le site de TA Trouvaille, le service de vente et de rachat de livres usagés</h3>
            </div>
        </div>
    </div>
    <%-- ROW POUR LE TITRE DE LA PAGE --%>
    <%-- ############################ --%>



    <%-- ################ --%>
    <%-- ROW POUR L'IMAGE --%>
    <div class="row" style="text-align:center;">   
        <div  class="col-md-12">
            <img src="Image/pageAccueil.jpg" />
        </div>
    </div>
    <%-- ROW POUR L'IMAGE --%>
    <%-- ################ --%>
</asp:Content>
