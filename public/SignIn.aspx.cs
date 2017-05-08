using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

public partial class SignIn : System.Web.UI.Page
{
    Libraary ob = new Libraary();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["savedhere"] != null)
        {
            Server.Transfer("home.aspx");
        }

    }

    protected void btnSignIndone_Click(object sender, EventArgs e)
    {
       string qry = "select password,batch from member where username=@user";
       SqlParameter[] para = new SqlParameter[]{ new SqlParameter ("user", txtlogin.Text)};
       SqlDataReader temp = ob.DataReader(qry, para);
       if (temp.Read())
       {
           
           if (temp[0].ToString() == txtloginpass.Text)
           {
               //DateTime dt = DateTime.Now;
               //HttpCookie ht = new HttpCookie("savedhere");

               //ht.Values.Add("user",txtlogin.Text);
               //ht.Values.Add("lastvisit",dt.ToString());
               //if (chckboxremember.Checked)
               //{
               //    //ht.Expires = dt.AddMinutes(60);
               //}
               //Response.Cookies.Add(ht);

               Session["username"] = txtlogin.Text;
               Session["batch"] = temp[1].ToString();

               DateTime dt = DateTime.Now;
               string query = "update member set time='"+ dt.ToString() +"' where username='" + Session["username"].ToString() + "'";
               ob.ExecuteNonQry(query);
               FormsAuthentication.RedirectFromLoginPage(txtlogin.Text,chckboxremember.Checked);
               //Server.Transfer("MyProfile.aspx");
             
           }
           else
           {
               lblerror.Text = "Wrong Password. Try again.";
           }
       }
       else
       {
           lblerror.Text = "Wrong Username. Try again.";
       }
       temp.Close();
        
    }
}