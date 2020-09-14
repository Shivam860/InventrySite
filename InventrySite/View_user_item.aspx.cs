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
    public partial class View_user_item : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        public void BindData()
        {
            con.Open();
            SqlCommand com = new SqlCommand("procdata", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@action", "display");
            com.Parameters.AddWithValue("@u_id", Session["id"]);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            com.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                ViewState["id"] = dt.Rows[0]["id"].ToString();
                ViewState["image"] = dt.Rows[0]["imgName"].ToString();
                gv_items.DataSource = dt;
                gv_items.DataBind();
            }
        }

        protected void gv_items_RowCommand(object sender, GridViewCommandEventArgs e)
        {


            con.Open();
            SqlCommand com = new SqlCommand("procdata", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@action","delete");
            com.Parameters.AddWithValue("@id", ViewState["id"]);
            File.Delete(Server.MapPath("Image_User" + "//" + ViewState["image"]));
            com.ExecuteNonQuery();
            BindData();
            con.Close(); 
            
        }


    }
}