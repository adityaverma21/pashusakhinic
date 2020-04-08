using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pashusakhi
{

    public partial class register : System.Web.UI.Page
    {
        dataAccessEUPI objdl = new dataAccessEUPI();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindDistric();
                //bindgrid();
            }

            if (Session["register"].ToString() == "edit")
            {
                DataTable dt2 = objdl.Execute("SELECT * FROM Details WHERE ID=" + Session["Id"] + "");
                box1.Text = dt2.Rows[0]["Username"].ToString();
                box3.Text = dt2.Rows[0]["Password"].ToString();
                box2.Text = dt2.Rows[0]["Email"].ToString();
                box5.Text = dt2.Rows[0]["FirstName"].ToString();
                box6.Text = dt2.Rows[0]["LastName"].ToString();
                box7.Text = dt2.Rows[0]["FathersName"].ToString();
                box8.Text = dt2.Rows[0]["MothersName"].ToString();
                ddlGender.Text = dt2.Rows[0]["Gender"].ToString();
                txtDob.Text = dt2.Rows[0]["DOB"].ToString();
                txtPhone.Text = dt2.Rows[0]["PhoneNo"].ToString();
                txtAcc.Text = dt2.Rows[0]["AccountNo"].ToString();
                txtIFSC.Text = dt2.Rows[0]["IFSCcode"].ToString();
                txtBank.Text = dt2.Rows[0]["Bank"].ToString();
                rgstr.Text = "UpDate";
            }
        }

        public void bindDistric()
        {
            DataTable dt = objdl.Execute("SELECT [DistrictCode],[DistrictName] FROM [PashusakhiDB].[dbo].[mst_Districts]");
            ddlDis.DataSource = dt;
            ddlDis.DataTextField = "DistrictName";
            ddlDis.DataValueField = "DistrictCode"; 
            ddlDis.DataBind();
            ddlDis.Items.Insert(0, new ListItem("--Select--", "0"));
            




        }

        //public void bindgrid()
        //{
          //  DataTable dtbl = objdl.Execute("EXEC sp_getdetails");
           // griddetail.DataSource = dtbl;
           // griddetail.DataBind();

        //}


        protected void ddlDis_SelectedIndexChanged(object sender, EventArgs e)
        {

            DataTable dt1 = objdl.Execute("SELECT BlockCode, BlockName FROM mst_Blocks WHERE DistrictCode=" + ddlDis.SelectedItem.Value + "");
            ddlBLOCK.DataSource = dt1;
            ddlBLOCK.DataTextField = "BlockName";
            ddlBLOCK.DataValueField = "BlockCode";
            ddlBLOCK.DataBind();
            ddlBLOCK.Items.Insert(0, new ListItem("--Select--", "0"));
        }

        protected void ddlBLOCK_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt2 = objdl.Execute("SELECT PanchayatCode, PanchayatName FROM mst_Panchayats WHERE BlockCode=" + ddlBLOCK.SelectedItem.Value + "");
            ddlPan.DataSource = dt2;
            ddlPan.DataTextField = "PanchayatName";
            ddlPan.DataValueField = "PanchayatCode";
            ddlPan.DataBind();
            ddlPan.Items.Insert(0, new ListItem("--Select--", "0"));
            DataTable dt3 = objdl.Execute("SELECT VillageCode, VillageName FROM mst_Villages WHERE DistrictCode=" + ddlDis.SelectedItem.Value + " AND BlockCode=" + ddlBLOCK.SelectedItem.Value + "");
            ddlVillage.DataSource = dt3;
            ddlVillage.DataTextField = "VillageName";
            ddlVillage.DataValueField = "VillageCode";
            ddlVillage.DataBind();
            ddlVillage.Items.Insert(0, new ListItem("--Select--", "0"));
        }

        protected void rgstr_Click(object sender, EventArgs e)
        {
            if (rgstr.Text == "register")
            {
                string con = "Data Source=(local);Initial Catalog =PashusakhiDB;User Id=sa;Password=123";
                SqlConnection db = new SqlConnection(con);
                db.Open();
                string insert = "INSERT INTO Details(Username, Password, Email, FirstName, LastName, FathersName, MothersName, Gender, DOB, PhoneNo, AccountNo, IFSCcode, Bank, District, Block, Panchayat, Village, UserRole) VALUES('" + box1.Text + "','" + box3.Text + "','" + box2.Text + "','" + box5.Text + "','" + box6.Text + "','" + box7.Text + "','" + box8.Text + "','" + ddlGender.Text + "','" + txtDob.Text + "','" + txtPhone.Text + "','" + txtAcc.Text + "','" + txtIFSC.Text + "','" + txtBank.Text + "','" + ddlDis.Text + "','" + ddlBLOCK.Text + "','" + ddlPan.Text + "','" + ddlVillage.Text + "','" + ddlrole.Text + "')";
                SqlCommand cmd = new SqlCommand(insert, db);
                int m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    Response.Write("<script>alert('You have successfully registered !!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Registration unsuccessful! Please try again !!')</script>");
                }
                db.Close();
            }
            else if (rgstr.Text == "UpDate")
            {
                string con = "Data Source=(local);Initial Catalog =PashusakhiDB;User Id=sa;Password=123";
                SqlConnection db = new SqlConnection(con);
                db.Open();
                string update = "UPDATE Details SET Username='"+box1.Text+"',Email='"+box2.Text+"',Password='" + box3.Text + "',FirstName='" + box5.Text + "',LastName='" + box6.Text + "',FathersName='" + box7.Text + "',MothersName='" + box8.Text + "',Gender='" + ddlGender.Text + "',DOB='" + txtDob.Text + "',PhoneNo='" + txtPhone.Text + "',AccountNo='" + txtAcc.Text + "',IFSCcode='" + txtIFSC.Text + "',Bank='" + txtBank.Text + "' WHERE ID=" + Session["Id"] + " ";
                SqlCommand cmd = new SqlCommand(update, db);
                int m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    Response.Write("<script>alert('You have successfully updated your details!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Updation unsuccessful! Please try again !!')</script>");
                }
                db.Close();
            }
        }

       
        




    }
}