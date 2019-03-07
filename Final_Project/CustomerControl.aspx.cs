using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;

public partial class CustomerControl : System.Web.UI.Page
{
    StringBuilder table = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["New"] != null)
        {
            Label2.Text = Session["New"].ToString();

            DataTable dt = new DataTable();



            string connectionString = "Data Source=SEN-OMAR;Initial Catalog='Cars';Integrated Security=True;";
            SqlConnection con = new SqlConnection(connectionString);
            string sqlCommand = "select c.CustomerId, c.customer_name, c.customer_age, c.customer_address,cs.car_name,c.until from customers c,cars cs where c.carId = cs.carId";

            con.Open();
            SqlCommand cmd = new SqlCommand(sqlCommand, con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            cmd.CommandType = CommandType.Text;
            sda.Fill(dt);

            string htmlTable = "<div class=\"container-fluid\"> <table class=\"table\"><thead class=\"thead-dark\"> <tr>";
            foreach (DataColumn column in dt.Columns)
            {
                htmlTable += "<th>" + column.ColumnName + "</th>";
            }

            htmlTable += "</tr></thead>";
            foreach (DataRow dr in dt.Rows)
            {
                string id = dr["CustomerId"].ToString();
                string name = dr["customer_name"].ToString();
                string age = dr["customer_age"].ToString();
                string address = dr["customer_address"].ToString();
                string rentedCar = dr["car_name"].ToString();
                string until = "";
                if(dr["until"] != DBNull.Value)
                    until = Convert.ToDateTime(dr["until"]).ToString("dd/MM/yyyy");
                htmlTable += "<tr><td>" + id + "</td><td>" + name + "</td><td>" + age + "</td><td>" + address + "</td><td>" + rentedCar + "</td><td>" + until + "</td></tr>";
            }
            htmlTable += "</table></div>";
            Label1.Text = htmlTable;
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        
    }

    protected void SignOutBtn_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Server.Transfer("Login.aspx", true);
    }

    protected void deleteRow(object sender, EventArgs e)
    {
        string connectionString = "Data Source=SEN-OMAR;Initial Catalog='Cars';Integrated Security=True;";
        SqlConnection myConnection = new SqlConnection(connectionString);
        myConnection.Open();
        string QueryString = "delete from customers where CustomerId ='" + adminIdInput.Text + "'";
        SqlCommand com = new SqlCommand(QueryString, myConnection);
        com.ExecuteReader();
        myConnection.Close();
        Response.Redirect("CustomerControl.aspx");
    }
}