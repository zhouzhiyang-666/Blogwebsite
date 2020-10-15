<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage2.master" AutoEventWireup="true" CodeFile="Sort_Manage2.aspx.cs" Inherits="Sort_Manage2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" Font-Size="15px" Width="100%" CssClass="grid-td" PageSize="6" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="article_sort_id" HeaderText="文章分类编号" FooterStyle-Width="30px" FooterStyle-Height="20px" ReadOnly="True" >
<FooterStyle Height="20px" Width="30px"></FooterStyle>
                </asp:BoundField>
                <asp:BoundField DataField="sort_name" HeaderText="分类名称" ReadOnly="True" />
                <asp:BoundField DataField="sort_id" HeaderText="分类ID" ReadOnly="True" >
                </asp:BoundField>
                <asp:BoundField DataField="article_title" HeaderText="文章标题" ReadOnly="True" />
                <asp:BoundField DataField="article_id" HeaderText="文章编号" ReadOnly="True" />
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
            <RowStyle BackColor="White" ForeColor="#003399" Wrap="False" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" Font-Size="15px" Width="100%" CssClass="grid-td" PageSize="5" DataKeyNames="sort_id" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="sort_id" HeaderText="分类ID" ReadOnly="True" >
                </asp:BoundField>
                <asp:BoundField DataField="sort_name" HeaderText="分类名称" />
                <asp:BoundField DataField="sort_description" HeaderText="分类描述" >
                <FooterStyle Width="100px" />
                </asp:BoundField>
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
            <RowStyle BackColor="White" ForeColor="#003399" Wrap="False" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>

    <br />
    <br />
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="article_id" PageSize="7" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="article_id" HeaderText="文章编号" ReadOnly="True" />
                <asp:BoundField DataField="user_id" HeaderText="用户编号" ReadOnly="True" />
                <asp:BoundField DataField="article_title" HeaderText="文章标题" ReadOnly="True" />
                <asp:BoundField DataField="article_content" HeaderText="文章内容" ReadOnly="True" />
                <asp:BoundField DataField="article_date" HeaderText="文章发表时间" ReadOnly="True" />
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

