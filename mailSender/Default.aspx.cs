using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mailSender
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Gonder_Click(object sender, EventArgs e)
        {
            try
            {
                string to = text_Kime.Text;
                string from = text_Mail.Text;
                string password = text_Sifre.Text;
                string subject = text_Konu.Text;
                string body = text_Mesaj.Text;
                HttpPostedFile ektekidosya = Attach.PostedFile;

                MailGonder(to, from, password, subject, body, ektekidosya);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMesaj", "alert('Mail başarıyla gönderildi')", true);
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMesaj", "alert('Mesaj Gönderilemedi. Hata : "+ ex.Message +"')", true);
            }
        }

        private void MailGonder(string to, string from, string password, string subject, string body, HttpPostedFile ektekidosya)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(from);
            msg.To.Add(new MailAddress(to));
            msg.Subject = subject;
            msg.Body = body;

            SmtpClient mySmtpClient = new SmtpClient();
            System.Net.NetworkCredential myCredential = new System.Net.NetworkCredential(from, password);
            mySmtpClient.Host = "smtp.yandex.com.tr";
            mySmtpClient.Port = 587;
            mySmtpClient.EnableSsl = true;
            mySmtpClient.UseDefaultCredentials = true;
            mySmtpClient.Credentials = myCredential;
            mySmtpClient.Send(msg);
            msg.Dispose();
        }
    }
}