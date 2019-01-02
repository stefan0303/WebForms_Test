<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Reference Page="~/Contact.aspx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:Button ID="Click" runat="server" Text="Click And Change Count!" OnClick="Button1_Click"/>
    <asp:TextBox ID="TextId" runat="server"></asp:TextBox>
    <br/>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button"/>

    
    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>

    
  <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator int the textBox"></asp:RequiredFieldValidator>--%>
    <br/>
    <asp:HyperLink ID="HyperLink1" NavigateUrl="TestPostBack.aspx" Text="Go to PostBack_Example" runat="server"></asp:HyperLink>
    <br/>
    <asp:HyperLink ID="HyperLink2" NavigateUrl="https://gong.bg/" Text="Go to gong.bg" runat="server"></asp:HyperLink>

    <br/>
    <asp:LinkButton  ID="LinkB" runat="server" EnableTheming="True" 
                    onclick="LinkButton_Click" 
                    ToolTip="Link to another page">LinkButton</asp:LinkButton>

    
</asp:Content>
