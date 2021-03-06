﻿<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="viewFoodGrievance.aspx.cs" Inherits="login_viewFoodGrievance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="row">
        Grievance On Food
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="grievenceid" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="grievenceid" HeaderText="GrievanceID" InsertVisible="False" ReadOnly="True" SortExpression="grievenceid" />
            <asp:BoundField DataField="grievencemeassage" HeaderText="Grievance Message" SortExpression="grievencemeassage" />
            <asp:BoundField DataField="grievencedate" HeaderText="Grievance Date" SortExpression="grievencedate" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="userid" HeaderText="Userid" SortExpression="userid" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" DeleteCommand="DELETE FROM [food_grievence] WHERE [grievenceid] = @grievenceid" InsertCommand="INSERT INTO [food_grievence] ([grievencemeassage], [grievencedate], [username], [userid]) VALUES (@grievencemeassage, @grievencedate, @username, @userid)" SelectCommand="SELECT * FROM [food_grievence]" UpdateCommand="UPDATE [food_grievence] SET [grievencemeassage] = @grievencemeassage, [grievencedate] = @grievencedate, [username] = @username, [userid] = @userid WHERE [grievenceid] = @grievenceid">
        <DeleteParameters>
            <asp:Parameter Name="grievenceid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="grievencemeassage" Type="String" />
            <asp:Parameter Name="grievencedate" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="grievencemeassage" Type="String" />
            <asp:Parameter Name="grievencedate" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userid" Type="Int32" />
            <asp:Parameter Name="grievenceid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

