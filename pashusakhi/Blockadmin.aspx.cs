using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace pashusakhi
{
    public partial class Blockadmin : System.Web.UI.Page
    {
        dataAccessEUPI objdl = new dataAccessEUPI();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl1.Text = "Welcome " + Session["UserName"];
            lbl2.Text = "" + Session["Email"];
            lbl3.Text = "" + Session["District"];
            lbl4.Text = "" + Session["Block"];
        }

        protected void menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (e.Item.Value == "members")
            {

                DataTable dt = objdl.Execute("SELECT * FROM Details WHERE UserRole='MEM'");
                gridview1.DataSource = dt;
                gridview1.DataBind();
            }
        }
    }
}