using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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

namespace Email
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Enter_Click(object sender, RoutedEventArgs e)
        {
            string email = EmailTbx.Text;
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(email);
            if (EmailTbx.Text != "" && PasswordBx.Password != "" && ComboBx.SelectedItem != null)
            {
                if (match.Success)
                {
                    var selectedItem = ComboBx.SelectedItem as ComboBoxItem;

                    ImapHelper.Initialize(selectedItem.Tag.ToString());
                    if (ImapHelper.Login(EmailTbx.Text, PasswordBx.Password))
                    {
                        UserWindow user = new UserWindow();
                        user.Show();
                        this.Close();
                    }
                    else MessageBox.Show("Неверный логин или пароль");
                }
                else MessageBox.Show("Неверный формат почты");
            }
            else MessageBox.Show("Поля и список не должны быть пустыми");
        }
    }
}