using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clinic_management_system.admin
{
    public partial class medicineform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (productimage.PostedFile != null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);

                string imgfile = Path.GetFileName(productimage.PostedFile.FileName);
                string savePath = Server.MapPath("../images/" + imgfile);
                productimage.PostedFile.SaveAs(savePath);
                con.Open();
                string query = "insert into medicine values(@medicineName,"+ medicineprice.Text +","+ medicinequantity.Text +",@medicineImage,@medicineShortdescription)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@medicineName", medicinename.Text);
                cmd.Parameters.AddWithValue("@medicineImage", "../images/" + imgfile);
                cmd.Parameters.AddWithValue("@medicineShortdescription", Description.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                alert.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                medicinename.Text = "";
                medicineprice.Text = "";
                medicinequantity.Text = "";
                Description.Text = "";

            }
        }
    }
}