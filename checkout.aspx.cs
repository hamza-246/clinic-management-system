using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Xml;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinic_Management_System
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["clinicUserId"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else if (!IsPostBack)
            {
                BindRepeator();
                BindRepeator1();
                BindRepeator2();
                Date.Text = DateTime.Now.ToString();
            }
        }

        private void BindRepeator()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT OrderDetails.OrderID,OrderDetails.medicineQuantity as UsermedicineQuantity,OrderDetails.clinicUserID,OrderDetails.paid, OrderDetails.medicineID,medicine.medicineName,medicine.medicinePrice,medicine.medicineQuantity AS TotalmedicineQuantity,medicine.medicineImage,(OrderDetails.medicineQuantity * medicine.medicinePrice) as totalmedicineprice from OrderDetails INNER JOIN medicine ON OrderDetails.medicineID = medicine.medicineID where OrderDetails.clinicUserID = " + Session["clinicUserId"] + " and paid = 0 ", con);
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


        private void BindRepeator2()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from clinic_Register where ClinicID = " + Session["clinicUserId"] + " ", con);
            Repeater3.DataSource = cmd.ExecuteReader();
            Repeater3.DataBind();
            con.Close();
        }

        decimal totalprice = 0;
        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                totalprice += Convert.ToDecimal(DataBinder.Eval(e.Item.DataItem, "totalmedicineprice"));
                gtotal.Text =  totalprice.ToString();
                 
            }
        }

        protected void Repeater2_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                totalprice += Convert.ToDecimal(DataBinder.Eval(e.Item.DataItem, "totalmachineprice"));
                gtotal.Text = totalprice.ToString();
                
            }
        }

        protected void PlaceOrder_Click(object sender, EventArgs e)
        {
           
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                con.Open();
            String query = "UPDATE OrderDetails SET paid = 1 , OrderDate = '" + Date.Text + "' , TotalPrice = " + Convert.ToInt32(gtotal.Text) + ", orderStatus = 'pending' WHERE clinicUserID = " + Session["clinicUserId"] + " and paid = 0";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("success.aspx");

        }
    }
}