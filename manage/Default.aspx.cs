using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace manage
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            tClass x = new tClass();
            x.f年級 = txtGrade.Text;
            x.f班號 = txtClass.Text;
            x.f導師姓名 = txtName.Text;
            x.f學級年度 = txtYear.Text;

            dbDemoDataContext db = new dbDemoDataContext();
            db.tClass.InsertOnSubmit(x);
            db.SubmitChanges();
            lblMsg.Visible = true;
            lblMsg.Text="新增資料成功";
        }
    }
}