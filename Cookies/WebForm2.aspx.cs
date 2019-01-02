using System;
using System.Web;

namespace Cookies
{
    public partial class Cookies_WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserInfo"];

            if (cookie != null)
            {
                lblName.Text = cookie["Name"];
                lblEmail.Text = cookie["Email"];
                //The cookie will expired in 30 days time!
                cookie.Expires = DateTime.Now.AddDays(30);
            }
       
        }
    }
}