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
    public partial class Connexion : System.Web.UI.Page
    { 
        string user;
        string mdp;
        int verification;
        SqlCommand cmd;
        SqlConnection con;
        SqlDataAdapter adapter;
        
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnConnexion_Click(object sender, EventArgs e)
        {
            
                user = TxtUser.Text;
                mdp = TxtPass.Text;
                con = new SqlConnection("Data Source =.; Initial Catalog = TATrouvaille; User ID = sa; Password = sql");
                cmd = new SqlCommand($"SELECT Username, MotPasse FROM Administrateur WHERE Username = '{user}' AND MotPasse = '{mdp}'", con);
            con.Open();
                
                adapter = new SqlDataAdapter(cmd);
                DataSet set = new DataSet();
                adapter.Fill(set);
                con.Close();
                
            // Merci à Devan Shaw pour sa logique de Vérification.
                verification = set.Tables[0].Rows.Count;

                if (verification == 1)
                {
                    Response.Redirect("Administration.aspx");
                }
                else
                {
                    
                
                }


            
        }
    }
}