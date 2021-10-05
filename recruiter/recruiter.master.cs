using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class recruiter_recruiter : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void link_loginout_Click(object sender, EventArgs e)
    {
       
         Response.Redirect("~/recruiterlogin.aspx");
        
    }
}
