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

public partial class auserdelete : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnc_Click(object sender, EventArgs e)
    {
        try
        {
 c = new connect();
 c.cmd.CommandText = "select * from usert where uname='" + txtcuser.Text + "'";
 adp.SelectCommand = c.cmd;
 adp.Fill(ds, "check");
 adp.Fill(dt);
 if (txtcuser.Text != "" )
 {
 if (dt.Rows.Count > 0)
 {
 c.cmd.CommandText = "delete from usert where uname='"+ txtcuser.Text + "'";
 c.cmd.ExecuteNonQuery();
MessageBox.Show("Account Deleted", "Message", 
MessageBoxButtons.OK, MessageBoxIcon.Information );
txtcuser.Text = "";
 
 }
 else
 {
 MessageBox.Show("Account does not exist", "Message", 
MessageBoxButtons.OK, MessageBoxIcon.Error);
 txtcuser.Text = "";

 }
     }
 else
 {
 MessageBox.Show("Enter the Username ", "Message", MessageBoxButtons.OK, MessageBoxIcon.Warning );
 txtcuser.Text = "";

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
    protected void  LinkButton1_Click(object sender, EventArgs e)
{
 Response.Redirect("~/ahome.aspx");
}
    protected void txtcuser_TextChanged(object sender, EventArgs e)
    {

    }
}

   