using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class recruiter_checkstudentslot : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Admin\\Documents\\Visual Studio 2010\\WebSites\\InterviewWebsite\\App_Data\\interview.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    
    DataSet ds = new DataSet();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindGrid();
        }
    }
    private void BindGrid()
    {
        SqlCommand cmd = new SqlCommand("SELECT * FROM student2", cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        //gvRequest.DataSource = dt;
        //gvRequest.DataBind();
        
    }
    protected void Update(object sender, EventArgs e)
    {
        LinkButton lnk = (sender) as LinkButton;
        SqlCommand cmd = new SqlCommand("UPDATE student2 SET status = @status WHERE sid= @sid",cn);
        cmd.Parameters.AddWithValue("@sid", lnk.CommandArgument);
        cmd.Parameters.AddWithValue("@status", "Approved");
        cn.Open();
        int result = Convert.ToInt16(cmd.ExecuteNonQuery());
        if (result > 0 && lnk.Text.ToLower() == "accept")
        {
            Response.Redirect("checkstudentslot.aspx?Id=" + lnk.CommandArgument);
        }
        cn.Close();
        BindGrid();
    }
    protected void UpdateR(object sender, EventArgs e)
    {
        LinkButton lnk = (sender) as LinkButton;
        SqlCommand cmd = new SqlCommand("UPDATE student2 SET status = @status WHERE sid= @sid", cn);
        cmd.Parameters.AddWithValue("@sid", lnk.CommandArgument);
        cmd.Parameters.AddWithValue("@status", "Reject");
        cn.Open();
        int result = Convert.ToInt16(cmd.ExecuteNonQuery());
        if (result > 0 && lnk.Text.ToLower() == "reject")
        {
            Response.Redirect("checkstudentslot.aspx?Id=" + lnk.CommandArgument);
        }
        cn.Close();
        BindGrid();
    }
}