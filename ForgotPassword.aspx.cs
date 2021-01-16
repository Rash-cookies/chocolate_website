using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
namespace WebApplication1
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Chocorich-DB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();


                    //Send Reset Link Via Email

                    string ToEmailAddress = dt.Rows[0][3].ToString ();
                    string Username = dt.Rows[0][1].ToString ();
                    string EmailBody ="Hi ,"+Username + ",<br/><br/>Click the link below to reset your password<br/> <br/> http://localhost:24813/RecoverPassword.aspx?id="+myGUID ;

                   MailMessage PassRecMail = new MailMessage("rashmi5.maheshwari@gmail.com",ToEmailAddress );


                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";

                  /*  SmtpClient SMTP = new SmtpClient("smtp.gmail.com",587);
                    SMTP.Credentials = new NetworkCredential()
                    {
                        UserName ="rashmi5.maheshwari@gmail.com",
                        Password ="benki555"

                    };
                    SMTP.EnableSsl = true;
                    SMTP.Send(PassRecMail);*/

                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new NetworkCredential("rashmi5.maheshwari@gmail.com", "benki555");
                        client.Host = "smtp.gmail.com";
                        client.Port = 587;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;
                            

                        client.Send(PassRecMail);
                    }

                    //-------------------------

                    lblResetPassMsg.Text = "Reset Link send I Check Your email for reset password";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmailID.Text = string.Empty;

                }
                else
                {
                    lblResetPassMsg.Text = "OOps! This Email Does not Exist......Try again";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                    txtEmailID.Text = string.Empty;
                    txtEmailID.Focus();

                }

            }
        }
    }
}