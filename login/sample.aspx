<%@ Page Title="" Language="C#" MasterPageFile="~/login/forget.master" AutoEventWireup="true" CodeFile="sample.aspx.cs" Inherits="login_sample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="regno" DataSourceID="SqlDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="regno" HeaderText="Register Number" ReadOnly="True" SortExpression="regno" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                <asp:BoundField DataField="department" HeaderText="Department" SortExpression="department" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="phoneno" HeaderText="Phoneno" SortExpression="phoneno" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinegrievanceConnectionString2 %>" DeleteCommand="DELETE FROM [student_register] WHERE [regno] = @regno" InsertCommand="INSERT INTO [student_register] ([regno], [name], [gender], [department], [address], [phoneno], [email], [username], [password]) VALUES (@regno, @name, @gender, @department, @address, @phoneno, @email, @username, @password)" SelectCommand="SELECT * FROM [student_register]" UpdateCommand="UPDATE [student_register] SET [name] = @name, [gender] = @gender, [department] = @department, [address] = @address, [phoneno] = @phoneno, [email] = @email, [username] = @username, [password] = @password WHERE [regno] = @regno">
            <DeleteParameters>
                <asp:Parameter Name="regno" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="regno" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phoneno" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phoneno" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="regno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
             
</asp:Content>

