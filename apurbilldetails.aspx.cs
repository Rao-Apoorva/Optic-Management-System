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
public partial class apurbilldetails : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    string pbill;
    protected void Page_Load(object sender, EventArgs e)
    {
        pbill = (string)Session["id"];
        c = new connect();
        c.cmd.CommandText = "select pbill.Pbno,pbilldtl.Item_id,pbilldtl.Quantity,pbilldtl.Price,pbilldtl.Total from pbill,pbilldtl where pbill.Pbno=pbilldtl.Pbno and pbilldtl.Pbno='" + pbill + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "pbillv");
        if (ds.Tables["pbillv"].Rows.Count > 0)
        {

            GridView1.DataSource = ds.Tables["pbillv"];
            GridView1.DataBind();

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
