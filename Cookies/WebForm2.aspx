<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm2.aspx.cs" Inherits="Cookies.Cookies_WebForm2" %>

<div style="font-family: Arial">
    <h3>Received with Cookies</h3>
    <table>
       
        <tr>
            <td colspan="2">
                <h4>This is WebForm2</h4>
            </td>
        </tr>
        <tr>
            <td>
                <b>Name:</b>
            </td>
            <td>
             

                <asp:Label ID="lblName" runat="server" />
             
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
