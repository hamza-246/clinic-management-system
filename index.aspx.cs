using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinic_Management_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeator();
                bindRepeater1();
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

        private void bindRepeater1()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from machine", con);
            Repeater2.DataSource = cmd.ExecuteReader();
            Repeater2.DataBind();
            con.Close();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "medicineID")
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
                Response.Redirect("index.aspx");

            }
        }


        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "machineID")
            {
                Response.Redirect("~/Equipmentdetail.aspx?ID=" + e.CommandArgument.ToString());
            }
            else if (e.CommandName == "machinecart")
            {

                if (Session["email"] == null)
                {
                    Response.Redirect("login.aspx");
                }

                int id = int.Parse(e.CommandArgument.ToString());
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into OrderDetails(machineQuantity,machineID,clinicUserID,paid) values (1,'" + id + "', '" + Session["clinicUserId"] + "', 0)", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("index.aspx");
            }
        }

       
    }
}