using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Photos : System.Web.UI.Page
{
    Libraary ob = new Libraary();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPostit_Click(object sender, EventArgs e)
    {
        string basepath;
        string path = Server.MapPath("AllPhotos");
        if (UploadPhoto.HasFile)
        {
            DateTime dt = DateTime.Now;
            basepath = path + "/" + UploadPhoto.FileName;
            UploadPhoto.SaveAs(basepath);
            Response.Write(basepath);
            string query = "insert into PhotoAlbum values('" + Session["username"] + "','~/AllPhotos/"+ UploadPhoto.FileName +"','" + dt.ToString() + "','"+Txtcaption.Text+"')";
            ob.ExecuteNonQry(query);

        }

       
    }
}