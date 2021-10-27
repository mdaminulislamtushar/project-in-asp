
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private string path;
        private string connectString;
        OleDbConnection cn = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            path = AppDomain.CurrentDomain.GetData("DataDirectory").ToString();
            connectString = "Provider = Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + path + "\\Database2.accdb";
            cn.ConnectionString = connectString;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            string str = "select * from registration where uuser='" + TextBox2.Text + "' and upassword='" + TextBox3.Text + "'";
            OleDbCommand cmd = new OleDbCommand(str, cn);
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string str2 = TextBox2.Text.ToString();
                Session["usrid"] = str2;
                if (str2 == "admin")
                    Response.Redirect("/admin.aspx");
                else
                    Response.Redirect("/default.aspx");
                cn.Close();
            }
            else
            {
                Label3.Text = "**Username/Password not match";
                TextBox2.Text = "";
                cn.Close();
            }
        }
    }
}