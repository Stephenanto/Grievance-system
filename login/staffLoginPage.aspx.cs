using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class login_staffLoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["Test"].ToString());
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from staff_register where username = @username and password = @password", con);
                cmd.Parameters.Add("@username", SqlDbType.VarChar, 10).Value = txtLname.Text;
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 10).Value = txtPwd.Text;

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session.Add("staffid", dr["staffid"]);
                    Session.Add("name", dr["name"]);


                    dr.Close();


                    Response.Redirect("staffHomePage.aspx");
                }
                else
                {
                    MessageBox.Show("Invalid Login!");
                    dr.Close();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error --> " + ex.Message);
            }
            finally
            {
                con.Close();
            }
        }


    
    
}