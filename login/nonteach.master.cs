﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_nonteach : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "  .. Register No:" + Session["nontechid"].ToString() + " Welcome To: " + Session["name"].ToString();
    }
}
