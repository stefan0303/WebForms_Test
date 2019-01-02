<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="Session_WebForm1" %>
<%@ Register src="../UserControls_Example/CallendarUserControl.ascx" tagname="CalendarUserControl" tagprefix="uc1" %>
<form runat="server">
    <div style="font-family: Arial">
        <uc1:CalendarUserControl ID="CalendarUserControl1" runat="server" />
        <table>
            <tr>
                <td colspan="2">
                    <h1>
                        This is WebForm1</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Name</b>
                </td>
                <td>
                    :<asp:TextBox ID="txtName" runat="server">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Email</b>
                </td>
                <td>
                    :<asp:TextBox ID="txtEmail" runat="server">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2"> 
                    <asp:Button ID="btnSendData" runat="server" 
                                Text="Go to WebForm2" onclick="btnSendData_Click" />
                </td>
            </tr>
        </table>
    </div>
</form>
