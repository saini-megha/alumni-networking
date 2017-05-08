using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MyProfile : System.Web.UI.Page
{
    
    Libraary ob = new Libraary();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        { 
        //string query = "select * from member where username='"+Request.Cookies[0]["user"].ToString()+"'";
        string query = "select * from member where username='" + Session["username"] + "'";
       
        SqlDataReader dr=ob.DataReader(query);
        while (dr.Read())
        {
            txtmdob.Text = dr[3].ToString();
            txtmcountry.Text = dr[4].ToString();
            txtmstate.Text = dr[5].ToString();
            txtmcourse.Text = dr[8].ToString();
            txtmemail.Text = dr[7].ToString();
            txtmbatch.Text = dr[10].ToString();
            txtmstream.Text = dr[11].ToString();
            txtmemployed.Text = dr[12].ToString();
            txtmnick.Text = dr[13].ToString();
            //txtstatus.Text = dr[14].ToString();
            txtmname.Text = dr[15].ToString();
            txtmcity.Text = dr[17].ToString();
            txtmaboutme.Text = dr[14].ToString();
            imgprofilepic.ImageUrl = dr.GetString(19);
            lblmynoofvisit.Text = dr[18].ToString();
            Lbllastlogin.Text = dr[20].ToString();
        }
        }
    }
    protected void btnstatus_Click(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;        
        string query = "insert into status values('"+ Session["username"] +"','" + txtstatus.Text + "','"+ dt.ToString() + "')";
        ob.ExecuteNonQry(query);
        
    }



    protected void btnmedit_Click(object sender, EventArgs e)
    {

        //txtmaboutme.Enabled = true;
        txtmaboutme.ReadOnly = false;
        txtmbatch.Enabled = true;
        txtmcity.Enabled = true;
        txtmcountry.Enabled = true;
        txtmcourse.Enabled = true;
        txtmdob.Enabled = true;
        txtmemail.Enabled = true;
        txtmemployed.Enabled = true;
        txtmname.Enabled = true;
        txtmnick.Enabled = true;
        txtmstate.Enabled = true;
        txtmstream.Enabled = true;
        btnmupdate.Visible = true;
        btnmedit.Visible = false;
        btnmcancel.Visible = true;
    }
    protected void btnmupdate_Click(object sender, EventArgs e)
    {
        string query="update member set aboutme='"+txtmaboutme.Text+"',batch='"+txtmbatch.Text+"',city='"+txtmcity.Text+"',state='"+txtmstate.Text+"',country='"+txtmcountry.Text+"',course='"+txtmcourse.Text+"',dateofbirth='"+txtmdob.Text+"',stream='"+txtmstream.Text+"',employedat='"+txtmemployed.Text+"',email_id='"+txtmemail.Text+"',nickname='"+txtmnick.Text+"',name='"+txtmname.Text+"' where username='"+Session["username"].ToString()+"'";
       // string query = "update member set aboutme='hel' where username='megha'";
        int x=ob.ExecuteNonQry(query);
        
        Response.Write(x);
        btnmupdate.Visible = false;
        btnmcancel.Visible = false;
        btnmedit.Visible = true;

    }
}