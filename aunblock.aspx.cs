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
public partial class aunblock : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnblck_Click(object sender, EventArgs e)
    {

        try
        {
            c = new connect();
            ds = new DataSet();
            c.cmd.CommandText = "select * from usert where uname='" +txtblck.Text + "'";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                c.cmd.CommandText = "update usert set flag='open' where uname='" + txtblck.Text + "'";
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("User Unblocked", "Message", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
            else
            {
                MessageBox.Show("Account does not exist", "Message",   MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        catch (Exception)
        {
            
        }
        finally
        {
            c.cnn.Close();
        }

    } 

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ahome.aspx");
    }
    protected void txtblck_TextChanged(object sender, EventArgs e)
    {

    }
}
