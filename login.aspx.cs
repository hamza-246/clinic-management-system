using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clinic_management_system
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Response.Redirect("index.aspx");
            }
            else if (Session["admin"] != null)
            {
                Response.Redirect("admin/admin.aspx");
            }
        }


        protected void clinic_Click2(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            string query = "select count(*) from clinic_Register where clinicEmail = '" + email.Text + "' and clinicPassword = '" + password.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int a = int.Parse(cmd.ExecuteScalar().ToString());
            


            if (email.Text == "admin@gmail.com" & password.Text == "123")
            {
                Session["admin"] = email.Text;
                Response.Redirect("admin/admin.aspx");
            }
            else if (a == 1)
            {
                Session["email"] = email.Text;

                cmd.CommandText = "select * from clinic_Register where clinicEmail =  '" + email.Text + "' ";
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                int id = int.Parse(ds.Tables[0].Rows[0][0].ToString());
                Session["clinicUserId"] = id;


                con.Close();
                Response.Redirect("index.aspx");
            }
            else
            {
                alert.Attributes.Add("class", "alert alert-danger alert-dismissible fade show");
            }
            email.Text = "";
            password.Text = "";
        }

        
    }
}