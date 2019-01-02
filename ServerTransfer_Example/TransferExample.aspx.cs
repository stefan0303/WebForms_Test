using System;

namespace ServerTransfer_Example
{
    public partial class TransferExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTransfer_Click(object sender, EventArgs e)
        {
            //Server.Execute will make from first and second page one single page.
            //Uncomment and see it very interesting:)
            Server.Execute("TransferExamplePageSecond.aspx",true);

            //we redirect to page without changing the url
            // Server.Transfer("TransferExamplePageSecond.aspx");
        }

        protected void btnTransferToExternalWebsite_Click(object sender, EventArgs e)
        {
           Response.Redirect("https://wwww.gong.bg/");
        }

    
        public string Name
        {
            get
            {
                return this.txtName.Text;
            }

        }

        public string Email
        {
            get
            {
                return this.txtEmail.Text;
            }
           
        }
    }
}