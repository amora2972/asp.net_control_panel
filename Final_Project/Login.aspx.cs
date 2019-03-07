using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        string username = usernametxt.Text,
            pass = passtxt.Text;

        string connectionString = "Data Source=SEN-OMAR;Initial Catalog='Cars';Integrated Security=True;";
        SqlConnection conObj = new SqlConnection(connectionString);
        conObj.Open();
        string checkuser = "select count(*) from users where username='" + username + "'";
        SqlCommand com = new SqlCommand(checkuser, conObj);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conObj.Close();
        if(temp == 1)
        {
            conObj.Open();
            string checkPasswordQuery = "select password from users where username='"+username+"'";
            SqlCommand passquery = new SqlCommand(checkPasswordQuery, conObj);
            string password = passquery.ExecuteScalar().ToString();
            if(password == pass)
            {
                Session["New"] = username;
                Response.Redirect("CustomerControl.aspx");
            }
            else
            {
                System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=\"JavaScript\">alert(\"false credentials\")</SCRIPT>");
            }
        }
        else
        {
            System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=\"JavaScript\">alert(\"false credentials\")</SCRIPT>");
        }
    }

    protected void signupBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}