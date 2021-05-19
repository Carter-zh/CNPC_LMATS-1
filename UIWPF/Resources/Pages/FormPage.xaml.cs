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
using System.Windows.Navigation;
using System.Windows.Shapes;
namespace UIWPF.Resources.Pages
{
    /// <summary>
    /// FormPage.xaml 的交互逻辑
    /// </summary>
    public partial class FormPage : Page
    {
        //the key of the current form
        string formKey = null;
        string formName = null;
        string formTitle = null;
        string sql;
        public string table;
        MySqlConnectionStringBuilder connectionString = new MySqlConnectionStringBuilder();
        public MySqlConnection connection;
        MySqlDataAdapter adapter;
        DataTable data;



        public FormPage()
        {
            InitializeComponent();
        }

        DataTable dt = new DataTable();

        public void clear()
        {
            dtGrid.Items.Clear();
        }
        //输出函数
        public void Database_All(MySqlConnection conn)
        {
            try
            {
                if (conn != null)
                {
                    conn.Open();
                    Console.WriteLine("table" + "查询通道已打开");
                    string select = sql;
                    MySqlCommand command = new MySqlCommand(select, conn);
                    adapter = new MySqlDataAdapter(command);
                    data = new DataTable();
                    adapter.Fill(data);
                    dtGrid.ItemsSource = null;
                    //dtGrid.Items.Clear();
                    dtGrid.ItemsSource = data.DefaultView;
                }
            }
            catch (Exception)
            {

            }
            finally
            {
                conn.Close();
            }

        }

        public void loadData()
        {

            //dtGrid = new DataGrid();

            sql = "select * from ";

            if (Model.Form_B.FormKeyValuePairB.formBDIc.TryGetValue(formKey, out formName))
            {
                sql += formName;
                table = formName;
            }
            else
            {
                MessageBox.Show(formKey + " access failure.");
                return;
            }

            //dt = DbManager.Ins.ExcuteDataTable(sql);

            connectionString.Server = "localhost";
            connectionString.UserID = "root";
            connectionString.Password = "123456";
            connectionString.Database = "cnpc_lmats1";
            connectionString.AllowUserVariables = true;
            connection = new MySqlConnection(connectionString.ToString());
            Database_All(connection);
            //MySqlCommand cmd = new MySqlCommand(sql, connection);
            //connection.Open();
            ////dt.Load(cmd.ExecuteReader());
            //connection.Close();

            dt = DbManager.Ins.ExcuteDataTable(sql);

            //dtGrid.ItemsSource = null;
            ////dtGrid.Items.Clear();
            //dtGrid.ItemsSource = dt.DefaultView;

            string headerName = null;

            //update the commented form name
            //Change the header
            if (Model.Form_B.FormKeyValuePairB.formBDIc.TryGetValue(formKey, out formTitle))
            {

            }
            else
            {
                MessageBox.Show(formKey + " naming failure.");
                return;
            }

            foreach (var items in dtGrid.Columns)
            {
                if (Model.Form_B.FormKeyValuePairB.formBNameDIc.TryGetValue(items.Header.ToString(), out headerName))
                {

                }
                //else if(Model.Form_B.FormKeyValuePairB.descr_dilling_coring_b3.TryGetValue(items.Header.ToString(), out headerName))
                //{

                //}

                //MessageBox.Show(items.Header.ToString());

                items.Header = headerName;
            }


        }

        public DataTable GetData()
        {
            return dt;
        }

        public int UpdateTable()
        {
            int rows = 0;
            MySqlCommandBuilder buider = new MySqlCommandBuilder(adapter);

            rows = adapter.Update(data);
            if (rows != 0)
            {
                MessageBox.Show(table + " " + rows + "行更新成功");
                string und_sql = "update  table_name set canUpdate = 0 where table_name = @table";
                List<MySqlParameter> Par = new List<MySqlParameter>();
                Par.Add(new MySqlParameter("@table", table));
                DbManager.Ins.ExecuteNonquery(und_sql, Par.ToArray());
            }
            else
            {
                MessageBox.Show(table + " 更新失败！！！");
            }
            //List<MySqlParameter> par_add = new List<MySqlParameter>();
            //DataTable dt = new DataTable();
            //par_add.Add(new MySqlParameter("@table", table));
            //string sql = "select * from table_name where table_name = @table";
            //dt = DbManager.Ins.ExcuteDataTable(sql, par_add.ToArray());
            //DataRow[] dtrows = dt.Select();
            ////int can = (int)dtrows[0][1];
            //string outp = dtrows[0][1].ToString();
            //MessageBox.Show(table + ": " + outp);
            return rows;

        }

        public void setFormKey(string btnKey)
        {
            formKey = btnKey;
            return;
        }

        public string getFormName()
        {
            return formName;
        }

        public string getFormTitle(string header)
        {
            //if (formTitle == null)
            //    return "Name Not Found";
            //return formTitle;
            if (header == null)
                return "Name Not Found";
            return header;
        }
    }
}
