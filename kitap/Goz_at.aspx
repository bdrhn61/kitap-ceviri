<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Goz_at.aspx.cs" Inherits="kitap.Goz_at" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>


   <title>aaaaaaa</title>
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
           /* background: url(image//site_arka.PNG) no-repeat center center fixed;*/
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
                background-color: #FBD63D;

        }
      
        .boxx {
              width: cover;
              height: auto;
              /*border: 1px solid blue;*/
              border-radius:20px;
              background-color: #fbde63;
             
              /*margin-bottom:2%;*/
              margin-top: 2%;
              margin-left: 12%;
              margin-right: 5%;
        }
        #box {
      max-width: 300px;
      position: fixed;
     right: 20px;
     top:20px;
}
 
#box .fa-search {
   /* position: absolute;*/
    top: 14px;
    left: 12px;
    font-size: 20px;
    /*color:cornflowerblue;*/

}
 
#search {
    width: 120px;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;
    font-size:18px;
    padding: 12px 20px 12px 40px;
    -moz-transition: width 0.4s ease-in-out;
    -o-transition: width 0.4s ease-in-out;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}
 
#search:focus {
    width: 100%;
}
.btn {
  background-color: white;  
  border-radius:4px;
  border-color:black;
  width:50px;
  height:55px;
  font-size:18px;
  
}
.sayfa{
    color:white;
    font-size:25px;
    font-family:sans-serif;
    float: right;
        margin-right: 30px;
        margin-top: 15px;


}
.sayfa_box{
     width: cover;
     height: auto;
     border-radius:2px;
     background-color: black;
     margin-top: 2%;
     margin-left: 12%;
     margin-right: 5%;
      
     
}
    </style>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">
         <div class="container">
    <form>
   <div id="box">
        <asp:Button CssClass="btn" onClick="ara" runat="server" Text="Ara"></asp:Button>
       <input type="text" id="search" placeholder="Ara..." runat="server">
       
   </div>
        </form>
 </div>
          </form>
        <div class="bgimg w3-display-container w3-text-white">
         <div class="w3-display-topleft w3-container w3-xlarge">
    <p><button style="position:fixed;" type="button" onclick="location.href='Default.aspx'" class="w3-button w3-black">Geri</button></p>
    <%--<p><button style="position:fixed; margin-top:80px" onclick="document.getElementById('contact').style.display='block'" class="w3-button w3-black">gönder</button></p>--%>
  </div>
    </div>

  
        <div style="margin-top:130px;">
       <%-- <div id="yeni">Now is the winter of our discontent></div>--%>
 
              <asp:ListView    ID="lstkitaplar"  runat="server">
            <ItemTemplate>
                
                    
                <div  class="boxx">
                               
                    
                
                    <a href="WebForm2.aspx?kitapid=<%#Eval("id") %>">

                        <asp:Label  style="color:black;font-size:30px;font-family:sans-serif;" Text='<%#Eval("isim") %>' runat="server" CssClass="isim" ></asp:Label>
                     
                    </a>

                </div>
                 
            </ItemTemplate>
                 
        </asp:ListView>
           
        </div>
       
     <div  class="sayfa">
            <asp:DataPager Class="sayfa_box"  ID="dpSayfalama" runat="server" PagedControlID="lstkitaplar" PageSize="20" QueryStringField="Sayfa" onprerender="dpSayfalama_PreRender">
<Fields >
<asp:NumericPagerField />
<asp:NextPreviousPagerField  FirstPageText="İlk" LastPageText="Son" NextPageText="İleri" PreviousPageText="Geri"/>
</Fields>
</asp:DataPager>
                </div>
    
  
    
       
             
   


</body>
</html>
