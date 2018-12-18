using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TATrouvaille
{

    public partial class GestionRéservation : System.Web.UI.Page
    {
        public int IndexLivreGestion;
        public int ReservIndex;
        public string TitreGestion;
        SqlDataAdapter adapter;



        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
            SqlCommand cmd = new SqlCommand("SELECT ReservID, IDLivre, Titre, Nom, Prenom, NumEtudiant, DateFinReserv  FROM Reservation", con);
            con.Open();
            cmd.Connection = con;
            SqlDataReader reader = cmd.ExecuteReader();
            gdvGestion.DataSource = reader;
            gdvGestion.DataBind();
            reader.Close();

        }

        protected void gdvGestion_SelectedIndexChanged(object sender, EventArgs e)
        {
            IndexLivreGestion = Int32.Parse(gdvGestion.SelectedRow.Cells[1].Text);
            ReservIndex = Int32.Parse(gdvGestion.SelectedRow.Cells[0].Text);
            TitreGestion = gdvGestion.SelectedRow.Cells[2].Text;
        }

        protected void gdvGestion_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
                int SelectedRow;

                if (e.CommandName == "Update")
                {
                    SelectedRow = Convert.ToInt32(e.CommandArgument);

                    SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
                    SqlCommand cmd = new SqlCommand($"UPDATE Inventaire SET EstReserver = 0 WHERE IDLivre = {gdvGestion.Rows[SelectedRow].Cells[1].Text} ", con);
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand($"DELETE FROM Reservation WHERE ReservID = {gdvGestion.Rows[SelectedRow].Cells[0].Text}", con);
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                    con.Close();
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "AlertBox", "Alert('Réservation annulé avec succès')", true);
                Response.Redirect("GestionRéservation.aspx");


                }
                else if (e.CommandName == "Delete")
                {
                    SelectedRow = Convert.ToInt32(e.CommandArgument);
                    SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
                    SqlCommand cmd = new SqlCommand($"DELETE FROM Inventaire WHERE IDLivre = {gdvGestion.Rows[SelectedRow].Cells[1].Text}", con);
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand($"DELETE FROM Reservation WHERE ReservID = {gdvGestion.Rows[SelectedRow].Cells[0].Text}", con);
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                    con.Close();
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "AlertBox", "Alert('Réservation complété avec succès')", true);
                Response.Redirect("GestionRéservation.aspx");
            }
            }

        protected void gdvGestion_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void gdvGestion_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
    }
