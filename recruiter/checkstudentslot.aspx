<%@ Page Title="" Language="C#" MasterPageFile="~/recruiter/recruiter.master" AutoEventWireup="true" CodeFile="checkstudentslot.aspx.cs" Inherits="recruiter_checkstudentslot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="sid" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="sid" HeaderText="sid" InsertVisible="False" 
            ReadOnly="True" SortExpression="sid" />
        <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        <asp:BoundField DataField="slot" HeaderText="slot" SortExpression="slot" />
        <asp:TemplateField HeaderText= "Status ">
            <ItemTemplate>
                <asp:Label Text = '<%#Eval("status") %>' runat="server" />
                <asp:LinkButton ID="lnkStatus" Text="Accept" runat="server" OnClick="Update" CommandArgument='<%#Eval("sid") %>' />
                <asp:LinkButton ID="LinkButton1" Text="Reject" runat="server" OnClick="UpdateR" CommandArgument='<%#Eval("sid") %>' />
             </ItemTemplate>
        </asp:TemplateField>
      
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [sid], [sname], [email], [date], [slot], [status] FROM [student2]">
</asp:SqlDataSource>
    
</asp:Content>

