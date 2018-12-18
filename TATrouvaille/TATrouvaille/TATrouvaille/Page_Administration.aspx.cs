using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TATrouvaille
{
    public partial class Page_Administration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnValider_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
            SqlCommand cmd = new SqlCommand($"INSERT INTO Inventaire VALUES ('{TxtTitre.Text}', '{TxtAuteur.Text}', '{TxtPrix.Text}', 0)", con);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "AlertBox", "Alert('Livre ajouté à l'inventaire avec succès')", true);
            Response.Redirect("Administration.aspx");
        }
    }
}