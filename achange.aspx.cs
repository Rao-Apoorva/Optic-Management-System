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

public partial class achange : System.Web.UI.Page
{
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlConnection cnn = new SqlConnection();
    string cname;
    protected void Page_Load(object sender, EventArgs e)
    {
        cname = (string)Session["aname"];
        txtuser.Text = cname;
       txtuser.Enabled = true;

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            txtold.TextMode = TextBoxMode.SingleLine;
            txtnew.TextMode = TextBoxMode.SingleLine;
            txtcnfrm.TextMode = TextBoxMode.SingleLine;
        }
    }
    protected void btnsign_Click(object sender, EventArgs e)
    {
        if (txtuser.Text == "" || txtold.Text == "" || txtnew.Text == "" || txtcnfrm.Text == "")
        {
            MessageBox.Show("Enter all fields!!");
        }
        try
        {
            c = new connect();
            ds = new DataSet();
            c.cmd.CommandText = "select * from admint where aname='" + txtuser.Text + "' and apass='" + txtold.Text + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "emp");
            if (ds.Tables["emp"].Rows.Count > 0)
            {
                c.cmd.CommandText = "update admint set apass='" + txtcnfrm.Text + "'";
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("Password Changed");
                Response.Redirect("~/admin.aspx");
            }
            else
            {
                MessageBox.Show("Incorrect Old Password!!!");
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
    protected void lnkchnge_Click(object sender, EventArgs e)
    {

    }
}
