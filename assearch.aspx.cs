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

public partial class assearch : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        if (DropDownList1.Items.Count == 0)
        {
            c = new connect();
            c.cmd.CommandText = "select sid from supplier";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt4");
            if (ds.Tables["dt4"].Rows.Count > 0)
            {
                DropDownList1.Items.Add("--Select--");
                int i;
                for (i = 0; i < ds.Tables["dt4"].Rows.Count; i++)
                {
                    DropDownList1.Items.Add(ds.Tables["dt4"].Rows[i].ItemArray[0].ToString());
                }
            }
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        if (DropDownList1.SelectedIndex == 0)
        {
            MessageBox.Show("Select Name!!");
            Label1.Visible = false;
            if (TextBox1.Text == "")
            {
                MessageBox.Show("Enter Address!!");
                Label1.Visible = false;
            }
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from supplier where sname='" + DropDownList1.SelectedItem.Text + "' and addr='" + TextBox1.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "dtl");
                if (ds.Tables["dtl"].Rows.Count > 0)
                {
                    gdemp.Visible = true;
                    gdemp.DataSource = ds.Tables["dtl"];
                    gdemp.DataBind();

                }
                else
                {
                    MessageBox.Show("No records found");
                    gdemp.Visible = false;
                    Label1.Visible = false;
                }


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
}
