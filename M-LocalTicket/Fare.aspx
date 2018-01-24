<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fare.aspx.cs" Inherits="Fare" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="fare" ContentPlaceHolderID="ContentBody" runat="server">
      <div class="container">
    <div style="margin-left: 28px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Source"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1"  Width="500px" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="browser-default ddl"  runat="server">
                        
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
          
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Text="Destination"></asp:Label>
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
         
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
           <asp:LinkButton ID="LinkButton1" OnClick="Button1_Click" runat="server" CssClass="btn">Search</asp:LinkButton>
            <asp:Label ID="Label3" runat="server" Height="100px" Width="415px"></asp:Label>

            </div>
  
    <asp:Table ID="Table1" runat="server" Width="590px" style="background-color: antiquewhite;border:solid;">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server"></asp:TableCell>
            <asp:TableCell runat="server">II Class</asp:TableCell>
            <asp:TableCell runat="server">I Class</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Regular Ticket</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label></asp:TableCell>
            <asp:TableCell runat="server"><asp:Label ID="firstticket" runat="server" Text=""></asp:Label></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">1 Month Pass</asp:TableCell>
            <asp:TableCell runat="server"><asp:Label ID="secondpass" runat="server" Text=""></asp:Label></asp:TableCell>
            <asp:TableCell runat="server"><asp:Label ID="firstpass" runat="server" Text=""></asp:Label></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">3 Month Pass</asp:TableCell>
            <asp:TableCell runat="server"><asp:Label ID="sqp" runat="server" Text=""></asp:Label></asp:TableCell>
            <asp:TableCell runat="server"><asp:Label ID="fqp" runat="server" Text=""></asp:Label></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
                  </div>
</asp:Content>