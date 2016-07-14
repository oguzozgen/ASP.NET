using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["makale_baslik"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["makale_icerik"].DefaultValue = TextBox2.Text;
            SqlDataSource1.Insert();
            Response.Redirect("anasayfa.aspx");
}
    }
}