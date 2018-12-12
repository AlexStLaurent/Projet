using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TATrouvaille
{
    public partial class ResultatRecherche : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=2707-R2PC4; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Titre, Auteur, Prix FROM Inventaire", con);
            SqlDataReader reader = cmd.ExecuteReader();
            grvResultat.DataSource = reader;
            grvResultat.DataBind();
            con.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}