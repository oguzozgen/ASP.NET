using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Default : System.Web.UI.Page
    {
        public string isim { get { return TextBox1.Text; } }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack )
            {

               // Label1.Text = TextBox1.Text + " " + DropDownList1.Text;
                Label1.Text = Request.Form["textbox1"] + " " + Request.Form["dropdownlist1"];

            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("default3.aspx?adi=" + TextBox1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/default4.aspx");
        }
    }
}