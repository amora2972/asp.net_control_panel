using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = usernametxt.Text,
            firstname = firstnametxt.Text,
            lastname = lastnametxt.Text,
            email = emailtxt.Text,
            pass = passtxt.Text;


        string connectionString = "Data Source=SEN-OMAR;Initial Catalog='Cars';Integrated Security=True;";
        SqlConnection conObj = new SqlConnection(connectionString);
        string commandText = "select count(*) from users where username='" + username + "'";
        SqlCommand cmdObj = new SqlCommand(commandText, conObj);
        conObj.Open();
        int temp = Convert.ToInt32(cmdObj.ExecuteScalar().ToString());
        conObj.Close();

        if (temp >= 1)
        {
            System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=\"JavaScript\">alert(\"username already exists\")</SCRIPT>");
        }
        else
        {
            commandText = "insert into users values('" + username + "','" + firstname + "','" + lastname + "','" + email + "','" + pass + "')";
            cmdObj = new SqlCommand(commandText, conObj);
            conObj.Open();
            cmdObj.ExecuteNonQuery();
            conObj.Close();
            Response.Redirect("login.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}