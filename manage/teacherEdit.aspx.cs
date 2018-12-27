using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace manage
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //SqlDataSource sds = new SqlDataSource();
            //sds.ConnectionString = @"Data Source=104.46.226.187\LetNoBook,1433;Initial Catalog=letnobookDB;Persist Security Info=True;User ID=test;Password=1234";
            //sds.InsertCommand = getInsertsql();
            //sds.Insert();
            //lblMsg.Visible = true;
            //lblMsg.Text = "新增資料成功";
            tTeacher x = new tTeacher();
            x.f老師姓名 = txtName.Text;
            x.f老師生日 = datepicker.Text;
            x.f老師密碼 = txtPassword.Text;
            x.f老師性別 = ddlGender.Text;
            x.f身份區分 = exampleFormControlSelect1.Text;

            dbDemoDataContext db = new dbDemoDataContext();
            db.tTeacher.InsertOnSubmit(x);
            db.SubmitChanges();
            lblMsg.Visible = true;
            lblMsg.Text = "新增資料成功";

        }

        //private string getInsertsql()
        //{
            //string sql = "INSERT INTO tTeacher(";
            //sql += "f老師姓名,";
            //sql += "f老師生日,";
            //sql += "f老師密碼,";
            //sql += "f老師性別,";
            //sql += "f身份區分";
            //sql += ")VALUES(";
            //sql += "'"+txtName.Text+"',";
            //sql += "'" + txtBirthday.Text+ "',";
            //sql += "'" + txtPassword.Text+ "',";
            //sql += "'" + ddlGender.SelectedValue + "',";
            //sql += "'" + exampleFormControlSelect1.SelectedValue+ "')";
            //return sql;
        //}
    }
}