using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFDay1.model;

namespace EFDay1
{
    public partial class Department : System.Web.UI.Page
    {
        TestDBContext db = new TestDBContext();
        public void fillDept()
        {
            ddl_dept.DataSource = db.departments.ToList();
            ddl_dept.DataTextField = "name";
            ddl_dept.DataValueField = "id";
            ddl_dept.DataBind();
        }
        public void clearTxt()
        {
            txt_id.Text = txt_loc.Text = txt_name.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillDept();

            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            department d = new department() { id = int.Parse(txt_id.Text), name = txt_name.Text, loc = txt_loc.Text };
            db.departments.Add(d);
            db.SaveChanges();
            fillDept();
            clearTxt();
        }

        protected void btn_edit_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ddl_dept.SelectedValue);

            department d = db.departments.Where(n => n.id == id).FirstOrDefault();
            txt_id.Text = d.id.ToString();
            txt_name.Text = d.name;
            txt_loc.Text = d.loc;
            txt_id.Enabled = false;
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txt_id.Text);
            department d = db.departments.Where(n => n.id == id).FirstOrDefault();
            d.name = txt_name.Text;
            d.loc = txt_loc.Text;

            txt_id.Enabled = true;
            clearTxt();
            db.SaveChanges();
            fillDept();
                
        }

        protected void btn_del_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ddl_dept.SelectedValue);
            department d = db.departments.Where(n => n.id == id).FirstOrDefault();
            db.departments.Remove(d);
            db.SaveChanges();
            fillDept();
        }
    }
}