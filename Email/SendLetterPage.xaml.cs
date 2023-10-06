using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static System.Net.Mime.MediaTypeNames;

namespace Email
{

    public partial class SendLetterPage : Page
    {
        private string AddressToWhom;
        private ListMessagesPage listPage;
        private UserWindow userWindow;
        public SendLetterPage(ListMessagesPage list, UserWindow user)
        {
            InitializeComponent();
            listPage = list;
            userWindow = user;
        }
        public void GetAddress(string address)
        {
            AddressToWhom = address;
            ToTbx.Text = address;
        }

        private void ReturnBT_Click(object sender, RoutedEventArgs e)
        {
            if (userWindow != null || listPage != null)
            {
                userWindow.PageFrame.Content = listPage;
            }
            else MessageBox.Show("Ошибка! Некуда возвращаться");
        }

        private void SendBT_Click(object sender, RoutedEventArgs e)
        {
            if (MessageRtb != null && ToTbx != null && SubjectTbx.Text != null && ComboBx.SelectedItem != null)
            {
                var credentials = ImapHelper.GetCredentials();
                var text = new TextRange(MessageRtb.Document.ContentStart, MessageRtb.Document.ContentEnd);
                ConverterRTF.ToHtml(text);
                string txt = File.ReadAllText("send.html");
                MailMessage m = new MailMessage(credentials.Email, ToTbx.Text, SubjectTbx.Text, txt);
                m.IsBodyHtml = true;
                credentials.SmtpHost = (ComboBx.SelectedItem as ComboBoxItem).Tag.ToString();
                SmtpClient smpt = new SmtpClient(credentials.SmtpHost, 587);
                smpt.Credentials = new NetworkCredential(credentials.Email, credentials.Pass);
                smpt.EnableSsl = true;
                smpt.Send(m);
            }
            else MessageBox.Show("Поля и список не должны быть пустыми");
        }
    }
}