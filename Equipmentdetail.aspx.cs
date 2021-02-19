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
    public partial class Equipmentdetail : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from machine where machineID = '" + Request.QueryString["id".ToString()] + "' ", con); ;
            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();
            con.Close();
        }

        protected void Addtocart_Click(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }
            var btn = (Button)sender;
            var item = (RepeaterItem)btn.NamingContainer;
            //var ddl = (DropDownList)item.FindControl("ddlWorkflowMembers");

            int _MachineQuantity = int.Parse((item.FindControl("machinequantity") as TextBox).Text);


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into OrderDetails(machineQuantity,machineID,clinicUserID,paid) values ('" + _MachineQuantity + "','" + Request.QueryString["id".ToString()] + "', '" + Session["clinicUserId"] + "', 0)", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Equipmentdetail.aspx");
        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //Reference the Repeater Item.
                RepeaterItem item = e.Item;

                //Reference the Controls.
                string _MedicineQuantity = (item.FindControl("machinequantity") as TextBox).Text;

            }
        }
    }
}