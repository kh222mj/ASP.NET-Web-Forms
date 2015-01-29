<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Uppgift2.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="main.css" rel="stylesheet" type="text/css" />
    <script src="script.js"></script>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="Submit">
    <div>
        

        <div>
            <h1>Kassakvitto</h1>
        </div>
        
        <div>
            <asp:Panel ID="NumPanel" runat="server" Visible="false">
                Numret '<asp:Literal ID="NumberLiteral" runat="server"/>' har hanterats. 
            </asp:Panel>
        </div>
        
        <div>
            <asp:Label ID="NumLabel" runat="server" Text="Total köpesumma:" AssociatedControlID="SumTextBox" />
            <br />
            <asp:TextBox ID="SumTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="NumberRequiredFieldValidator" runat="server" ErrorMessage="Fel! Ange en total köpesumma." 
                ControlToValidate="SumTextBox" Display="Dynamic" ForeColor="Red" />
            <asp:CompareValidator ID="NumberCompareValidator" runat="server" ErrorMessage="Fel! Ange en köpsumma större än 0"
                Operator="GreaterThan" ControlToValidate="SumTextBox" Display="Dynamic" Type="Double" ValueToCompare="0" ForeColor="Red" />          
            <br />
        </div>

        
        <asp:Button ID="Submit" runat="server" Text="Beräkna rabatt" OnClick="Submit_Click" />
        
        <asp:Panel ID="Kvitto" runat="server" Visible="false">
            <div id="kvittoText">
                <h2>DeVe</h2>
                <p>en del av EllenU</p>
                <br />
                <p>Tel: 0772-28 80 00</p>
                <p>Öppetider 8-17</p>
                <p>EV. FEL GER UNDERKÄNT</p>
                <div id="kvittoResults">
                    <asp:Label ID="Totalt" runat="server" Text="Label" />
                    <br />
                    <asp:Label ID="Rabattsats" runat="server" Text="Label" />
                    <br />
                    <asp:Label ID="Rabatt" runat="server" Text="Label" />
                    <br />
                    <asp:Label ID="AttBetala" runat="server" Text="Label" />
                </div>
                <p>ORG.NR: 202100-6271</p>
                <p>VÄLKOMMEN ÅTER!</p>
            </div>
        </asp:Panel>


    </div>
    </form>
</body>
</html>
