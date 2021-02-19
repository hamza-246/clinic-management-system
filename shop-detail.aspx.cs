using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinic_Management_System
{
    public partial class shopdetail : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from medicine where medicineID = '" + Request.QueryString["id".ToString()] + "' ", con); ;
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

            int _MedicineQuantity = int.Parse((item.FindControl("Quantity") as TextBox).Text);


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into OrderDetails(medicineQuantity,medicineID,clinicUserID,paid) values ('"+ _MedicineQuantity +"','" + Request.QueryString["id".ToString()] + "', '"+ Session["clinicUserId"] +"', 0)" , con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("shop-detail.aspx");

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //if (e.CommandName == "medicineID")
            //{
            //    Response.Redirect("~/shop-detail.aspx?id=" + e.CommandArgument.ToString());
            //}
        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //Reference the Repeater Item.
                RepeaterItem item = e.Item;

                //Reference the Controls.
                string _MedicineQuantity = (item.FindControl("Quantity") as TextBox).Text;
               
            }
        }
    }
}