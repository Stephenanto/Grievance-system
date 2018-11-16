<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="viewGeneralGrievance.aspx.cs" Inherits="login_viewGeneralGrievance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Grievance On General:
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="grievenceid" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="grievenceid" HeaderText="Grievance ID" InsertVisible="False" ReadOnly="True" SortExpression="grievenceid" />
            <asp:BoundField DataField="grievencemessage" HeaderText="Grievance Message" SortExpression="grievencemessage" />
            <asp:BoundField DataField="date" HeaderText="Grievance Date" SortExpression="date" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="userid" HeaderText="UserID" SortExpression="userid" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" DeleteCommand="DELETE FROM [general_grievence] WHERE [grievenceid] = @grievenceid" InsertCommand="INSERT INTO [general_grievence] ([grievencemessage], [date], [username], [userid]) VALUES (@grievencemessage, @date, @username, @userid)" SelectCommand="SELECT * FROM [general_grievence]" UpdateCommand="UPDATE [general_grievence] SET [grievencemessage] = @grievencemessage, [date] = @date, [username] = @username, [userid] = @userid WHERE [grievenceid] = @grievenceid">
        <DeleteParameters>
            <asp:Parameter Name="grievenceid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="grievencemessage" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="grievencemessage" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="grievenceid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

