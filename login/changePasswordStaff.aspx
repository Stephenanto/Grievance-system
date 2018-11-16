<%@ Page Title="" Language="C#" MasterPageFile="~/login/staffHomeMaster.master" AutoEventWireup="true" CodeFile="changePasswordStaff.aspx.cs" Inherits="login_changePasswordStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">

                <h5>  <label for="no" style="color: #AFDA50;">Change Password:</label></h5>

                
                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="no" style="color: #33A0CC;">Enter Your Old Password: *</label><asp:TextBox ID="TextBox1" runat="server" class="form-control"  placeholder="Enter Old Password"  required="required"></asp:TextBox>
                            
                        </div>
                    </div>
          <div class="row">
                        <div class="form-group col-md-8">
                            <label for="no" style="color: #33A0CC;">Enter Your New Password: *</label><asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Password" placeholder="Enter new Password"  required="required"></asp:TextBox>
                            
                        </div>
                    </div>
          <div class="row">
                        <div class="form-group col-md-8">
                            <label for="no" style="color: #33A0CC;">Re Enter Your Password: *</label><asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="Password"  placeholder="Re Enter new Password"  required="required"></asp:TextBox>
                            
                        </div>
                    </div>
         <asp:Button ID="Button1" runat="server" Text="Change Password" class="btn btn-primary" OnClick="Button1_Click" />
         </div>
</asp:Content>

