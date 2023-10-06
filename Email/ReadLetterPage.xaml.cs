using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
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
using System.Xml.Linq;

namespace Email
{
    public partial class ReadLetterPage : Page
    {
        private ListMessagesPage messagesPage;
        private UserWindow userWindow;

        private string toWhom;
        private string fromWhom;
        private string subject;
        private string message;
        public ReadLetterPage(ListMessagesPage list, UserWindow user)
        {
            InitializeComponent();
            messagesPage = list;
            userWindow = user;
        }
        public void GetMessage(string To, string From, string Sub, string Message)
        {
            toWhom = To; fromWhom = From; subject = Sub; message = Message;
            ToWhom.Text = toWhom;
            FromWhom.Text = fromWhom;
            SubjectTbx.Text = subject;
            ConverterRTF.ToRtf(message);
            var text = new TextRange(MessageRtb.Document.ContentStart, MessageRtb.Document.ContentEnd);
            FileStream fs = new FileStream("msg.rtf", FileMode.Open);
            text.Load(fs, DataFormats.Rtf);
            fs.Close();

            File.Delete("msg.rtf");

        }

        private void AnswerBT_Click(object sender, RoutedEventArgs e)
        {
            SendLetterPage send = new SendLetterPage(messagesPage, userWindow);
            send.ToTbx.Text = fromWhom;
            userWindow.PageFrame.Content = send;
        }

        private void ReturnBT_Click(object sender, RoutedEventArgs e)
        {
            userWindow.PageFrame.Content = messagesPage;
        }
    }
}