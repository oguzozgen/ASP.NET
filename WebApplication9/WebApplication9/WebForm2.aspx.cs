using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication9.Models;

namespace WebApplication9
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ogrenciEntities db = new ogrenciEntities();
                DropDownList1.DataSource = db.bolums.ToList();
                DropDownList1.DataTextField = "bolum_name";
                DropDownList1.DataValueField = "bolum_id";
                DropDownList1.DataBind();
                DropDownList1_SelectedIndexChanged(sender, e);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int bid= Convert.ToInt16(DropDownList1.SelectedValue );
            ogrenciEntities db = new ogrenciEntities();
            var der = (from x in db.derslers
                       where x.Bolum_id == bid
                       select x).ToList();
            GridView1.DataSource = der;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ogrenciEntities db = new ogrenciEntities();
            dersler d = new dersler();
            d.Bolum_id = Convert.ToInt16(DropDownList1.SelectedValue);
            d.ders_kod = TextBox1.Text;
            d.ders_adi = TextBox2.Text;
            d.sinif = Convert.ToInt16(DropDownList5.SelectedValue);
            d.donem = DropDownList6.SelectedValue;
            db.derslers.Add(d);
            db.SaveChanges();
            GridView1.DataSource = db.derslers.ToList();
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //ogrenciEntities db = new ogrenciEntities();
            //   var sil=from x in db.derslers
            //           where x.ders_id
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow  item in GridView1.Rows)
            {
                  if(item.RowType== DataControlRowType.DataRow)
                  {
                      CheckBox cb = (CheckBox)item.Cells[1].FindControl("checkbox1");
                      cb.Checked = ((CheckBox)sender).Checked;
                  }
            }
        }
    }
}