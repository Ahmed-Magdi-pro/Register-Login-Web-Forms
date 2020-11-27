using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFDay1.model;

namespace EFDay1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            TestDBContext db = new TestDBContext();
            instractor ins = db.instractors.Where(n => n.emali == txt_email.Text && n.password == txt_pass.Text).FirstOrDefault();

            if(ins != null)
            {
                Session.Add("id",ins.id);
                Response.Redirect("~/profile.aspx");
            }
            else
            {
                lbl_status.Text = "incorect username or passsword";
            }
        }
    }
}