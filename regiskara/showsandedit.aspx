<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showsandedit.aspx.cs" Inherits="regiskara.showsandedit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 387px">
    <form id="form1" runat="server">
        <div>


            
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="search" />
            <asp:Button ID="Button2" runat="server" Text="ویرایش" OnClick="Button2_Click" />
            <br />
            <br />


            </div>
        <asp:GridView ID="GridView1" runat="server" Width="591px">
        </asp:GridView>
    </form>
</body>
</html>
