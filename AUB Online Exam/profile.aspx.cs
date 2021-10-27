using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebApplication4
{
    public partial class profile : System.Web.UI.Page
    {
        private string path,str2;
        private string connectString;
        OleDbConnection cn = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usrid"] == null)
                Response.Redirect("/login.aspx");
            path = AppDomain.CurrentDomain.GetData("DataDirectory").ToString();
            connectString = "Provider=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + path + "\\Database2.accdb";
            cn.ConnectionString = connectString;
            cn.Open();
            string str = "select * from registration where uuser='" + Session["usrid"] + "'";
            OleDbCommand cmdSearch = new OleDbCommand(str, cn);
            OleDbDataReader reader = cmdSearch.ExecuteReader();
            while (reader.Read())
            {
                TextBox1.Text = reader["name"].ToString();
                TextBox8.Text = reader["class"].ToString();
                TextBox2.Text = reader["address"].ToString();
                TextBox3.Text = reader["phone"].ToString();
                TextBox4.Text = reader["email"].ToString();
                TextBox10.Text = reader["gender"].ToString();
                TextBox11.Text = reader["dateofregistration"].ToString();
                TextBox5.Text = reader["uuser"].ToString();
                str2 = reader["upassword"].ToString();
            }
            reader.Close();
            cn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            string uid = Session["usrid"].ToString();
            OleDbCommand cmdupdate = new OleDbCommand();
            cmdupdate.Connection = cn;
            cmdupdate.CommandText = "update registration set name='" + TextBox1.Text.ToString() + "',class='" + TextBox8.Text.ToString() + "',address='" + TextBox2.Text.ToString() + "',phone='" + TextBox3.Text.ToString() + "',email='" + TextBox4.Text.ToString() + "',where uuser='" + uid + "'";
            cmdupdate.ExecuteNonQuery();
            cn.Close();
            if (TextBox6.Text.ToString() == str2)
            {
                cn.Open();
                cmdupdate.Connection = cn;
                cmdupdate.CommandText = "update registration set upassword='" + TextBox7.Text.ToString() + "',where uuser='" + TextBox5.Text.ToString() + "'";
                cmdupdate.ExecuteNonQuery();
                cn.Close();
            }
            Label1.Text = "Updated";
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["usrid"] = null;
            Response.Redirect("/default.aspx");
        }
    }
}