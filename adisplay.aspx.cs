using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Windows.Forms;


public partial class adisplay : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
         Label1.Visible = true;
        if (DropDownList1.SelectedItem.Text == "Active")
        {
            c = new connect();
            c.cmd.CommandText = "Select * from employee where status='Active'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt2");
            if (ds.Tables["dt2"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["dt2"];
                GridView1.DataBind();
            }
            else
            {
                MessageBox.Show("no records");
                Label1.Visible = false;
            }
        }
        else
        {
            c = new connect();
            c.cmd.CommandText = "Select * from employee where status='Inactive'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt2");
            if (ds.Tables["dt2"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["dt2"];
                GridView1.DataBind();
            }
            else
            {
                MessageBox.Show("no records");
                Label1.Visible = false;
            }
        }

    }
    }
