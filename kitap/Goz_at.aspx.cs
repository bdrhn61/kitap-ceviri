using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kitap
{
    public partial class Goz_at : System.Web.UI.Page
    {
        string sqql= "Select *from Table_1 order by id desc";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection Baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["kitap"].ConnectionString);

            if (Baglan.State == ConnectionState.Closed)
                Baglan.Open();

            if (!IsPostBack)
            {
                sqql = "Select *from Table_1 order by id desc";

                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(sqql, Baglan);
                da.Fill(ds, "Referanslar");
                lstkitaplar.DataSource = ds;
                lstkitaplar.DataBind();
                Baglan.Close();
            }

            //SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["kitap"].ConnectionString);

            //string sorgu = "Select *from Table_1 order by id desc";

            //SqlCommand cmd = new SqlCommand(sorgu, cnn);

            //cnn.Open();

            //SqlDataReader dr = cmd.ExecuteReader();

            //lstkitaplar.DataSource = dr;
            //lstkitaplar.DataBind();

            //cnn.Close();

            ///////////////////////////////////////////////////////////_______---------------------------------------------------------

        }

        protected void ara(object sender, EventArgs e)
        {
            string deger = search.Value.ToString();
            deger = "'%" + deger + "%'";
            sqql = "Select * from Table_1 where isim like " + deger;
            if (deger.Length > 4) {
                SqlConnection Baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["kitap"].ConnectionString);

                if (Baglan.State == ConnectionState.Closed)
                    Baglan.Open();

                if (!IsPostBack)
                {

                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(sqql , Baglan);
                    da.Fill(ds, "Referanslar");
                    lstkitaplar.DataSource = ds;
                    lstkitaplar.DataBind();
                    Baglan.Close();
                }
            }

            //deger = "'%" + deger + "%'";
            //SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["kitap"].ConnectionString);
            //string sorgu = "Select * from Table_1 where isim like " + deger;
            //SqlCommand cmd = new SqlCommand(sorgu, cnn);

            //cnn.Open();

            //SqlDataReader dr = cmd.ExecuteReader();

            //lstkitaplar.DataSource = dr;
            //lstkitaplar.DataBind();

            //cnn.Close();
        }

        protected void dpSayfalama_PreRender(object sender, EventArgs e)
        {
            SqlConnection Baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["kitap"].ConnectionString);

            if (Baglan.State == ConnectionState.Closed)
                Baglan.Open();

            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(sqql, Baglan);
            da.Fill(ds, "Referanslar");
            lstkitaplar.DataSource = ds;
            lstkitaplar.DataBind();
            Baglan.Close();
        }
    }
}