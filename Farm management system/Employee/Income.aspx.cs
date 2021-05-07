using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Globalization;

namespace Farm_management_system.Employee
{
    public partial class Income : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J3DHBNP\SQLEXPRESS;Initial Catalog=Farmmanagmentsystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {

                con.Close();

            }
            con.Open();
        }

        public void Addincome()
        {



            SqlCommand cmd = new SqlCommand(" insert into income (Date,Type,Amount) values (@Date,@Type,@Amount)", con);

            cmd.Parameters.AddWithValue("@Date", txt_date.Text.Trim());
            cmd.Parameters.AddWithValue("@Type", DropDownList1.SelectedItem.ToString());

            cmd.Parameters.AddWithValue("@Amount", txt_amount.Text.Trim());



            cmd.ExecuteNonQuery();
            con.Close();
            msg.Style.Add("display", "block");

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Addincome();
        }
    }
}