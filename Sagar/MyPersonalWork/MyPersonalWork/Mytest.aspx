<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mytest.aspx.cs" Inherits="MyPersonalWork.Mytest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="Scripts/jquery-1.7.1.min.js"></script>
    <script type="text/ecmascript">
        
        $(document).ready(function () {
        //    $(".trtb").mouseover(function () {
        //        $(this).css("background-color", "yellow");
        //    });
        //    $(".trtb").mouseout(function () {
        //        $(this).css("background-color", "lightgray");
        //    });
        //    $("#btnShow").click(function () {
        //        var count = $(".trtb").length;
        //        alert(count);
        //    });
            //$("#btnAdd").click(function () {
            //    alert("Hello");
            //    $(".tb").append($(".tb tr:first").clone());
            //});


            $(".trtb").click(function () {
                    $(this).css("color", "yellow");
            });
            $(".trtb").mouseout(function () {
                $(this).css("background-color", "lightgray");
            });
            $("#btnShow").click(function () {
                var count = $(".trtb").length;
                alert(count);
            });




            $("#btnAdd").click(function () {
                
                $(".tb").append($(".tb tr").eq(1).clone());
            });


            $(".tb").on("click", "tr", function (e) {
                $(this).css("color", "yellow");
            });
            $("#btnHello").click(function () {
                
                alert($(".tb tr").eq(2).find("td:nth-child(2)").html());
                return false;
                
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="500px" class="tb">
            <tr class="trtb">
                <td width="50%">Hello</td>
                <td width="50%">World</td>

            </tr>
            <tr  class="trtb">
                <td>My</td>
                <td>Text</td>

            </tr>
        </table>
    <input type="button" id="btnShow" value="Show" />
        <input type="button" id="btnAdd" value="Add" />
        <asp:Button ID="btnHello" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
