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


public partial class asupdate : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label14.Visible = false;
        Label12.Visible = false;
        Label13.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        Label1.Visible = false;
        txtsname.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;

        btnupdate.Visible = false;

        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        //Label10.Visible = false;
        txtpin.Visible = false;
        txtphno.Visible = false;
        txtemail.Visible = false;
        txtaphno.Visible = false;
        txtaddr.Visible = false;
        TextBox2.Visible = false;
        DropDownList1.Visible = false;


        Label11.Visible = false;
        if (DropDownList2.Items.Count == 0)
        {
            c = new connect();
            c.cmd.CommandText = "select sid from supplier";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt4");
            if (ds.Tables["dt4"].Rows.Count > 0)
            {
                DropDownList2.Items.Add("--Select--");
                int i;
                for (i = 0; i < ds.Tables["dt4"].Rows.Count; i++)
                {
                    DropDownList2.Items.Add(ds.Tables["dt4"].Rows[i].ItemArray[0].ToString());
                }
            }
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
         Label14.Visible = false;
        Label12.Visible = false;
        Label13.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        Label11.Visible = true;
        txtsname.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
   
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        //Label10.Visible = false;
        txtpin.Visible = false;
        txtphno.Visible = false;
        txtemail.Visible = false;
        txtaphno.Visible = false;
        txtaddr.Visible = false;
        TextBox2.Visible = false;
        DropDownList1.Visible = false;
   
        //CheckBoxList1.Visible = false;
  
        //string chbxselect = "";
        //for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        //{
        //    if (CheckBoxList1.Items[i].Selected)
        //    {
        //        if (chbxselect == "")
        //        {
        //            chbxselect = CheckBoxList1.Items[i].Text;
        //        }
        //        else
        //        {
        //            chbxselect += "," + CheckBoxList1.Items[i].Text;
        //        }
        //    }
        //}
        try
        {
            c = new connect();
            c.cmd.CommandText = "update supplier set sname='" + txtsname.Text + "',phno='" + txtphno.Text + "',altphno='" + txtaphno.Text + "' ,addr='" + txtaddr.Text + "',pincode='" + txtpin.Text + "',mail='" + txtemail.Text + "',bname='"+DropDownList1.SelectedItem.Text+"',Branch='"+TextBox3.Text+"',accno='"+TextBox2.Text+"',IFSC='"+TextBox4.Text+"' where sname='" + DropDownList2.SelectedItem.Text + "'";
            c.cmd.ExecuteNonQuery();
            c.cmd.CommandText = "select * from supplier where sname='" + DropDownList2.SelectedItem.Text + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt4");
            if (ds.Tables["dt4"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["dt4"];
                GridView1.DataBind();
            }
           
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
    
    protected void btnedit_Click(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex == 0)
        {
            MessageBox.Show("Select name to be edited!!");
        }
        else
        {
            Label14.Visible = true;
            Label12.Visible = true;
            Label13.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            Label11.Visible = true;
            Label1.Visible = true;
            txtsname.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            btnupdate.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            //Label10.Visible = true;
            txtpin.Visible = true;
            txtphno.Visible = true;
            txtemail.Visible = true;
            txtaphno.Visible = true;
            txtaddr.Visible = true;
            TextBox2.Visible = true;
            DropDownList1.Visible = true;

            //CheckBoxList1.Visible = true;

            //string chbxselect = "";
            //for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            //{
            //    if (CheckBoxList1.Items[i].Selected)
            //    {
            //        if (chbxselect == "")
            //        {
            //            chbxselect = CheckBoxList1.Items[i].Text;
            //        }
            //        else
            //        {
            //            chbxselect += "," + CheckBoxList1.Items[i].Text;
            //        }
            //    }
            //}

            c = new connect();
            c.cmd.CommandText = "select * from supplier where sname='" + DropDownList2.SelectedItem.Text + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dt3");
            if (ds.Tables["dt3"].Rows.Count > 0)
            {
                for (int i = 0; i <= ds.Tables["dt3"].Rows.Count - 1; i++)
                {
                    txtsname.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[1]);
                    txtphno.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[2]);
                    txtaphno.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[3]);
                    txtaddr.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[4]);

                    txtpin.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[5]);
                    txtemail.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[6]);
                    //chbxselect= Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[8]);
                    DropDownList1.SelectedItem.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[7]);
                    TextBox3.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[8]);
                    TextBox2.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[9]);
                    TextBox4.Text = Convert.ToString(ds.Tables["dt3"].Rows[i].ItemArray[10]);
                }
            }
            else
                MessageBox.Show("Record not found!!");
        }
    }
}
