using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TATrouvaille
{
    public partial class CreerCompte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCreer_Click(object sender, EventArgs e) //Prend les valeurs entré dans les textbox pour crée un nouvel Administrateur
        {
            if (TxtPass.Text == TxtRePass.Text) {
                SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
                SqlCommand cmd = new SqlCommand($"INSERT INTO Administrateur VALUES ('{TxtUser.Text}', '{TxtPass.Text}')", con);
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Response.Redirect("PageGénériqueAdmin.aspx");
            }
        }
    }
}