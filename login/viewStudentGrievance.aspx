<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="viewStudentGrievance.aspx.cs" Inherits="login_viewStudentGrievance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="row">

        <asp:Label ID="Label1" runat="server" Text="Student Grievance:"></asp:Label>
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="grievanceid" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="grievanceid" HeaderText="Grievance ID" InsertVisible="False" ReadOnly="True" SortExpression="grievanceid" />
            <asp:BoundField DataField="grievencemessage" HeaderText="Grievance Message" SortExpression="grievencemessage" />
            <asp:BoundField DataField="grievencedate" HeaderText="Grievance Date" SortExpression="grievencedate" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="userid" HeaderText="UserID" SortExpression="userid" />
            <asp:BoundField DataField="studentid" HeaderText="StudentID" SortExpression="studentid" />
            
      <asp:HyperLinkField  DataNavigateUrlFields="studentid" datanavigateurlformatstring="otherview.aspx?studentid={0}"  Text="Post Solution" HeaderText="Action" Target="_self"/>
               
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" DeleteCommand="DELETE FROM [student_grievence] WHERE [grievanceid] = @grievanceid" InsertCommand="INSERT INTO [student_grievence] ([grievencemessage], [grievencedate], [username], [userid], [studentid]) VALUES (@grievencemessage, @grievencedate, @username, @userid, @studentid)" SelectCommand="SELECT * FROM [student_grievence]" UpdateCommand="UPDATE [student_grievence] SET [grievencemessage] = @grievencemessage, [grievencedate] = @grievencedate, [username] = @username, [userid] = @userid, [studentid] = @studentid WHERE [grievanceid] = @grievanceid">
        <DeleteParameters>
            <asp:Parameter Name="grievanceid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="grievencemessage" Type="String" />
            <asp:Parameter Name="grievencedate" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="studentid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="grievencemessage" Type="String" />
            <asp:Parameter Name="grievencedate" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="studentid" Type="Int32" />
            <asp:Parameter Name="grievanceid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

