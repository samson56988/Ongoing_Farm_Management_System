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
    public partial class Cowbreeding : System.Web.UI.Page
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

        public void Addnewbreading()
        {



            SqlCommand cmd = new SqlCommand(" insert into Bread (Heatdate,Breaddate,Pregnancydate,Expectedcalvedate,Datecalved,Cowname) values (@Heatdate,@Breaddate,@Pregnancydate,@Expectedcalvedate,@Datecalved,@Cowname)", con);

            cmd.Parameters.AddWithValue("@Heatdate", heattxt_date.Text.Trim());
            cmd.Parameters.AddWithValue("@Breaddate", txt_breaddate.Text.Trim());
            cmd.Parameters.AddWithValue("@Pregnancydate", txt_datepregnant.Text.Trim());
            cmd.Parameters.AddWithValue("@Expectedcalvedate", Txt_expectedcalve.Text.Trim());
            cmd.Parameters.AddWithValue("@Datecalved", Text_datecalve.Text.Trim());
          
            cmd.Parameters.AddWithValue("@Cowname", txt_cowname.Text.Trim());


            cmd.ExecuteNonQuery();
            con.Close();
            msg.Style.Add("display", "block");

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Addnewbreading();
        }
    }
}