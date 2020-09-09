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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (ddlusertype.SelectedValue == "1")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("procRegister", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "login");
                cmd.Parameters.AddWithValue("@u_email", txtemail.Text);
                cmd.Parameters.AddWithValue("@u_pass", txtpassword.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                if (dt.Rows.Count > 0)
                {
                    Session["id"] = dt.Rows[0]["u_id"].ToString();
                    Response.Redirect("Home_User.aspx");
                }
                else
                {
                    lblmsg.Text = "login not OK";
                }
            }
            else if (ddlusertype.SelectedValue == "2")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("adminproc", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "login");
                cmd.Parameters.AddWithValue("@a_email",txtemail.Text );
                cmd.Parameters.AddWithValue("@a_password", txtpassword.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                if (dt.Rows.Count > 0)
                {
                    Session["admin"] = dt.Rows[0]["a_name"].ToString();
                    Response.Redirect("Home_Admin.aspx");
                }
                else
                {
                    lblmsg.Text = "login not OK";
                }
            }
        }
    }
}