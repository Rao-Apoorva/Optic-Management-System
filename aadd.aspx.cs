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


public partial class aadd : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        Calendar2.Visible = false;

        Label1.Text = DateTime.Today.ToShortDateString();
        if (!IsPostBack)
        {
            loadyears();
            loadmonths();
        }
        if (!IsPostBack)
        {
            try
            {
                c = new connect();
                String eo = "EMP";
                int count;
                c.cmd.CommandText = "select count(empid) from employee";
                count = Convert.ToInt32(c.cmd.ExecuteScalar()) + 1;
                Label14.Text = eo + count.ToString();

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

    private void loadyears()
    {
        DataSet dsyears = new DataSet();
        dsyears.ReadXml(Server.MapPath("~/Year.xml"));
        DropDownList1.DataTextField = "Number";
        DropDownList1.DataValueField = "Number";
        DropDownList1.DataSource = dsyears;
        DropDownList1.DataBind();
    }
    private void loadmonths()
    {
        DataSet dsmonths = new DataSet();
        dsmonths.ReadXml(Server.MapPath("~/Month.xml"));
        DropDownList3.DataTextField = "Name";
        DropDownList3.DataValueField = "Number";
        DropDownList3.DataSource = dsmonths;
        DropDownList3.DataBind();
    }


    protected void btnadd_Click(object sender, EventArgs e)
    {
        c = new connect();
        c.cmd.CommandText = "select * from employee where name='" + txtname.Text + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "name");
        if (ds.Tables["name"].Rows.Count > 0)
        {
            MessageBox.Show("Same employee name already exists...check name!!!");
        }
        else
        {
            try
            {
                c = new connect();
                if (txtname.Text == "" || txtphn.Text == "" || txtmail.Text == "" || txtaltphn.Text == "" || txtaddrs.Text == "" || TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || DropDownList2.SelectedIndex == 0)
                {
                    MessageBox.Show("Enter all fields!!");
                }
                else
                {
                    c.cmd.CommandText = "insert into employee values(@empid,@name,@gender,@dob,@phno,@alno,@addr,@email,@design,@basic,@doj,@Bank,@Branch,@Accno,@status)";
                    c.cmd.Parameters.Add("@empid", SqlDbType.NVarChar).Value = Label14.Text;
                    c.cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = txtname.Text;
                    c.cmd.Parameters.Add("@gender", SqlDbType.NVarChar).Value = TextBox1.Text;
                    c.cmd.Parameters.Add("@dob", SqlDbType.NVarChar).Value = Label2.Text;
                    c.cmd.Parameters.Add("@phno", SqlDbType.BigInt).Value = txtphn.Text;
                    c.cmd.Parameters.Add("@alno", SqlDbType.BigInt).Value = txtaltphn.Text;
                    c.cmd.Parameters.Add("@addr", SqlDbType.NVarChar).Value = txtaddrs.Text;
                    c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtmail.Text;
                    c.cmd.Parameters.Add("@design", SqlDbType.NVarChar).Value = DropDownList2.SelectedItem.Text;
                    c.cmd.Parameters.Add("@basic", SqlDbType.NVarChar).Value = DropDownList2.SelectedValue;
                    c.cmd.Parameters.Add("@doj", SqlDbType.NVarChar).Value = Label1.Text;
                    c.cmd.Parameters.Add("@bank", SqlDbType.NVarChar).Value = TextBox2.Text;
                    c.cmd.Parameters.Add("@branch", SqlDbType.NVarChar).Value = TextBox3.Text;
                    c.cmd.Parameters.Add("@accno", SqlDbType.Float).Value = Convert.ToDouble(TextBox4.Text);
                    c.cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = "Active";
                    c.cmd.ExecuteNonQuery();
                    MessageBox.Show("Employee Id created");
                    Label1.Text = "";
                    Label14.Text = "";
                    txtname.Text = "";
                    Label2.Text = "";
                    txtphn.Text = "";
                    txtaddrs.Text = "";
                    txtmail.Text = "";
                    DropDownList1.SelectedIndex = 0;
                    DropDownList2.SelectedIndex = 0;
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox1.Text = "";
                    txtaltphn.Text = "";
                    Label1.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = false;
                    Label4.Visible = false;
                    Label5.Visible = false;
                    Label6.Visible = false;
                    Label7.Visible = false;
                    Label8.Visible = false;
                    Label9.Visible = false;
                    Label10.Visible = false;
                    Label11.Visible = false;
                    Label12.Visible = false;
                    Label14.Visible = false;
                    Label15.Visible = false;
                    Label16.Visible = false;
                    Label17.Visible = false;
                    btnadd.Visible = false;
                    TextBox1.Visible = false;
                    TextBox2.Visible = false;
                    TextBox3.Visible = false;
                    TextBox4.Visible = false;
                    txtaddrs.Visible = false;
                    txtaltphn.Visible = false;
                    txtmail.Visible = false;
                    txtname.Visible = false;
                    txtphn.Visible = false;
                    DropDownList1.Visible = false;
                    DropDownList2.Visible = false;
                    DropDownList3.Visible = false;
                    Calendar2.Visible = false;

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


   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Calendar2.Visible = false;
        int year = Convert.ToInt16(DropDownList1.SelectedValue);
        int month = Convert.ToInt16(DropDownList3.SelectedValue);
        Calendar2.VisibleDate = new DateTime(year, month, 1);
        Calendar2.SelectedDate = new DateTime(year, month, 1);
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
        int year = Convert.ToInt16(DropDownList1.SelectedValue);
        int month = Convert.ToInt16(DropDownList3.SelectedValue);
        Calendar2.VisibleDate = new DateTime(year, month, 1);
        Calendar2.SelectedDate = new DateTime(year, month, 1);
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        Calendar2.Visible = false;
        Label2.Text = Calendar2.SelectedDate.ToShortDateString();
    }

    protected void txtname_TextChanged(object sender, EventArgs e)
    {
        if (!System.Text.RegularExpressions.Regex.IsMatch(txtname.Text, "^[a-zA-Z]"))
        {
            MessageBox.Show("This textbox accepts onlynalphabetical charecters");
            txtname.Text = "";
            txtname.Focus();
            txtname.TabIndex = 1;
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string txt = TextBox1.Text.Trim();
        string txt1 = txt.ToUpper();
        if (txt1 == "MALE" || txt1 == "FEMALE" || txt1 == "OTHER")
        {

        }
        else
        {
            MessageBox.Show("only male.. female.. other");
        }

    }
  
    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }



    protected void btnclr_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtphn.Text = "";
        //Label14.Text = "";
        txtaddrs.Text = "";
        txtmail.Text = "";
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox1.Text = "";
        txtaltphn.Text = "";
    }
}

