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
    public partial class orderupdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeator();
                BindRepeator1();
                BindRepeator2();
            }
        }

        private void BindRepeator()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT OrderDetails.OrderID,OrderDetails.medicineQuantity as UsermedicineQuantity,OrderDetails.clinicUserID,OrderDetails.paid, OrderDetails.medicineID,OrderDetails.TotalPrice,OrderDetails.OrderDate,OrderDetails.orderStatus,medicine.medicineName,medicine.medicinePrice,medicine.medicineQuantity AS TotalmedicineQuantity,medicine.medicineImage,(OrderDetails.medicineQuantity * medicine.medicinePrice) as totalmedicineprice from OrderDetails INNER JOIN medicine ON OrderDetails.medicineID = medicine.medicineID where OrderDetails.clinicUserID = '" + Request.QueryString["id".ToString()] + "' and paid = 1 ", con);
            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();
            con.Close();
        }

        private void BindRepeator1()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT OrderDetails.OrderID,OrderDetails.machineQuantity as UsermachineQuantity,OrderDetails.clinicUserID,OrderDetails.paid,OrderDetails.machineID, OrderDetails.TotalPrice,OrderDetails.OrderDate,OrderDetails.orderStatus,machine.machineName,machine.machinePrice,machine.machineQuantity AS TotalmachineQuantity,machine.machineImage,(OrderDetails.machineQuantity * machine.machinePrice) as totalmachineprice from OrderDetails INNER JOIN machine ON OrderDetails.machineID = machine.machineID where OrderDetails.clinicUserID = '" + Request.QueryString["id".ToString()] + "' and paid = 1 ", con);
            Repeater2.DataSource = cmd.ExecuteReader();
            Repeater2.DataBind();
            con.Close();
        }

        private void BindRepeator2()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from clinic_Register where ClinicID = '" + Request.QueryString["id".ToString()] + "' ", con);
            
            Repeater3.DataSource = cmd.ExecuteReader();
            Repeater3.DataBind();
            con.Close();
        }

        protected void update_Click(object sender, EventArgs e)
        {
            Response.Redirect("updatestatus.aspx");
        }
    }
}