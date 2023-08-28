using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace regiskara
{
    public partial class showsandedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-U53D48H;Initial Catalog=kara;Integrated Security=True");
            conn.Open();

            SqlDataAdapter adapter = new SqlDataAdapter("SELECT  codemeli, name, family, birthday, city FROM person1", conn);

            DataTable table = new DataTable();

            adapter.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
            conn.Close();





        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection("Data Source=DESKTOP-U53D48H;Initial Catalog=kara;Integrated Security=True");
                con.Open();
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT         name, family, birthday, city FROM person1 WHERE codemeli='" +Convert.ToInt32( TextBox1.Text) + "'", con);

            DataTable table = new DataTable();

            cmd.Fill(table);

            GridView1.DataSource= table;
            GridView1.DataBind();
            
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("edit.aspx?n="+TextBox1.Text+" ");


        }

        
    }
}