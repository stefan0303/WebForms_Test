<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="QueryStringSend_WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <h4>Name:<span>   <asp:TextBox runat="server" ID="txtText"/> </span></h4> 
         
        </div>
        <div>
            <h4>Email:<span>    <asp:TextBox runat="server" ID="txtEmail"/> </span></h4> 
           
        </div>
        <div>
            <asp:Button ID="btnSendData" runat="server" OnClick="OnClick_Button" Text="Send a Query String"/>          
        </div>
    </form>
</body>
</html>
