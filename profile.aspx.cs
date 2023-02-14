using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace Registration
{
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M7TFS5O\SQLEXPRESS;Initial Catalog=project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string USER_ID = Session["userid"].ToString();
            con.Open();
            string qry = "select * from tblregister where id='" + USER_ID + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                txtemail1.Text = sdr["email"].ToString();
                txtuname1.Text = sdr["uname"].ToString();
                txttel1.Text = sdr["tel"].ToString();
            }
            con.Close();
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }

        protected void btnchangepwd_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
           
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnupdate_Click1(object sender, EventArgs e)
        {
            try
            {
                string USER_ID = Session["userid"].ToString();
                con.Open();

                string qury = "update tblregister set uname = '" + txtuname1.Text + "', tel = '" + txttel1.Text + "' where id = '" + USER_ID + "'";

                SqlCommand cmd = new SqlCommand(qury, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("Profile Updated.");
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            
        }

        protected void btnchangepass_Click(object sender, EventArgs e)
        {
            try
            {
                string USER_ID = Session["userid"].ToString();
                string strpass = encryptpass(txtconfirmpass.Text);

                if (txtnewpass.Text == txtconfirmpass.Text)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update tblregister set pwd = '" + strpass + "' where id= '" + USER_ID + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("Successfully updated!");
                }
                else
                {
                    Response.Write("New password and Confirm password should be same!");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btndelete_Click1(object sender, EventArgs e)
        {
            try
            {
                string USER_ID = Session["userid"].ToString();
                con.Open();

                string qury = "delete from tblregister where id = '" + USER_ID + "'";

                SqlCommand cmd = new SqlCommand(qury, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("Profile Deleted.");
                Response.Redirect("login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        public string encryptpass(string password)
        {
            string msg = "";
            byte[] encode = new byte[password.Length];
            encode = Encoding.UTF8.GetBytes(password);
            msg = Convert.ToBase64String(encode);
            return msg;
        }
    }
}