using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Net.Mail;
using System.Net;

namespace Registration
{
    public partial class registration : System.Web.UI.Page
    {
        static String otp;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M7TFS5O\SQLEXPRESS;Initial Catalog=project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if(user.Text == "" || email.Text == "" || tel.Text == "" || pwd.Text == "" || cpwd.Text == "")
            {
                Response.Write("Please fill all details");
            }
            else
            {
                Random rnd = new Random();
                otp = rnd.Next(100001, 999999).ToString();
                string query = "insert into tblotp(otp, status) values('" + otp + "', '0')";
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                sendcode();
                Session["name"] = user.Text;
                Session["email"] = email.Text;
                Session["tel"] = tel.Text;
                Session["pass"] = encryptpass(pwd.Text);
                Session["cpass"] = encryptpass(cpwd.Text);

                Response.Redirect("otp.aspx?email=" + email.Text);
            }
        }

        private void sendcode()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("20bmiit075@gmail.com", "enleywcrjpgicckn");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "otp to verify email";
            msg.Body = "dear" + email.Text + "your otp is " + otp + "\n\n\nThanks";
            string toaddress = email.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Bowling <20bmiit075@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }
            //throw new NotImplementedException();
        }

        public string encryptpass(string password)
        {
            string msg = "";
            byte[] encode = new byte[password.Length];
            encode = Encoding.UTF8.GetBytes(password);
            msg = Convert.ToBase64String(encode);
            return msg;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int len = args.Value.Length;
            if (len >= 8 && len <= 15)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}