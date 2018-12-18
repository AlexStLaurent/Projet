using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TATrouvaille
{
    public partial class AjoutLivreRecherché : System.Web.UI.Page
    {

        string titre;
        string auteur;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAjout_Click(object sender, EventArgs e)
        {
            titre = TxtTitreRecherche.Text; //Assigne le texte de la textbox txtTitreRecherche à la variable titre
            auteur = TxtAuteurRecherche.Text; //de même avec la variable auteur
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog = TATrouvaille; User ID=sa;Password=sql"); // crée une nouvelle connexion vers la base de donnée (implémenter sur le serveur local)
            SqlCommand cmd = new SqlCommand($"INSERT INTO LivreRechercher VALUES ('{titre}', '{auteur}')", con); //crée une commande SQL pour insérer un livre dans la base de donné
            cmd.Connection.Open(); //ouvre la connexion
            cmd.ExecuteNonQuery(); //execute la commande NonQuery
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "AlertBox", "Alert('Livre ajouté à la liste avec succès')", true); 
            Response.Redirect("PageGénériqueAdmin.aspx"); //Redirecte à la page administration

        }
    }
}