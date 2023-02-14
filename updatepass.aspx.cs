using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

namespace Registration
{
    public partial class updatepass : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M7TFS5O\SQLEXPRESS;Initial Catalog=project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string forget_otp;
            forget_otp = Request.QueryString["fotgot_otp"].ToString();
            string email = Request.QueryString["email"].ToString();
            con.Open();
            string checkActivation = "select id from tblregister where email='" + email + "' and fotgot_otp='" + forget_otp + "'";
            SqlCommand checkCMD = new SqlCommand(checkActivation, con);
            SqlDataReader read = checkCMD.ExecuteReader();
            if (read.Read())
            {
                con.Close();
            }
            else
            {
                con.Close();
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string email = Request.QueryString["email"].ToString();
            if (pwd.Text.ToString() == cpwd.Text.ToString())
            {
                con.Open();
                string updateAcc = "update [tblregister] set forgot_otp='0', pwd='" + pwd.Text.ToString() + "' where email='" + email + "'";
                SqlCommand cmdUpdate = new SqlCommand(updateAcc, con);
                cmdUpdate.ExecuteNonQuery();
                Response.Write("Password reset successfully.");
                con.Close();
            }
            else
            {
                Response.Write("Password and Confirm password is not same.");
            }
        }
    }
}