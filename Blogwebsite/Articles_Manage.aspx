<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage2.master" AutoEventWireup="true" CodeFile="Articles_Manage.aspx.cs" Inherits="Articles_Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="article_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" CellSpacing="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" PageSize="6">
            <Columns>
                <asp:BoundField DataField="article_id" HeaderText="文章编号" ReadOnly="True" />
                <asp:BoundField DataField="user_id" HeaderText="用户编号" ReadOnly="True" />
                <asp:BoundField DataField="article_title" HeaderText="文章标题" />
                <asp:BoundField DataField="article_content" HeaderText="文章内容" />
                <asp:BoundField DataField="article_views" HeaderText="文章访问量" ReadOnly="True" />
                <asp:BoundField DataField="article_comment_count" HeaderText="文章评论数" />
                <asp:BoundField DataField="article_date" HeaderText="文章发表时间" />
                <asp:BoundField DataField="article_like_count" HeaderText="文章点赞数" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowInsertButton="True" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm(&quot;确认删除吗？&quot;)" Text="删除"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
</asp:Content>

