using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WebApplication4
{
    public partial class adminpage : System.Web.UI.Page
    {
        private string path;
        private string connectString;
        OleDbConnection cn = new OleDbConnection();
        static string scode = "";
        static string scode1 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usrid"] == null)
                Response.Redirect("/login.aspx");
            path = AppDomain.CurrentDomain.GetData("DataDirectory").ToString();
            connectString = "Provider=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + path + "\\Database2.accdb";
            cn.ConnectionString = connectString;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = cn;
            cmd.CommandText = "insert into questions(q_no,q_title,code) values(" + TextBox1.Text.ToString() + ",'" + TextBox2.Text.ToString() + "','" + scode.ToString() + "')";
            cmd.ExecuteNonQuery();
            cn.Close();
           
            cn.Open();
            OleDbCommand cmd1 = new OleDbCommand();
            cmd1.Connection = cn;
            cmd1.CommandText = "insert into MCQ(q_no,options) values(" + TextBox1.Text.ToString() + ",'" + TextBox3.Text.ToString() + "')";
            cmd1.ExecuteNonQuery();
            cn.Close();

            cn.Open();
            OleDbCommand cmd2 = new OleDbCommand();
            cmd2.Connection = cn;
            cmd2.CommandText = "insert into MCQ(q_no,options) values(" + TextBox1.Text.ToString() + ",'" + TextBox4.Text.ToString() + "')";
            cmd2.ExecuteNonQuery();
            cn.Close();
            
            cn.Open();
            OleDbCommand cmd3 = new OleDbCommand();
            cmd3.Connection = cn;
            cmd3.CommandText = "insert into MCQ(q_no,options) values(" + TextBox1.Text.ToString() + ",'" + TextBox5.Text.ToString() + "')";
            cmd3.ExecuteNonQuery();
            cn.Close();
            
            cn.Open();
            OleDbCommand cmd4 = new OleDbCommand();
            cmd4.Connection = cn;
            cmd4.CommandText = "insert into MCQ(q_no,options) values(" + TextBox1.Text.ToString() + ",'" + TextBox6.Text.ToString() + "')";
            cmd4.ExecuteNonQuery();
            cn.Close();
            
            cn.Open();
            OleDbCommand cmd5 = new OleDbCommand();
            cmd5.Connection = cn;
            cmd5.CommandText = "insert into Answer(q_no,ans) values(" + TextBox1.Text.ToString() + ",'" + TextBox7.Text.ToString() + "')";
            cmd5.ExecuteNonQuery();
            cn.Close();
            Label12.Text = "Question Inserted";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Int32 q = 0;
            cn.Open();
            string s = "select * from Subjects where title='" + DropDownList1.Text.ToString() + "'";
            OleDbCommand cmdsearch = new OleDbCommand(s, cn);
            OleDbDataReader reader = cmdsearch.ExecuteReader();
            while (reader.Read())
            {
                scode = reader["code"].ToString();
            }
            cn.Close();
            reader.Close();
           
            cn.Open();
            string ss = "select max(q_no) as q_no from questions";
            OleDbCommand cmdsearch1 = new OleDbCommand(ss, cn);
            OleDbDataReader reader1 = cmdsearch1.ExecuteReader();
            while (reader1.Read())
            {
                scode1 = reader1["q_no"].ToString();
            }
            if (scode1 == "")
                q = 1;
            else
            q = Int32.Parse(scode1) + 1;
            TextBox1.Text = q.ToString();
            cn.Close();
            reader1.Close();
            
        }

        protected void Button4_Click2(object sender, EventArgs e)
        {
            Response.Redirect("/admin.aspx#createquestion");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["usrid"] = null;
            Response.Redirect("/default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cn.Open();
            string str = "select * from registration where uuser='" + TextBox11.Text.ToString() + "'";
            OleDbCommand cmdSearch = new OleDbCommand(str, cn);
            OleDbDataReader reader = cmdSearch.ExecuteReader();
            while (reader.Read())
            {
                TextBox12.Text = reader["name"].ToString();
                TextBox13.Text = reader["class"].ToString();
                TextBox14.Text = reader["address"].ToString();
                TextBox15.Text = reader["Institution"].ToString();
                TextBox16.Text = reader["email"].ToString();
                TextBox17.Text = reader["phone"].ToString();
                TextBox18.Text = reader["gender"].ToString();
                TextBox19.Text = reader["dateofregistration"].ToString();
            }
            reader.Close();
            cn.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            cn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = cn;
            cmd.CommandText = "insert into subjects(code,title,area) values('" + TextBox8.Text.ToString() + "','" + TextBox9.Text.ToString() + "','" + TextBox10.Text.ToString() + "')";
            cmd.ExecuteNonQuery();
            cn.Close();
            Label11.Text = "Subject Inserted";
        }


    }
}