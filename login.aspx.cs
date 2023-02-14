using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

namespace Registration
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M7TFS5O\SQLEXPRESS;Initial Catalog=project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void txtemail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Boolean login = false;

            string emailid = txtemail.Text;
            string strpass = encryptpass(txtpwd.Text);

            con.Open();
            string qry = "select id from tblregister where email='" + emailid + "' and pwd='" + strpass + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            SqlCommand command = new SqlCommand("SELECT uname FROM tblregister WHERE email='" + emailid + "'", con);
            object uname = command.ExecuteScalar();

            if (uname != null)
            {
                Session["uname"] = uname.ToString();
            }

            if (sdr.Read())
            {
                login = true;
                Session["email"] = emailid;
                Session["userid"] = sdr["id"].ToString();

                Response.Write("Login Sucess......!!");
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                Response.Write("UserId & Password is not correct Try again..!!");
            }
            con.Close();
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