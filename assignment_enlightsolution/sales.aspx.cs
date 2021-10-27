using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace assignment_enlightsolution
{
    public partial class sales : System.Web.UI.Page
    {
        SqlConnection sqlcn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\enlightsolution.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[4] { new DataColumn("Item"), new DataColumn("Price"), new DataColumn("Quantity"), new DataColumn("Total")});
                ViewState["Sales Item"] = dt;
                this.BindGrid();
            }
        }

        protected void BindGrid()
        {
            GridView1.DataSource = (DataTable)ViewState["Sales Item"];
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox5.Text = null;
            TextBox6.Text = null;
            sqlcn.Open();
            string s = DropDownList1.SelectedValue.ToString();
            SqlCommand selectitem = new SqlCommand("select itemprice from items where itemname ='"+s+"' ", sqlcn);
            SqlDataReader pricefound = selectitem.ExecuteReader();
            if(pricefound.Read())
            {
                TextBox4.Text = pricefound["itemprice"].ToString();
            }
            sqlcn.Close();
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
                double price = double.Parse(TextBox4.Text.ToString());
                int quantity = int.Parse(TextBox5.Text.ToString());
                TextBox6.Text = (price*quantity).ToString();
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            double price = double.Parse(TextBox4.Text.ToString());
            int quantity=0;
            if (TextBox5.Text.ToString() == "")
                quantity = 1;
            else
            quantity = int.Parse(TextBox5.Text.ToString());
            TextBox6.Text = (price * quantity).ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)ViewState["Sales Item"];
            dt.Rows.Add(DropDownList1.SelectedValue.ToString(), TextBox4.Text.Trim(), TextBox5.Text.Trim(), TextBox6.Text.Trim());
            ViewState["Sales Item"] = dt;
            this.BindGrid();
            int totalprice = 0;
            if (TextBox7.Text.ToString() == "")
                totalprice = int.Parse(TextBox6.Text.ToString());
            else
                totalprice = int.Parse(TextBox7.Text.ToString()) + int.Parse(TextBox6.Text.ToString());
            TextBox4.Text = null;
            TextBox5.Text = null;
            TextBox6.Text = null;
            TextBox7.Text = totalprice.ToString();
        }
        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            DataTable dt = ViewState["Sales Item"] as DataTable;
            GridViewRow row = GridView1.Rows[index];
            double newprice = double.Parse(row.Cells[4].Text.ToString());
            newprice = double.Parse(TextBox7.Text.ToString()) - newprice ;
            TextBox7.Text = newprice.ToString();
            dt.Rows[index].Delete();
            ViewState["sales Item"] = dt;
            BindGrid();
            if (TextBox7.Text.ToString() == "" || TextBox8.Text.ToString() == "" || TextBox7.Text.ToString() == "0" || TextBox8.Text.ToString() == "0")
            {
                TextBox9.Text = "0";
                TextBox8.Text = "0";
            }
            else
            {
                TextBox9.Text = (double.Parse(TextBox7.Text.ToString()) - double.Parse(TextBox8.Text.ToString())).ToString();
            }
        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {
            if (TextBox7.Text.ToString() == "" || TextBox8.Text.ToString() == "" || TextBox7.Text.ToString() == "0" || TextBox8.Text.ToString() == "0")
            {
                TextBox9.Text = "0";
            }
            else
            {
                TextBox9.Text = (double.Parse(TextBox7.Text.ToString()) - double.Parse(TextBox8.Text.ToString())).ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            sqlcn.Open();
            SqlCommand insertsells = new SqlCommand("insert into saleslist(customer, phone, address, total, paid, due) values('"+TextBox1.Text+"', '"+TextBox2.Text+"', '"+TextBox3.Text+"', '"+TextBox7.Text+"','"+TextBox8.Text+"', '"+TextBox9.Text+"')", sqlcn);
            insertsells.ExecuteNonQuery();
            sqlcn.Close();
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
            TextBox7.Text = null;
            TextBox8.Text = null;
            TextBox9.Text = null;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
        }
    }
}