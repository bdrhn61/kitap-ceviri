using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


namespace kitap
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }
        protected void yukle_click(object sender, EventArgs e)
        {
            if (filImage.HasFile)//Kullanıcı fileupload ile bir dosya seçmiş ise işlemleri gerçekleştir.
            {
                try
                {
                    if (filImage.PostedFile.ContentType == "application/pdf") //Sadece jpeg dosyalarını yüklenmesine izin veriyoruz.
                    {
                        if (filImage.PostedFile.ContentLength < 2048000) //Maksimum 1MB'lık dosyaların yüklenmesine izin veriyoruz. 2048000
                        {
                            string isim = Guid.NewGuid().ToString();
                            //Benzersiz bir isim oluşturduk.İsimlendirme için farklı yöntemlerde kullanabilirsiniz.
                            filImage.SaveAs(Server.MapPath("~/pdf/") + isim + ".pdf");
                            //Sunucuda ki resimler klasörünün içerisine seçilen resmi oluşturduğumuz benzersiz isim ile kaydediyoruz.
                            lbldene.Text = "Dosya yüklendi. Alınan dosyanın detayları:<br>" +
                                "Dosya Türü:" + filImage.PostedFile.ContentType + "<br>" +
                                "Dosya Boyutu:" + filImage.PostedFile.ContentLength;
                            string message = "Dosya yüklendi.";
                            System.Text.StringBuilder sb = new System.Text.StringBuilder();
                            sb.Append("<script type = 'text/javascript'>");
                            sb.Append("window.onload=function(){");
                            sb.Append("alert('");
                            sb.Append(message);
                            sb.Append("')};");
                            sb.Append("</script>");
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                        }
                        else
                        {
                            lbldene.Text = "Dosya boyutu en fazla 2MB olmalıdır.";
                            string message = "Dosya boyutu en fazla 2MB olmalıdır.";
                            System.Text.StringBuilder sb = new System.Text.StringBuilder();
                            sb.Append("<script type = 'text/javascript'>");
                            sb.Append("window.onload=function(){");
                            sb.Append("alert('");
                            sb.Append(message);
                            sb.Append("')};");
                            sb.Append("</script>");
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                        }
                           
                    }
                    else
                    {
                        lbldene.Text = "Sadece pdf uzantılı dosyalar yüklenebilir.";
                        string message = "Sadece pdf uzantılı dosyalar yüklenebilir.";
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<script type = 'text/javascript'>");
                        sb.Append("window.onload=function(){");
                        sb.Append("alert('");
                        sb.Append(message);
                        sb.Append("')};");
                        sb.Append("</script>");
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                    }

                }
                catch (Exception ex)
                {
                    lbldene.Text = "Error " + ex.Message.ToString();
                }
            }
            else
            {
                lbldene.Text = "Lütfen bir dosya seçiniz.";
                string message = "Lütfen bir dosya seçiniz.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
                

        }
        
    }
}