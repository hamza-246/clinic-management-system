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
    public partial class masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Label1.Text = Session["admin"].ToString();
                admin.Attributes.Add("class", "btn signinbtn login-box d-flex justify-content-center align-item-center");
                login.Attributes.Add("class", "btn signinbtn login-box d-none");

            }
            else if (Session["email"] != null)
            {
                Label1.Text = Session["email"].ToString();
                login.Attributes.Add("class", "btn signinbtn login-box d-none");
                logout.Attributes.Add("class", "btn signinbtn login-box");
                logout.Attributes.Add("OnClick", "logout_Click");
            }
           

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select COUNT (*) from OrderDetails where clinicUserID = '"+ Session["clinicUserId"] +"' and paid = 0 ", con);
            int cartCounter = int.Parse(cmd.ExecuteScalar().ToString());
            cartLabel.Text = cartCounter.ToString();
            con.Close();
           
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["email"] = null;
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if(Session["clinicUserId"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Redirect("cart.aspx");
            }
        }
    }
}