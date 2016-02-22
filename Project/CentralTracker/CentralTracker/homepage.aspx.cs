using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentralTracker
{
    public partial class homepage : System.Web.UI.Page
    {
        

        protected void Submit1_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}