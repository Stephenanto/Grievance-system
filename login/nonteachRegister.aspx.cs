using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class login_nonteachRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox2.Text;
        string gender = DropDownList1.SelectedValue;
        string department = TextBox8.Text;
        string address = TextBox3.Text;
        string phoneno = TextBox4.Text;
        string email = TextBox5.Text;
        string uname = TextBox6.Text;
        string password = TextBox7.Text;

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["Test"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("INSERT INTO nontech_register VALUES(" + TextBox1.Text + ",'" + name + "','" + gender + "','" + department + "','" + address + "','" + phoneno + "','" + email + "','" + uname + "','" + password + "')", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        MessageBox.Show("Staff Added Sucessfully");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        
    }
}