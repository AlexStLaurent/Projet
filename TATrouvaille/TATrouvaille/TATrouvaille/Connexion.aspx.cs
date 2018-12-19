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

        protected void BtnConnexion_Click(object sender, EventArgs e) //permet de valider la connexion
        {
            
                user = TxtUser.Text;
                mdp = TxtPass.Text;
                con = new SqlConnection("Data Source =.; Initial Catalog = TATrouvaille; User ID = sa; Password = sql");
                cmd = new SqlCommand($"SELECT Username, MotPasse FROM Administrateur WHERE Username = '{user}' AND MotPasse = '{mdp}'", con); //Crée une commande qui cherche dans la base de donnée une ligne ayant la même nom d'usager ET mot de passe
            con.Open();
                
                adapter = new SqlDataAdapter(cmd); //Crée un adapteur avec la commande de sélection en paramètre
                DataSet set = new DataSet();
                adapter.Fill(set); //Tente d'inséré le résultat obtenue dans un dataset. Si il n'y a pas de donnée ayant le même nom d'usager ET mot de passe, n'insère rien. Si oui, il l'insère dans le DataSet. La contrainte Primary Key interdit à plusieurs usager d'avoir le même nom d'usager, le résultat sera toujours 0 ou 1
                con.Close();
                
            // Merci à Devan Shaw pour sa logique de Vérification.
                verification = set.Tables[0].Rows.Count;  //Compte le nombre de ligne dans la première table du DataSet. La table est celle inséré par adapter.fill(set)

                if (verification == 1) //Si le nom d'usager et le mot de passe sont correct, redirige à la page d'administration.
                {
                    Response.Redirect("Administration.aspx");
                }
                else
                {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "OpenModal();", true);
                }


            
        }
    }
}