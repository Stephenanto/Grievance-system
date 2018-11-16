<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="studentRegister.aspx.cs" Inherits="login_studentRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="row">

                <h5>  <label for="no" style="color: #AFDA50;">Add Student:</label></h5>

                
                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="no" style="color: #33A0CC;">Student Register Number: *</label><asp:TextBox ID="TextBox1" runat="server" class="form-control"  placeholder="Enter Number"  required="required"></asp:TextBox>
                            
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="fname" style="color: #33A0CC;">Student Name: *</label><asp:TextBox ID="TextBox2" runat="server" class="form-control"  placeholder="Student Name"  required="required"></asp:TextBox>
                            </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="fname" style="color: #33A0CC;"> Gender: *</label><asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>


                            

                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="fname" style="color: #33A0CC;">Course: *</label>





                            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                <asp:ListItem>MSC(Computer Science)</asp:ListItem>
                                <asp:ListItem>MCA</asp:ListItem>
                                <asp:ListItem>M.A(Tamil)</asp:ListItem>
                                <asp:ListItem>M.A(English)</asp:ListItem>
                                <asp:ListItem>B.com</asp:ListItem>
                                <asp:ListItem>M.com</asp:ListItem>
                                <asp:ListItem>BCA</asp:ListItem>
                                <asp:ListItem>BSC(Computer Science)</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="fname" style="color: #33A0CC;">Address: *</label>


                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" class="form-control"  placeholder="Enter Address"  required="required"></asp:TextBox>
                        </div>
                    </div>
           <div class="row">
                        <div class="form-group col-md-8">
                            <label for="pass" style="color: #33A0CC;"> Phone Number: *</label>


                            <asp:TextBox ID="TextBox4" runat="server" class="form-control"  placeholder="Enter Phone Number"  required="required"></asp:TextBox>
                        </div>
                    </div>
                   


                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="pass" style="color: #33A0CC;"> Email: *</label>


                            <asp:TextBox ID="TextBox5" runat="server" class="form-control"  placeholder="Enter Email"  required="required"></asp:TextBox>

                        </div>
                    </div>
            <div class="row">
                        <div class="form-group col-md-8">
                            <label for="pass" style="color: #33A0CC;"> UserName: *</label>


                            <asp:TextBox ID="TextBox6" runat="server" class="form-control"  placeholder="Enter Username"  required="required"></asp:TextBox>
                        </div>
                    </div>
                   


                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="pass" style="color: #33A0CC;"> Password: *</label>


                            <asp:TextBox ID="TextBox7" runat="server" class="form-control"  placeholder="Enter Password" TextMode="Password" required="required"></asp:TextBox>
                        </div>
                    </div>
           <asp:Button ID="Button1" runat="server" Text="ADD" class="btn btn-primary" OnClick="Button1_Click" />
                    

                    
                    </div>
</asp:Content>

