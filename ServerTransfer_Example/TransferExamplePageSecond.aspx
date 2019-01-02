<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TransferExamplePageSecond.aspx.cs"
Inherits="ServerTransfer_Example.TransferExamplePageSecond"  %>
<%@ PreviousPageType VirtualPath="TransferExample.aspx" %>
<%@ Reference Page="~/ServerTransfer_Example/TransferExample.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Web Form 2</h1>
        <div>
            <table>
                <tr>
                    <td>
                        <b>Name:</b>
                    </td>
                    <td>
                        <asp:Label ID="lblName" runat="server">
                        </asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email:</b>
                    </td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server">
                        </asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
