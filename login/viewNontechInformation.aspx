<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="viewNontechInformation.aspx.cs" Inherits="login_viewNontechInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Non Teaching Staffs Information:
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="nontechid" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="nontechid" HeaderText="Register Number" ReadOnly="True" SortExpression="nontechid" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            <asp:BoundField DataField="workplace" HeaderText="Workplace" SortExpression="workplace" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="phoneno" HeaderText="Phoneno" SortExpression="phoneno" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" DeleteCommand="DELETE FROM [nontech_register] WHERE [nontechid] = @nontechid" InsertCommand="INSERT INTO [nontech_register] ([nontechid], [name], [gender], [workplace], [address], [phoneno], [email], [username], [password]) VALUES (@nontechid, @name, @gender, @workplace, @address, @phoneno, @email, @username, @password)" SelectCommand="SELECT * FROM [nontech_register]" UpdateCommand="UPDATE [nontech_register] SET [name] = @name, [gender] = @gender, [workplace] = @workplace, [address] = @address, [phoneno] = @phoneno, [email] = @email, [username] = @username, [password] = @password WHERE [nontechid] = @nontechid">
        <DeleteParameters>
            <asp:Parameter Name="nontechid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nontechid" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="workplace" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phoneno" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="workplace" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phoneno" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="nontechid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

