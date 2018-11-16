<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nontechLoginPage.aspx.cs" Inherits="login_nontechLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="css/home.css" rel="stylesheet" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/modal.js" type="text/javascript"></script>

<script>
    $(document).ready(function () {

        $('#2').click(function () {
            $('#first').hide();

            $('#second').show();
        });
    });
</script>
<script>
    $(document).ready(function () {

        $('#4').click(function () {
            $('#third').hide();

            $('#four').show();
        });
    });
</script>

<script>
    $(document).ready(function () {

        $('#1').click(function () {
            $('#second').hide();
            $('#first').show();
        });
    });
</script>
<script>
    $(document).ready(function () {

        $('#3').click(function () {
            $('#second').hide();
            $('#third').show();
        });
    });
</script>
<script>
    $(document).ready(function () {

        $('#p2').click(function () {
            $('#third').hide();
            $('#second').show();
        });
    });
</script>

</head>

<body>
   <div class="container">
	  <img src="images/ic_logo.png" alt="" width="1145" height="93" class="img-responsive imageClip"
			>
	  <div class="row" id="marquee">
			<marquee scrolldelay="150"><asp:Label ID="Label3" runat="server" Font-Bold="true" ForeColor="#FB511D" Text=".....Sacred Heart College....."></asp:Label></marquee>
	  </div>
        <div class="row">
			<div class="col-md-6">
				<img alt="" src="images/loginlogo1.png" id="side1">
			</div>
			<div class="col-md-6">
				<div class="row" id="side2">
					<div class="row">
						<img alt="" src="images/keys.png" id="key">Non Teaching Staff Login Page
					</div>
                    <div class="row">
						<form id="Form1" role="form" runat="server">
                            	<div class="row">
								<div class="form-group col-md-8">
                                    <asp:Label ID="Label1" runat="server" Text="UserName" style="color: #FB511D;"></asp:Label>
                                    <asp:TextBox ID="txtLname" runat="server" placeholder="Enter Username" CssClass="form-control" required="required"></asp:TextBox>
                                    	</div>
							</div>
                            	<div class="row">
								<div class="form-group col-md-8">
                                      <asp:Label ID="Label2" runat="server" Text="Password" style="color: #FB511D;"></asp:Label>
                                    <asp:TextBox ID="txtPwd" runat="server" placeholder="Enter Password" CssClass="form-control" TextMode="Password" ></asp:TextBox>
                                    	</div>
							</div>
                            <div class="row" style="margin-left: 15px;">
							<div class="checkbox">
								<label><input type="checkbox"> Remember me</label>
							</div>
                                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="Button1_Click" />
                                  <a href="forgetPasswordNon.aspx">forgot Password...?</a> <a href="../index.aspx" >Home</a> 
       
                                 
                                 </div>
						</form>
					</div>
				</div>
			</div>
             <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="dsLogin" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>"
            SelectCommand="select * from nontech_register where  username = @lname and password = @pwd">
            <SelectParameters>
                <asp:Parameter Name="lname" />
                <asp:Parameter Name="pwd" />
            </SelectParameters>
        </asp:SqlDataSource>
		</div>
		<div class="row" id="footer">
			<p>@Copyrights from UG Department of Computer Application</p>
		</div>

		

				<!-- Modal content-->
				</div>
			
</body>
</html>
