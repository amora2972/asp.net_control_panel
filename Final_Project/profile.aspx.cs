using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class profile : System.Web.UI.Page
{
    string name,
        fname,
        lname,
        em;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["New"] != null)
            {
                Label2.Text = Session["New"].ToString();
                string user = Session["New"].ToString();
                string connectionString = "Data Source=SEN-OMAR;Initial Catalog='Cars';Integrated Security=True;";
                SqlConnection con = new SqlConnection(connectionString);
                string sqlCommand = "select * from users where username='" + user + "'";
                SqlCommand com = new SqlCommand(sqlCommand, con);
                con.Open();
                SqlDataReader myReader = com.ExecuteReader();
                myReader.Read();
                TextBox1.Text = myReader["username"].ToString();
                TextBox2.Text = myReader["firstname"].ToString();
                TextBox3.Text = myReader["lastname"].ToString();
                TextBox4.Text = myReader["email"].ToString();
                con.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        
    }

    protected void updateUser(object sender, EventArgs e)
    {
        name = TextBox1.Text;
        fname = TextBox2.Text;
        lname = TextBox3.Text;
        em = TextBox4.Text;
        string connectionString = "Data Source=SEN-OMAR;Initial Catalog='Cars';Integrated Security=True;";
        SqlConnection con = new SqlConnection(connectionString);
        string sqlCommand = "update users set username='" + name + "',firstname='" + fname+"',lastname='" + lname + "',email='"+em+"'where username='"+Session["New"].ToString() + "'";
        SqlCommand com = new SqlCommand(sqlCommand, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
    protected void SignOutBtn_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Server.Transfer("Login.aspx", true);
    }
}