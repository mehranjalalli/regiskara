using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace regiskara
{
    public partial class regis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection sqlConnection1 = new SqlConnection("Data Source=DESKTOP-U53D48H;Initial Catalog=kara;Integrated Security=True");
            sqlConnection1.Open();  

            SqlCommand sqlCommand1 = new SqlCommand("INSERT INTO person1 (name,family,codemeli,city,birthday)values(@name,@family,@codemeli,@city,@birthday) " , sqlConnection1);
            sqlCommand1.Parameters.AddWithValue("@name", TextBox1.Text);
            sqlCommand1.Parameters.AddWithValue("@family",TextBox2.Text);
            sqlCommand1.Parameters.AddWithValue("@codemeli", TextBox3.Text);
            sqlCommand1.Parameters.AddWithValue("@city",  (Select1.Value));
           
            sqlCommand1.Parameters.AddWithValue("@birthday", (date.Value));

            sqlCommand1.ExecuteNonQuery();

            sqlConnection1.Close(); 
            Response.Redirect("showsandedit.aspx");
        }
    }
}