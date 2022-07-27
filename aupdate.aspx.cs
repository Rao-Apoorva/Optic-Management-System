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

public partial class aupdate : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (DropDownList4.Items.Count == 0)
        //{
        //    c = new connect();
        //    c.cmd.CommandText = "select name from empdt";
        //    ds = new DataSet();
        //    adp.SelectCommand = c.cmd;
        //    adp.Fill(ds, "dt4");
        //    if (ds.Tables["dt4"].Rows.Count > 0)
        //    {
        //        DropDownList4.Items.Add("--Select--");
        //        int i;
        //        for (i = 0; i < ds.Tables["dt4"].Rows.Count; i++)
        //        {
        //            DropDownList4.Items.Add(ds.Tables["dt4"].Rows[i].ItemArray[0].ToString());
        //        }
        //    }
        //}
        Label12.Visible = false;
        Label1.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        txtaddrs.Visible = false;
        txtaltphn.Visible = false;
        txtmail.Visible = false;
        txtname.Visible = false;
        txtphn.Visible = false;
        DropDownList1.Visible = false;
        Calendar1.Visible = false;
        DropDownList2.Visible = false;
        DropDownList3.Visible = false;
        Calendar2.Visible = false;
        btnupdate.Visible = false;
        TextBox1.Visible = false;
        if (!IsPostBack)
        {
            loadyears();
            loadmonths();
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
    protected void btnedit_Click(object sender, EventArgs e)
    {
        if (DropDownList4.SelectedIndex == 0)
        {
            MessageBox.Show("Select name!!");
        }
        else
        {
            Label11.Visible = true;
            TextBox1.Visible = true;
            Label1.Visible = true;
            Label10.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            txtaddrs.Visible = true;
            txtaltphn.Visible = true;
            txtmail.Visible = true;
            txtname.Visible = true;
            txtphn.Visible = true;
            DropDownList1.Visible = true;
            Calendar1.Visible = true;
            DropDownList2.Visible = true;
            DropDownList3.Visible = true;
            Calendar2.Visible = true;
            Label12.Visible = true;
            btnupdate.Visible = true;
            c = new connect();
            c.cmd.CommandText = "select * from employee where name='" + DropDownList4.SelectedItem + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt3");
            if (ds.Tables["dt3"].Rows.Count > 0)
            {
                for (int i = 0; i <= ds.Tables["dt3"].Rows.Count - 1; i++)
                {
                    txtname.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[1]);
                    TextBox1.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[2]);
                    Label2.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[3]);
                    txtphn.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[4]);
                    txtaltphn.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[5]);
                    txtaddrs.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[6]);
                    txtmail.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[7]);
                    DropDownList2.SelectedItem.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[8]);
                    Label1.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[10]);
                }
            }
            else
                MessageBox.Show("record not found");
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "update employee set name='" + txtname.Text + "',gender='" + TextBox1.Text + "',dob='" + Label2.Text + "' ,phno='" + txtphn.Text + "',alno='" + txtaltphn.Text + "',adder='" + txtaddrs.Text + "',email='" + txtmail.Text + "',design='" + DropDownList2.SelectedItem.Text + "',doj='" + Label1.Text + "'where name='" + DropDownList4.SelectedItem + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt3");
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("update successfull");
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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label11.Visible = true;
        TextBox1.Visible = true;
        Label1.Visible = true;
        Label10.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        Label8.Visible = true;
        Label9.Visible = true;
        txtaddrs.Visible = true;
        txtaltphn.Visible = true;
        txtmail.Visible = true;
        txtname.Visible = true;
        txtphn.Visible = true;
        DropDownList1.Visible = true;
        Calendar1.Visible = true;
        DropDownList2.Visible = true;
        DropDownList3.Visible = true;
        Calendar2.Visible = true;
        Label12.Visible = true;
        btnupdate.Visible = true;
        int year = Convert.ToInt16(DropDownList1.SelectedValue);
        int month = Convert.ToInt16(DropDownList3.SelectedValue);
        Calendar2.VisibleDate = new DateTime(year, month, 1);
        Calendar2.SelectedDate = new DateTime(year, month, 1);
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label11.Visible = true;
        TextBox1.Visible = true;
        Label1.Visible = true;
        Label10.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        Label8.Visible = true;
        Label9.Visible = true;
        txtaddrs.Visible = true;
        txtaltphn.Visible = true;
        txtmail.Visible = true;
        txtname.Visible = true;
        txtphn.Visible = true;
        DropDownList1.Visible = true;
        Calendar1.Visible = true;
        DropDownList2.Visible = true;
        DropDownList3.Visible = true;
        Calendar2.Visible = true;
        Label12.Visible = true;
        btnupdate.Visible = true;
        int year = Convert.ToInt16(DropDownList1.SelectedValue);
        int month = Convert.ToInt16(DropDownList3.SelectedValue);
        Calendar2.VisibleDate = new DateTime(year, month, 1);
        Calendar2.SelectedDate = new DateTime(year, month, 1);
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        Label2.Text = Calendar2.SelectedDate.ToShortDateString();
        Label11.Visible = true;
        TextBox1.Visible = true;
        Label1.Visible = true;
        Label10.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        Label8.Visible = true;
        Label9.Visible = true;
        txtaddrs.Visible = true;
        txtaltphn.Visible = true;
        txtmail.Visible = true;
        txtname.Visible = true;
        txtphn.Visible = true;
        DropDownList1.Visible = true;
        Calendar1.Visible = true;
        DropDownList2.Visible = true;
        DropDownList3.Visible = true;
        Calendar2.Visible = true;
        Label12.Visible = true;
        btnupdate.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = Calendar1.SelectedDate.ToShortDateString();
        Label11.Visible = true;
        TextBox1.Visible = true;
        Label1.Visible = true;
        Label10.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        Label8.Visible = true;
        Label9.Visible = true;
        txtaddrs.Visible = true;
        txtaltphn.Visible = true;
        txtmail.Visible = true;
        txtname.Visible = true;
        txtphn.Visible = true;
        DropDownList1.Visible = true;
        Calendar1.Visible = true;
        DropDownList2.Visible = true;
        DropDownList3.Visible = true;
        Calendar2.Visible = true;
        Label12.Visible = true;
        btnupdate.Visible = true;
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtaddrs_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtmail_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtphn_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtaltphn_TextChanged(object sender, EventArgs e)
    {

    }
}

