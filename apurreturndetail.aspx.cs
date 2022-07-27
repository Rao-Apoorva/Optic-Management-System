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

public partial class apurreturndetail : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select prtrndtls1.Prno,prtrndtls1.Quantity,prtrndtl1.Remark,purreturn.Date,purreturn.Pbno,Stock.Item_name from purreturn,prtrndtls1,Stock where purreturn=prtrndtls1 and prtrndtsl1.Item_id=Stock.Item_id";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "sup");
            if (ds.Tables["sup"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["sup"];
                GridView1.DataBind();

            }
            else
                MessageBox.Show("No records");
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
