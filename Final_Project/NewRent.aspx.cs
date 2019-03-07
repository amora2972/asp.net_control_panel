using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class NewRent : System.Web.UI.Page
{

    public string id;
    public string name;
    public string age;
    public string address;
    public string carId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
            Response.Redirect("Login.aspx");
        Label2.Text = Session["New"].ToString();
        if (!IsPostBack)
        {
            string connectionString = "Data Source=SEN-OMAR;Initial Catalog='Cars';Integrated Security=True;";
            string QueryString = "select * from cars";

            SqlConnection myConnection = new SqlConnection(connectionString);
            SqlDataAdapter myCommand = new SqlDataAdapter(QueryString, myConnection);
            DataSet ds = new DataSet();
            myCommand.Fill(ds, "Cars");

            carsSelect.DataSource = ds;
            carsSelect.DataTextField = "car_name";
            carsSelect.DataValueField = "carId";
            carsSelect.DataBind();
        }
    }

    protected void AddingBtn_Click(object sender, EventArgs e)
    {   
        string until = Calendar1.SelectedDate.ToShortDateString();

        id = customeridtxt.Text;
        name = customernametxt.Text;
        age = customerage.Text;
        address = customeraddress.Text;
        carId = Request.Form["carsSelect"];
        SqlConnection conObj = new SqlConnection("Data Source=SEN-OMAR;Initial Catalog='Cars';Integrated Security=True;");
        string commandText = "select count(*) from customers where CustomerId='" + id + "'";
        SqlCommand cmdObj = new SqlCommand(commandText, conObj);
        conObj.Open();
        int temp = Convert.ToInt32(cmdObj.ExecuteScalar().ToString());
        conObj.Close();

        if(temp >= 1)
        {
            System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=\"JavaScript\">alert(\"rent is already existed\")</SCRIPT>");
        }
        else
        {
            commandText = "insert into customers  values('" + id + "','" + name + "','" + age + "','" + address + "','" + carId + "','" + until + "')";
            cmdObj = new SqlCommand(commandText, conObj);
            conObj.Open();
            cmdObj.ExecuteNonQuery();
            conObj.Close();
            Response.Redirect("CustomerControl.aspx");
        }
    }

    protected void SignOutBtn_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Server.Transfer("Login.aspx", true);
    }
}