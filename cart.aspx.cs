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
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else if (!IsPostBack)
            {
                BindRepeator();
                BindRepeator1();
            }
        }


        private void BindRepeator()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT OrderDetails.OrderID,OrderDetails.medicineQuantity as UsermedicineQuantity,OrderDetails.clinicUserID,OrderDetails.paid, OrderDetails.medicineID,medicine.medicineName,medicine.medicinePrice,medicine.medicineQuantity AS TotalmedicineQuantity,medicine.medicineImage,(OrderDetails.medicineQuantity * medicine.medicinePrice) as totalmedicineprice from OrderDetails INNER JOIN medicine ON OrderDetails.medicineID = medicine.medicineID where OrderDetails.clinicUserID = "+ Session["clinicUserId"] + " and paid = 0 ", con);
            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();
            con.Close();
        }

        private void BindRepeator1()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT OrderDetails.OrderID,OrderDetails.machineQuantity as UsermachineQuantity,OrderDetails.clinicUserID,OrderDetails.paid,OrderDetails.machineID,machine.machineName,machine.machinePrice,machine.machineQuantity AS TotalmachineQuantity,machine.machineImage,(OrderDetails.machineQuantity * machine.machinePrice) as totalmachineprice from OrderDetails INNER JOIN machine ON OrderDetails.machineID = machine.machineID where OrderDetails.clinicUserID = " + Session["clinicUserId"] + " and paid = 0 ", con);
            Repeater2.DataSource = cmd.ExecuteReader();
            Repeater2.DataBind();
            con.Close();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "OrderID")
            {
                int id = int.Parse(e.CommandArgument.ToString());
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from OrderDetails where OrderID = '"+ id +"' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("cart.aspx");
            }
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "OrderID")
            {
                int id = int.Parse(e.CommandArgument.ToString());
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from OrderDetails where OrderID = '" + id + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("cart.aspx");
            }
        }

        decimal totalprice = 0;
        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
               totalprice += Convert.ToDecimal(DataBinder.Eval(e.Item.DataItem, "totalmedicineprice"));
                subTotal.Text = totalprice.ToString();
                gTotal.Text = "Rs " + subTotal.Text;
            }
        }

        protected void Repeater2_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                totalprice += Convert.ToDecimal(DataBinder.Eval(e.Item.DataItem, "totalmachineprice"));
                subTotal.Text = totalprice.ToString();
                gTotal.Text = "Rs " + subTotal.Text;
            }
        }

        protected void Checkout_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count (*) from OrderDetails where clinicUserID = " + Session["clinicUserId"] + " and paid = 0 ", con);
            
            int a = Convert.ToInt32(cmd.ExecuteScalar().ToString());
           
            if(a > 0)
            {
                con.Close();
                Response.Redirect("checkout.aspx");
            }
            else
            {
                alert.Attributes.Add("class" , "alert alert-danger alert-dismissible fade show");
            }
        }
    }
}