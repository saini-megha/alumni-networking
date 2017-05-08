using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SignUpp : System.Web.UI.Page
{
      
    SqlConnection con = new SqlConnection("server=HP-PC;database=alumni;uid=sa;pwd=sql");
    //SqlDataAdapter da;
    //DataSet ds;
    SqlCommand cmd;
    Libraary ob=new Libraary();
    static bool flag = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblnotunique.Text = "";
        flag = false;
    }

    protected void btnsignnext_Click(object sender, EventArgs e)
    {
        string gender = "";
        if (radioMale.Checked == true)
        {
            gender = "Male";
        }
        if (radioFemale.Checked == true)
        {
            gender = "Female";
        }
        SqlDataReader dr = ob.DataReader("select username from member");
        while (dr.Read())
        {
            if (dr[0].ToString() == txtusername.Text)
            {
                lblnotunique.Text = "Not a unique username.";
                flag = true;
            }
        }        
       

        if (!flag)
        {
            string query = "insert into member values('" + txtpassw.Text + "'," + txtAdNo.Text + ",'" + gender + "','" + txtdob.Text + "','" + txtcountry.Text + "','" + txtstate.Text + "'," + txtmob.Text + ",'" + txtid.Text + "','" + txtcourse.Text + "'," + txtpassing.Text + ",'" + txtbatch.Text + "','" + txtstream.Text + "','" + txtwhere.Text + "','" + txtnick.Text + "','','" + txtfname.Text + "','" + txtusername.Text + "','" + txtcity.Text + "','','','')";

            cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            MultiView1.ActiveViewIndex += 1;
        }
        
    }
   
    protected void btnsign2back_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex -= 1;
    }
    protected void btnsign2skip_Click(object sender, EventArgs e)
    {
        Server.Transfer("SignIn.aspx");
    }
protected void btnsign2done_Click(object sender, EventArgs e)
{
    string query = "update member set aboutme='" + txtaboutme.Text + "' where Username='" + txtusername.Text + "'";
     cmd = new SqlCommand(query, con);            
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Server.Transfer("SignIn.aspx");
}

protected void btnuploadpp0_Click(object sender, EventArgs e)
{
    string basepath;
    string path= Server.MapPath("ProfilePics");
    if (uploadpp.HasFile)
    {
        basepath = path + "/" + uploadpp.FileName;
        uploadpp.SaveAs(basepath);
        Response.Write(basepath);
        string query = "update member set imageurl= '~/ProfilePics/"+uploadpp.FileName+"'where Username='" +txtusername.Text+ "'";
        //string query = "update member set imageurl='" + basepath + "' where Username='megha'";
        cmd = new SqlCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        
    }
    else
    {
        Response.Write("upload image first");
    }
   
}
protected void rbemployes_SelectedIndexChanged(object sender, EventArgs e)
{
    if (rbemployes.SelectedItem.ToString() == "Yes")
    {
        Lblwhere.Visible = true;
        txtwhere.Visible = true;
    }
    else
    {
        Lblwhere.Visible = false;
        txtwhere.Visible = false;    
    }
}
protected void btnsigncancel_Click(object sender, EventArgs e)
{
    Server.Transfer("SignIn.aspx");
}

}