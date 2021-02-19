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
    public partial class contact_us : System.Web.UI.Page
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
                string query = "insert into UserFeedback values(@userName,@useremail,@userSubject,@userMessege)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@userName", name.Text);
                cmd.Parameters.AddWithValue("@useremail", email.Text);
                cmd.Parameters.AddWithValue("@userSubject", subject.Text);
                cmd.Parameters.AddWithValue("@userMessege", message.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                alert.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                name.Text = " ";
                email.Text = " ";
                subject.Text = " ";
                message.Text = " ";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(ex)</Script>");
            }
        }
    
}
}