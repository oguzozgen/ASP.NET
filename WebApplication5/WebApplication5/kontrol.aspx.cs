using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class kontrol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // post durumunda
            //Response.Write(Request.Form["k_adi"]);
           // Response.Write(Request.Form["sifre"]);

            // get durumunda
            Response.Write(Request.QueryString["k_adi"]);
             Response.Write(Request.QueryString["sifre"]);
        }
    }
}