<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fare.aspx.cs" Inherits="Fare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 278px">
    <form id="form1" runat="server">
        <div style="margin-left: 200px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Source"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="66px" Width="171px">
                <asp:ListItem>churchgate</asp:ListItem>
                <asp:ListItem>marinelines</asp:ListItem>
                <asp:ListItem>grantroad</asp:ListItem>
                <asp:ListItem>charniroad</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Text="Destination"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" Height="66px" Width="168px">
                <asp:ListItem>churchgate</asp:ListItem>
                <asp:ListItem>marinelines</asp:ListItem>
                <asp:ListItem>grantroad</asp:ListItem>
                <asp:ListItem>mumbaicentral</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" class="btn" Width="151px" />
            <br />
            <br />
            <br />
            <br />
            </div>
    </form>
</body>
</html>
