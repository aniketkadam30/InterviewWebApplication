using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class studentregister : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Admin\\Documents\\Visual Studio 2010\\WebSites\\InterviewWebsite\\App_Data\\interview.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter dr = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        if (txtname.Text == "" || txtemail.Text == "" || txtpass.Text == "" || ddlbookSlot.Text == "")
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit",
           "<Script language='javascript'>alert('Fill the Form')</Script>");

        else
        {
            cn.Open();
            cmd = new SqlCommand("insert into student2(sname,email,password,date,slot,status) values(@sname,@email,@password,@date,@slot,@status)", cn);
            //cmd.CommandText = "insert into student2 values('" + txtname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + TextBox1.Text + "','" + ddlbookSlot.SelectedItem.Text + "')";
            cmd.Parameters.AddWithValue("@sname", txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@password", txtpass.Text);
            cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(TextBox1.Text));
            cmd.Parameters.AddWithValue("@slot", ddlbookSlot.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@status", "UnApproved");
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            txtname.Text = "";
            txtemail.Text = "";
            txtpass.Text = "";
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Successfully Registered')</Script>");
            Response.Redirect("~//studentlogin.aspx");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
        Calendar1.Attributes.Add("style", "position:absolute");
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        Calendar1.Visible = false;
    }

    protected void Calendar1_OnDayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.Aquamarine;
        }
    }
}