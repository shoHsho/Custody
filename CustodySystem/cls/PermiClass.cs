using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace CustodySystem.cls
{
    public class PermiClass
    {
        public static SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
/*
        public static Boolean permichange(string id, string pass, ref string access)
        {
            try
            {

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter("update Employee set Access='" + accessDropDownList + "',password='" + passText + "' where Employee_ID='" + idText + "'",con;
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    name = dt.Rows[0]["Employee_Name"].ToString();
                    access = dt.Rows[0]["Access"].ToString();
                    return true;
                }
                else
                    return false;
            }
            catch (Exception)
            {
                // System.Web.HttpContext.Current.Response.Write("<script> alert('خطأ في الاتصال بقاعدة البيانات'); </script>");
                return false;
            }
        }*/

    }
}