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
public partial class uchange : System.Web.UI.Page
{
    static int attemptcount = 0;
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlConnection cnn = new SqlConnection();
    string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Your account will be blocked after 3 Attempts";
        name = (string)Session["user"];
        txtuser.Text = name;
        txtuser.Enabled = true;


    }
   
    protected void btnsign_Click(object sender, EventArgs e)
    {


        if (txtuser.Text == "" || txtold.Text == "" || txtnew.Text == "" || txtcnfrm.Text == "")
        {
            MessageBox.Show("Enter all the field");
        }
        else
        {

            c = new connect();
            ds = new DataSet();
            c.cmd.CommandText = "select * from usert where uname='" + txtuser.Text + "'";
            String uname;
            String pass;
            String status;
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "emp4");

            if (ds.Tables["emp4"].Rows.Count > 0)
            {
                uname = ds.Tables["emp4"].Rows[0]["uname"].ToString();
                pass = ds.Tables["emp4"].Rows[0]["upass"].ToString();
                status = ds.Tables["emp4"].Rows[0]["flag"].ToString();
                c.cnn.Close();
                if (status == "open")
                {
                    if (uname == txtuser.Text && pass == txtold.Text)
                    {
                        c.cnn.Open();
                        Session["name"] = uname;
                        c.cmd.CommandText = "update usert set upass='" + txtcnfrm.Text + "' where  uname='" + txtuser.Text + "'";
                        c.cmd.ExecuteNonQuery();
                        MessageBox.Show("Password Changed");
                        Response.Redirect("~/user.aspx");
                    }
                    else
                    {
                        MessageBox.Show("Invalid password!!");
                        Label1.Text = "invalid username or password ,answer correctly-no.of attempts remaining:" + (2 - attemptcount);
                        attemptcount = attemptcount + 1;
                        txtold.Text = "";
                        txtnew.Text = "";
                        txtcnfrm.Text = "";
                    }
                }
                else
                {
                    Label1.Text = "Account Blocked!!";
                }
            }

            if (attemptcount == 3)
            {

                Label1.Text = "Your account has been locked due to 3 invalid attempts CONTACT ADMINISTRATOR";
                setlockstatus(txtuser.Text);
                attemptcount = 0;
            }
        }
    }
    private void setlockstatus(String name1)
    {
        String updateddata = "update usert set flag='locked' where uname='" + name1 + "'";
        SqlConnection cnn = new SqlConnection();
        c.cnn.Open();
        SqlCommand cmd = new SqlCommand();
        c.cmd.CommandText = updateddata;
        c.cmd.ExecuteNonQuery();

    }

}
