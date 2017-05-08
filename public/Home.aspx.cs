using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    Libraary ob= new Libraary();
    protected void Page_Load(object sender, EventArgs e)
    {
        //((Label)Master.FindControl("lblwelcome")).Text = "Welcome " + Request.Cookies[0]["user"].ToString() + " !";
    }
    protected void btnPublish_Click(object sender, EventArgs e)
    {        
        DateTime dt = DateTime.Now;        
        string query = "insert into magazine values('" + Session["username"] + "','" + txtpublish.Text+ "','"+dt.ToString()+"')";
        ob.ExecuteNonQry(query);

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Server.Transfer("searchit.aspx");
    }
    protected void DataListpopular_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("YourProfile.aspx?name=" + e.CommandArgument);
    }
    
}
   
 