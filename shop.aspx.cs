using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clinic_management_system
{
    public partial class shop : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeator();
            }
        }

        private void BindRepeator()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from medicine", con);
                Repeater1.DataSource = cmd.ExecuteReader();
                Repeater1.DataBind();
            con.Close();
            }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName == "medicineID")
            {
                Response.Redirect("~/shop-detail.aspx?id=" + e.CommandArgument.ToString());
            }
            else if (e.CommandName == "medicinecart")
            {

                if (Session["email"] == null)
                {
                    Response.Redirect("login.aspx");
                }

                int id = int.Parse(e.CommandArgument.ToString());
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into OrderDetails(medicineQuantity,medicineID,clinicUserID,paid) values (1,'" + id + "', '" + Session["clinicUserId"] + "', 0)", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("shop.aspx");
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from medicine where medicineName like '%" + TextBox1.Text + "%'", con);
            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();
            con.Close();
        }
    }
    }
    