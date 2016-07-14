using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class htmleleman : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
            if(IsPostBack)
            Response.Write("heloo");
            Response.Write( Request.Form["adi"] + "  " + Request.Form["soyadi"] + "  " + Request.Form["mezuniyet"]);
            Response.Write(adi.Value + soyadi.Value + mezuniyet.Value);
        }
    }
}