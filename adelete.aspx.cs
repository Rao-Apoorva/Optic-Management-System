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
using System.Windows.Forms;
using System.Data.SqlClient;


public partial class adelete : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btndlt_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            MessageBox.Show("Select Name!!!");
        }
        else
        {
            c = new connect();
            c.cmd.CommandText = "select * from employee where status='Active' and name='" + DropDownList1.SelectedItem + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt3");
            if (ds.Tables["dt3"].Rows.Count > 0)
            {
                c.cmd.CommandText = "update employee set status='Inactive' where  name='" + DropDownList1.SelectedItem + "'";
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("deleted successfully");
            }
            else
            {
                MessageBox.Show("Account is Already Inactive");
            }
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void btnok_Click(object sender, EventArgs e)
    {
          if (DropDownList1.SelectedIndex == 0)
        {
            MessageBox.Show("Select status!!");
        }
        else
        {
            Label1.Visible = true;
            if (DropDownList1.SelectedItem.Text == "Active")
            {
                c = new connect();
                c.cmd.CommandText = "Select * from supplier where status='Active'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "dt1");
                if (ds.Tables["dt1"].Rows.Count > 0)
                {
                    grd2.DataSource = ds.Tables["dt1"];
                    grd2.DataBind();
                }
            }
            else
            {
                c = new connect();
                c.cmd.CommandText = "Select * from empdt where status='Inactive'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "dt1");
                if (ds.Tables["dt1"].Rows.Count > 0)
                {
                    grd2.DataSource = ds.Tables["dt1"];
                    grd2.DataBind();
                }
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void grd2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
