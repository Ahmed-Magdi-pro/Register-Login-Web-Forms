using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFDay1.model;

namespace EFDay1
{
    public partial class Register : System.Web.UI.Page
    {
        TestDBContext db = new TestDBContext();
        void fillDept()
        {
           ddl_dept.DataSource = db.departments.ToList();
            ddl_dept.DataTextField = "name";
            ddl_dept.DataValueField = "id";
            ddl_dept.DataBind();
        }
        void clearTxt()
        {
            txt_age.Text = txt_email.Text = txt_name.Text = " ";
        }

       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillDept();
            }
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            string cv_Path = "~/images/" + cv_upload.FileName;
            cv_upload.SaveAs(Server.MapPath(cv_Path));

            string photo_path = "~/attach/" + photo_upload.FileName;
            photo_upload.SaveAs(Server.MapPath(photo_path));

            instractor ins = new instractor() { age = int.Parse(txt_age.Text), cvFile = cv_Path, did = int.Parse(ddl_dept.SelectedValue), emali = txt_email.Text, name = txt_name.Text, password = txt_pass.Text, photo = photo_path };
            if(ins != null)
            {
                db.instractors.Add(ins);
                db.SaveChanges();
                fillDept();
                lbl_stauts.Text = "congratulations you are registed";

            }
            else
            {
                lbl_stauts.Text = "error";

            }
            clearTxt();
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }
    }
}