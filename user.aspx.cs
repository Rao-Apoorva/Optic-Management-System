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

public partial class user : System.Web.UI.Page
{
    static int attemptcount = 0;
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlConnection cnn = new SqlConnection(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"] = txtname.Text;
        Label1.Text = "Your account will be blocked after 3 attempts";

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

    }
    protected void lnkfrgt_Click1(object sender, EventArgs e)
    {

    }
    protected void lnkchnge_Click1(object sender, EventArgs e)
    {

    }
    protected void txtpass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
         if (CheckBox1.Checked == false)
        {
            txtpass.TextMode = TextBoxMode.Password;
        }
        if (CheckBox1.Checked == true)
        {
            txtpass.TextMode = TextBoxMode.SingleLine;
        }
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtpass_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void btnsign_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "" || txtpass.Text == "")
        {
            MessageBox.Show("Enter all the fields!!");
        }
        else
        {
            c = new connect();
            c.cmd.CommandText = "select * from usert where uname='" + txtname.Text + "'";
            SqlCommand cmd = new SqlCommand();
            String uname;
            String pass;
            String status;
            String sec;
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "blk");
            if (ds.Tables["blk"].Rows.Count > 0)
            {
                uname = ds.Tables["blk"].Rows[0]["uname"].ToString();
                pass = ds.Tables["blk"].Rows[0]["upass"].ToString();
                sec = ds.Tables["blk"].Rows[0]["sqtn"].ToString();
                status = ds.Tables["blk"].Rows[0]["flag"].ToString();
                c.cnn.Close();
                if (status == "open")
                {
                    if (uname == txtname.Text && pass == txtpass.Text && sec == "0")
                    {
                        Session["name"] = uname;
                        Response.Redirect("~/chngeupfrst.aspx");
                        //MessageBox.Show("Login Successfull");
                    }
                    if (uname == txtname.Text && pass == txtpass.Text)
                    {
                        Session["name"] = uname;
                        MessageBox.Show("Login Successfull", "Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        Response.Redirect("~/uhome.aspx");
                    }

                    else
                    {
                        MessageBox.Show("Invalid Username or Password", "Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        Label1.Text = "invalid username or password,Relogin with correct username and password-no.of attempts remaining:" + (2 - attemptcount);
                        attemptcount = attemptcount + 1;
                    }
                }
                else
                {
                    Label1.Text = "Your account is locked...Contact administrator!!";
                }
            }
            if (attemptcount == 3)
            {
                Label1.Text = "your account has been locked due to 3 invalid attempts-contact administrator";
                setlockstatus(txtname.Text);
                attemptcount = 0;
                lnkchnge.Visible = false;
                lnksign.Visible = false;
            }
        }
        }
        private void setlockstatus(String name1)
            {

                String updateddata="update usert set flag='locked' where uname='"+ name1 +"'";
                SqlConnection cnn=new SqlConnection();
                c.cnn.Open();
                SqlCommand cmd=new SqlCommand();
                c.cmd.CommandText = updateddata;

                c.cmd.ExecuteNonQuery();
            }

    
    protected void lnksign_Click1(object sender, EventArgs e)
    {
        Response.Redirect("uforgot.aspx");
    }
    protected void lnkchnge_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            lblmsg.Text = "Thank You";
        }
        else
        {
            lblmsg.Text = "Fill up all the fields";
        }
    }
}
