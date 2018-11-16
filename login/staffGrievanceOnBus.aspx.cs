using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class login_staffGrievanceOnBus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

      
}

    protected void Button1_Click(object sender, EventArgs e)
    {
        string datetime = System.DateTime.Now.ToString();
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.AppSettings["Test"].ToString());
        System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter("INSERT INTO bus_grievence VALUES('" + TextBox1.Text + "','" + datetime + "','" + DropDownList1.SelectedValue + "'," + TextBox2.Text + ")", con);
        System.Data.DataSet ds = new System.Data.DataSet();
        da.Fill(ds);
        MessageBox.Show("Grievence Added Sucessfully");
        TextBox1.Text = "";
        TextBox2.Text = "";
    
    }
}