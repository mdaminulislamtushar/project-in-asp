using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class examrules : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usrid"] != null)
            {
                Button3.Visible = true;
                HyperLink1.Visible = true;
                thetophead.Visible = false;
            }
        }
    }
}