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
        


        protected void Page_Load(object sender, EventArgs e) //Popule un Gridview avec des données de la table Réservation.
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



        protected void gdvGestion_RowCommand(object sender, GridViewCommandEventArgs e) //Crée crée une commande pour géré la fin d'une réservation et l'annulation d'une réservation.
        {
            
                int SelectedRow;

                if (e.CommandName == "Update") //la commande Update est assigné à l'annulation d'une réservation.
                {
                    SelectedRow = Convert.ToInt32(e.CommandArgument);

                    SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
                    SqlCommand cmd = new SqlCommand($"UPDATE Inventaire SET EstReserver = 0 WHERE IDLivre = {gdvGestion.Rows[SelectedRow].Cells[1].Text} ", con); // Lors de l'annulation de la réservation, la valeur EstReserver sera remis à 0, ce qui signifie qu'elle sera de nouveau afficher dans les recherches et la gestion d'inventaire.
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand($"DELETE FROM Reservation WHERE ReservID = {gdvGestion.Rows[SelectedRow].Cells[0].Text}", con); //Détruit la réservation
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                    con.Close();
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "AlertBox", "Alert('Réservation annulé avec succès')", true);
                Response.Redirect("GestionRéservation.aspx");


                }
                else if (e.CommandName == "Delete") //La commande Delete est assigné à l'achèvement d'une réservation
                {
                    SelectedRow = Convert.ToInt32(e.CommandArgument);
                    SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
                    SqlCommand cmd = new SqlCommand($"DELETE FROM Inventaire WHERE IDLivre = {gdvGestion.Rows[SelectedRow].Cells[1].Text}", con); //Détruit l'objet dans l'inventaire.
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand($"DELETE FROM Reservation WHERE ReservID = {gdvGestion.Rows[SelectedRow].Cells[0].Text}", con); //Détruit la réservation
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                    con.Close();
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "AlertBox", "Alert('Réservation complété avec succès')", true);
                Response.Redirect("GestionRéservation.aspx");
            }
            }

        protected void gdvGestion_RowUpdating(object sender, GridViewUpdateEventArgs e) //Handler vide pour géré l'événement Updating lancer automatiquement par la commande Update
        {

        }

        protected void gdvGestion_RowDeleting(object sender, GridViewDeleteEventArgs e) //Handler vide pour géré l'événement Deleting lancer automatiquement par la commande Delete
        {

        }
    }
    }
