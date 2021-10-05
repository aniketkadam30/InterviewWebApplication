<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recruiterlogin.aspx.cs" Inherits="recruiterlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Recruiter Login</title>
    <!-- Bootstrap core CSS-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for login-->
    <link href="assets/css/custom.css" rel="stylesheet">
</head>
<body class="bg-dark">
    <div class="container">
            <br />
            <br />
            <br />
            <br />

        <div class="card card-login mx-auto mt-5">
            <div class="card-header">Recruiter Login</div>
            <div class="card-body">
                <form runat="server" id="formlogin">
                   
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqr_emil" runat="server" ErrorMessage="Enter email" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="rqrexpre_email" runat="server" ErrorMessage="Enter validate email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            
                                <label for="exampleInputPassword1">Password</label>
                                <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_pass" runat="server" ErrorMessage="Enter password" ControlToValidate="txtpass" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                   
                    <asp:Button ID="btn_login" runat="server" Text="Log In" 
                        CssClass="btn btn-primary btn-block" onclick="btn_login_Click" />
                    <div class="text-center">
                        <a class="d-block small mt-3" href="studentlogin.aspx">Login for Student</a>
                       
                    </div>
             
                </form>

            </div>
        </div>
    </div>
</body>
</html>
