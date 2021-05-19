using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace UIWPF.Resources.Pages
{
    /// <summary>
    /// ShiftNewsletter.xaml 的交互逻辑
    /// </summary>
    public partial class ShiftNewsletter : Page
    {
        int hour;
        System.DateTime currentTime = new System.DateTime();
        public ShiftNewsletter()
        {
            InitializeComponent();
            dateBox.Text = DateTime.Now.ToShortDateString();

            currentTime = System.DateTime.Now;
            hour = currentTime.Hour; // 取当前时
            
            //MessageBox.Show(hour.ToString());
            if (hour < 8)
            {
                shiftBox.Text = "00:00 - 8:00";
            }
            else if (hour < 16)
            {
                shiftBox.Text = "8:00 - 16:00";
            }
            else
            {
                shiftBox.Text = "16:00 - 24:00";
            }
        }

        private void dateBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            sender.GetHashCode();
            TextBox textBox = sender as TextBox;

            
            //if (dateBox.Text.ToString() != "2021")
            //{
            //    MessageBox.Show(dateBox.Text.ToString());
            //}
            //MessageBox.Show(dateBox.Text.ToString());

            //if (sender.ToString() != "System.Windows.Controls.TextBox")
            //    MessageBox.Show(sender.ToString());
        }

      
    }
}
