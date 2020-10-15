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

public partial class Sort_Manage : System.Web.UI.Page
{
    SqlHelper sqlHelper = new SqlHelper();
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            Load_Data();
    }

    

    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        Load_Data();
    }

    private void Load_Data()
    {
        GridView1.DataSource = sqlHelper.Query("select * from tb_articles tba,tb_articles_sorts tbas,tb_sorts tbs " +
           "where tba.article_id=tbas.article_id and tbas.sort_id=tbs.sort_id");
        GridView1.DataBind();

        GridView2.DataSource = sqlHelper.Query("select * from tb_sorts");
        GridView2.DataBind();

        GridView3.DataSource = sqlHelper.Query("select * from tb_articles");
        GridView3.DataBind();
    }


    

    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        Load_Data();
    }

    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        // int article_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        string sort_id = (GridView2.DataKeys[e.RowIndex].Value).ToString();
       
        string sort_name = ((TextBox)(GridView2.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim();
        string sort_description = ((TextBox)(GridView2.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
        
        string sql = "update tb_sorts set sort_name='" + sort_name + "',sort_description='" + sort_description + "'" +"  where sort_id=" + sort_id;
        //String sql = String.Format("update tb_articles set user_id={1},article_title='{2}',article_content='{3}' where aritcle_id={0}",
        //    article_id,user_id,article_title,article_content);
        //NonQuery(sql);

        sqlHelper.NonQuery(sql);
        GridView2.EditIndex = -1;
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

