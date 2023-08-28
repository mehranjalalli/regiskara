<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="regiskara.edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>



    <style>
        body{
            direction:rtl
        }
            

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>



            
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
            <select id="Select2" name="D1" runat="server">
                <option></option>
                                <option value="tehran">tehran</option>
                                <option value="mashhad" >mashhad</option>

                                <option value="esfahan" >es</option>

                                <option value="shiraz" >shiraz</option>

            </select>



            <asp:Button ID="Button1" runat="server" Text="Button" />



            <br />
            <label>تاریخ تولد </label>
            <input type="text" id="date" runat="server" />
            <asp:Button ID="Button2" runat="server" Text="ثبت ویرایش" OnClick="Button2_Click" />




        </div>
    </form>
</body>
</html>
