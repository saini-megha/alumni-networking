using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ProposeEvent : System.Web.UI.Page
{
    string constring = "server=HP-PC; database=alumni; uid=sa; pwd=sql";
   // Libraary ob = new Libraary();
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(constring);
    }
    protected void btnPropose_Click(object sender, EventArgs e)
    {
        string ddselect = ddcategory.SelectedItem.Text;
        string query = "insert into events values('" + txtEvname.Text + "','" + ddselect + "','" + txtaboutevent.Text + "','" + txtedate.Text + "','" + txtetime.Text + "','" + txtevenue.Text + "','"+Session["username"]+"')";        
        SqlCommand cmd = new SqlCommand(query,con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        
        //ob.ExecuteNonQry(query);
        Server.Transfer("Home.aspx");
    }
}