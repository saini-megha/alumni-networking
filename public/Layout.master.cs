using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Layout : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Request.Cookies["savedhere"] != null)
        //{
        //    lblwelcome.Text = "Welcome " + Request.Cookies[0]["user"].ToString() + " !";
        //}
        if (Session["username"] != null)
        {
            lblwelcome.Text = "Welcome " + Session["username"].ToString() + " !";
            MainMenu.Visible = true;
            lblfreezeout.Visible = true;
        }
        else
        {
            //Response.Write("Not logged in");
            //lblwelcome.Text = "";
            lblwelcome.Text = "";
            MainMenu.Visible = false;
            lblfreezeout.Visible = false;

        }


    }
    protected void ContactUs_Click(object sender, EventArgs e)
    {
        Server.Transfer("Contact.aspx");
    }
    protected void AboutUs_Click(object sender, EventArgs e)
    {
        Server.Transfer("About.aspx");
    }
    protected void lblfreezeout_Click(object sender, EventArgs e)
    {
        lblwelcome.Text = "heyhey";
        Session.Abandon();
        
       // Server.Transfer("SignIn.aspx");
        Response.Redirect("SignIn.aspx");

    }
}
