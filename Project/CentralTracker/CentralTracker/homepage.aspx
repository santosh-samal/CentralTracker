<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="CentralTracker.homepage" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home page</title>
    
    <script src="Scripts/jquery-1.10.2.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnSubmit").click(function () {
                var yourname = $("#txtname").val();
                if (yourname == "") {
                    alert("This Field Will Be Mandatory");
                    return false;
                } if (yourname.length >= 8) {
                    alert = (" The Username carry 8 character");
                    return false;
                }

                var youremail = $("#txtemail").val();
                if (youremail == "") {
                    alert("Enter Your Email.");
                    return false;
                }
                function validateEmail($email) {
                    var email = /^([\W-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    return email.test($email);
                }

                if (validateEmail($("txtemail").val()) == false) {
                    alert("Your email contain illegal charactre");
                }
                var psw = $("#txtpswd").val();
                if (psw == "") {
                    alert("Enter Your Password");
                    return false;
                }
            });

        });
    </script>



    <style type="text/css">
        #btnSubmit {
            width: 277px;
            background-color: lightgreen;
        }
    </style>

</head>
<body bgcolor="cyan">

    <form id="form1" runat="server">
      

        <div>
            <center>
            <fieldset>
        <table style="width:100% " bgcolor="white">
            <tr>
                 <td> <b> CentralTracker </b></td>
                
                <td>
                     <input type="text" id="txtcentral" placeholder="Search for CentralTracker" runat="server" />
                </td>
                <td><b> Explorer    Features    Enterprise    Blog </b></td>
            
           
                        <td colspan="2">
                            <input id="Submit1" type="submit" cssclass=" btnSubmit" value="signin" runat="server"  onserverclick="Submit1_ServerClick"/>
                        </td>
                </tr>
        </table>
            </fieldset>
            </center>
        </div>
        <h1>
            <center><b> WELCOME TO CENTRAL TRACKER</b></center>
        </h1>
        <center>
   
        <fieldset style="width: 100%; margin-top: 150px">
                
                <table style="width: auto">
                    
                    <tr>
                        <td>
                            <h1><b>Build Software Better,Together</b></h1>
                        </td>
                        <td>
                            <input type="text" id="txtname" placeholder="Pick a Username" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td> <b>Powerful Collabaration,Code review,and code management for open source and private projects.need private repositorise</b></td>
                        <td>
                            <input type="text" id="txtemail" placeholder="Your Email" runat="server" />
                        </td>
                    </tr>
                    <tr>
                            <td> <b> upgrade plan start:</b></td>
                        <td>
                           <input type="text" id="txtpswd" placeholder="Create Password" runat="server" /><br /> 
                             Use atleast One lowercase letter,one number and seven characters.
                        </td>
                    </tr>

                    <tr>
                        <td> </td>
                        <td colspan="2">
                            &nbsp;<input id="btnSubmit" type="submit" cssclass="Submit" value="Sign Up for Centraltracker"  /></td>
                       
                    </tr>
                  <tr>
                       <td> </td>
                          
                       <td> By clicking"Sign up for central tracker,You agree to your terms:</td>
                   </tr>
                        
                </table>
                      <footer>
            <iframe frameborder="0" scrolling="no"
                 marginheight="0"marginwidth="0"width="1600"height="200"
                src="https://maps.google.com/maps?hl=en&q=cuttack&ie=UTF&&t=m&z=10&iwloc=B&output=embed">

            </iframe>
                
        </footer>  
            
            
        </fieldset>
    </form>
    </center>
</body>
</html>


