using ImapX.Collections;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Email
{
    public partial class UserWindow : Window
    {
        private CommonFolderCollection folders = ImapHelper.GetFolders();
        public UserWindow()
        {
            InitializeComponent();
            foreach (var folder in folders)
            {
                FoldersLbx.Items.Add(folder.Name);
            }
        }

        private void FoldersLbx_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (FoldersLbx.SelectedItem != null)
            {
                ListMessagesPage list = new ListMessagesPage(this);
                string folder = FoldersLbx.SelectedItem.ToString();
                list.Folder(folder);
                PageFrame.Content = list;
            }
        }

        private void Send_Click(object sender, RoutedEventArgs e)
        {
            SendLetterPage readLetter = new SendLetterPage(null, null);
            PageFrame.Content = readLetter;
        }
    }
}