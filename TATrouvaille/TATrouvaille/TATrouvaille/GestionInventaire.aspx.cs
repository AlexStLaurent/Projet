using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TATrouvaille
{
    public partial class GestionInventaire : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
            SqlCommand cmd = new SqlCommand("SELECT IDLivre, Titre, Auteur, Prix FROM Inventaire WHERE EstReserver = 0", con);
            con.Open();
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            grvInventaire.DataSource = reader;
            grvInventaire.DataBind();
            reader.Close();
        }

        protected void grvInventaire_SelectedIndexChanged(object sender, EventArgs e)
        {
            int SelectedRow = Convert.ToInt32(grvInventaire.SelectedRow.RowIndex);
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
            SqlCommand cmd = new SqlCommand($"DELETE FROM Inventaire WHERE IDLivre = {grvInventaire.Rows[SelectedRow].Cells[0].Text} ", con);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }

        protected void grvInventaire_RowCommand(object sender, GridViewCommandEventArgs e)
        { int SelectedRow;
            if (e.CommandName == "Delete")
            {

                SelectedRow = Convert.ToInt32(e.CommandArgument);
                SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
                SqlCommand cmd = new SqlCommand($"DELETE FROM Inventaire WHERE IDLivre = {grvInventaire.Rows[SelectedRow].Cells[0].Text}", con);
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "AlertBox", "Alert('Réservation complété avec succès')", true);
                Response.Redirect("GestionInventaire.aspx");
            }
            }

        protected void grvInventaire_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}