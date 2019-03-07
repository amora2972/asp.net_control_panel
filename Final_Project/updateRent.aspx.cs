using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class updateRent : System.Web.UI.Page
{
    public string id;
    public string name;
    public string age;
    public string address;
    public string carId;
    public string until;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
            Response.Redirect("Login.aspx");
        Label2.Text = Session["New"].ToString();
        TextBox1.ReadOnly = true;
    }

    protected void getData(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string connectionString = "Data Source=SEN-OMAR;Initial Catalog='Cars';Integrated Security=True;";


            SqlConnection myConnection = new SqlConnection(connectionString);
            myConnection.Open();
            string QueryString = "select count(*) from customers where CustomerId='" + adminIdInput.Text + "'";
            SqlCommand com = new SqlCommand(QueryString, myConnection);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp < 1)
            {
                System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=\"JavaScript\">alert(\"Customer is not existed\")</SCRIPT>");
            }
            else
            {
                DataTable dt = new DataTable();
                SqlDataReader myReader = null;
                QueryString = "select * from customers where CustomerId='" + adminIdInput.Text + "'";
                com = new SqlCommand(QueryString, myConnection);
                myReader = com.ExecuteReader();
                myReader.Read();
                TextBox1.Text = (myReader["CustomerId"].ToString());
                TextBox2.Text = (myReader["customer_name"].ToString());
                TextBox3.Text = (myReader["customer_age"].ToString());
                TextBox4.Text = (myReader["customer_address"].ToString());
                TextBox5.Text = (myReader["carId"].ToString());
            }
            myConnection.Close();
        }   
    }
    protected void updateData(object sender, EventArgs e)
    {
        until = Calendar1.SelectedDate.ToShortDateString();
        id = TextBox1.Text;
        name = TextBox2.Text;
        age = TextBox3.Text;
        address = TextBox4.Text;
        carId = TextBox5.Text;
        string connectionString = "Data Source=SEN-OMAR;Initial Catalog='Cars';Integrated Security=True;";
        SqlConnection myConnection = new SqlConnection(connectionString);
        string QueryString = "update customers set customer_name='" + 
            name + "' ,customer_age='" + age + "',customer_address='" + address + "', carId='" + carId + "',until='" + until +"' where CustomerId='" + id +"'";
        SqlCommand com = new SqlCommand(QueryString, myConnection);
        myConnection.Open();
        com.ExecuteNonQuery();
        myConnection.Close();
        Response.Redirect("CustomerControl.aspx");
    }
    protected void SignOutBtn_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Server.Transfer("Login.aspx", true);
    }
}