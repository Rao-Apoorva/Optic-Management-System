using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class admin : System.Web.UI.Page
{
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["aname"] = txtname.Text;
    }
    protected void btnsign_Click(object sender, EventArgs e)
    {
       c = new connect();
        if (txtname.Text == "" || txtpass.Text == "")
        {
            MessageBox.Show("enter all the fields");
        }
        else
        {
            c = new connect();
            c.cmd.CommandText = "select * from admint where aname='" + txtname.Text + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            string aname;
            string apass;
          //  string sec1;
            adp.Fill(ds, "login");
            if (ds.Tables["login"].Rows.Count > 0)
            {
                aname = ds.Tables["login"].Rows[0]["aname"].ToString();
                apass = ds.Tables["login"].Rows[0]["apass"].ToString();
              //  sec1 = ds.Tables["login"].Rows[0]["sque"].ToString();
                c.cnn.Close();
             //   if (aname == txtname.Text && apass == txtpass.Text)
             //   {
              //      Response.Redirect("~/ahome.aspx");
           //     }
              
                if (aname == txtname.Text && apass == txtpass.Text)
                {
                    MessageBox.Show("Login Successfull");
                    Response.Redirect("~/ahome.aspx");
                }
                else
                {
                    MessageBox.Show("Login failed!!!!");
                }
            }
            else
            { 
                MessageBox.Show("Invalid username or password!!");
            }
        }
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
    protected void lnksign_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ahome.aspx");
    }
    protected void lnkchnge_Click(object sender, EventArgs e)
    {
        Response.Redirect("achange.aspx");
    }
}
