  using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebApplication4
{
    public partial class registration : System.Web.UI.Page
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || DropDownList2.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || TextBox9.Text == "")
            {
                Label1.Text = "Please fill all the boxes";
            }
            else
            {
                cn.Open();
                string qery = "select phone from registration where phone = '" + TextBox3.Text + "'";
                OleDbCommand cmd = new OleDbCommand(qery, cn);
                OleDbDataReader s = cmd.ExecuteReader();
                if (s.Read())
                {
                    Label1.Text = "You Already have a account";
                    cn.Close();
                }
                else
                {
                    cn.Close();
                    if (TextBox6.Text != TextBox7.Text)
                    {
                        Label1.Text = "confirm password not matching with new passsword";
                        TextBox7.Focus();
                        return;
                    }
                    else
                    {
                        string dor = DateTime.Now.ToString("yyyy-MM-dd");
                        if (TextBox3.Text.Length < 11)
                        {
                            Label1.Text = "Phone Number is Incorrect";
                        }
                        else
                        {
                            cn.Open();
                            cmd.CommandText = "INSERT INTO registration (name,class,address,phone,email,gender,dateofregistration,uuser,upassword,institution) VALUES('" + TextBox1.Text.ToString() + "','" + DropDownList2.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + dor + "','" + TextBox3.Text.ToString() + "','" + TextBox6.Text.ToString() + "','" + TextBox7.Text.ToString() + "')";
                            cmd.ExecuteNonQuery();
                            Response.Redirect("/login.aspx");
                            cn.Close();
                        }

                    }

                }
            }
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            cn.Open();
            OleDbCommand cmdupdate = new OleDbCommand();
            cmdupdate.Connection = cn;
            if (TextBox6.Text != TextBox7.Text)
            {
                Label1.Text = "confirm password not matching with new passsword";
                TextBox7.Focus();
                return;
            }
            else
            {
                //cmdupdate.CommandText = "update registration set name='" + TextBox1.Text.ToString() + "',class='" + DropDownList2.Text.ToString() + "',address='" + TextBox2.Text.ToString() + "',phone='" + TextBox3.Text.ToString() + "',email='" + TextBox4.Text.ToString() + "',gender='" + DropDownList1.Text.ToString() + "',dateofregistration='" + Calendar1.SelectedDate + "',upassword='" + TextBox6.Text.ToString() + "'where uuser='" + TextBox5.Text.ToString() + "'";
               
            }
            cmdupdate.ExecuteNonQuery();
            cn.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            cn.Open();
            OleDbCommand cmdupdate = new OleDbCommand();
            cmdupdate.Connection = cn;
            //cmdupdate.CommandText = "delete from registration where uuser='" + TextBox5.Text.ToString() + "'";
            //Label2.Text = "Data Deleted";
            cmdupdate.ExecuteNonQuery();
            cn.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            cn.Open();
            //string str = "select * from registration where uuser='" + TextBox5.Text.ToString() + "'";
            //OleDbCommand cmdSearch = new OleDbCommand(str, cn);
            //OleDbDataReader reader = cmdSearch.ExecuteReader();
            //while (reader.Read())
            //{
             //   TextBox1.Text = reader["name"].ToString();
                //TextBox8.Text = reader["class"].ToString();
              //  TextBox2.Text = reader["address"].ToString();
              //  TextBox3.Text = reader["phone"].ToString();
              //  TextBox4.Text = reader["email"].ToString();
              //  DropDownList1.Text = reader["gender"].ToString();
             //   Label1.Text = reader["dateofregistration"].ToString();
                //TextBox5.Text = reader["uuser"].ToString();
           // }
           // reader.Close();
            cn.Close();
        }

        
    }
}