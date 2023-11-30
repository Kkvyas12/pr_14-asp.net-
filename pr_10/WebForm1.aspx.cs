using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pr_10
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\vyas\source\repos\pr_10\pr_10\App_Data\pr_10_database.mdf;Integrated Security=True"))
            {
                string query = "INSERT INTO [dbo].[pr10] (name, email, gender, dob, city, hobby) VALUES " +
                    "('" + tbname.Text + "','" + tbemail.Text + "','" + rblgender.SelectedValue + "','" +
                    tbdob.Text + "','" + ddlcity.SelectedValue + "','" + cblhobby.SelectedValue + "')";

                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            GridView1.DataBind();
        }
    }
}