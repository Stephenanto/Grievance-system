<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="viewStaffGrievance.aspx.cs" Inherits="login_viewStaffGrievance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="row">
        <asp:Label ID="Label1" runat="server" Text="Staff Grievance:"></asp:Label>
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="grievenceid" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="grievenceid" HeaderText="GrievanceID" ReadOnly="True" SortExpression="grievenceid" />
            <asp:BoundField DataField="grievencemessage" HeaderText="Grievance Message" SortExpression="grievencemessage" />
            <asp:BoundField DataField="grievencedate" HeaderText="GrievanceDate" SortExpression="grievencedate" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="userid" HeaderText="UserID" SortExpression="userid" />
            <asp:BoundField DataField="staffid" HeaderText="StaffID" SortExpression="staffid" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" DeleteCommand="DELETE FROM [staff_grievence] WHERE [grievenceid] = @grievenceid" InsertCommand="INSERT INTO [staff_grievence] ([grievenceid], [grievencemessage], [grievencedate], [username], [userid], [staffid]) VALUES (@grievenceid, @grievencemessage, @grievencedate, @username, @userid, @staffid)" SelectCommand="SELECT * FROM [staff_grievence]" UpdateCommand="UPDATE [staff_grievence] SET [grievencemessage] = @grievencemessage, [grievencedate] = @grievencedate, [username] = @username, [userid] = @userid, [staffid] = @staffid WHERE [grievenceid] = @grievenceid">
        <DeleteParameters>
            <asp:Parameter Name="grievenceid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="grievenceid" Type="Int32" />
            <asp:Parameter Name="grievencemessage" Type="String" />
            <asp:Parameter Name="grievencedate" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="staffid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="grievencemessage" Type="String" />
            <asp:Parameter Name="grievencedate" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="staffid" Type="Int32" />
            <asp:Parameter Name="grievenceid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

