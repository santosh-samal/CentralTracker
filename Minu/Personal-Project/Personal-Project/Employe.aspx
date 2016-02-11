<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employe.aspx.cs" Inherits="Personal_Project.Employe" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Employee Information</title>
    <script src="Scripts/jquery-1.7.1.intellisense.js"></script>
    <script src="Scripts/jquery-1.7.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnInsert").click(function () {
                var Emp_Id = $("#txtId").val();
                if (Emp_Id == "") {
                    $("#lblError").html("Employee Id Will Be Mandatory");

                    // alert("Employee Id Will Be Mandatory");
                    return false;
                }
                var Emp_Name = $("#txtName").val();
                if (Emp_Name == "") {
                    alert("Employee Name Will Be Mandatory");
                    return false;
                }
                var Emp_Addr = $("#txtAddr").val();
                if (Emp_Addr == "") {
                    alert("Employee Adress Will Be Mandatory");
                    return false;
                }
                //var Emp_Gender = $("#Rdgen").val();
                // if (Emp_Gender== "")
                //{
                //   alert("Employee Gender Be Mandatory");
                //   return false;
                // }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1><b> Information About Employee</b></h1>
            </center>
        </div>
        <div>
            <center>
                
            <table style="width:auto" border="1" bgcolor="magenda">
                 <tr>
                    <td><h2> <b>Employee Id:</b></h2></td>
                    <td>
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td> <h3><b>Employee Name:</b></h3></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td> <h3><b>Employee Addr:</b></h3></td>
                    <td>
                        <textarea id="txtAddr" cols="20" rows="2" runat="server"></textarea>

                    </td>
                </tr>
                <tr>
                    <td><h3> <b>Employee Gender:</b></h3></td>
                      <td>
                       <asp:RadioButtonList ID="Rdgen" runat="server">
                       <asp:ListItem> <b>Male</b></asp:ListItem>
                       <asp:ListItem><b>Female</b></asp:ListItem>     
                       </asp:RadioButtonList> 
                          </td>        
                    
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click"></asp:Button>
                        <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click"></asp:Button>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click"></asp:Button>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"></asp:Button>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Label ID="lblError" runat="server" Text="" CssClass="error"></asp:Label>
                    </td>
                </tr>
            </table>
        </center>
        </div>
    </form>
</body>
</html>


