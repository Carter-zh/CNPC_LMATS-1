using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.DBUtils;

namespace BLL
{
    public class LoginManager
    {
        
        public Model.LoginForm.UserInfo UserLogin(string userName,string password)
        {
            UserDB UserDB = new UserDB();
            Model.LoginForm.UserInfo user = UserDB.SelectUser(userName, password);
            if(user == null)
            {
                string sql = "update  table_name set canUpdate = 1";
                DbManager.Ins.ExecuteNonquery(sql);


                return user;
            }
            else
            {
                throw new WrongInfoException();
            }
        }
    }

    public class WrongInfoException : Exception
    {

    }

    class TimeoutException : Exception
    {

    }
}
