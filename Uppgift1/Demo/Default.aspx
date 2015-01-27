<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Hur många versaler?</h1>
        <asp:TextBox ID="Textarea" runat="server" Enabled="true" rows="5" TextMode="multiline"></asp:TextBox>
        <br />
        <asp:Button ID="Button" runat="server" Text="Submit" OnClick="Button_Click" />
        <br />
        <asp:Button ID="Reset" runat="server" Text="Reset" Visible="false" OnClick="Reset_Click" />
        <br />
        <asp:Label ID="Result" runat="server" Text="Resultatet skrivs ut här"></asp:Label>
    </div>
    </form>
</body>
</html>
