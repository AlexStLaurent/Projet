using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TATrouvaille
{
    public partial class RechercheLivre : System.Web.UI.Page
    {
        public static string TitreLivre;
        public static string Auteur;
        public static float Prix;
        public static int Index;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    

        protected void BtnRecherche_Click(object sender, EventArgs e)
        {
            if (TxtTitrerecherche.Text != "")
            {
                TitreLivre = TxtTitrerecherche.Text;
                SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT IDLivre, Titre, Auteur, Prix FROM Inventaire WHERE Titre LIKE '{RechercheLivre.TitreLivre}%' AND EstReserver = 0 ", con);
                SqlDataReader reader = cmd.ExecuteReader();
                grvResultat.DataSource = reader;
                grvResultat.DataBind();
                con.Close();
            }
        }

        protected void grvResultat_SelectedIndexChanged(object sender, EventArgs e)
        {
            Index = Int32.Parse(grvResultat.SelectedRow.Cells[0].Text);
            TitreLivre = grvResultat.SelectedRow.Cells[1].Text;
            Auteur = grvResultat.SelectedRow.Cells[2].Text;
            Prix = float.Parse(grvResultat.SelectedRow.Cells[3].Text);
            Response.Redirect("Réservation.aspx");
        }
    }
}