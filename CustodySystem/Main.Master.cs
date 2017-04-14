using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustodySystem
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string access="";
                string name="";
                if (cls.GeneralClass.checkuser(txtuser.Text.Trim(), txtpass.Text.Trim(), ref name, ref access) == true)
                {
                    
                    Session["fullname"] = name;
                    if(access=="Staff")
                        Response.Redirect("StaffHome.aspx");
                    else if(access=="Admin")
                         Response.Redirect("AdminHome.aspx");
                    else if (access == "Employee")
                        Response.Redirect("EmpHome.aspx");
                }
                else
                    Response.Write("<script> alert('خطأ في اسم المستخدم او كلمة المرور'); </script>");
            }
            catch (Exception)
            {
                
                
            }
        }

        protected void create_Click(object sender, EventArgs e)
        {

        }

      
    }
}