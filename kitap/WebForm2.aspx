<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="kitap.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <title></title>
     <style>
        body,h1,h5 {font-family: "Raleway", sans-serif}

        a {
     text-decoration: none;
    }
        .bgimg {
  min-height: 100%;
  background-position: center;
  background-size: cover;
            top: 0px;
            left: 0px;
            height: 2px;
        }
        body {
            background: url(image//site_arka.PNG) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
                background-color: #FBD63D;

        }
     
        
    </style>
    <link href="css/StyleSheet2.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">
        
        </form>
        <div class="bgimg w3-display-container w3-text-white">
         <div class="w3-display-topleft w3-container w3-xlarge">
    <p><button style="position:fixed;" type="button" onclick="location.href='Goz_at.aspx'" class="w3-button w3-black">Geri</button></p>
  </div>
    </div>
       
                <%--<button type="button" onClick="location.href='Goz_at.aspx'">Ana Sayfa</button>--%>
       
        <div align="center" id="aaa" class="container">
            <embed id="bbb" src="" type="application/pdf" runat="server" width="70%" height="900px"/>
        </div>

    
             
  
    
</body>
</html>
