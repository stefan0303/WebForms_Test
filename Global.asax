<%@ Application Language="C#" %>
<%@ Import Namespace="TestForTbi" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    //runs when the application is started
    void Application_Start(object sender, EventArgs e)
    {
        //Create a Application state variables
        Application["TotalAplications"] = 0;
        Application["UserSessions"] = 0;

        //Increment total applications by 1 
        Application["TotalAplications"] = (int)Application["TotalAplications"] + 1 ;

        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
    }   
    //Session events
    void Session_Start(object sender, EventArgs e)
    {
        //Decrement TotalUserSessions by 1
        Application["UserSessions"] = (int)Application["UserSessions"] + 1 ;
       
    }
    void Session_End(object sender, EventArgs e)
    {
        //Decrement TotalUserSessions by 1
        Application["UserSessions"] = (int)Application["UserSessions"] - 1 ;
        
    }
    //runs when the application shutdown
    void Application_End(object sender, EventArgs e)
    {
        

        
    }
</script>
