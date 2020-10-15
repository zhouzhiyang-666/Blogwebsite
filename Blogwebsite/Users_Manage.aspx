<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage2.master" AutoEventWireup="true" CodeFile="Users_Manage.aspx.cs" Inherits="Users_Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="user_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Font-Size="15px" Width="100%" CssClass="grid-td" PageSize="9" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="编号" ReadOnly="True" FooterStyle-Width="30px" FooterStyle-Height="20px" >
<FooterStyle Height="20px" Width="30px"></FooterStyle>
                </asp:BoundField>
                <asp:BoundField DataField="user_ip" HeaderText="ip" ReadOnly="True" />
                <asp:BoundField DataField="user_name" HeaderText="名字" >
                <ControlStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="user_sex" HeaderText="性别" />
                <asp:BoundField DataField="user_password" HeaderText="密码" ReadOnly="True" />
                <asp:BoundField DataField="user_email" HeaderText="邮箱" />
                <asp:BoundField DataField="user_image_url" HeaderText="头像地址" />
                <asp:BoundField DataField="user_register_time" HeaderText="注册时间" />
                <asp:BoundField DataField="user_telephone" HeaderText="电话号码" />
                <asp:BoundField DataField="user_nickname" HeaderText="昵称" />
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
</asp:Content>

