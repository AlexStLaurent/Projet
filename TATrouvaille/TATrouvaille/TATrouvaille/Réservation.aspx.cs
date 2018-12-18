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
    public partial class Réservation : System.Web.UI.Page
    {
        string prenom;
        string Nom;
        string numetud;

        protected void Page_Load(object sender, EventArgs e)
        {
            LblLivre.Text = RechercheLivre.TitreLivre;
        }

        protected void BtnValider_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Nom = TxtNomReserv.Text;
                prenom = TxtPrenomReserv.Text;
                numetud = TxtNumEtudReserv.Text;
                SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
                SqlCommand cmd = new SqlCommand($"INSERT INTO Reservation VALUES ({RechercheLivre.Index}, '{RechercheLivre.TitreLivre}', '{Nom}', '{prenom}', '{numetud}', CAST(GETDATE() as Date), DATEADD(day,2, GETDATE()))", con); //Code trouver sur https://stackoverflow.com/questions/19925400/add-2-weeks-to-a-date-sql
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand($"UPDATE Inventaire SET EstReserver = 1 WHERE IDLivre = {RechercheLivre.Index} ", con);
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Réservation entré avec succès')", true);
                Response.Redirect("Accueil.aspx");
            }
        }
    }
}