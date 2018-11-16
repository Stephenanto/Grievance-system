<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="viewEpGrievance.aspx.cs" Inherits="login_viewEpGrievance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="row">
        Grievance On Equipments: 
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="GrievanceID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="message" HeaderText="Grievance Message" SortExpression="message" />
            <asp:BoundField DataField="date" HeaderText="Grievance Date" SortExpression="date" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="userid" HeaderText="Userid" SortExpression="userid" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" DeleteCommand="DELETE FROM [equip_grievence] WHERE [id] = @id" InsertCommand="INSERT INTO [equip_grievence] ([message], [date], [username], [userid]) VALUES (@message, @date, @username, @userid)" SelectCommand="SELECT * FROM [equip_grievence]" UpdateCommand="UPDATE [equip_grievence] SET [message] = @message, [date] = @date, [username] = @username, [userid] = @userid WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

