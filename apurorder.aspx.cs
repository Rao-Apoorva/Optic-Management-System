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

public partial class apurorder : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        btnnxt.Enabled = false;
        lblorderd.Text = DateTime.Today.ToShortDateString();
        if (!IsPostBack)
        {
            try
            {
                c = new connect();
                String po = "PO";
                int count;
                c.cmd.CommandText = "select count(Pono)from porder";
                count = Convert.ToInt32(c.cmd.ExecuteScalar()) + 1;
                Label2.Text = po + count.ToString();

            }
            catch (Exception)
            {
               

            }
            finally
            {
                c.cnn.Close();
            }
        }
    }
    protected void btnrsave_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        btnnxt.Enabled = true;
        btnrsave.Enabled = false;
        if (DropDownList1.SelectedIndex == 0)
        {
            MessageBox.Show("Select supplier Name");
            Panel1.Visible = false;
        }


        DateTime d = DateTime.Now.Date;
        DateTime d1 = Convert.ToDateTime(lbldues.Text.Trim()).Date;
        //            string d = DateTime.Now.ToString("dd/MM/yyyy");
        //string d1=lbldues.Text;
        //int d = Convert.ToInt16(DateTime.Now.Date);
        ////int y = DateTime.Now.Year;
        ////int m = DateTime.Now.Month;
        //int d1 = Convert.ToInt16(Calendar3.SelectedDate);
        if (d >= d1)
        {
            MessageBox.Show("check date!!");
            btnrsave.Enabled = true;
            Panel1.Visible = false;
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "insert into porder values(@Pono,@sid,@Order_date,@Due_date)";
                c.cmd.Parameters.Add("@Pono", SqlDbType.NVarChar).Value = Label2.Text;
                c.cmd.Parameters.Add("@sid", SqlDbType.NVarChar).Value = Label4.Text;
                c.cmd.Parameters.Add("@Order_date", SqlDbType.NVarChar).Value = lblorderd.Text;
                c.cmd.Parameters.Add("@Due_date", SqlDbType.NVarChar).Value = lbldues.Text;
                //c.cmd.Parameters.Add("@Remark", SqlDbType.NVarChar).Value = txtrmrk.Text;
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("Order placed!!");
            }
            catch (Exception)
            {
                throw;

            }
            finally
            {
                c.cnn.Close();
            }
            btnrsave.Enabled = false;
        }
    }
    protected void btnnxt_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        btnrsave.Enabled = false;
        btnnxt.Enabled = true;
        if (DropDownList2.SelectedIndex == 0 || txtide.Text == "" || TextBox1.Text == "")
        {
            MessageBox.Show("Enter all fields");
        }
        c = new connect();
        c.cmd.CommandText = "select * from porderdtl where Pono='" + Label2.Text + "' and Item_id='" + txtide.Text + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "dup");
        if (ds.Tables["dup"].Rows.Count > 0)
        {
            c.cmd.CommandText = "select Stock.Item_name,porderdtl.Quantity from Stock,porderdtl where Stock.Item_id=porderdtl.Item_id and porderdtl.Item_id='" + txtide.Text + "' and Pono='" + Label2.Text + "'";
            //c.cmd.CommandText = "select Quantity from porderdtl where Item_id='" + txtide.Text + "' and Pono='" + Label2.Text + "'";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "q");
            string n = Convert.ToString(ds.Tables["q"].Rows[0].ItemArray[0]);
            decimal z = Convert.ToDecimal(ds.Tables["q"].Rows[0].ItemArray[1]);
            decimal z1 = z + Convert.ToDecimal(TextBox1.Text);
            dt = (DataTable)ViewState["prod"];
            //DataRow[] rows = dt.Select("Quantity=" + z);
            DataRow[] rows = dt.Select("Itemname='" + n + "'");
            if (rows.Length > 0)
            {
                foreach (DataRow dr in rows)
                {
                    dr["Quantity"] = z1.ToString();
                    dt.AcceptChanges();
                    dr.SetModified();
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
        else
        {
            try
            {
                dt.Columns.Add("PONO");
                dt.Columns.Add("Itemname");
                dt.Columns.Add("Quantity");
                DataRow dr = null;
                if (ViewState["prod"] != null)
                {
                    for (int i = 0; i < 1; i++)
                    {
                        dt = (DataTable)ViewState["prod"];
                        if (dt.Rows.Count > 0)
                        {
                            dr = dt.NewRow();
                            dr["PONO"] = Label2.Text;
                            dr["Itemname"] = DropDownList2.SelectedItem.Text;
                            dr["Quantity"] = TextBox1.Text;
                            //dr = dt.Select("Itemname" + DropDownList2.SelectedItem.Text);
                            dt.Rows.Add(dr);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
                else
                {
                    dr = dt.NewRow();
                    dr["PONO"] = Label2.Text;
                    dr["Itemname"] = DropDownList2.SelectedItem.Text;
                    dr["Quantity"] = TextBox1.Text;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                ViewState["prod"] = dt;
                c.cmd.CommandText = "insert into porderdtl values(@Pono,@Item_id,@Quantity)";
                c.cmd.Parameters.Add("@Pono", SqlDbType.NVarChar).Value = Label2.Text;
                c.cmd.Parameters.Add("@Item_id", SqlDbType.BigInt).Value = Convert.ToInt16(txtide.Text);
                c.cmd.Parameters.Add("@Quantity", SqlDbType.BigInt).Value = Convert.ToInt16(TextBox1.Text);
                c.cmd.ExecuteNonQuery();
            }

            catch (Exception)
            {
                throw;
            }
            finally
            {
                c.cnn.Close();
            }
            DropDownList2.SelectedIndex = 0;
            txtide.Text = "";
            TextBox1.Text = "";

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        btnnxt.Enabled = false;
        Panel1.Visible = true;
        DialogResult d1;
        d1 = MessageBox.Show("Are you sure", "confirmation", MessageBoxButtons.YesNo);
        if (d1 == DialogResult.Yes)
        {
            MessageBox.Show("Order placed");
            Response.Redirect("~/adminopn.aspx");
        }
        else
        {
            btnnxt.Enabled = true;
        }
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        btnnxt.Enabled = true;
        c = new connect();
        c.cmd.CommandText = "select * from supplier where sname='" + DropDownList1.SelectedItem + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "p1");
        if (ds.Tables["p1"].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["p1"].Rows.Count - 1; i++)
            {
                Label4.Text = Convert.ToString(ds.Tables["p1"].Rows[i].ItemArray[0]);
                Label6.Text = Convert.ToString(ds.Tables["p1"].Rows[i].ItemArray[4]);
            }
        }
        else
            MessageBox.Show("record not found");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        btnnxt.Enabled = true;
        c = new connect();
        c.cmd.CommandText = "select Item_id from stock where Item_name='" + DropDownList2.SelectedItem + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "p2");
        if (ds.Tables["p2"].Rows.Count > 0)
        {
            //for (int i = 0; i <= ds.Tables["p2"].Rows.Count - 1; i++)
            //{
            txtide.Text = Convert.ToString(ds.Tables["p2"].Rows[0][0]);

            //}
        }
        else
            MessageBox.Show("record not found");
    }
    protected void Calendar3_SelectionChanged(object sender, EventArgs e)
    {
        lbldues.Text = Calendar3.SelectedDate.ToShortDateString();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
