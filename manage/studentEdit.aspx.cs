using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace manage
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
            lblMsg2.Visible = false;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            tStudent x = new tStudent();
            x.f學生姓名 = txtName.Text;
            x.f學生生日 = txtBirthday.Text;
            x.f學生密碼 = txtPassword.Text;
            x.f學生性別 = ddlGender.Text;
            x.f身份區分 = exampleFormControlSelect1.Text;

            dbDemoDataContext db = new dbDemoDataContext();
            db.tStudent.InsertOnSubmit(x);
            db.SubmitChanges();
            lblMsg.Visible = true;
            lblMsg.Text = "新增資料成功";
        }

        protected void btnAdd2_Click(object sender, EventArgs e)
        {
            tParents x = new tParents();
            x.f家長姓名 = txtName2.Text;
            x.f家長生日 = txtBirthday2.Text;
            x.f家長密碼 = txtPassword2.Text;
            x.f身份區分 = exampleFormControlSelect2.Text;

            dbDemoDataContext db = new dbDemoDataContext();
            db.tParents.InsertOnSubmit(x);
            db.SubmitChanges();
            lblMsg2.Visible = true;
            lblMsg2.Text = "新增資料成功";
        }
    }
}