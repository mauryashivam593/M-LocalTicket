<%@ Page Language="C#" AutoEventWireup="true" CodeFile="example.aspx.cs" Inherits="example"  MasterPageFile="~/MasterPage.master"%>
<asp:Content ID="BookTicket" ContentPlaceHolderID="ContentBody" runat="server">
        <div class="container">
                   <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Text="Source"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1"  Width="500px" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="browser-default ddl"  runat="server">
                        
                <asp:ListItem>churchgate</asp:ListItem>
                <asp:ListItem>marinelines</asp:ListItem>
                <asp:ListItem>charniroad</asp:ListItem>
                <asp:ListItem>grantroad</asp:ListItem>
                <asp:ListItem>mumbaicentral</asp:ListItem>
                <asp:ListItem>mahalaxmi</asp:ListItem>
                <asp:ListItem>lowerparel</asp:ListItem>
                <asp:ListItem>prabhadevi</asp:ListItem>
                <asp:ListItem>dadar</asp:ListItem>
                <asp:ListItem>matungaroad</asp:ListItem>
                <asp:ListItem>mahim</asp:ListItem>
                <asp:ListItem>bandra</asp:ListItem>
                <asp:ListItem>kharroad</asp:ListItem>
                <asp:ListItem>santacruz</asp:ListItem>
                <asp:ListItem>vileparle</asp:ListItem>
                <asp:ListItem>andheri</asp:ListItem>
                <asp:ListItem>jogeshwari</asp:ListItem>
                <asp:ListItem>goregaon</asp:ListItem>
                <asp:ListItem>malad</asp:ListItem>
                <asp:ListItem>kandivali</asp:ListItem>
                <asp:ListItem>borivali</asp:ListItem>
                <asp:ListItem>dahisar</asp:ListItem>
                <asp:ListItem>miraroad</asp:ListItem>
                <asp:ListItem>bhayandar</asp:ListItem>
                <asp:ListItem>naigaon</asp:ListItem>
                <asp:ListItem>vasairoad</asp:ListItem>
                <asp:ListItem>nalasopara</asp:ListItem>
                <asp:ListItem>virar</asp:ListItem>
               
      

            </asp:DropDownList>
        <style type="text/css">
        .ddl
        {
            border:2px solid #7d6754;
            border-radius:5px;
            padding:3px;
            -webkit-appearance: none; 
            background-image:url('');
            background-position:88px;
            background-repeat:no-repeat;
            text-indent: 0.01px;/*In Firefox*/
            text-overflow: ellipsis;/*In Firefox*/
            font-size:large;
            text-align:center;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font:200;
          
        }
</style>
        <br />
        <br />

                   <asp:Label  ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Destination"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:DropDownList ID="DropDownList2"  Width="500px" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="browser-default ddl" runat="server">
                <asp:ListItem>churchgate</asp:ListItem>
                <asp:ListItem>marinelines</asp:ListItem>
                <asp:ListItem>charniroad</asp:ListItem>
                <asp:ListItem>grantroad</asp:ListItem>
                <asp:ListItem>mumbaicentral</asp:ListItem>
                <asp:ListItem>mahalaxmi</asp:ListItem>
                <asp:ListItem>lowerparel</asp:ListItem>
                <asp:ListItem>prabhadevi</asp:ListItem>
                <asp:ListItem>dadar</asp:ListItem>
                <asp:ListItem>matungaroad</asp:ListItem>
                <asp:ListItem>mahim</asp:ListItem>
                <asp:ListItem>bandra</asp:ListItem>
                <asp:ListItem>kharroad</asp:ListItem>
                <asp:ListItem>santacruz</asp:ListItem>
                <asp:ListItem>vileparle</asp:ListItem>
                <asp:ListItem>andheri</asp:ListItem>
                <asp:ListItem>jogeshwari</asp:ListItem>
                <asp:ListItem>goregaon</asp:ListItem>
                <asp:ListItem>malad</asp:ListItem>
                <asp:ListItem>kandivali</asp:ListItem>
                <asp:ListItem>borivali</asp:ListItem>
                <asp:ListItem>dahisar</asp:ListItem>
                <asp:ListItem>miraroad</asp:ListItem>
                <asp:ListItem>bhayandar</asp:ListItem>
                <asp:ListItem>naigaon</asp:ListItem>
                <asp:ListItem>vasairoad</asp:ListItem>
                <asp:ListItem>nalasopara</asp:ListItem>
                <asp:ListItem>virar</asp:ListItem>
            </asp:DropDownList>
                    <br /><br />
    
      <label>
        <input name="group1" id="Single" Text="Single"  type="radio" value="Single" checked runat="server"/>
        <span>Single</span>
      </label>
    <br />
    
      <label>
        <input name="group1"  id="Return" Text="Return" type="radio" value="Return" runat="server" />
        <span>Return</span>
      </label>
   
                    <br /><br />


         <asp:DropDownList ID="DropDownList3" Width="300px" BackColor="SeaGreen" ForeColor="White" Font-Names="Andalus" CssClass="browser-default ddl" runat="server">
                 <asp:ListItem>FirstClass(I)</asp:ListItem>
                <asp:ListItem>SecondClass(II)</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br/>
            <br />
            
             <input type="button" class="btn" value="-" id="dec" onserverclick="Decrement_Click" runat="server"/>

    <label id="display" style="text-align:center; font:bold;font-size:large; width:120px;display: inline-block;" runat="server" >1</label>

<input type="button" class="btn" value="+" id="inc" onserverclick="Increment_Click" runat="server"/>
    <script type="text/javascript">

        var i = 1;
          function incNumber() {
            if (i < 10) {
                i++;
            } else if (i = 10) {
                i = 1;
            }
            document.getElementById("display").innerHTML = i;
        }

        function decNumber() {
            if (i > 1) {
                --i;
            } else if (i = 1) {
                i = 10;
            }
            document.getElementById("display").innerHTML = i;
        }
    </script>
            
            <br />
            <br />
            <br />
          
            
            <asp:LinkButton ID="LinkButton3" class="btn" runat="server" OnClick="LinkButton3_Click" >Check Total Amount</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Amount" runat="server" Text=""></asp:Label>
                       <br /><br />        <br /><br />

            <asp:LinkButton  ID="LinkButton1" CssClass="btn"  runat="server" >Book</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn" runat="server">Cancle</asp:LinkButton>


            





        </div>
    <div class = "row">
         <div class = "col s12">
            <ul class = "tabs">
               <li class = "tab col s3"><a href = "#inbox">Inbox</a></li>
               <li class = "tab col s3"><a class = "active" href = "#unread">
                  Unread</a></li>
               <li class = "tab col s3 disabled"><a href = "#outbox">
                  Outbox (Disabled)</a></li>
               <li class = "tab col s3"><a href = "#sent">Sent</a></li>
            </ul>
         </div>
         
         <div id = "inbox" class = "col s12">Inbox</div>
         <div id = "unread" class = "col s12">Unread</div>
         <div id = "outbox" class = "col s12">Outbox (Disabled)</div>
         <div id = "sent" class = "col s12">Sent</div>
      </div> 
    
   
    </asp:Content>