using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Registration
{
    public partial class otp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M7TFS5O\SQLEXPRESS;Initial Catalog=project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string qury = "select * from tblotp where otp = '" + txtotp.Text + "' and status = '0'";
            con.Open();
            SqlCommand cmd = new SqlCommand(qury, con);
            SqlDataAdapter sdp = new SqlDataAdapter();
            sdp.SelectCommand = cmd;

            DataSet ds = new DataSet();
            sdp.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                string otp1;
                otp1 = ds.Tables[0].Rows[0]["otp"].ToString();

                if(otp1 == txtotp.Text)
                {
                    changeStatus();
                    string strpass = (string)Session["pass"];
                    string insert = "insert into tblregister (email, uname, tel, pwd, forgot_otp, active) values('" + Session["email"] + "','" + Session["name"] + "','" + Session["tel"] + "','" + strpass + "', '1', '0')";
                    SqlCommand cmd1 = new SqlCommand(insert, con);

                    cmd1.ExecuteNonQuery();
                    Response.Write("Registration Successful!");
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Response.Redirect("registration.aspx");
                }
            }
            con.Close();
        }

        private void changeStatus()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M7TFS5O\SQLEXPRESS;Initial Catalog=project;Integrated Security=True");
            string updatedata = "update tblotp set status = '1' where otp = '"+txtotp.Text+"'";
            con.Open();

            SqlCommand cmd = new SqlCommand(updatedata, con);
            cmd.ExecuteNonQuery();
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