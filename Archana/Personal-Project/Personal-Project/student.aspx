<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="Personal_Project.student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
 <body style="height: 232px">
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td> Student Id</td>
            <td> <asp:TextBox ID="txtid" runat="server" OnTextChanged="txtid_TextChanged"></asp:TextBox></td>
             </tr>
        <tr>
            <td>Student Name</td>
            <td> <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
            <td>Student Dept</td>
            <td> <asp:TextBox ID="txtdept" runat="server"></asp:TextBox></td>
         </tr>
        <tr>
            <td>Address</td>
            <td> <textarea id="txtadd" runat="server" cols="20" rows="2"></textarea></td>
        </tr>
        <tr>
            <td>Gender</td>
            <asp:RadioButtonList ID="Rdgen" runat="server">
            <asp:ListItem>male</asp:ListItem>
            <asp:ListItem>female</asp:ListItem>
              </asp:RadioButtonList>
            </tr>
       </table>
        <asp:Button ID="btnin" runat="server" Text="Insert" OnClick="btnin_Click1" />
        <asp:Button ID="btndl" runat="server" Text="Delete" OnClick="btndl_Click" />
        <asp:Button ID="btnup" runat="server" Text="Update" OnClick="btnup_Click" />
       <asp:Button ID="btnserch" runat="server" Text="Search" OnClick="btnserch_Click" />
            
     
    </div>
    </form>
</body>
</html>

