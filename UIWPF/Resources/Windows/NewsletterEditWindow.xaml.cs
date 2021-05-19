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
    /// NewsletterEditWindow.xaml 的交互逻辑
    /// </summary>
    public partial class NewsletterEditWindow : Window
    {

        Pages.ShiftNewsletter PageA = new Pages.ShiftNewsletter();
        Pages.ShiftNewsletterB PageB = new Pages.ShiftNewsletterB();
        string table_num = "b1";
        string table = "b1";

        public NewsletterEditWindow()
        {
            InitializeComponent();
            Page1.Navigate(new Pages.ShiftNewsletter());
            Page2.Navigate(new Pages.ShiftNewsletterB());
        }

        private void Print_Click(object sender, RoutedEventArgs e)
        {

            try
            {
                
                PrintDialog dialog = new PrintDialog();
                Visual visual = PageA;
            
                if (dialog.ShowDialog() == true)
                {
                    dialog.PrintVisual(PageA.printA, "Shift newsletter第一页");
                    dialog.PrintVisual(PageB.printB, "Shift newsletter第二页");
                
                }
            }
            finally
            {
                PageA.IsEnabled = true;
                PageB.IsEnabled = true;
            }


        }
        public int updateCan()
        {
            string sql = "update  table_name set canUpdate = 0 where table_name = @table";
            List<MySqlParameter> Par = new List<MySqlParameter>();
            Par.Add(new MySqlParameter("@table", table));
            return DbManager.Ins.ExecuteNonquery(sql, Par.ToArray());
        }
        private void Push_Click(object sender, RoutedEventArgs e)
        {
            List<MySqlParameter> par_add = new List<MySqlParameter>();
            //table = "drilling_tool_structure_b1";
            par_add.Add(new MySqlParameter("@table", table));
            string sql = "select * from table_name where table_name = @table";
            DataTable dt = DbManager.Ins.ExcuteDataTable(sql, par_add.ToArray());
            DataRow[] dtrows = dt.Select();
            //MessageBox.Show(table + ": ");
            int can = (int)dtrows[0][1];
            //MessageBox.Show(table + ": " + can);
            if (can == 1)
            {
                if (table_num == "b1")
                {
                    PageA.update_B();

                    //提交后关闭编辑权限
                    updateCan();
                    Push.IsEnabled = false;
                }

            }
            else
            {
                MessageBox.Show("保存失败！！\n" + table_num + "表已提交，不可更改！");
                Push.IsEnabled = true;
            }
        }
    }
}
