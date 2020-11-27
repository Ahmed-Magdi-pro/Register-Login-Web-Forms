using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFDay1.model;

namespace EFDay1
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TestDBContext db = new TestDBContext();
            int id =Convert.ToInt32( Session["id"]);
            instractor inst = db.instractors.Where(n => n.id == id).FirstOrDefault();
            department d = db.departments.Where(n => n.id == inst.did).FirstOrDefault();

            lbl_age.Text = inst.age.ToString();
            lbl_email.Text = inst.emali;
            lbl_name.Text = inst.name;
            lbl_dept.Text = d.name;
            profile_img.ImageUrl = inst.photo.ToString();
            hycv.NavigateUrl = inst.cvFile.ToString();

        }

        protected void btn_edit_Click(object sender, EventArgs e)
        {

        }
    }
}