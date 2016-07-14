using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication9.OgrencidatasetTableAdapters;

namespace WebApplication9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Ogrencidataset.bolumDataTable dt = new Ogrencidataset.bolumDataTable();
                bolumTableAdapter da = new bolumTableAdapter();

                da.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "bolum_name";
                DropDownList1.DataValueField = "bolum_id";
                DropDownList1.DataBind();
                DropDownList1_SelectedIndexChanged(sender, e);
            }
        }

         Ogrencidataset.derslerDataTable doldur(int id)
        {
            Ogrencidataset.derslerDataTable dtders = new Ogrencidataset.derslerDataTable();
            derslerTableAdapter daders = new derslerTableAdapter();
           
            // Response.Write(id.ToString());
            // daders.FillBybol_id(dtders,id);
            dtders = daders.GetDataBybol_id(id);
            return dtders;

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(DropDownList1.SelectedValue);
           GridView1.DataSource = doldur(id);
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(DropDownList1.SelectedValue);
            Ogrencidataset.derslerDataTable dtders= doldur(id);
            derslerTableAdapter daders = new derslerTableAdapter();

            Ogrencidataset.derslerRow r = dtders.NewderslerRow();
            r.ders_kod = TextBox1.Text;
            r.ders_adi = TextBox2.Text;
            r.sinif = Convert.ToInt16(DropDownList5.SelectedValue);
            r.donem = DropDownList6.SelectedValue;
            r.Bolum_id = Convert.ToInt16(DropDownList1.SelectedValue);
            dtders.AddderslerRow(r);
            daders.Update(r);
            dtders = doldur(id);
            GridView1.DataSource = dtders;
            GridView1.DataBind();
        }
    }
}