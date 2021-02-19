using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clinic_management_system.admin
{
    public partial class admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindRepeator();
                bindRepeater1();
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            string query = "select count(*) from clinic_Register";
            string query2 = "select count(*) from medicine";
            string query3 = "select count(*) from machine";
            string query5 = "select count(*) from OrderDetails";
            string query4 = "select count(*) from UserFeedback";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlCommand cmd3 = new SqlCommand(query4, con);
            SqlCommand cmd5 = new SqlCommand(query5,con);
            int a = int.Parse(cmd.ExecuteScalar().ToString());
            int d = int.Parse(cmd3.ExecuteScalar().ToString());
            int order = int.Parse(cmd5.ExecuteScalar().ToString());
            Label1.Text = a.ToString();
            Label3.Text = d.ToString();
            orderCount.Text = order.ToString();

            SqlCommand cmd1 = new SqlCommand(query2, con);
            SqlCommand cmd2 = new SqlCommand(query3, con);
            
            int b = int.Parse(cmd1.ExecuteScalar().ToString());
            int c = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
            //int d = int.Parse(cmd3.ExecuteScalar().ToString());
            //int d = Convert.ToInt32(cmd3.ExecuteScalar().ToString());

            int total = b + c;

            Label2.Text = total.ToString();

            con.Close();


        }

        private void BindRepeator()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select  top 2 * from medicine order by medicineID desc", con);
            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();
            con.Close();
        }

        private void bindRepeater1()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select top 1 * from machine order by machineID desc", con);
            Repeater2.DataSource = cmd.ExecuteReader();
            Repeater2.DataBind();
            con.Close();
        }
    }
}