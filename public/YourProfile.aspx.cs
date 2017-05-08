using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class YourProfile : System.Web.UI.Page
{
    Libraary ob= new Libraary();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(Request.QueryString["name"].ToString());       
        if (!IsPostBack)
        {
            string query = "update member set status+=1 where username='" + Request.QueryString["name"].ToString() + "'";
            ob.ExecuteNonQry(query);
        }
        
        string qury="select * from member where username='" + Request.QueryString["name"].ToString() + "'";
        SqlDataReader dr = ob.DataReader(qury);
        
        while (dr.Read())
        {
            lblbday.Text = dr[3].ToString();
            lblcountry.Text = dr[4].ToString();
            lblstate.Text = dr[5].ToString();
            lbcourse.Text = dr[8].ToString();
            lblid.Text = dr[7].ToString();
            lblbatch.Text = dr[10].ToString();
            lblstream.Text = dr[11].ToString();
            lblemployed.Text = dr[12].ToString();
            lblnick.Text = dr[13].ToString();            
            lblname.Text = dr[15].ToString();
            lblcity.Text = dr[17].ToString();
            lblaboutme.Text = dr[14].ToString();
            ProfilePic.ImageUrl = dr.GetString(19);
            lblnoofvisit.Text = dr[18].ToString();
            Lblurlastlog.Text = dr[20].ToString();

        }

        
        //Response.Write("helloo!");
    }
    protected void btnphotos_Click(object sender, EventArgs e)
    {
        Server.Transfer("YourPhotos.aspx");
    }
}