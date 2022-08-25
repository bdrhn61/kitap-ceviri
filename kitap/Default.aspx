<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="kitap.giris" %>

<!DOCTYPE html>

<title>W3.CSS Template</title>
<meta charset="UTF-8">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1,h5 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url('/image/site_arka.PNG');
  min-height: 100%;
  background-position: center;
  background-size: cover;
}
 .boxx {
              width: auto;
              height: auto;
              /*border: 1px solid blue;*/
              border:1px;
              background-color:black;
              font-size:40px
        }
</style>
<body>

<div class="bgimg w3-display-container w3-text-white">
  <div class="w3-display-middle w3-jumbo">
      <div class="boxx">
    <p >Online Çeviri</p>
          </div>
  </div>
  <div class="w3-display-topleft w3-container w3-xlarge">
    <p><button style="position:fixed;" type="button" onclick="location.href='Goz_at.aspx'" class="w3-button w3-black">Bknz</button></p>
    <p><button style="position:fixed; margin-top:80px" onclick="document.getElementById('contact').style.display='block'" class="w3-button w3-black">Gönder</button></p>
  </div>

  <div class="w3-display-bottomleft w3-container">
     
    <p style="background-color:black" class="w3-xlarge">Bilimsel Dökümanlarınızı Gönderin Çeviri Bitince Size Haber Verelim</p>
          
     
    <%--<p style="background-color:black" class="w3-large">Çeviri Bitince Size Haber Verelim</p>--%>
          
    <%--<p>powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>--%>
         
  </div>
</div>



<!-- Contact Modal -->
<div id="contact" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-black">
      <span onclick="document.getElementById('contact').style.display='none'" class="w3-button w3-display-topright w3-large">x</span>
      <h1>Gönder</h1>
    </div>
    <div class="w3-container">
      <p>Çeviri tamamlandığında size haber verebilmemiz için bir e-mail giriniz.</p>
      <form action="/action_page.php" target="_blank">
        <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="E-mail" required name="Name"></p>
        <p><asp:Label ID="lbldene" runat="server" Text="2 mb tan fazla yüklemeyiniz."></asp:Label></p>
     
        <p align="center"><Button class="w3-button" type="submit" ></Button></p>
         
      </form>
         <form id="form1" runat="server">
          <p align="center"><asp:FileUpload class="w3-button" ID="filImage" runat="server" /></p>
         <p align="center"> <asp:Button class="w3-button" runat="server"  OnClick="yukle_click" Text="Yükle"></asp:Button></p>
          </form>
         
             
    </div>
  </div>
</div>

</body>
</html>
