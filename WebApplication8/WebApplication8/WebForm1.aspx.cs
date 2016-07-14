using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ogrencidatasetTableAdapters.bolumTableAdapter ta;
        ogrencidataset.bolumDataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
       ta = new ogrencidatasetTableAdapters.bolumTableAdapter();
       dt = new ogrencidataset.bolumDataTable();
            ta.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ogrencidataset.bolumRow r = dt.NewbolumRow();
            r.bolum_name = "ingiliz edebiyatı";
            r.fak_id = 5;
            dt.AddbolumRow(r);
            ta.Update(r);
            GridView1.DataBind();
        }
    }
}