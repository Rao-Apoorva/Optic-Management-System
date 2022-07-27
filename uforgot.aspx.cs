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

public partial class uforgot : System.Web.UI.Page
{
    static int attemptcount = 0;
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlConnection cnn = new SqlConnection();
    string uname2;
    protected void Page_Load(object sender, EventArgs e)
    {
        uname2 = (string)Session["user"];
        txtuser.Text = uname2;
        txtuser.Enabled = true;
      //  lblpas.Visible = true;
        txtpas.Visible = true;
     //  lblcpas.Visible = true;
        txtcpas.Visible = true;
       // lblqstn.Visible = true;
        lbl1.Visible = true;
        //lblanswr.Visible = true;
        txtanswr.Visible = true;
        btnsbmt.Visible = true;
        Label1.Visible = true;
        Label1.Text = "Your account will be blocked after 3 wrong answers";
        try
        {
            c = new connect();
            c.cmd.CommandText = "select sqtn from usert where uname='" + uname2 + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "qus1");
            if (ds.Tables["qus1"].Rows.Count > 0)
            {
                lbl1.Text = Convert.ToString(ds.Tables["qus1"].Rows[0][0]);
            }


            else
            {
                MessageBox.Show("Entered username is invalid");
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
  
    protected void btnsbmt_Click(object sender, EventArgs e)
    {
        if (txtpas.Text == "" || txtcpas.Text == "" || txtanswr.Text == "")
        {
            MessageBox.Show("enter all the fields");
           // lblpas.Visible = true;
            txtpas.Visible = true;
           // lblcpas.Visible = true;
            txtcpas.Visible = true;
           // lblqstn.Visible = true;
            lbl1.Visible = true;
           // lblanswr.Visible = true;
            txtanswr.Visible = true;
            btnsbmt.Visible = true;
            Label1.Visible = true;
        }
        else
        {

            String str1;
            try
            {
                c = new connect();
                uname2 = (string)Session["user"];
                c.cmd.CommandText = "select * from usert where uname='" + uname2 + "'";
                SqlCommand cmd = new SqlCommand();
                String uname;
                String que;
                String status;
                String ans;
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "qus1");
                str1 = Convert.ToString(ds.Tables["qus1"].Rows[0][0]);
                if (ds.Tables["qus1"].Rows.Count > 0)
                {
                    uname = ds.Tables["qus1"].Rows[0]["uname"].ToString();
                    que = ds.Tables["qus1"].Rows[0]["sqtn"].ToString();
                    ans = ds.Tables["qus1"].Rows[0]["sans"].ToString();
                    status = ds.Tables["qus1"].Rows[0]["flag"].ToString();
                    c.cnn.Close();
                    if (status == "open")
                    {
                        if (ans == txtanswr.Text)
                        {
                            c.cnn.Open();
                            c.cmd.CommandText = "update usert set upass='" + txtcpas.Text + "' where uname='" + uname2 + "'";
                            c.cmd.ExecuteNonQuery();
                            MessageBox.Show("Password changed");
                            Response.Redirect("~/user.aspx");
                        }
                        else
                        {
                            MessageBox.Show("Wrong Answer");
                            Label1.Text = "invalid answer,answer correctly-no.of attempts remaining:" + (2 - attemptcount);
                            attemptcount = attemptcount + 1;

                            txtanswr.Text = "";
                          //  lblpas.Visible = true;
                            txtpas.Visible = true;
                          //  lblcpas.Visible = true;
                            txtcpas.Visible = true;
                            //lblqstn.Visible = true;
                            lbl1.Visible = true;
                           // lblanswr.Visible = true;
                            txtanswr.Visible = true;
                            btnsbmt.Visible = true;
                            Label1.Visible = true;
                        }
                    }
                    else
                    {
                        MessageBox.Show("your account is already blocked");
                    }
                }
                if (attemptcount == 3)
                {
                    Label1.Text = "your account as been locked due to 3 invalid attempts CONTACT ADMINISTRATOR";
                    setlockstatus(txtuser.Text);
                    attemptcount = 0;

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
     
    private void setlockstatus(String name1)
    {
        String updateddata = "update usert set flag='locked' where uname='" + name1 + "'";
        SqlConnection cnn = new SqlConnection();
        c.cnn.Open();
        SqlCommand cmd = new SqlCommand();
        c.cmd.CommandText = updateddata;
        c.cmd.ExecuteNonQuery();

    }
    protected void txtuser_TextChanged(object sender, EventArgs e)
    {
       // lblpas.Visible = true;
        txtpas.Visible = true;
       // lblcpas.Visible = true;
        txtcpas.Visible = true;
        //lblqstn.Visible = true;
        lbl1.Visible = true;
       // lblanswr.Visible = true;
        txtanswr.Visible = true;
        btnsbmt.Visible = true;
        Label1.Visible = true;
    }
}
