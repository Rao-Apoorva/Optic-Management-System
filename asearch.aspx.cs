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

public partial class asearch : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            MessageBox.Show("Select name!!!");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from employee where name='" + DropDownList1.SelectedItem + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "dtl");
                if (ds.Tables["dtl"].Rows.Count > 0)
                {
                    Label1.Visible = true;
                    gdemp.DataSource = ds.Tables["dtl"];
                    gdemp.DataBind();

                }
                else
                    MessageBox.Show("error");
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
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
