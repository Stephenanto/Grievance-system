<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="viewLabInformation.aspx.cs" Inherits="login_viewLabInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Lab Technicians Information:
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="labtechid" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="labtechid" HeaderText="RegisterNo" ReadOnly="True" SortExpression="labtechid" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="phoneno" HeaderText="Phoneno" SortExpression="phoneno" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
            <asp:BoundField DataField="lapname" HeaderText="Lab Name" SortExpression="lapname" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" DeleteCommand="DELETE FROM [laptech_register] WHERE [labtechid] = @labtechid" InsertCommand="INSERT INTO [laptech_register] ([labtechid], [name], [gender], [address], [phoneno], [email], [username], [password], [lapname]) VALUES (@labtechid, @name, @gender, @address, @phoneno, @email, @username, @password, @lapname)" SelectCommand="SELECT * FROM [laptech_register]" UpdateCommand="UPDATE [laptech_register] SET [name] = @name, [gender] = @gender, [address] = @address, [phoneno] = @phoneno, [email] = @email, [username] = @username, [password] = @password, [lapname] = @lapname WHERE [labtechid] = @labtechid">
        <DeleteParameters>
            <asp:Parameter Name="labtechid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="labtechid" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phoneno" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="lapname" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phoneno" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="lapname" Type="String" />
            <asp:Parameter Name="labtechid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

