using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usrid"] != null)
            {
                thetophead.Visible = false;
                Button1.Visible = true;
                HyperLink8.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["usrid"] = null;
            Response.Redirect("/default.aspx");
        }
    }
}