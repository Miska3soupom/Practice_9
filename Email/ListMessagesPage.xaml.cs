using ImapX;
using ImapX.Collections;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Email
{
    public partial class ListMessagesPage : Page
    {
        private UserWindow userWindow;
        MessageCollection messages;
        List<string> messagesList = new List<string>();
        public ListMessagesPage(UserWindow window)
        {
            InitializeComponent();
            userWindow = window;
        }



        public void Folder(string folder)
        {
            messages = ImapHelper.GetMessagesForFolder(folder);
            if (messages != null)
            {
                MessagesLbx.ItemsSource = null;
                foreach (Message m in messages)
                {
                    messagesList.Add(m.Subject);
                }
                MessagesLbx.ItemsSource = messagesList;
            }
            userWindow.Progress.Visibility = Visibility.Hidden;

        }

        private void DoubleClickListBox(object sender, MouseButtonEventArgs e)
        {
            if (MessagesLbx.SelectedItem != null)
            {
                OpenningLetter();
            }
        }

        private void MessagesLbx_Click(object sender, RoutedEventArgs e)
        {
            if (sender == Open)
            {
                OpenningLetter();
            }
            else
            {
                SendLetterPage page = new SendLetterPage(this, userWindow);
                page.GetAddress(messages[MessagesLbx.SelectedIndex].From.Address);
                userWindow.PageFrame.Content = page;
            }
        }
        private void OpenningLetter()
        {
            var text = messages[MessagesLbx.SelectedIndex].Body.Html;
            string to = "";
            foreach (var i in messages[MessagesLbx.SelectedIndex].To)
            {
                to = i.Address;
                break;
            }
            string from = messages[MessagesLbx.SelectedIndex].From.Address.ToString();
            string subject = messages[MessagesLbx.SelectedIndex].Subject;
            ReadLetterPage readLetterPage = new ReadLetterPage(this, userWindow);
            readLetterPage.GetMessage(to, from, subject, text);
            userWindow.PageFrame.Content = readLetterPage;
        }
    }
}