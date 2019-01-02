using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestPostBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //When the button is clicked the drop down menu will add again the values
        //Because the it will execute again here!
        //1.One way to stop this is to Use Post Back
        
        //2.Another way to solve this problem is to disable the ViewState of Drop Down
        //There are problems with this approach
        //- The View will not remember the view state (If we choose something from the drop down it will select again the first item)
        //- Drop Down events may not work correctly as expected

        //3.Another way to solve this is to clear all the Drop Down items every time see comment down
        //- This is not efficient because we every time need to clear!
        //if (!IsPostBack)
        //{
        //    AddToDropDown();
        //}

        AddToDropDown(); //Problem!!!
    }

    public void AddToDropDown()
    {
        //DropDownList1.Items.Clear();
        ListItem li1 = new ListItem("Varna");
        DropDownList1.Items.Add(li1);
        ListItem li2 = new ListItem("Sofia");
        DropDownList1.Items.Add(li2);
        ListItem li3 = new ListItem("Plovdiv");
        DropDownList1.Items.Add(li3);

    }

    protected void ButtonTestForChangingDropDown_OnClick(object sender, EventArgs e)
    {
      
    }
}