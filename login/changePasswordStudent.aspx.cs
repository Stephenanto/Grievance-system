using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Configuration;

public partial class login_changePasswordStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // get connection
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Test"].ToString());
        try{
            con.Open();
            SqlCommand cmd = new SqlCommand("update student_register set password = @password where regno = @regno and password = @oldpwd", con);
            cmd.Parameters.Add("@password", SqlDbType.VarChar,10).Value  =TextBox3.Text;
            cmd.Parameters.Add("@regno", SqlDbType.Int).Value  = Int32.Parse( Session["regno"].ToString());
            cmd.Parameters.Add("@oldpwd", SqlDbType.VarChar,10).Value  = TextBox1.Text;
            
            if ( cmd.ExecuteNonQuery() > 0 )
               MessageBox.Show( "Password has been changed succesfully!");
            else
                MessageBox.Show("Sorry! Could not change password!");
              
            
        }
        catch(Exception ex)
        {
          MessageBox.Show("Error --> " + ex.Message );
        }
        finally{
            con.Close();
        }
    } 
    }
