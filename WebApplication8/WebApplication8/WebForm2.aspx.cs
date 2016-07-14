using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication8.Models;

namespace WebApplication8
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ogrenciEntities1 db = new ogrenciEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = db.bolums.ToList();
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bolum b = new bolum();
            b.bolum_name = "jeloji müh";
            b.fak_id = 4;
            db.bolums.Add(b);
            db.SaveChanges();
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var b = (from x in db.bolums
                     where x.Bolum_id == 1
                     select x).SingleOrDefault();
            b.bolum_name = b.bolum_name.ToUpper();
            db.SaveChanges();
            GridView1.DataBind();    
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           bolum b = (from x in db.bolums
                     where x.Bolum_id == 11
                     select x).SingleOrDefault();
            db.bolums.Remove(b);
            
            db.SaveChanges();
            GridView1.DataSource = db.bolums.ToList();
            GridView1.DataBind(); 
        }
    }
}