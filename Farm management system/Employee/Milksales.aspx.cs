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
    public partial class Milksales : System.Web.UI.Page
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

        public void AddMilkSales()
        {



            SqlCommand cmd = new SqlCommand(" insert into Milksales (Date,Price,Clientname,ClientPhone,Quantity,Total) values (@Date,@Price,@Clientname,@ClientPhone,@Quantity,@Total)", con);



            cmd.Parameters.AddWithValue("@Date", txt_date.Text.Trim());

            cmd.Parameters.AddWithValue("@Price", txt_price.Text.Trim());

            cmd.Parameters.AddWithValue("@Clientname", txt_clientname.Text.Trim());
            cmd.Parameters.AddWithValue("@ClientPhone", txt_Phone.Text.Trim());
            cmd.Parameters.AddWithValue("@Quantity", txt_quantity.Text.Trim());
            cmd.Parameters.AddWithValue("@Total", txt_total.Text.Trim());
          



            cmd.ExecuteNonQuery();
            con.Close();
            msg.Style.Add("display", "block");

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            AddMilkSales();
        }
    }
}