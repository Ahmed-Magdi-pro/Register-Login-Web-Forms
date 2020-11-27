using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFDay1.model;

namespace EFDay1
{
    
   
    public partial class instractorMangement : System.Web.UI.Page
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
        void fillInst()
        {
            int id = int.Parse(ddl_dept.SelectedValue);
            List<instractor> instractors = db.instractors.Where(n => n.did == id).ToList();
            gv_inst.DataSource = instractors;
            gv_inst.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillDept();
            }
            fillInst();

        }

        protected void btn_edit_Click(object sender, EventArgs e)
        {

            //if (int.Parse(txt_editid.Text) > 0)


            try
            {
                int id = id = int.Parse(txt_editid.Text);

                instractor inst = db.instractors.Where(n => n.id == id).FirstOrDefault();
                txt_age.Text = inst.age.ToString();
                txt_name.Text = inst.name;
                txt_email.Text = inst.emali;
                ddl_dept.DataTextField = inst.did.ToString();
                if (inst.photo.ToString() != null)
                {
                    profile_img.ImageUrl = inst.photo.ToString();

                }
                hl_cv.NavigateUrl = inst.cvFile.ToString();
            }
            catch
            {
                lbl_update.Text = "incorrect format";
            }

               
            
            
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            string photoPath = "~/images/" + photo_upload.FileName;
            photo_upload.SaveAs(Server.MapPath(photoPath));

            string cvFile = "~/attach/" + cv_upload.FileName;
            cv_upload.SaveAs(Server.MapPath(cvFile));

            int id = int.Parse(txt_editid.Text);
            instractor inst = db.instractors.Where(n => n.id == id).FirstOrDefault();
            inst.name = txt_name.Text;
            inst.age = int.Parse(txt_age.Text);
            inst.cvFile = cvFile;
            inst.photo = photoPath;
            inst.did =int.Parse( ddl_dept.SelectedValue);
            inst.emali = txt_email.Text;
            inst.password = txt_pass.Text;


          
            db.SaveChanges();
            clearTxt();
            lbl_update.Text = "update!";
            
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            string photoPath = "~/images/" + photo_upload.FileName;
            photo_upload.SaveAs(Server.MapPath(photoPath));

            string cvFile = "~/attach/" + cv_upload.FileName;
            cv_upload.SaveAs(Server.MapPath(cvFile));

            instractor ins = new instractor()
            {
                name = txt_name.Text,
                age = int.Parse(txt_age.Text),
                cvFile = cvFile,
                photo = photoPath,
                did = int.Parse(ddl_dept.SelectedValue),
                emali = txt_email.Text,
                password = txt_pass.Text
                
            };
            db.instractors.Add(ins);
            db.SaveChanges();

            clearTxt();
            fillInst();
            
        }

        protected void btn_del_id_Click(object sender, EventArgs e)
        {
            try
            {

                int id = int.Parse(txt_del_id.Text);
                instractor ins = db.instractors.Where(n => n.id == id).FirstOrDefault();
                db.instractors.Remove(ins);
                db.SaveChanges();
                fillInst();

            }
            catch (Exception)
            {

                lbl_delStauts.Text = "invalid id ";
            }

        }
    }
}