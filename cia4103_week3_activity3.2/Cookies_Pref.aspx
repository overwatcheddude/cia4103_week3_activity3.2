<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cookies_Pref.aspx.cs" Inherits="Cookies_Pref" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body id="PageBody" runat="server">
    <h1>
        Activity 3.2 - Using Cookies
    </h1>
    <form id="form1" runat="server">
        <div>
            Select your choice of color for page background:<asp:RadioButtonList ID="rblColor" runat="server">
                <asp:ListItem Selected="True">White</asp:ListItem>
                <asp:ListItem>Pink</asp:ListItem>
                <asp:ListItem>Grey</asp:ListItem>
            </asp:RadioButtonList>
            Select your favourite font:<asp:RadioButtonList ID="rblFont" runat="server">
                <asp:ListItem Selected="True">Arial</asp:ListItem>
                <asp:ListItem>Tahoma</asp:ListItem>
                <asp:ListItem>Verdana</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>
