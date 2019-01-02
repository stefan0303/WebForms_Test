using System;
using System.Web;
using System.Web.UI;

public partial class _Default : Page
{
    public int clickCount = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) //check is the page rendered for first time or being loaded in response to a post back
        {
            // TextId.Text = "0";
            Response.Write("Its not post back !!!");
        }

        Response.Write("Number of applications: " + (int) Application["TotalAplications"]);
        Response.Write("<br/>");
        Response.Write("Numbers of users Online: " + Application["UserSessions"]);

     
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        //With this code the textbox will always be 1, because the clickCount starts every time from 
        // To resolve this problem we can use a static clickCount or use a ViewState
        if (ViewState["RememberClicksCount"] != null)
        {
            clickCount = int.Parse(ViewState["RememberClicksCount"].ToString()) + 1;

        }

        ViewState["RememberClicksCount"] = clickCount.ToString();
        TextId.Text = ViewState["RememberClicksCount"].ToString();


        //TextId.Text = (int.Parse(TextId.Text) + 1).ToString();//because its an asp.net server control it have viewState internally!!!
    }

    //Example of Events in WebForm
    protected void Page_PreInit(object sender, EventArgs e)
    {
        Response.Write("Page_PreInit" + "<br/>");

    }

    protected void Page_Init(object sender, EventArgs e)
    {
        Response.Write("Page_Init" + "<br/>");

    }

    protected void Page_InitComplete(object sender, EventArgs e)
    {
        Response.Write("Page_InitComplete" + "<br/>");

    }

    protected void Page_PreLoad(object sender, EventArgs e)
    {
        Response.Write("Page_PreLoad" + "<br/>");

    }

    protected void Page_LoadComplete(object sender, EventArgs e)
    {
        Response.Write("</br>" + "Page_LoadComplete" + "<br/>");

    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        Response.Write("Page_PreRender" + "<br/>");

    }

    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
        Response.Write("Page_PreRenderComplete" + "<br/>");

    }

    protected void Page_Unload(object sender, EventArgs e)
    {
        //Response.Write("Page_Unload" + "<br/>"); // will will have an error if we uncomment this Response.Write
    }

    //Check The Post back Event
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Write("</br>" + "Button clicked!" + TextBox1.Text);

    }



    //To make this method you need to double click on Textbox in DesignView
    //If in the design view right click on text box select properties.
    //There is an AutoPostBackEvent which is false, if you changed it to true
    //When the text in box is changed it will execute the this method

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

        Response.Write("</br>" + "Changed Text in TextBox!!!");
        Response.Write(TextBox1.Text); //we get the text from the text box
    }



    protected void LinkButton_Click(object sender, EventArgs e)
    {
      Response.Redirect("https://gong.bg/");
        HttpContext.Current.Server.Transfer("Contact.aspx", true);
        //Server.Transfer("http://localhost:50447/Contact");
    }

    protected void LinkButton_Command(object sender, EventArgs e)
    {

    }
}
