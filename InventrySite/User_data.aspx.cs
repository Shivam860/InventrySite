using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace InventrySite
{
    public partial class User_data : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            string FN = "";
            FN = DateTime.Now.Ticks.ToString()+Path.GetFileName(img.PostedFile.FileName);
            img.SaveAs(Server.MapPath("Image_User" + "//" + FN));

            con.Open();
            SqlCommand com = new SqlCommand("procdata", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@action", "insert");
            com.Parameters.AddWithValue("@u_id", Session["id"]);
            com.Parameters.AddWithValue("@name", txtname.Text);
            com.Parameters.AddWithValue("@comment", txtcomment.Text);
            com.Parameters.AddWithValue("@imgName", FN);
            int i = com.ExecuteNonQuery();
            con.Close();
            if (i > 0)
            {
                labData.Text = "Successfully Added";
            }
            else
            {
                labData.Text = "Something went wrong";
            }
        }
    }
}