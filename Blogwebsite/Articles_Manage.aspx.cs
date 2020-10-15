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

public partial class Articles_Manage : System.Web.UI.Page
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
        GridView1.DataSource = sqlHelper.Query("select * from tb_articles");
        GridView1.DataBind();
    }


    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Load_Data();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        string article_id = (GridView1.DataKeys[e.RowIndex].Value).ToString();
        string article_comment_count = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim();
        string article_title = (((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim());
        string article_content = (((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim());
        string sql = "update tb_articles set article_comment_count=" + article_comment_count + ",article_title='" + article_title + "',article_content='" + article_content +
            "'  where article_id=" + article_id;

        sqlHelper.NonQuery(sql);
        GridView1.EditIndex = -1;
        Load_Data();
    }

}