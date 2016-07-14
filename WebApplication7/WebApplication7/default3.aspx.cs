using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class default3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Response.Write(TextBox1.Text + TextBox2.Text + DropDownList1.SelectedValue);
                Response.Write(Request.Form["textbox1"] + Request.Form["TextBox2"] + Request.Form["dropdownlist1"]);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/default5.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string hedef = string.Format("~/default6.aspx?x={0}&y={1}&z={2}", TextBox1.Text, TextBox2.Text, DropDownList1.SelectedItem.ToString());
            Response.Redirect(hedef);
        }
    }
}