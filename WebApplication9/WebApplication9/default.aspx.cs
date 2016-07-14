using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["ders_kod"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["ders_adi"].DefaultValue = TextBox2.Text;
            SqlDataSource2.InsertParameters["bolum_id"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource2.InsertParameters["sinif"].DefaultValue = DropDownList5.SelectedValue;
            SqlDataSource2.InsertParameters["donem"].DefaultValue = DropDownList6.SelectedValue;
            SqlDataSource2.Insert();
        }
    }
}