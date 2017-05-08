using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Batchmates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lblbatchmatename_Click(object sender, EventArgs e)
    {
       // Response.Redirect("YourProfile.aspx?your="+DataList1.);
       // Response.Redirect("YourProfile.aspx?your=hello");
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("YourProfile.aspx?name=" + e.CommandArgument);
    }
}