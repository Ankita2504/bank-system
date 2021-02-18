using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;



public partial class transaction_history : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        BindData();
    }

    public void BindData()
    {
        MySqlConnection con = new MySqlConnection("server=localhost;user id=Ankita;database=customer;password=Ankita");
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select * from transaction_info", con);
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        cmd.Dispose();
        con.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}