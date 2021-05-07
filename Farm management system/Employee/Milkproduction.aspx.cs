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
    public partial class Milkproduction : System.Web.UI.Page
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


        public void AddMilkproduction()
        {



            SqlCommand cmd = new SqlCommand(" insert into Production (Date,Cowname,AMmilk,Noonmilk,PMmilk,Total) values (@Date,@Cowname,@AMmilk,@Noonmilk,@PMmilk,@Total)", con);



            cmd.Parameters.AddWithValue("@Date", txt_date.Text.Trim());
            cmd.Parameters.AddWithValue("@Cowname", txt_cowname.Text.Trim());
            cmd.Parameters.AddWithValue("@AMmilk", txt_ammilk.Text.Trim());
            cmd.Parameters.AddWithValue("@Noonmilk", Txt_noonmilk.Text.Trim());
            cmd.Parameters.AddWithValue("@PMmilk", txt_PmMilk.Text.Trim());
            cmd.Parameters.AddWithValue("@Total", txt_totalmilk.Text.Trim());
            


            cmd.ExecuteNonQuery();
            con.Close();
            msg.Style.Add("display", "block");

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            AddMilkproduction();
        }
      }
  }
