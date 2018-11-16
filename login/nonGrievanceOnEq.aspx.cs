using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class nonGrievanceOnEq : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string datetime = System.DateTime.Now.ToString();
        SqlConnection con = new SqlConnection("Data Source=STEPHEN;Initial Catalog=onlinegrievance;Integrated Security=True");
        SqlDataAdapter da = new SqlDataAdapter("INSERT INTO equip_grievence VALUES('" + TextBox1.Text + "','" + datetime + "','" + DropDownList1.SelectedValue + "','" + TextBox2.Text + "')", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        MessageBox.Show("Grievence Added Sucessfully");
        TextBox1.Text = "";
        TextBox2.Text = "";
            
    }
}