<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="loginpage.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.7.1.js"></script>
    <script src="Scripts/jquery-1.7.1.intellisense.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#Btnsign").click(function () {
                var userid = $("#txtid").val();
                if (userid == "") {
                    alert("please enter your id");
                    return false;
                }
                function validateuserid($userid) {
                    var userid = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    return userid.test($userid);
                }

                if (validateuserid($("txtid").val()) == false) {
                    alert("your id contains illigal character");
                    return false;
                }

                var password = $("#txtpwd").val();
                if (password == "") {
                    alert("please enter your password");
                    return false;
                }
                if (password.length <= 8) {
                    alert("password must be 8 character");
                    return false;
                }
            });
        });

    </script>


    <style type="text/css">
        .text-center {
            color: red;
        }

        .auto-style1 {
            width: 343px;
            color: blue;
        }
    </style>
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">


        <img src="Images/CTimg.png" style="width: 104px; height: 73px; margin-left: 567px" />


        <div>
            <fieldset style="width: 678px; margin-left: 298px;">
                <legend></legend>
                <center>
                <h2 class="text-center">Sign in to Centeral Tracker</h2>
                <div class="form group"> 
            <center>

                        <table style="margin-left: 80px;">
                            <tr>
                                <td class="auto-style1">User Email Id</td>
                                <td>
                <asp:TextBox ID="txtid" runat="server" placeholder="Enter user id"></asp:TextBox>

                                </td>
                            </tr>
                            
                            <tr>
                               <td class="auto-style1">Password</td> 
                                <td>
                <asp:TextBox ID="txtpwd" runat="server"  placeholder="Password" Height="16px" style="margin-top: 4px; margin-left: 0px;" Width="172px"></asp:TextBox>

                                </td>
                            </tr>
                            
                            </table>
                              <asp:Button ID="Btnsign" runat="server" Text="Sign in" Height="30px" style="margin-top: 69px; margin-left: 157px;" Width="119px" BackColor="Green" />
                
                </center>
                 </div>
            </center>
            </fieldset>

        </div>



    </form>
</body>
</html>
