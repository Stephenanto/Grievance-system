<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="laptechRegister.aspx.cs" Inherits="login_laptechRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">

                <h5>  <label for="no" style="color: #AFDA50;">Add Lap Techinicians:</label></h5>

                
                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="no" style="color: #33A0CC;">Staff Register Id: *</label><asp:TextBox ID="TextBox1" runat="server" class="form-control"  placeholder="Enter Number"  required="required"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
     ControlToValidate="TextBox1"
     ErrorMessage="Only numeric allowed." ForeColor="Red"
     ValidationExpression="^[0-9]*$" ValidationGroup="NumericValidate">*
</asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="fname" style="color: #33A0CC;">Staff Name: *</label><asp:TextBox ID="TextBox2" runat="server" class="form-control"  placeholder="Student Name"  required="required"></asp:TextBox>
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
                            <label for="fname" style="color: #33A0CC;">Lap Name: *</label>



                            <asp:TextBox ID="TextBox8" runat="server" class="form-control"  placeholder="Enter Lap Name"  required="required"></asp:TextBox>

                            

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


                            <asp:TextBox ID="TextBox5" runat="server" class="form-control"  placeholder="Enter Email"  required="required"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="vgSubmit" ControlToValidate="TextBox5"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>

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

