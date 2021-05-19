using DAL.DBUtils;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
namespace UIWPF.Resources.Windows
{
    /// <summary>
    /// DataCollection_EditPanel.xaml 的交互逻辑
    /// </summary>
    public partial class DataCollection_EditPanel : Window
    {
        //Pages.Form_B.B_2 b_2 = new Pages.Form_B.B_2();
        Pages.FormPage FormPage = new Pages.FormPage();
        Pages.ShiftNewsletter Print = new Pages.ShiftNewsletter();
        string table;
        string table_num;
        public DataCollection_EditPanel()
        {
            InitializeComponent();

            this.testFrame.Navigate(new Pages.WelcomePage());
        }

        private void save_Click(object sender, RoutedEventArgs e)
        {
            //string select = "select * from ";
            //select += FormPage.getFormName();
            //MySqlConnectionStringBuilder connectionString = new MySqlConnectionStringBuilder();
            //connectionString.Server = "localhost";
            //connectionString.UserID = "root";
            //connectionString.Password = "123456";
            //connectionString.Database = "cnpc_lmats1";
            //connectionString.AllowUserVariables = true;
            //MySqlConnection connection = new MySqlConnection(connectionString.ToString());
            ////TODO
            //MySqlCommand cmd = new MySqlCommand("select * from mc_rock_describe_record", connection);
            //MySqlDataAdapter adapter = new MySqlDataAdapter(select, connection);
            //MySqlCommandBuilder builder = new MySqlCommandBuilder(adapter);
            //connection.Open();
            //adapter.Update(FormPage.GetData());
            //connection.Close();
            DataTable dt = new DataTable();
            //string sql = "select canUpdate from table_name where table_name = " + table;
            List<MySqlParameter> par_add = new List<MySqlParameter>();
            //table = "drilling_tool_structure_b1";
            par_add.Add(new MySqlParameter("@table", table));
            string sql = "select * from table_name where table_name = @table";
            dt = DbManager.Ins.ExcuteDataTable(sql, par_add.ToArray());
            DataRow[] dtrows = dt.Select();
            int can = (int)dtrows[0][1];
            //MessageBox.Show(table + ": " + can);
            if (can == 1)
            {
                int rows = FormPage.UpdateTable();
                Console.WriteLine(rows);
            }
            else
            {
                MessageBox.Show("保存失败！！\n" + table_num + "表已提交，不可更改！");
            }



        }

        private void formSwitch_Click(object sender, RoutedEventArgs e)
        {
            var item = sender as MenuItem;
            if (item != null)
            {
                this.testFrame.Navigate(FormPage);
                FormPage.setFormKey(item.Name);

                table_num = item.Name;
                if (Model.Form_B.FormKeyValuePairB.formBDIc.TryGetValue(item.Name, out table))
                {

                }
                FormPage.loadData();
                ShowTab.Header = FormPage.getFormTitle(item.Header.ToString());
            }

        }

        //打印事件
        private void Print_Click(object sender, RoutedEventArgs e)
        {
            this.testFrame.Navigate(Print);
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

        private bool ifSave()
        {
            return false;
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

        private void sign_out_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("确认要登出账户吗？", "登出确认", MessageBoxButton.OKCancel) == MessageBoxResult.OK)
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

        
    }
}
