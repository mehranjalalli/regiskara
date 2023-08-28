using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace regiskara
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var code = Request.QueryString["n"];

            
            SqlConnection rsh = new SqlConnection("Data Source=DESKTOP-U53D48H;Initial Catalog=kara;Integrated Security=True");
            rsh.Open();    
            SqlCommand adapter = new SqlCommand("UPDATE       person1 SET  name = @name, family = @family, city = @city, birthday = @birthday  WHERE codemeli="+code+" ",rsh);
            adapter.Parameters.AddWithValue("@name", TextBox1.Text);
            adapter.Parameters.AddWithValue("@family", TextBox2.Text);
            adapter.Parameters.AddWithValue("@codemeli", TextBox3.Text);
            adapter.Parameters.AddWithValue("@city", (Select2.Value));

            adapter.Parameters.AddWithValue("@birthday", (date.Value));

            adapter.ExecuteNonQuery();  
            rsh.Close();
            Response.Redirect("showsandedit.aspx");
        }
    }
}