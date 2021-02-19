using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace clinic_management_system
{
    public partial class register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                con.Open();
                string query = "insert into clinic_Register values(@clinicName,@clinicEmail,@clinicAddress,@clinicPassword,@clinicConfirmPass)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@clinicName", name.Text);
                cmd.Parameters.AddWithValue("@clinicEmail", email.Text);
                cmd.Parameters.AddWithValue("@clinicAddress", address.Text);
                cmd.Parameters.AddWithValue("@clinicPassword", password.Text);
                cmd.Parameters.AddWithValue("@clinicConfirmPass", Confirmpassword.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                alert.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                name.Text = "";
                email.Text = "";
                address.Text = "";
                password.Text = "";
                Confirmpassword.Text = "";
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert(ex)</Script>");
            }
        }
    }
}