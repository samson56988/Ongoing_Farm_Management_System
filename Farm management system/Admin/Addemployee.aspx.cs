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

namespace Farm_management_system.Admin
{
    public partial class Addemployee : System.Web.UI.Page
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

        protected void btnadd_Click(object sender, EventArgs e)
        {
        }
        
        
        public void Addnewstaff()
        {



            SqlCommand cmd = new SqlCommand(" insert into Staff (DOB,Phone,Address,Username,Password,Gender) values (@DOB,@Phone,@Address,@Username,@Password,@Gender)", con);

            cmd.Parameters.AddWithValue("@DOB", txt_dob.Text.Trim());
            cmd.Parameters.AddWithValue("@Phone", txt_phone.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", txt_address.Text.Trim());
            cmd.Parameters.AddWithValue("@Username", txt_username.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txt_password.Text.Trim());
            cmd.Parameters.AddWithValue("@Gender",Genderlist.SelectedItem.ToString());
           

            cmd.ExecuteNonQuery();
            con.Close();
            msg.Style.Add("display", "block");

        }

        protected void btnadd_Click1(object sender, EventArgs e)
        {
            Addnewstaff();
        }
        }

    }
