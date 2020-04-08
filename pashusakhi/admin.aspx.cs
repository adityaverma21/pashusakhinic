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
    public partial class admin : System.Web.UI.Page
    {
        dataAccessEUPI objdl = new dataAccessEUPI();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindgrid();
            }
        }

        public void bindgrid()
        {
            DataTable dtbl = objdl.Execute("EXEC sp_getdetails");
            griddetail.DataSource = dtbl;
            griddetail.DataBind();

        }

        protected void griddetail_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string Id = e.CommandArgument.ToString();
            Session["Id"] = Id;
            if (e.CommandName == "EditRecord")
            {
                Session["register"] = "edit";
                Response.Redirect("register.aspx");
            }
            else if (e.CommandName == "DeleteRecord")
            {
                int x = objdl.ExecuteNonQuery("DELETE FROM Details WHERE ID=" + Id + "");
                if (x != 0)
                {
                    Response.Write("<script>alert('You have successfully deleted your details!!')</script>");
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Deletion unsuccessful! Please try again !!')</script>");
                }
            }
        }

        protected void griddetail_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}