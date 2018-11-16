<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="viewStaffInformation.aspx.cs" Inherits="login_viewStaffInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Staff Information:
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="staffid" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="staffid" HeaderText="StaffID" ReadOnly="True" SortExpression="staffid" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            <asp:BoundField DataField="department" HeaderText="Department" SortExpression="department" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="phoneno" HeaderText="PhoneNo" SortExpression="phoneno" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" DeleteCommand="DELETE FROM [staff_register] WHERE [staffid] = @staffid" InsertCommand="INSERT INTO [staff_register] ([staffid], [name], [gender], [department], [address], [phoneno], [email], [username], [password]) VALUES (@staffid, @name, @gender, @department, @address, @phoneno, @email, @username, @password)" SelectCommand="SELECT * FROM [staff_register]" UpdateCommand="UPDATE [staff_register] SET [name] = @name, [gender] = @gender, [department] = @department, [address] = @address, [phoneno] = @phoneno, [email] = @email, [username] = @username, [password] = @password WHERE [staffid] = @staffid">
        <DeleteParameters>
            <asp:Parameter Name="staffid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="staffid" Type="Int32" />
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
            <asp:Parameter Name="staffid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

