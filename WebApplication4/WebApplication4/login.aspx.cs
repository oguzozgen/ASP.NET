using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace WebApplication4
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string bag = ConfigurationManager.ConnectionStrings[1].ConnectionString;
            SqlConnection con = new SqlConnection(bag);
            SqlCommand cmd = new SqlCommand("select * from users  where User_name=@p1", con);
            cmd.Parameters.AddWithValue("p1", TextBox1.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            
            if (dr.Read() == false)
                Label1.Text = "böle bir kullanıcı yok";
            else
            {

                if (dr["password"].ToString() == TextBox2.Text)
                {
                    Label1.Text = "hoşgeldiniz.." + TextBox1.Text;
                    Session["kullanici"] = TextBox1.Text;
                    Response.Redirect("default.aspx");
                }
                else
                    Label1.Text = "pasword hatali";
            }
            con.Close();

        }
    }
}