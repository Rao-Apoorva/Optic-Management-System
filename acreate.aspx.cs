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

public partial class acreate : System.Web.UI.Page
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
       if (txtcuser.Text != "")
 {
 if (dt.Rows .Count > 0)
 {
 MessageBox.Show("Account already exist", "Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
 txtcuser.Text = "";
 }
 else
        {
               c.cmd.CommandText = "insert into usert values(@uname,'optic',0,0,@flag)";
               c.cmd.Parameters.Add("@uname", SqlDbType.VarChar).Value =txtcuser.Text;
              
                c.cmd.Parameters.Add("@flag", SqlDbType.VarChar).Value = "Open";
               c.cmd.ExecuteNonQuery();
                MessageBox.Show("Account created", "Message", 
                MessageBoxButtons.OK, MessageBoxIcon.Information );
                txtcuser.Text = "";
 
        }
     }
   else
   {
      MessageBox.Show("Enter username", "Message", 
      MessageBoxButtons.OK, MessageBoxIcon.Error);
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
  
