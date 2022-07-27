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


public partial class asalary : System.Web.UI.Page
{
    int td;
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["payslip"] = Label3;
        txtbonus.Visible = false;
        Label4.Visible = false;
        lblpaydate.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        lblname.Visible = false;
        txtdesign.Visible = false;
        Label2.Visible = false;
        txtbasic.Visible = false;
        txtda.Visible = false;
        txthra.Visible = false;
        txtgross.Visible = false;
        txtpf.Visible = false;
        txtpay.Visible = false;
        lbldesig.Visible = false;
        lblgross.Visible = false;
        lblda.Visible = false;
        lblhra.Visible = false;
        lblpf.Visible = false;
        lbltotpay.Visible = false;
        Label1.Visible = false;

        btnsave.Visible = false;
        lblcpay.Visible = false;
        txtcpay.Visible = false;
        lblextr.Visible = false;
        txtextra.Visible = false;
        if (DropDownList.Items.Count == 0)
        {
            c = new connect();
            //c.cmd.CommandText = "select employee.name from employee,attendance where employee.empid=attendance.empid";
            c.cmd.CommandText = "select name from employee ";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt4");
            if (ds.Tables["dt4"].Rows.Count > 0)
            {
                DropDownList.Items.Add("--Select--");
                int i;
                for (i = 0; i < ds.Tables["dt4"].Rows.Count; i++)
                {
                    DropDownList.Items.Add(ds.Tables["dt4"].Rows[i].ItemArray[0].ToString());
                }
            }

        }
    }
    protected void btncheck_Click(object sender, EventArgs e)
    {
        if (DropDownList.SelectedIndex == 0)
        {
            MessageBox.Show("Select name!!");
        }
        else
        {
            txtcpay.Enabled = false;
            txtextra.Enabled = false;
            txtdesign.Enabled = false;
            txtbasic.Enabled = false;
            Label2.Text = DateTime.Today.ToShortDateString();
            c = new connect();
            ds = new DataSet();
            c.cmd.CommandText = "select exlea,epay from attendance where empid='" + Label3 + "'";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "pay");
            if (ds.Tables["pay"].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables["pay"].Rows.Count; i++)
                {
                    txtcpay.Text = Convert.ToString(ds.Tables["pay"].Rows[i].ItemArray[0]);
                    txtextra.Text = Convert.ToString(ds.Tables["pay"].Rows[i].ItemArray[1]);
                }
            }
            c = new connect();
            c.cmd.CommandText = "select design,basic from employee where name='" + DropDownList.SelectedItem + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt2");
            if (ds.Tables["dt2"].Rows.Count > 0)
            {
                for (int i = 0; i <= ds.Tables["dt2"].Rows.Count - 1; i++)
                {

                    txtdesign.Text = Convert.ToString(ds.Tables["dt2"].Rows[i].ItemArray[0]);
                    txtbasic.Text = Convert.ToString(ds.Tables["dt2"].Rows[i].ItemArray[1]);
                }

            }
            else
            {
                MessageBox.Show("Invalid ID");




            }
            Label4.Visible = true;
            txtbonus.Visible = true;
            lblpaydate.Visible = true;
            Label2.Visible = true;
           // TextBox1.Visible = true;
            Label3.Visible = true;
            txtdesign.Visible = true;
            txtbasic.Visible = true;
            txtda.Visible = true;
            txthra.Visible = true;
            txtgross.Visible = true;
            txtpf.Visible = true;
            txtpay.Visible = true;
            lbldesig.Visible = true;
            lblgross.Visible = true;
            lblda.Visible = true;
            lblhra.Visible = true;
            lblpf.Visible = true;
            lbltotpay.Visible = true;
            Label1.Visible = true;

            btnsave.Visible = true;
            lblcpay.Visible = true;
            txtcpay.Visible = true;
            lblextr.Visible = true;
            txtextra.Visible = true;
            btncheck.Visible = false;
            lblname.Visible = true;


        }
    }

    protected void txtbonus_TextChanged(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            Double basic, da, hra, pf, gross, total, expay, bon = 0;
            bon = Convert.ToDouble(txtbonus.Text);
            expay = Convert.ToDouble(txtcpay.Text);

            basic = Convert.ToDouble(txtbasic.Text);
            if (basic <= 20000)
            {
                da = (double)basic * 0.4;
                hra = (double)basic * 0.3;

            }
            else
            {
                da = (double)basic * 0.2;
                hra = (double)basic * 0.1;

            }
            gross = (double)basic + da + hra;
            pf = (double)gross * 0.12;
            total = (double)gross - pf - expay + bon;
            txtda.Text = Convert.ToString(da);
            txthra.Text = Convert.ToString(hra);
            txtgross.Text = Convert.ToString(gross);
            txtpf.Text = Convert.ToString(pf);
            txtpay.Text = Convert.ToString(total);
            lblpaydate.Visible = true;
            txtdesign.Visible = true;
            txtbasic.Visible = true;
            txtda.Visible = true;
            txthra.Visible = true;
            txtgross.Visible = true;
            txtpf.Visible = true;
            txtpay.Visible = true;
            lbldesig.Visible = true;
            lblpaydate.Visible = true;
            Label2.Visible = true;
          //  TextBox1.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            txtbonus.Visible = true;
            lblgross.Visible = true;
            lblda.Visible = true;
            lblhra.Visible = true;
            lblpf.Visible = true;
            lbltotpay.Visible = true;
            Label1.Visible = true;

            btnsave.Visible = true;
            lblcpay.Visible = true;
            txtcpay.Visible = true;
            lblextr.Visible = true;
            txtextra.Visible = true;

            lblname.Visible = true;
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

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }

    protected void btnsave_Click1(object sender, EventArgs e)
    {
        td = DateTime.Now.Day;
        c = new connect();
        c.cmd.CommandText = "select * from salary where empid='" + Label3 + "'";
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "sal");
        if (ds.Tables["sal"].Rows.Count > 0)
        {
            MessageBox.Show("records present");
        }
        else if (td < 28)
        {
            MessageBox.Show("you cannot calculate attendance before end of month");
        }
        else if (txtbonus.Text == "")
        {
            MessageBox.Show("Enter Bonus Amount!!");
        }
        else
        {
            try
            {
                c = new connect();
                // c.cmd.CommandText = "select * from empdt where name='" + DropDownList1.SelectedItem + "'";
                //ds = new DataSet();
                //adp.SelectCommand = c.cmd;
                //adp.Fill(ds, "dt12");
                //if (ds.Tables["dt12"].Rows.Count > 0)
                //{
                //    MessageBox.Show("This details already exists");
                //}
                //else
                //{
                //    if (txtempid.Text != "" && Label2.Text != "" && txtbasic.Text != "")
                //    {
                c.cmd.CommandText = "insert into salary values(@empid,@month,@year,@paydate,@basic,@bonus,@da,@hra,@gross,@pf,@extraleave,@deduction,@totalpay)";
                c.cmd.Parameters.Add("@empid", SqlDbType.NVarChar).Value = Label3;
                c.cmd.Parameters.Add("@month", SqlDbType.Int).Value = DateTime.Now.Month;
                c.cmd.Parameters.Add("@year", SqlDbType.Int).Value = DateTime.Now.Year;
                //c.cmd.Parameters.Add("@empname", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
                c.cmd.Parameters.Add("@paydate", SqlDbType.NVarChar).Value = Label2.Text;
                c.cmd.Parameters.Add("@basic", SqlDbType.Float).Value = Convert.ToDouble(txtbasic.Text);
                c.cmd.Parameters.Add("@bonus", SqlDbType.Float).Value = Convert.ToDouble(txtbonus.Text);
                c.cmd.Parameters.Add("@da", SqlDbType.Float).Value = Convert.ToDouble(txtda.Text);
                c.cmd.Parameters.Add("@hra", SqlDbType.Float).Value = Convert.ToDouble(txthra.Text);
                c.cmd.Parameters.Add("@gross", SqlDbType.Float).Value = Convert.ToDouble(txtgross.Text);
                c.cmd.Parameters.Add("@pf", SqlDbType.Float).Value = Convert.ToDouble(txtpf.Text);
                
                c.cmd.Parameters.Add("@extraleave", SqlDbType.BigInt).Value = Convert.ToInt16(txtextra.Text);
                c.cmd.Parameters.Add("@deduction", SqlDbType.Float).Value = Convert.ToDouble(txtcpay.Text);
                c.cmd.Parameters.Add("@totalpay", SqlDbType.Float).Value = Convert.ToDouble(txtpay.Text);
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("saved successfully");
                Response.Redirect("~/payslip.aspx");
                //    }
                //    else
                //    {
                //        MessageBox.Show("Enter all the fields");
                //    }
                //}

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
    protected void DropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        c = new connect();
        c.cmd.CommandText = "select empid from employee where name='" + DropDownList.SelectedItem.Text + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "es1");
        if (ds.Tables["es1"].Rows.Count > 0)
        {
            Label3.Text = Convert.ToString(ds.Tables["es1"].Rows[0][0]);
        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}

