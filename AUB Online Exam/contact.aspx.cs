using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WebApplication4
{
    public partial class contact : System.Web.UI.Page
    {
        private string path;
        private string connectString;
        OleDbConnection cn = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usrid"] != null)
            {
                Button2.Visible = true;
                HyperLink8.Visible = true;
                thetophead.Visible = false;
            }
            path = AppDomain.CurrentDomain.GetData("DataDirectory").ToString();
            connectString = "Provider = Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + path + "\\Database2.accdb";
            cn.ConnectionString = connectString;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
            {
                Label1.Text = "Please fill all the boxes";
            }
            else
            {
                cn.Open();
                string s = "No";
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = cn;
                cmd.CommandText = "INSERT INTO contactform (uname,email,subject,message,replied) VALUES('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','"+ s +"')";
                cmd.ExecuteNonQuery();
                cn.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                Label1.Text = "Thanks for your Comment";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["usrid"] = null;
            Response.Redirect("/default.aspx");
        }
    }
}