<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fare.aspx.cs" Inherits="Fare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #source {
            height: 22px;
            width: 164px;
        }
    </style>
</head>
<body style="height: 278px">
    <form id="form1" runat="server">
        <div style="margin-left: 240px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Source"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Text="Destination"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" class="btn" Width="151px" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Height="100px" Width="415px"></asp:Label>
            <br />
            </div>
    </form>
</body>
</html>
