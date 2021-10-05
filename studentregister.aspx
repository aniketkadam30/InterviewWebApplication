<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentregister.aspx.cs" Inherits="studentregister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Register & Blook Slot</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this register-->
    <link href="assets/css/custom.css" rel="stylesheet">
</head>
<body class="bg-dark ">
    <form id="form1" runat="server">
 <div class="container">
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Register an Account & Book Slot</div>
            <div class="card-body">
                   <div id="formregister">
                        <div class="form-group">
                                    <div class="form-row">
                                        
                                            <label for="exampleInputName">Student Name</label>
                                            <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Enter first name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rqr_name" runat="server" ErrorMessage="Enter first name" ControlToValidate="txtname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Enter email" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqr_emil" runat="server" ErrorMessage="Enter email" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rqrexpre_email" runat="server" ErrorMessage="Enter validate email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" ></asp:RegularExpressionValidator>
                                      </div>
                                <div class="form-group">
                                    <div class="form-row">
                            
                                            <label for="exampleInputPassword1">Password</label>
                                            <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rqr_pass" runat="server" ErrorMessage="Enter password" ControlToValidate="txtpass" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                           
                                    </div>
                                </div>                    
                                <div class="form-group">
                                    <div class="form-row">
                                        
                                            <label for="exampleInputName">Date</label>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter first name"></asp:TextBox>
                                             </div>
                                             <asp:ImageButton ID="ImageButton1" runat="server"
                                                ImageUrl="~/images/663353.png" Height="30px" Width="30px" 
                                                ImageAlign="AbsBottom" onclick="ImageButton1_Click"  />
                                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#999999" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_OnDayRender"></asp:Calendar>
                
                                        
                                    </div>
                                
                                    <div class="form-row">
                                        
                                            <label for="exampleInputName">Book Slot</label>
                                            
                                            <asp:DropDownList ID="ddlbookSlot" runat="server" CssClass="form-control" placeholder="Enter first name" >
                                                    <asp:ListItem Text="Select" />
                                                    <asp:ListItem Text="Morning" />
                                                    <asp:ListItem Text="Noon" />
                                                    <asp:ListItem Text="Evening" />
                                              </asp:DropDownList> 
                                        </div>
                                        
                       
                       </div>

                    <asp:Button ID="btn_register" runat="server" Text="Submit" CssClass="btn btn-primary btn-block" OnClick="Button1_Click" />
                    <div class="text-center">
                        <a class="d-block small mt-3" href="studentlogin.aspx">Login Page</a>
                    </div>
            
             </div>
             
            </div>
        </div>
    </div>
  
    </form>
</body>
</html>
