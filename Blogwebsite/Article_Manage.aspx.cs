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

public partial class Article_Manage : System.Web.UI.Page
{
    SqlHelper sqlHelper = new SqlHelper();
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
         String connStr = "Data Source=.; Initial Catalog=Blog; uid=root; pwd=123456";
         SqlConnection con = new SqlConnection(connStr);
         con.Open();
         SqlDataAdapter sda = new SqlDataAdapter("select * from tb_articles",con);
         DataTable dt = new DataTable();
         sda.Fill(dt);
         con.Close();
         GridView1.DataSource = dt;
         GridView1.DataBind();
         */
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

        // int article_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        string article_id = (GridView1.DataKeys[e.RowIndex].Value).ToString();
        //int article_id = Convert.ToInt32(((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text.Trim());
        //int user_id= Convert.ToInt32(((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.Trim());
        //string article_id = (((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text.Trim()).ToString();
        string article_comment_count = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim();
        string article_title = (((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim());
        string article_content = (((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim());
        string sql = "update tb_articles set article_comment_count=" + article_comment_count + ",article_title='" + article_title + "',article_content='" + article_content +
            "'  where article_id=" + article_id;
        //String sql = String.Format("update tb_articles set user_id={1},article_title='{2}',article_content='{3}' where aritcle_id={0}",
        //    article_id,user_id,article_title,article_content);
        //NonQuery(sql);

        sqlHelper.NonQuery(sql);
        GridView1.EditIndex = -1;
        Load_Data();
    }


    /*
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        GridView1.EditIndex = e.Row.RowIndex+1;
        string article_id = (GridView1.Rows[e.Row.RowIndex]).ToString();
        //int article_id = Convert.ToInt32(((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text.Trim());
        //int user_id= Convert.ToInt32(((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.Trim());
        //string article_id = (((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text.Trim()).ToString();
        string user_id = (((TextBox)(GridView1.Rows[e.Row.RowIndex].Cells[1].Controls[0])).Text.Trim()).ToString();
        string article_title = (((TextBox)GridView1.Rows[e.Row.RowIndex].Cells[2].Controls[0])).Text.Trim();
        string article_content = (((TextBox)GridView1.Rows[e.Row.RowIndex].Cells[3].Controls[0])).Text.Trim();
        string sql = "insert into tb_articles(user_id,article_title,article_content) values (" + user_id + ",'" + article_title + "','" + article_content +
            "')"; 

        sqlHelper.NonQuery(sql);
        GridView1.EditIndex = -1;
        Load_Data();
    }
    */
}