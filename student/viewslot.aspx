<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.master" AutoEventWireup="true" CodeFile="viewslot.aspx.cs" Inherits="student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for login-->
<link href="assets/css/custom.css" rel="stylesheet">
<div class="col-md-12">
        <div class="card">
            <%--Button For select panel--%>
            <div class="btn-group bg-danger">
                <asp:Button ID="btn_panelresult" runat="server" Text="My Booked Slot" CssClass="btn btn-info" BorderStyle="None" CausesValidation="False" BackColor="#343A40" />
            </div>
            <div class="card text-center mb-3">
                <div class="card-body">
                    <div class="table-responsive">                 
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="password" HeaderText="password" 
                                    SortExpression="password" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                <asp:BoundField DataField="slot" HeaderText="slot" SortExpression="slot" />
                                <asp:BoundField DataField="status" HeaderText="status" 
                                    SortExpression="status" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [sname], [email], [password], [date], [slot], [status] FROM [student2] WHERE ([email] = @email)">
                            <SelectParameters>
                                <asp:SessionParameter Name="email" SessionField="username" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                
            </div>
        </div>
    </div>

</asp:Content>

