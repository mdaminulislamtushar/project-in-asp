﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WebApplication4
{
    public partial class question : System.Web.UI.Page
    {
        private string path;
        private string connectString;
        public Int32 countques = 0;
        public string doe = "";
        public string scode = "";
        OleDbConnection cn = new OleDbConnection();
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
            if (countques >= 25)
            {
                Button4.Enabled = false;
                Button2.Enabled = false;
                Button1.Enabled = false;
                DropDownList2.Enabled = false;
                Button2.Enabled = false;
                Label12.Text = "Your Exam is over";
            }
            else
            {

                Button1.Enabled = false;
                DropDownList2.Enabled = false;
                Button2.Enabled = false;
            }
            cn.Open();
            string s = "select * from Subjects where title='" + DropDownList2.Text.ToString() + "'";
            OleDbCommand cmdsearch = new OleDbCommand(s, cn);
            OleDbDataReader reader = cmdsearch.ExecuteReader();
            while (reader.Read())
            {
                scode = reader["code"].ToString();
            }
            cn.Close();
            reader.Close();
            cn.Open();
            string scode3 = "";
            Int32 qno = 0;
            string uid = Session["usrid"].ToString();
            string ss = "select questions.q_no,questions.q_title,questions.code from questions where ((questions.q_no) not in (select q_no from result where user_id='" + uid + "') and ((questions.q_no) not in (select q_no from mockexam where user_id = '" + uid + "')) and questions.code = '" + scode.ToString() + "' )";
            OleDbCommand cmdsearch1 = new OleDbCommand(ss, cn);
            OleDbDataReader reader1 = cmdsearch1.ExecuteReader();
            while (reader1.Read())
            {
                scode3 = reader1["q_title"].ToString();
                qno = Int32.Parse(reader1["q_no"].ToString());
                break;
            }
            Label4.Text = scode3.ToString();
            cn.Close();
            reader1.Close();
            cn.Open();
            string sss = "select * from MCQ where q_no=" + qno + "";
            OleDbCommand cmdsearch2 = new OleDbCommand(sss, cn);
            OleDbDataReader reader2 = cmdsearch2.ExecuteReader();
            while (reader2.Read())
            {
                DropDownList1.Items.Add(new ListItem(reader2["options"].ToString()));
            }
            cn.Close();
            reader2.Close();
            TextBox2.Text = "25";
            cn.Open();
            string count = "select countofresult from resultquery where user_id = '" + uid + "'";
            OleDbCommand cmdcount = new OleDbCommand(count, cn);
            OleDbDataReader reader3 = cmdcount.ExecuteReader();
            while (reader3.Read())
            {
                countques = Int32.Parse(reader3["countofresult"].ToString());
                break;
            }
            cn.Close();
            reader3.Close();
            if (countques == 0)
                countques = 1;
            TextBox1.Text = countques.ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            string uid = Session["usrid"].ToString();
            cn.Open();
            string count = "select countofresult from resultquery where user_id = '" + uid + "'";
            OleDbCommand cmdcount = new OleDbCommand(count, cn);
            OleDbDataReader reader = cmdcount.ExecuteReader();
            while (reader.Read())
            {
                countques = Int32.Parse(reader["countofresult"].ToString());
                break;
            }
            cn.Close();
            reader.Close();

            if (countques >= 25)
            {
                Button4.Enabled = false;
                Button2.Enabled = false;
                Label12.Text = "Your Exam is over";
            }
            else
            {
                Button2.Enabled = false;
                Button2.Enabled = true;
            }

            cn.Open();
            Button4.Enabled = false;
            string c = "";
            Int32 n = 0;
            string ssss = DropDownList1.Text.ToString();
            string str = Label4.Text.ToString();
            string str1 = "select * from questions where q_title='" + str + "'";
            OleDbCommand cmdsearch3 = new OleDbCommand(str1, cn);
            OleDbDataReader reader3 = cmdsearch3.ExecuteReader();
            while (reader3.Read())
            {
                n = Int32.Parse(reader3["q_no"].ToString());
                c = reader3["code"].ToString();
            }
            cn.Close();
            reader3.Close();
            //Label7.Text = ssss ;
            cn.Open();
            string str4 = "";
            Int32 answ =0 ;
            string str3 = "select ans from Answer where q_no=" + n + "";
            OleDbCommand cmdsearch4 = new OleDbCommand(str3, cn);
            OleDbDataReader reader4 = cmdsearch4.ExecuteReader();
            while (reader4.Read())
            {
                str4 = reader4["ans"].ToString();
                break;
            }

            if (ssss == str4)
            {
                answ = 1;
                Label12.Text = "Correct";
            }
            else
            {
                answ = 0;
                Label12.Text = "Wrong";
            }
            cn.Close();
            reader4.Close();
            cn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = cn;
            doe = DateTime.Now.ToString("M/d/yyyy");
            cmd.CommandText = "insert into result(user_id,code,q_no,correct_ans,dateofexam) values('" + uid + "','" + c + "'," + n + "," + answ + ",'" + doe + "')";
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (countques >= 25)
            {
                Button4.Enabled = false;
                Button2.Enabled = false;
            }
            else
            {
                Button4.Enabled = true;
            }
            string uid = Session["usrid"].ToString();
            cn.Open();
            string count = "select countofresult from resultquery where user_id = '" + uid + "'";
            OleDbCommand cmdcount = new OleDbCommand(count, cn);
            OleDbDataReader reader = cmdcount.ExecuteReader();
            while (reader.Read())
            {
                countques = Int32.Parse(reader["countofresult"].ToString());
                break;
            }
            cn.Close();
            reader.Close();
            countques = countques + 1;
            TextBox1.Text = countques.ToString();

            if (countques > 25)
            {
                Button4.Enabled = false;
                Button2.Enabled = false;
                Label12.Text = "Your Exam is over";
                TextBox1.Text = "25";
            }
            else
            {
                Button4.Enabled = true;
            }
            cn.Open();
            string s = "select * from Subjects where title='" + DropDownList2.Text.ToString() + "'";
            OleDbCommand cmdsearch = new OleDbCommand(s, cn);
            OleDbDataReader reader3 = cmdsearch.ExecuteReader();
            while (reader3.Read())
            {
                scode = reader3["code"].ToString();
            }
            cn.Close();
            reader3.Close();

            cn.Open();
            string scode1 = "";
            Int32 qno = 0;
            string ss = "select questions.q_no,questions.q_title,questions.code from questions where ((questions.q_no)not in(select q_no from result where user_id='" + uid + "') and ((questions.q_no)not in(select q_no from mockexam where user_id='" + uid + "')) and questions.code = '" + scode.ToString() + "' )";
            OleDbCommand cmdsearch1 = new OleDbCommand(ss, cn);
            OleDbDataReader reader1 = cmdsearch1.ExecuteReader();
            while (reader1.Read())
            {
                scode1 = reader1["q_title"].ToString();
                qno = Int32.Parse(reader1["q_no"].ToString());
                break;

            }
            Label4.Text = scode1.ToString();
            cn.Close();
            reader1.Close();
            cmdsearch1.Cancel();

            cn.Open();
            string sss = "select * from MCQ where q_no=" + qno + "";
            OleDbCommand cmdsearch2 = new OleDbCommand(sss, cn);
            OleDbDataReader reader2 = cmdsearch2.ExecuteReader();
            DropDownList1.Items.Clear();
            while (reader2.Read())
            {
                DropDownList1.Items.Add(new ListItem(reader2["options"].ToString()));
            }
            cn.Close();
            reader2.Close();
            cmdsearch2.Cancel();

            Button2.Enabled = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button4.Enabled = false;
            Button2.Enabled = false;

            cn.Open();
            string scode1 = "", scode2 = "";
            string uid = Session["usrid"].ToString();
            string ss = "select sum(correct_ans) as correct_ans, sum(q_no) as q_no from result group by user_id having user_id ='" + uid + "'";
            OleDbCommand cmdsearch1 = new OleDbCommand(ss, cn);
            OleDbDataReader reader1 = cmdsearch1.ExecuteReader();
            while (reader1.Read())
            {
                scode1 = reader1["correct_ans"].ToString();
                scode2 = reader1["q_no"].ToString();
            }
            Label8.Text = uid;
            Label9.Text = scode1;
            Label10.Text = scode2;
            cn.Close();
            reader1.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["usrid"] = null;
            Response.Redirect("/default.aspx");
        }
    }
}