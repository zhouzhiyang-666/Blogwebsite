using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;
using testBlog;


public partial class Users_Manage : System.Web.UI.Page
{


    SqlHelper sqlHelper = new SqlHelper();
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            Load_Data();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        Load_Data();
    }

    private void Load_Data()
    {
        GridView1.DataSource = sqlHelper.Query("select * from tb_users");
        GridView1.DataBind();
    }


    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Load_Data();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string user_id = (GridView1.DataKeys[e.RowIndex].Value).ToString(); ;
        
        string user_name = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
        string user_sex = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim();
       
        string user_email = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim();
        string user_image_url = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[6].Controls[0])).Text.ToString().Trim();
        string user_register_time = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[7].Controls[0])).Text.ToString().Trim();
        string user_telephone = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[8].Controls[0])).Text.ToString().Trim();
        string user_nickname = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[9].Controls[0])).Text.ToString().Trim();
        string sql = string.Format("update tb_users set user_name='{0}',user_sex='{1}',user_email='{2}',user_telephone='{3}'," +
            "user_nickname='{4}' where user_id={5}", user_name, user_sex, user_email, user_telephone, user_nickname, user_id);
       
        sqlHelper.NonQuery(sql);
        GridView1.EditIndex = -1;
        Load_Data();
    }

}