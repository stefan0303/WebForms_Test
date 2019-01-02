<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeFile="AsyncExample.aspx.cs" Inherits="AsyncAwait_Example.AsyncExample" %>

<form id="form1" runat="server">

<h3>Hello</h3>
    <br />
    <asp:Button ID="btnProcessFIle" Name="btnProcessFIle" runat="server"  OnClick="Button1_Click" Text="Process File" Font-Size="10" />
    <asp:Label ID="lblCount" Name="LblCount" runat="server"  Font-Size="10"></asp:Label>
   
</form>
