<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TransferExample.aspx.cs" Inherits="ServerTransfer_Example.TransferExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Web Form 1</h1>
        <div style="font-family: Arial">
            <table>
                <tr>
                    <td colspan="2">
                        <h1>This is WebForm1</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Name</b>
                    </td>
                    <td>:<asp:TextBox ID="txtName" runat="server">
                    </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email</b>
                    </td>
                    <td>:<asp:TextBox ID="txtEmail" runat="server">
                    </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnTransfer" runat="server"
                            Text="Transfer to WebForm2" Width="250px"
                            OnClick="btnTransfer_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnTransferToExternalWebsite"
                            runat="server" Width="250px"
                            OnClick="btnTransferToExternalWebsite_Click"
                            Text="Transfer to External WebSite" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="CrossTransfer"
                                    runat="server" Width="250px"                                    
                                    Text="Transfer to External WebSite" />
                    </td>
                </tr>
      
            </table>
        </div>
    </form>
</body>
</html>
