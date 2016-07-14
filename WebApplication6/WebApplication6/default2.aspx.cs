using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Request.Form["textbox1"] + Request.Form["dropdownlist1"]);
            
            if(PreviousPage!=null)
            {
            string  sehir=    ((DropDownList )PreviousPage.FindControl("dropdownlist1")).SelectedItem.ToString() ;

            TextBox1.Text = ((TextBox)PreviousPage.FindControl("textbox1")).Text + "dropdown seclili sehir " + sehir;
            TextBox2.Text = PreviousPage.isim; //  previus page direktifi verilmiş olmalı
                  // <%@ PreviousPageType VirtualPath="~/default.aspx"%>

            }
            
        }
    }
}