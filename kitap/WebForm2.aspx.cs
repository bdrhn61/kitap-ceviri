using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kitap
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["kitapid"];

            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["kitap"].ConnectionString);

            string sorgu = "Select *from Table_1 Where id = @id";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cmd.Parameters.AddWithValue("@id", id);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                //lblisim.Text = dr["isim"].ToString();
                bbb.Src = dr["pdf"].ToString();

            }
            cnn.Close();
        }
        

    }
}