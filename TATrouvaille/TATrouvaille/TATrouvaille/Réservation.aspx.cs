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
        protected void Page_Load(object sender, EventArgs e)
        {
            LblLivre.Text = RechercheLivre.TitreLivre;
        }

        protected void BtnValider_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql");
                SqlCommand cmd = new SqlCommand($"INSERT INTO Reservation VALUES ({RechercheLivre.Index}, '{TxtNomReserv.Text}', '{TxtPrenomReserv.Text}', current_timestamp, DATEADD(day,2, current_timestamp)"); //Code trouver sur https://stackoverflow.com/questions/19925400/add-2-weeks-to-a-date-sql
                cmd = new SqlCommand($"UPDATE Inventaire SET EstReserver = 1 WHERE IDLivre = {RechercheLivre.Index} ");
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                con.Close();
            }
        }
    }
}