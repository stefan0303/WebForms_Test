using System;
using System.Collections.Specialized;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ServerTransfer_Example
{

    public partial class TransferExamplePageSecond : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get the form values from the previous page

            NameValueCollection collection = Request.Form;

            lblName.Text = collection["txtName"];
            lblEmail.Text = collection["txtEmail"];

            //other way to do this is with Page.PreviousPage
            if (!IsPostBack)
            {
                Page lastPage = (Page)Context.Handler;
                //there can be problem iff we directly open this page and we need to make a check
                if (lastPage is TransferExample)//we need this check to be sure that the class in last file is the same
                {
                    lblName.Text = ((TextBox)lastPage.FindControl("txtName")).Text;//one way to take it
                    lblEmail.Text = ((TransferExample)lastPage).Email; //other way, its better with property
                }


            }
        }
    }
}