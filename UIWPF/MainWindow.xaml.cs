﻿using System;
using System.Collections.Generic;
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



namespace UIWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            AccountUserName.Content = UIWPF.Resources.Pages.Login.globalUser.UserId;
            AppFrame.JournalOwnership = JournalOwnership.OwnsJournal;
        }

        #region 标题栏事件

        /// <summary>
        /// 窗口移动事件
        /// </summary>
        private void TitleBar_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                this.DragMove();
            }
        }

        int i = 0;
        /// <summary>
        /// 标题栏双击事件
        /// </summary>
        private void TitleBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            i += 1;
            System.Windows.Threading.DispatcherTimer timer = new System.Windows.Threading.DispatcherTimer();
            timer.Interval = new TimeSpan(0, 0, 0, 0, 300);
            timer.Tick += (s, e1) => { timer.IsEnabled = false; i = 0; };
            timer.IsEnabled = true;

            if (i % 2 == 0)
            {
                timer.IsEnabled = false;
                i = 0;
                this.WindowState = this.WindowState == WindowState.Maximized ?
                              WindowState.Normal : WindowState.Maximized;
                
            }
        }

        /// <summary>
        /// 窗口最小化
        /// </summary>
        private void btn_min_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized; //设置窗口最小化
        }

        /// <summary>
        /// 窗口最大化与还原
        /// </summary>
        private void btn_max_Click(object sender, RoutedEventArgs e)
        {
            if (this.WindowState == WindowState.Maximized)
            {
                this.WindowState = WindowState.Normal; //设置窗口还原
            }
            else
            {
                this.WindowState = WindowState.Maximized; //设置窗口最大化
            }
        }

        /// <summary>
        /// 窗口关闭
        /// </summary>
        private void btn_close_Click(object sender, RoutedEventArgs e)
        {
            
            if (MessageBox.Show("确认要退出吗？", "登出确认", MessageBoxButton.OKCancel) == MessageBoxResult.OK)
            {
                if (ifSave())
                {
                    Application.Current.Shutdown();
                }
                else
                {
                    Window signOutCheck = new Resources.Windows.SignOutSaveCheck();
                    signOutCheck.ShowDialog();
                }

            }
        }


        #endregion 标题栏事件

        private void sizeChanged(object sender, SizeChangedEventArgs e)
        {
            if (this.WindowState == WindowState.Maximized)
            {
                MaxBtn.Content = "\xE923";
            }
            else
            {
                MaxBtn.Content = "\xE922";
            }
        }

        int flag = 0;
        private void MenuSwitcher(object sender, RoutedEventArgs e)
        {
            var button = sender as RadioButton;
            if(button!=null)
            {
                switch(button.Name)
                {
                    case "DataCollection":
                        this.AppFrame.Navigate(new Resources.Pages.DataCollection());
                        firstClickCtrl();
                        break;
                    case "DataCollation":
                        this.AppFrame.Navigate(new Resources.Pages.DataCollation());
                        firstClickCtrl();
                        break;
                    case "QualityTracker":
                        this.AppFrame.Navigate(new Resources.Pages.QualityTracker());
                        firstClickCtrl();
                        break;
                    default:
                        MessageBox.Show("Failed to load the page.");
                        break;
                }
            }
            flag = 1;
        }

        // Avoid Exception when the first click happens
        private void firstClickCtrl()
        {
            if(flag == 0)
            {
                return;
            }
            else
            {
                AppFrame.RemoveBackEntry();
            }
        }

        private void sign_out_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("确认要登出账户吗？", "登出确认", MessageBoxButton.OKCancel) == MessageBoxResult.OK)
            {
                if(ifSave())
                {
                    Application.Current.Shutdown();
                }
                else
                {
                    Window signOutCheck = new Resources.Windows.SignOutSaveCheck();
                    signOutCheck.ShowDialog();
                }
                
            }
        }

        private bool ifSave()
        {
            //TODO
            return false;
        }
    }
}
