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

public partial class aattend : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    int yr, td;
    protected void Page_Load(object sender, EventArgs e)
    {

        txtid.Enabled = false;
        txtyr.Enabled = false;
        txtmnth.Enabled = false;
        txttdays.Enabled = false;
        txtleave.Enabled = false;
        Button2.Visible = false;
        lblpay.Visible = false;
        txtpay.Visible = false;
        lblid.Visible = false;
        txtid.Visible = false;
        lblyr.Visible = false;
        txtyr.Visible = false;
        lblmnth.Visible = false;
        txtmnth.Visible = false;
        lbltdays.Visible = false;
        txttdays.Visible = false;
        lblleave.Visible = false;
        txtleave.Visible = false;
        lblltaken.Visible = false;
        txtleatak.Visible = false;
        lblelea.Visible = false;
        txteleave.Visible = false;
        lblwork.Visible = false;
        txtwdays.Visible = false;
        if (DropDownList1.Items.Count == 0)
        {
            c = new connect();
            c.cmd.CommandText = "select name from employee ";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt44");
            if (ds.Tables["dt44"].Rows.Count > 0)
            {
                DropDownList1.Items.Add("--Select--");
                int i;
                for (i = 0; i < ds.Tables["dt44"].Rows.Count; i++)
                {
                    DropDownList1.Items.Add(ds.Tables["dt44"].Rows[i].ItemArray[0].ToString());
                }
            }
        }
        yr = DateTime.Now.Year;
        txtyr.Text = yr.ToString();
        long m;
        m = Convert.ToInt32(DateTime.Now.Month);
        switch (m)
        {
            case 1: txtmnth.Text = "1";
                txttdays.Text = "27";
                break;
            case 2: txtmnth.Text = "2";
                if (yr == 0)
                {
                    txttdays.Text = "25";
                }
                else
                {
                    txttdays.Text = "24";
                }
                break;
            case 3: txtmnth.Text = "Mar";
                txttdays.Text = "27";
                break;
            case 4: txtmnth.Text = "April";
                txttdays.Text = "26";
                break;
            case 5: txtmnth.Text = "May";
                txttdays.Text = "27";
                break;
            case 6: txtmnth.Text = "June";
                txttdays.Text = "26";
                break;
            case 7: txtmnth.Text = "July";
                txttdays.Text = "27";
                break;
            case 8: txtmnth.Text = "Aug";
                txttdays.Text = "27";
                break;
            case 9: txtmnth.Text = "Sept";
                txttdays.Text = "26";
                break;
            case 10: txtmnth.Text = "Oct";
                txttdays.Text = "27";
                break;
            case 11: txtmnth.Text = "Nov";
                txttdays.Text = "26";
                break;
            case 12: txtmnth.Text = "dec";
                txttdays.Text = "27";
                break;
        }

    }
    protected void txtid_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            MessageBox.Show("Select name!!");
        }
        else
        {
            Button2.Visible = false;
            c = new connect();
            c.cmd.CommandText = "select * from employee where name='" + DropDownList1.SelectedItem.Text + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt2");
            if (ds.Tables["dt2"].Rows.Count > 0)
            {
                for (int i = 0; i <= ds.Tables["dt2"].Rows.Count - 1; i++)
                {
                    txtid.Text = Convert.ToString(ds.Tables["dt2"].Rows[i].ItemArray[0]);
                }
                lblid.Visible = true;
                txtid.Visible = true;

                //Button2.Visible = true;
                lblpay.Enabled = false;
                txtpay.Enabled = false;
                lblname.Visible = true;
                lblyr.Visible = true;
                txtyr.Visible = true;
                lblmnth.Visible = true;
                txtmnth.Visible = true;
                lbltdays.Visible = true;
                txttdays.Visible = true;
                lblleave.Visible = true;
                txtleave.Visible = true;
                lblltaken.Visible = true;
                txtleatak.Visible = true;
                lblelea.Enabled = false;
                txtleatak.Visible = true;
                lblwork.Enabled = false;
                txteleave.Enabled = false;
                txtwdays.Enabled = false;
                txtleave.Text = "4";
            }
            else
                MessageBox.Show("Enter valid id");
        }
    }
    protected void txtyr_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtleave_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtleatak_TextChanged(object sender, EventArgs e)
    {
        int todays, ltkn;
        todays = Convert.ToInt16(txttdays.Text);
        ltkn = Convert.ToInt16(txtleatak.Text);
        if (ltkn > todays)
        {
            MessageBox.Show("Leave taken is greater than total days");

            txtpay.Visible = false;
            lblpay.Visible = false;
            lblwork.Visible = false;
            txtwdays.Visible = false;
            lblelea.Visible = false;
            txteleave.Visible = false;
            Button2.Visible = false;
            txtleatak.Visible = true;
            lblid.Visible = true;
            txtid.Visible = true;
            lblyr.Visible = true;
            txtyr.Visible = true;
            lblmnth.Visible = true;
            txtmnth.Visible = true;
            lbltdays.Visible = true;
            txttdays.Visible = true;
            lblltaken.Visible = true;
            lblleave.Visible = true;
            txtleave.Visible = true;

        }
        else if (todays == ltkn)
        {
            MessageBox.Show("Entire month leave");
            txtleave.Visible = false;
            txtpay.Visible = false;
            lblpay.Visible = false;
            lblwork.Visible = false;
            lblelea.Visible = false;
            Button2.Visible = false;
            txtleatak.Visible = false;
            txteleave.Visible = false;
            txtwdays.Visible = false;
            lblyr.Visible = false;
            txtyr.Visible = false;
            lblmnth.Visible = false;
            txtmnth.Visible = false;
            lbltdays.Visible = false;
            txttdays.Visible = false;
            lblleave.Visible = false;
            txtleave.Visible = false;
            lblltaken.Visible = false;
            lblpay.Visible = false;
            lblwork.Visible = false;
            lblid.Visible = false;
            txtid.Visible = false;
        }

        else if (txtleatak.Text == "")
        {
            MessageBox.Show("enter leave taken");
        }
        else
        {
            double tdays, altd, ltaken, xtra, tworking, dummy;
            double xtrapay = 100;
            tdays = Convert.ToDouble(txttdays.Text);
            altd = Convert.ToDouble(txtleave.Text);
            ltaken = Convert.ToDouble(txtleatak.Text);
            if (ltaken > 4)
            {
                xtra = ltaken - altd;
                txteleave.Text = Convert.ToString(xtra);
                dummy = (double)xtra * xtrapay;
                txtpay.Text = Convert.ToString(dummy);

            }
            if (ltaken <= 4)
            {
                xtra = 0;
                txteleave.Text = Convert.ToString(xtra);
                txtpay.Text = "nill";
            }
            tworking = tdays - ltaken;
            txtwdays.Text = Convert.ToString(tworking);
            lblid.Visible = true;
            txtid.Visible = true;
            lblyr.Visible = true;
            txtyr.Visible = true;
            lblmnth.Visible = true;
            txtmnth.Visible = true;
            lbltdays.Visible = true;
            txttdays.Visible = true;
            lblleave.Visible = true;
            txtleave.Visible = true;
            lblltaken.Visible = true;
            txtleatak.Visible = true;
            lblelea.Visible = true;
            txtleatak.Visible = true;
            lblwork.Visible = true;
            txteleave.Visible = true;
            txtwdays.Visible = true;
            lblpay.Visible = true;
            txtpay.Visible = true;
            Button2.Visible = true;
            Button2.Visible = true;
            lblpay.Enabled = true;
            lblelea.Enabled = true;
            lblwork.Enabled = true;
        }
        //  else
        //{
        //    txteleave.Visible = true;
        //    txtpay.Visible = true;
        //    txtwdays.Visible = true;
        //    lblyr.Visible = true;
        //    txtleave.Visible = true;
        //    txtpay.Visible = true;
        //    lblpay.Visible = true;
        //    lblwork.Visible = true;
        //    lblelea.Visible = true;
        //    Button2.Visible = true;
        //    txtleatak.Visible = true;
        //    txteleave.Visible = true;
        //    txtwdays.Visible = true;
        //    lblyr.Visible = true;
        //    txtyr.Visible = true;
        //    lblmnth.Visible = true;
        //    txtmnth.Visible = true;
        //    lbltdays.Visible = true;
        //    txttdays.Visible = true;
        //    lblleave.Visible = true;
        //    txtleave.Visible = true;
        //    lblltaken.Visible = true;
        //    lblpay.Visible = true;
        //    lblwork.Visible = true;
        //    lblid.Visible = true;
        //    txtid.Visible = true;
        //}
        c = new connect();
        string m1;
        DateTime mydate = DateTime.Now;
        m1 = mydate.Month.ToString();
        c.cmd.CommandText = "select employee.name,attendance.year,attendance.month,attendance.tdays,attendance.rmnd,attendance.workdays,attendance.epay from employee,attendance where employee.empid=attendance.empid and month='" + m1 + "' and attendance.empid='" + txtid.Text + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "mnth");
        if (ds.Tables["mnth"].Rows.Count > 0)
        {
            MessageBox.Show("cal");
            lblid.Visible = false;
            txtid.Visible = false;
            lblyr.Visible = false;
            txtyr.Visible = false;
            lblmnth.Visible = false;
            txtmnth.Visible = false;
            lbltdays.Visible = false;
            txttdays.Visible = false;
            lblleave.Visible = false;
            txtleave.Visible = false;
            lblltaken.Visible = false;
            txtleatak.Visible = false;
            lblelea.Visible = false;
            txtleatak.Visible = false;
            lblwork.Visible = false;
            txteleave.Visible = false;
            txtwdays.Visible = false;
            lblpay.Visible = false;
            txtpay.Visible = false;
            Button2.Visible = false;
            Button2.Visible = false;
            lblpay.Enabled = false;
            lblelea.Enabled = false;
            lblwork.Enabled = false;
            GridView1.DataSource = ds.Tables["mnth"];
            GridView1.DataBind();
        }




    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        td = DateTime.Now.Day;
        c = new connect();
        //c.cmd.CommandText = "select * from attendence where empid='" + txtid.Text + "'";
        //adp.SelectCommand = c.cmd;
        //DataSet ds = new DataSet();
        //adp.Fill(ds, "att");
        //if (ds.Tables["att"].Rows.Count > 0)
        //{
        //    MessageBox.Show("records present");
        //}      
        if (td < 28)
        {
            MessageBox.Show("you cannot calculate attendance before end of month");
        }
        else if (txtleatak.Text == "")
        {
            MessageBox.Show("Enter leave taken");
        }
        else
        {

            try
            {
                //        c = new connect();
                //   string m1;
                //   DateTime mydate = DateTime.Now;
                //         m1 = mydate.Month.ToString();
                //         c.cmd.CommandText = "select empid from attendence where month='" + m1 + "' and empid='" + txtid.Text + "'";
                //ds = new DataSet();
                //adp.SelectCommand = c.cmd;
                //adp.Fill(ds, "mnth");
                //if (ds.Tables["mnth"].Rows.Count > 0)
                //{
                //    MessageBox.Show("cal");
                //}
                //else
                //{
                string m2;
                DateTime mydate1 = DateTime.Now;
                m2 = mydate1.Month.ToString();
                c = new connect();
                c.cmd.CommandText = "insert into attendence values(@empid,@year,@month,@tdays,@leave,@rmnd,@exlea,@workdays,@epay)";
                c.cmd.Parameters.Add("@empid", SqlDbType.NVarChar).Value = txtid.Text;
                c.cmd.Parameters.Add("@year", SqlDbType.BigInt).Value = Convert.ToInt16(txtyr.Text);
                c.cmd.Parameters.Add("@month", SqlDbType.NVarChar).Value = m2;
                c.cmd.Parameters.Add("@tdays", SqlDbType.BigInt).Value = Convert.ToInt16(txttdays.Text);
                c.cmd.Parameters.Add("@leave", SqlDbType.BigInt).Value = Convert.ToInt16(txtleave.Text);
                c.cmd.Parameters.Add("@rmnd", SqlDbType.BigInt).Value = Convert.ToInt16(txtleatak.Text);
                c.cmd.Parameters.Add("exlea", SqlDbType.BigInt).Value = Convert.ToInt16(txteleave.Text);
                c.cmd.Parameters.Add("@workdays", SqlDbType.BigInt).Value = Convert.ToInt16(txtwdays.Text);
                c.cmd.Parameters.Add("@epay", SqlDbType.Float).Value = Convert.ToDouble(txtpay.Text);
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("Updated");

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

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}

