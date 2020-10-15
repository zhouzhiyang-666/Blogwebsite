using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// SqlHelper 的摘要说明
/// </summary>
namespace testBlog
{
    public class SqlHelper
    {
        String connStr = "Data Source=.; Initial Catalog=Blog; Uid=root; Pwd=123456";
        SqlConnection con;
        public SqlHelper()
        {
            //
            // TODO: 在此处添加构造函数逻辑
            //
            con = new SqlConnection(connStr);
        }

        public SqlConnection getConn()
        {
            return con;
        }

        public DataTable Query(String sql)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            sda.Fill(dt);
            return dt;
        }

        public bool NonQuery(String sql)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = sql;
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
                return false;
            }
            return true;
        }

    }
}