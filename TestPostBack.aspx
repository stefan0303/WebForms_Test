<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="TestPostBack.aspx.cs" Inherits="TestPostBack" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<asp:DropDownList ID="DropDownList1" runat="server" ViewStateMode="Enabled">

</asp:DropDownList>
    <asp:Button ID="ButtonTestForChangingDropDown" OnClick="ButtonTestForChangingDropDown_OnClick" Text="See what happens to DropDown" runat="server" Height="35px" Width="250px"/>
</asp:Content>
