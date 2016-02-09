<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CentralTracker.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home page</title>
    <script src="Scripts/jquery-1.7.1.intellisense.js"></script>
    <script src="Scripts/jquery-1.7.1.js"></script>
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
        #btnSubmit
        {
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
                 <td> <div class="form-group">
                               <label for="exampleInputName7"><h1><b>  CentralTracker </b></h1> </label>
                               </div> </td>
                
                <td>
                     <input type="text" id="txtcentral" placeholder="Search for CentralTracker" runat="server" />
                </td>
                <td><b> Explorer    Features    Enterprise    Blog </b></td>
            
           
                        <td colspan="2">
                         <a href='Login.aspx'>  <button type="button" class="btn btn-default navbar-btn">Sign in</button> </a>

                        </td>
                </tr>
        </table>
            </fieldset>
            </center>
        </div>
        <h1>
            
            <center><b> WELCOME TO CENTRALTRACKER</b></center>
             <center><img src="Images/central.png" /></center>
        </h1>
        <center>
   
        <fieldset style="width: 100%; margin-top: 150px">
                
                <table style="width: auto">
                    
                    <tr>
                        <td>
                            
                                <div class="form-group">
                               <label for="exampleInputName2"><h1><b> Build Software Better,Together</b></h1> </label>
                               </div>
                                
                        </td>
                        <td>
                             <div class="form-group"> 
                             <input type="text" class="form-control" id="txtname" placeholder="Pick a Username">
                              </div>
                         </td>
                    </tr>
                    <tr>
                        <td> 
                            <div class="form-group">
                               <label for="exampleInputName3"> <b>Powerful Collabaration,Code review,and code management for 
                                open source and private projects.need private repositorise</b></td> </label>
                               </div>
                            
                           
                        <td>
                         
                                 <div class="form-group">
                          
                                <input type="email" class="form-control" id="txtEmail" placeholder="Your Email">
                              </div>
 
                        </td>
                    </tr>
                    <tr>
                            <td> 
                                
                                <div class="form-group">
                               <label for="exampleInputName4"><b>upgrade plan start: </b> </label>
                               </div>
                                </td>
                        <td>
                            <div class="form-group">
                       
                            <input type="password" class="form-control" id="txtPswd" placeholder="Create Password">
                            </div>
                             <div class="form-group">
                               <span id="Span1" class="help-block">
                              <b> Use atleast One lowercase letter,one number and seven characters.</b></span>
                               </div>
                                </td>
                  
                    </tr>

                    <tr>
                        <td> </td>
                        <td colspan="2">
                             <button id="btnSubmit" type="submit" class="btn btn-default"cssclass="Submit"  >Signup for CentralTracker</button>
                      
                       
                    </tr>
                  <tr>
                       <td> </td>
                          
                       <td> 
                            <div class="form-group">
                                <span id="helpBlock2" class="help-block">
                         
                                   <b>By clicking"Sign up for central tracker,You agree to your terms: </b> </span>
                               </div></td>
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
