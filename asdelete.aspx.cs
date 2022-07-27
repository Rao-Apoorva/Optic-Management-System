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

public partial class asdelete : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btndlt_Click(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex == 0)
        {
            MessageBox.Show("Select Name!!!");
        }
        else
        {
            c = new connect();
            c.cmd.CommandText = "select * from empdt where status='Active' and name='" + DropDownList2.SelectedItem + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt3");
            if (ds.Tables["dt3"].Rows.Count > 0)
            {
                c.cmd.CommandText = "update empdt set status='Inactive' where  name='" + DropDownList2.SelectedItem + "'";
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("deleted successfully");
            }
            else
            {
                MessageBox.Show("Account is Already Inactive");
            }
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
