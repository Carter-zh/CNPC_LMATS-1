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
    /// ShiftNewsletter.xaml 的交互逻辑
    /// </summary>
    public partial class ShiftNewsletter : Page
    {

        int hour;
        int rows;
        string sql;
        System.DateTime currentTime = new System.DateTime();
        public ShiftNewsletter()
        {
            InitializeComponent();
            nowtime();
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

        public void nowtime()
        {
            //string sql = "select date(sysdate());";

            //DataTable dt = DbManager.Ins.ExcuteDataTable(sql);
            //DataRow[] dtrows = dt.Select();
            //dtrows[0][0];
            dateBox.Text = DateTime.Now.ToLongDateString();

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
        public void update_B()
        {
            update_B1_1();
            update_B1_3();
            update_B1_4();
            update_B1_5();
            update_B1_6();
            update_B1_7();
        }
        public int update_B1_1()
        {
            sql = "insert into log_board__class_b1 " +
                "values(date(sysdate()), @shift, @work, @begin, @finally, @poor)";
            List<MySqlParameter> Par = new List<MySqlParameter>();
            //Par.Add(new MySqlParameter("@time", dateBox.Text));
            Par.Add(new MySqlParameter("@shift", shiftBox.Text));
            Par.Add(new MySqlParameter("@work", workBox.Text));
            Par.Add(new MySqlParameter("@begin", double.Parse(beg_depthBox.Text)));
            Par.Add(new MySqlParameter("@finally", double.Parse(fin_depthBox.Text)));

            Par.Add(new MySqlParameter("@poor", double.Parse(poorBox.Text)));
            rows = DbManager.Ins.ExecuteNonquery(sql, Par.ToArray());
            return rows;
        }

        public int update_B1_3()
        {
            sql = "insert into well_rot_cond_b1(brief_const) " +
                "values(@brief_const)";
            List<MySqlParameter> Par = new List<MySqlParameter>();
            Par.Add(new MySqlParameter("@brief_const", brief_const.Text));

            rows = DbManager.Ins.ExecuteNonquery(sql, Par.ToArray());
            return rows;
        }

        public int update_B1_4()
        {
            sql = "insert into turn_head_data_b1 " +
                "values(@number, @size, @type, @acc_footage, @cum_pure_d_t)";
            List<MySqlParameter> Par = new List<MySqlParameter>();
            //Par.Add(new MySqlParameter("@time", dateBox.Text));
            Par.Add(new MySqlParameter("@number", int.Parse(number.Text)));
            Par.Add(new MySqlParameter("@size", double.Parse(size.Text)));
            Par.Add(new MySqlParameter("@type", type.Text));
            Par.Add(new MySqlParameter("@acc_footage", double.Parse(acc_footage.Text)));
            Par.Add(new MySqlParameter("@cum_pure_d_t", double.Parse(cum_pure_d_t.Text)));
            rows = DbManager.Ins.ExecuteNonquery(sql, Par.ToArray());
            return rows;
        }

        public int update_B1_5()
        {
            sql = "insert into drilling_tool_structure_b1 " +
                "values(@drill_tool_s)";
            List<MySqlParameter> Par = new List<MySqlParameter>();
            Par.Add(new MySqlParameter("@drill_tool_s", drill_tool_s.Text));

            rows = DbManager.Ins.ExecuteNonquery(sql, Par.ToArray());
            return rows;
        }

        public int update_B1_6()
        {
            sql = "insert into drilling_para_b1 " +
                "values(@wob, @rota_num_turn, @displact, @mpa, @torque, @su_weight)";
            List<MySqlParameter> Par = new List<MySqlParameter>();

            Par.Add(new MySqlParameter("@wob", double.Parse(wob.Text)));
            Par.Add(new MySqlParameter("@rota_num_turn", double.Parse(rota_num_turn.Text)));
            Par.Add(new MySqlParameter("@displact", double.Parse(displact.Text)));
            Par.Add(new MySqlParameter("@mpa", double.Parse(mpa.Text)));
            Par.Add(new MySqlParameter("@torque", double.Parse(torque.Text)));
            Par.Add(new MySqlParameter("@su_weight", double.Parse(su_weight.Text)));

            rows = DbManager.Ins.ExecuteNonquery(sql, Par.ToArray());
            return rows;
        }

        public int update_B1_7()
        {
            sql = "insert into drilling_fluif_b1 " +
                "values(@type, @density, @viscosity, @water_loss, " +
                "@mud_cake, @initial_cut, @final_cut, @sand_bearing, " +
                "@clay_conte, @fri_coe, @read_300, @read_600, @hthp_w_loss, " +
                "@ph_value, @solid_cont, @cl, @total_sal, @affect_m_l_t)";
            List<MySqlParameter> Par = new List<MySqlParameter>();

            Par.Add(new MySqlParameter("@type", type_2.Text));
            Par.Add(new MySqlParameter("@density", double.Parse(density.Text)));
            Par.Add(new MySqlParameter("@viscosity", double.Parse(viscosity.Text)));
            Par.Add(new MySqlParameter("@water_loss", double.Parse(water_loss.Text)));
            Par.Add(new MySqlParameter("@mud_cake", double.Parse(mud_cake.Text)));
            Par.Add(new MySqlParameter("@initial_cut", double.Parse(initial_cut.Text)));
            Par.Add(new MySqlParameter("@final_cut", double.Parse(final_cut.Text)));
            Par.Add(new MySqlParameter("@sand_bearing", double.Parse(sand_bearing.Text)));
            Par.Add(new MySqlParameter("@clay_conte", double.Parse(clay_conte.Text)));
            Par.Add(new MySqlParameter("@fri_coe", double.Parse(fri_coe.Text)));
            Par.Add(new MySqlParameter("@read_300", double.Parse(read_300.Text)));
            Par.Add(new MySqlParameter("@read_600", double.Parse(read_600.Text)));
            Par.Add(new MySqlParameter("@hthp_w_loss", double.Parse(hthp_w_loss.Text)));
            Par.Add(new MySqlParameter("@ph_value", double.Parse(ph_value.Text)));
            Par.Add(new MySqlParameter("@solid_cont", double.Parse(solid_cont.Text)));
            Par.Add(new MySqlParameter("@cl", double.Parse(cl.Text)));
            Par.Add(new MySqlParameter("@total_sal", int.Parse(total_sal.Text)));
            Par.Add(new MySqlParameter("@affect_m_l_t", int.Parse(affect_m_l_t.Text)));

            rows = DbManager.Ins.ExecuteNonquery(sql, Par.ToArray());
            return rows;
        }






        //自动计算B1_1的进尺

        private void beg_depthBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (beg_depthBox.Text != null && fin_depthBox.Text != null)
            {
                try
                {
                    poorBox.Text = (double.Parse(fin_depthBox.Text) - double.Parse(beg_depthBox.Text)).ToString();
                }
                catch (Exception)
                {

                    throw;
                }
            }

        }
    }
}
