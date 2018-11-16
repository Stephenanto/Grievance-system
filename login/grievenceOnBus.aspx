<%@ Page Title="" Language="C#" MasterPageFile="~/login/studentMaster.master" AutoEventWireup="true" CodeFile="grievenceOnBus.aspx.cs" Inherits="login_grievenceOnBus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">

                <h5>  <label for="no" style="color: #AFDA50;">Add Bus Grievance:</label></h5>

                
                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="no" style="color: #33A0CC;">Grievance Message: *</label><asp:TextBox ID="TextBox1" runat="server" class="form-control" TextMode="MultiLine" placeholder="Enter Grievence"  required="required"></asp:TextBox>
                            
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="fname" style="color: #33A0CC;">Grievance Date: *</label><input type="date" id="htmlDate"  class="form-control"/>
                            </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="fname" style="color: #33A0CC;"> UserType: *</label><asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                <asp:ListItem>Student</asp:ListItem>
                                <asp:ListItem>Staff</asp:ListItem><asp:ListItem>Non Teaching Staff</asp:ListItem>
                                <asp:ListItem>Lap Technitions</asp:ListItem>

                            </asp:DropDownList>


                            

                        </div>
                    </div>
                    

                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="fname" style="color: #33A0CC;">User Id: *</label>


                            <asp:TextBox ID="TextBox2" runat="server"  class="form-control"  placeholder="Enter user id"  required="required"></asp:TextBox>
                        </div>
                    </div>
          



                   

           <asp:Button ID="Button1" runat="server" Text="Add Grievance" class="btn btn-primary" OnClick="Button1_Click" />
                    

                    
                    </div>
</asp:Content>

