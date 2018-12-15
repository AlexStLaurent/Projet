using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TATrouvaille
{
    public partial class AjoutLivreRecherché : System.Web.UI.Page
    {

        string titre;
        string auteur;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAjout_Click(object sender, EventArgs e)
        {
            titre = TxtTitrerecherche.Text;
            auteur = TxtAuteurrecherche.Text;
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
            SqlCommand cmd = new SqlCommand($"INSERT INTO LivreRechercher VALUES ('{titre}', '{auteur}')");
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();

        }
    }
}