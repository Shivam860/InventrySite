using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace InventrySite
{
    public partial class Register_User : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("procRegister",con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@action", "insert");
            com.Parameters.AddWithValue("@u_name",txtName.Text);
            com.Parameters.AddWithValue("@u_email",txtEmail.Text);
            com.Parameters.AddWithValue("@u_gender", rbGender.SelectedValue);
            com.Parameters.AddWithValue("@u_pass", txtPassword.Text);
            com.Parameters.AddWithValue("@u_comment", txtComment.Text);
            int i = com.ExecuteNonQuery();
            con.Close();
            if (i > 0)
            {
                labmsg.Text = "Registration done successfully.";
            }
            else
            {
                labmsg.Text = "Something went wrong";
            }
        }
    }
}