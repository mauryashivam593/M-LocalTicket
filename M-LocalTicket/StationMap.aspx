<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StationMap.aspx.cs" Inherits="StationMap" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="stationmap" ContentPlaceHolderID="ContentBody" runat="server">
    
    <style>
      .listalign li a:hover {
  font-size: 30px;
  background: #ffc107;
} 
     .listalign li a {
  text-decoration: none;
  color: #000;
  display: block;


 
  -webkit-transition: font-size 0.3s ease, background-color 0.3s ease;
  -moz-transition: font-size 0.3s ease, background-color 0.3s ease;
  -o-transition: font-size 0.3s ease, background-color 0.3s ease;
  -ms-transition: font-size 0.3s ease, background-color 0.3s ease;
  transition: font-size 0.3s ease, background-color 0.3s ease;
}
     h2 {
  font: 400 40px/1.5 Helvetica, Verdana, sans-serif;
  margin: 0;
  padding: 0;
  text-align:center;
}
        
         .listalign{
            width:100%;
            margin: 0;
            padding: 0;
        }
        .listalign li{
            text-align:center;
             font: 200 20px/1.5 Helvetica, Verdana, sans-serif;
  border-bottom: 1px solid #ccc;

        }
        .zoomin img {
 
  -webkit-transition: all 2s ease;
     -moz-transition: all 2s ease;
      -ms-transition: all 2s ease;
          transition: all 2s ease;
}
.zoomin img:hover {
  width: 800px;
  height: 900px;
}


       

    </style>
    
    <h2>
        CHECK STATION MAP
    </h2>
   <div style="width:100%;">
    <div style="width:50%;float:left;">
 <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Stations Map"  style="width:100%;"/>
     <ul class="listalign" id="listid">
    <li><a href="#" onclick="changeImg('Images/Churchgate.jpg')">Churchgate</a></li>
    <li><a href="#" onclick="changeImg('Images/Marinelines.jpg')">Marin Lines</a></li>
    <li><a href="#" onclick="changeImg('Images/Churniroad.jpg')">Churni Road</a></li>
    <li><a href="#" onclick="changeImg('Images/Grantroad.jpg')">Grant Road</a></li>
    <li><a href="#" onclick="changeImg('Images/Mumbaicentral.jpg')">Mumbai Central</a></li>
    <li><a href="#" onclick="changeImg('Images/Mahalaxmi.jpg')">Mahalaxmi</a></li>
    <li><a href="#" onclick="changeImg('Images/Lowerparel.jpg')">Lower Parel</a></li>
    <li><a href="#" onclick="changeImg('Images/Prabhadevi.jpg')">Prabhadevi</a></li>
    <li><a href="#" onclick="changeImg('Images/Dadar.jpg')">Dadar</a></li>
    <li><a href="#" onclick="changeImg('Images/Matungaroad.jpg')">Matunga Road</a></li>
    <li><a href="#" onclick="changeImg('Images/Mahimjunction.jpg')">Mahim Junction</a></li>
    <li><a href="#" onclick="changeImg('Images/Bandra.jpg')">Bandra</a></li>
    <li><a href="#" onclick="changeImg('Images/Kharroad.jpg')">Khar Road</a></li>
    <li><a href="#" onclick="changeImg('Images/Santacruz.jpg')">Santacruz</a></li>
    <li><a href="#" onclick="changeImg('Images/Vileparle.jpg')">Vile Parle</a></li>
    <li><a href="#" onclick="changeImg('Images/Andheri.jpg')">Andheri</a></li>
    <li><a href="#" onclick="changeImg('Images/Jogeshwari.jpg')">Jogeshwari</a></li>
    <li><a href="#" onclick="changeImg('Images/Rammandir.jpg')">Ram Mandir</a></li>
    <li><a href="#" onclick="changeImg('Images/Goregoan.jpg')">Goregoan</a></li>
    <li><a href="#" onclick="changeImg('Images/Malad.jpg')">Malad</a></li>
    <li><a href="#" onclick="changeImg('Images/Kandivali.jpg')">Kandivali</a></li>
    <li><a href="#" onclick="changeImg('Images/Borivali.jpg')">Borivali</a></li>
    <li><a href="#" onclick="changeImg('Images/Dahisar.jpg')">Dahisar</a></li>
    <li><a href="#" onclick="changeImg('Images/Miraroad.jpg')">Mira Road</a></li>
    <li><a href="#" onclick="changeImg('Images/Bhayander.jpg')">Bhayander</a></li>
    <li><a href="#" onclick="changeImg('Images/Naigoan.jpg')">Naigoan</a></li>
    <li><a href="#" onclick="changeImg('Images/Vasairoad.jpg')">Vasai Raod</a></li>
    <li><a href="#" onclick="changeImg('Images/Nalasopara.jpg')">NalaSopara</a></li>
    <li><a href="#" onclick="changeImg('Images/Virar.jpg')">Virar</a></li>
    <li><a href="#" onclick="changeImg('Images/Vaitarana.jpg')">Vaitarana</a></li>
    <li><a href="#" onclick="changeImg('Images/Saphale.jpg')">Saphale</a></li>
      <li><a href="#" onclick="changeImg('Images/Kelvaroad.jpg')">Kelva Road</a></li>    
    <li><a href="#" onclick="changeImg('Images/Palghar.jpg')">Palghar</a></li>
    <li><a href="#" onclick="changeImg('Images/Umroliroad.jpg')">Umroli Road</a></li>
    <li><a href="#" onclick="changeImg('Images/Boisar.jpg')">Boisar</a></li>
    <li><a href="#" onclick="changeImg('Images/Vangoan.jpg')">Vangoan</a></li>
    <li><a href="#" onclick="changeImg('Images/Dahanuroad.jpg')">Dahanu Road</a></li>
  </ul>
            </div>
    <script>
        function myFunction() {
            var input, filter, ul, li, a, i;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            ul = document.getElementById("listid");
            li = ul.getElementsByTagName("li");
            for (i = 0; i < li.length; i++) {
                a = li[i].getElementsByTagName("a")[0];
                if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
                    li[i].style.display = "";
                } else {
                    li[i].style.display = "none";

                }
            }
        }
        function changeImg(image) {
            var imghol = document.getElementById("imageHolder");
            imghol.src = image;
        }

    </script>
        
    <div style="float:right; width:50%">
        <div class="zoomin">
        <img class="materialboxed" id="imageHolder" width="350" height="441" style="width:70%;" />
       
       </div>  
    
    </div> </div>
       

</asp:Content>