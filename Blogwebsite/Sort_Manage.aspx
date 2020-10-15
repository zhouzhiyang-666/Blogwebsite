<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Sort_Manage.aspx.cs" Inherits="Sort_Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="0" ForeColor="#333333" GridLines="None" Font-Size="15px" Width="100%" CssClass="grid-td" CellSpacing="4" PageSize="7">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerSettings Mode="NextPreviousFirstLast" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Wrap="False" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="0" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" Font-Size="15px" Width="100%" CssClass="grid-td" CellSpacing="4" PageSize="7" DataKeyNames="sort_id">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerSettings Mode="NextPreviousFirstLast" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Wrap="False" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

    <br />
    <br />
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="article_id" CellSpacing="4" PageSize="7">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="article_id" HeaderText="文章编号" ReadOnly="True" />
                <asp:BoundField DataField="user_id" HeaderText="用户编号" ReadOnly="True" />
                <asp:BoundField DataField="article_title" HeaderText="文章标题" ReadOnly="True" />
                <asp:BoundField DataField="article_content" HeaderText="文章内容" ReadOnly="True" />
                <asp:BoundField DataField="article_date" HeaderText="文章发表时间" ReadOnly="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerSettings Mode="NextPreviousFirstLast" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
</asp:Content>

