<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CallendarUserControl.ascx.cs" Inherits="UserControls_Example.CallendarUserControl" %>
<asp:TextBox ID="txtDate" runat="server" Width="115px"></asp:TextBox>
<asp:ImageButton ID="ImgBtn" runat="server" 
                 ImageUrl="~/Images/Calendar.png" onclick="ImgBtn_Click" />
<asp:Calendar ID="Calendar1" runat="server" onselectionchanged="Calendar1_SelectionChanged">
</asp:Calendar>
