using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class recruiterlogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Admin\\Documents\\Visual Studio 2010\\WebSites\\InterviewWebsite\\App_Data\\interview.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter dr = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select email,password from recruiter where email='" + txtemail.Text + "'and password='" + txtpass.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        dr.SelectCommand = cmd;
        dr.Fill(dt);
        cn.Close();
        if (dt.Rows.Count > 0)
        {
            Session["email"] = txtemail.Text;
            Response.Redirect("~/recruiter/recruiterhome.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Incorrect loginname or password')</script>");
        }
    }
}