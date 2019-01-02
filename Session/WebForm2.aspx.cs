using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Session_WebForm2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //it is important to check for null,
        //because there will be Null reference exception if there is no such a Session
        if (Session["Name"] != null)
        {
            lblName.Text = Session["Name"].ToString();
        }
        if (Session["Email"] != null)
        {
            lblEmail.Text = Session["Email"].ToString();
        }
    }

}