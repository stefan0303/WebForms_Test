<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm2.aspx.cs" Inherits="Session_WebForm2" %>
<%@ Register src="../UserControls_Example/CallendarUserControl.ascx" tagname="CalendarUserControl" tagprefix="uc1" %>
<form runat="server">
    <div style="font-family: Arial">
        <table>
            <tr>
                <td colspan="2">
                    <h1>This is WebForm2</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Name</b>
                </td>
                <td>
                    :<asp:Label ID="lblName" runat="server">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Email</b>
                </td>
                <td>
                    :<asp:Label ID="lblEmail" runat="server">
                    </asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <uc1:CalendarUserControl ID="CalendarUserControl1" runat="server" />
</form>
