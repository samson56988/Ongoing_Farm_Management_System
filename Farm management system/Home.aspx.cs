using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farm_management_system
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                Response.Redirect("Employee/Login.aspx");

            }

        }

        protected void Adminlog_Click(object sender, EventArgs e)
        {
            {
                Response.Redirect("Admin/AdminLogin.aspx");

            }

        }
    }
}