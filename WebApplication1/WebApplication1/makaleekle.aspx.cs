using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace WebApplication1
{
    public partial class hakkinda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
              string str= ConfigurationManager.ConnectionStrings[1].ConnectionString;

              SqlConnection con = new SqlConnection(str);
              con.Open();
            SqlCommand cmd = new SqlCommand("insert into makaleler (makale_id,makale_baslik,makale_icerik) values(@p1,@p2,@p3)",con);

              cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
              cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
              cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
              cmd.ExecuteNonQuery();
              con.Close();
              Response.Redirect("anasayfa.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["makale_id"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["makale_baslik"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["makale_icerik"].DefaultValue = TextBox3.Text;
            SqlDataSource1.Insert();
        }
    }
}