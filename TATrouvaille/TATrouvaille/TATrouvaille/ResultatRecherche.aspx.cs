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
    public partial class ResultatRecherche : System.Web.UI.Page
    {
        public static int Index;
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }



        protected void Reserver_Livre(object sender, EventArgs e)
        {

            //con = new SqlConnection("Data Source =.; Initial Catalog = TATrouvaille; User ID = sa; Password = sql");
            //cmd = new SqlCommand($"SELECT Username, MotPasse FROM Administrateur WHERE Username = '{user}' AND MotPasse = '{mdp}'", con);
            //con.Open();
            ////cmd.Parameters.Add("@User", SqlDbType.NVarChar, 20, user);
            ////cmd.Parameters.Add("@Pass", SqlDbType.NVarChar, 15, mdp);
            //adapter = new SqlDataAdapter(cmd);
            //DataSet set = new DataSet();
            //adapter.Fill(set);
            //con.Close();
            
            
            
            
          //  SqlConnection con = new SqlConnection("Data Source =.; Initial Catalog = TATrouvaille; User ID = sa; Password = sql");
           // SqlCommand cmd = new SqlCommand();
        }
    }
}