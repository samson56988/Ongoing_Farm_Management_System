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
    public partial class Addcow : System.Web.UI.Page
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


        public void Addnewcow()
        {



            SqlCommand cmd = new SqlCommand(" insert into Cows (Cowname,Eartag,Color,Breed,Age,Gender,Pasture) values (@Cowname,@Eartag,@Color,@Breed,@Age,@Gender,@Pasture)", con);

            cmd.Parameters.AddWithValue("@Cowname", txt_name.Text.Trim());
            cmd.Parameters.AddWithValue("@Eartag", txt_eartag.Text.Trim());
            cmd.Parameters.AddWithValue("@Color", txt_color.Text.Trim());
            cmd.Parameters.AddWithValue("@Breed", txt_breed.Text.Trim());
            cmd.Parameters.AddWithValue("@Age", txt_age.Text.Trim());
            cmd.Parameters.AddWithValue("@Gender", Genderlist.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Pasture", txt_pasture.Text.Trim());


            cmd.ExecuteNonQuery();
            con.Close();
            msg.Style.Add("display", "block");

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Addnewcow();
        }

    }
}