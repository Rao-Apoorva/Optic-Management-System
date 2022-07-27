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
public partial class apsearch : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsrch_Click(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedIndex == 0)
        {
            MessageBox.Show("Select category name!!");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from Stock where Cat_id='" + Label1.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "dt8");
                if (ds.Tables["dt8"].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables["dt8"];
                    GridView1.DataBind();
                }
                else
                    MessageBox.Show("No records found");
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                c.cnn.Close();
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        c = new connect();
        c.cmd.CommandText = "select Cat_id  from category where Cat_name='" + DropDownList1.SelectedItem.Text + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "stck1");
        if (ds.Tables["stck1"].Rows.Count > 0)
        {
            Label1.Text = Convert.ToString(ds.Tables["stck1"].Rows[0][0]);
        }
    }
}
