using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QueryStringSend_WebForm2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //get the values from the query string
        lblName.Text = Request.QueryString["UserName"];
        lblEmail.Text = Request.QueryString["UserEmail"];
    }
}