using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TATrouvaille
{
    public partial class GestionListe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
            SqlCommand cmd = new SqlCommand("SELECT * FROM LivreRechercher", con);
            con.Open();
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            grvListe.DataSource = reader;
            grvListe.DataBind();
            reader.Close();
        }

        protected void grvListe_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int SelectedRow;
            if (e.CommandName == "Delete")
            {

                SelectedRow = Convert.ToInt32(e.CommandArgument);
                SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
                SqlCommand cmd = new SqlCommand($"DELETE FROM LivreRechercher WHERE Titre = '{grvListe.Rows[SelectedRow].Cells[0].Text}'", con);
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "AlertBox", "Alert('Destruction complété avec succès')", true);
                Response.Redirect("GestionListe.aspx");
            }
        }

        protected void grvListe_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void grvListe_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}