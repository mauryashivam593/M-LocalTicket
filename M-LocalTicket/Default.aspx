<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="TrainShedule.aspx"><img runat="server" class="bottom" src="Images/TrainShedule1.jpeg" alt="Check Train Shedules" width="250" height="250" /></a>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Fare.aspx" > <img  class="bottom" src="Images/Fare2.jpeg" alt="Check Fare"  style="align-content:center"width="250" height="250" /></a>
   
     &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp &nbsp &nbsp
<a href="StationMap.aspx" ><img  class="bottom" src="Images/StationMap1.jpeg" alt="Check Station Map"   style="align-content:center"width="250" height="250"  /> </a>
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />


    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br /><br />
    <br />
    <br />

   <div class="row"> <marquee width="100%"behavior="scroll" scrollamount="13" onmouseover="this.stop()" onmouseout="this.start()"> 
       <asp:Label ID="TrainStatus" runat="server" Font-Size="30px" ForeColor="#000000"> <b> Today's Train Status</b> 1. Today's All  Western Trains are 10 Minutes Late. 2. Megablock on 21 jan 2018,Sunday from Andheri to Borivali. 3.Megablock on 20 jan 2018,Sunday from Andheri to Borivali.</asp:Label></marquee>
       </div>

    
</asp:Content>

