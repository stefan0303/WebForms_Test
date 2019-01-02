using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Protocols;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QueryStringSend_WebForm1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void OnClick_Button(object sender, EventArgs e)
    {
        //Making a query string
        //This is example of query string with one parameter, after address string starts with "?"then the key and value
        //If we send more then one parameter after every key value use "&" Example:
        //"WebForm2.aspx?UserName=Stefan&Email=tepsiev@mail.bg" //To encode and decode string you can use  ToDo UrlEncode

       // Response.Redirect("WebForm2.aspx?UserName=" + Server.UrlEncode(txtText.Text) + "&UserEmail=" + txtEmail.Text);
       Response.Redirect("WebForm2.aspx?UserName=" + txtText.Text + "&UserEmail=" + txtEmail.Text);
    }
}