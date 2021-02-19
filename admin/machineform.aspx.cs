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
    public partial class machineform : System.Web.UI.Page
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
                string query = "insert into machine values(@machineName," + machineprice.Text + "," + machinequantity.Text + ",@machineImage,@machineShortdescription)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@machineName", machinename.Text);
                cmd.Parameters.AddWithValue("@machineImage", "../images/" + imgfile);
                cmd.Parameters.AddWithValue("@machineShortdescription", Description.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                alert.Attributes.Add("class", "alert alert-success alert-dismissible fade show");
                machinename.Text = "";
                machineprice.Text = "";
                machinequantity.Text = "";
                Description.Text = "";

            }
        }
    }
}