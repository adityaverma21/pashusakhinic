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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["register"] = "reg";
        }

        protected void lgin_Click(object sender, EventArgs e)
        {
            string con = "Data Source=(local);Initial Catalog =PashusakhiDB;User Id=sa;Password=123";
            SqlConnection db = new SqlConnection(con);
            db.Open();
            SqlCommand cmd = new SqlCommand("SELECT Username, Email, Password, UserRole, District, Block, Panchayat, Village FROM Details WHERE Username='" + un.Text + "' AND Email='"+txtEmail.Text+"' AND Password='" + password.Text + "'", db);
            SqlDataReader dr = cmd.ExecuteReader();
            if (un.Text == "admin" && txtEmail.Text == "admin@gmail.com" && password.Text == "admin123")
            {
                Response.Redirect("admin.aspx");
            }
            if (dr.Read())
            {
                if (un.Text == dr["Username"].ToString() && txtEmail.Text==dr["Email"].ToString() && password.Text == dr["Password"].ToString())
                {
                    Session["UserName"] = un.Text;
                    Session["Email"] = dr["Email"].ToString();
                    Session["District"] = dr["District"].ToString();
                    Session["Block"] = dr["Block"].ToString();
                   
                    Response.Write("<script>alert('Successfully logged in')</script>");
                    if (dr["UserRole"].ToString() == "DSTADM")
                    {
                        Response.Redirect("districtadmin.aspx");
                    }
                    else if (dr["UserRole"].ToString() == "BLKADM")
                    {
                        Response.Redirect("Blockadmin.aspx");
                    }
                    else if (dr["UserRole"].ToString() == "MEM")
                    {
                        Response.Redirect("member.aspx");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid details !!')</script>");
            }
            db.Close();

        }
    }
}