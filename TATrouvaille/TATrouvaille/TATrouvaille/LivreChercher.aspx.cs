using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

namespace TATrouvaille
{
    public partial class LivreChercher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) //Popule un gridview avec les données de la table Livre Rechercher
        {
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
            SqlCommand cmd = new SqlCommand("SELECT Titre, Auteur FROM LivreRechercher", con);
            con.Open();
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader(); 
            grvChercher.DataSource = reader; 
            grvChercher.DataBind();
            reader.Close();
            
        }
    }
}