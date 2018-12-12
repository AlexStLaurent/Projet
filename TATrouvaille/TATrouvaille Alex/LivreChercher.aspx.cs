using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TATrouvaille
{
    public partial class LivreChercher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=1085R6PC4; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Titre, Auteur FROM LivreRechercher", con);
            SqlDataReader reader = cmd.ExecuteReader();
            grvChercher.DataSource = reader;
            grvChercher.DataBind();
            con.Close();
        }
    }
}