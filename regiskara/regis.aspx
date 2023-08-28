<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regis.aspx.cs" Inherits="regiskara.regis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Select1 {
            width: 109px;
            margin-bottom: 2px;
        }
        #Select2 {
            width: 86px;
        }
    </style>
    <style>
        body{
            direction:rtl
        }
    </style>

    <script src="javascript/jquery.js"></script>


    <link href="javascript/kamadatepicker.min.css" rel="stylesheet" />

    <script src="javascript/kamadatepicker.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 350px">


            

            <asp:Label ID="Label1" runat="server" Text="نام"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="نام خانوادگی"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="کدملی"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br /><br />
            <br />
            <br />

            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            sql

            &nbsp;<asp:Label ID="Label4" runat="server" Text="شهرها"></asp:Label>
            <select id="Select1" name="D1" runat="server">
                <option></option>
                                <option value="tehran">tehran</option>
                                <option value="mashhad" >mashhad</option>

                                <option value="esfahan" >es</option>

                                <option value="shiraz" >shiraz</option>

            </select><asp:Button ID="Button1" runat="server" style="height: 26px; margin-bottom: 2px" Text="send" Width="99px" OnClick="Button1_Click" />
            <br />
            <label>تاریخ تولد </label>
            <input type="text" id="date" runat="server" />

        </div>
    </form>

    <script>
        kamaDatepicker('date');


    </script>
</body>
</html>
