<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="r1.aspx.cs" Inherits="EncuestaUH.r1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="235px" Width="350px" ImageUrl="~/Imagenes/r1.png" />
            <br />
            <br />
            Pregunta 1:&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="76px">
                <asp:ListItem>a</asp:ListItem>
                <asp:ListItem>b</asp:ListItem>
                <asp:ListItem>c</asp:ListItem>
                <asp:ListItem>d</asp:ListItem>
                <asp:ListItem>e</asp:ListItem>
                <asp:ListItem>f</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Bcontinuar" runat="server" Height="42px" Text="Siguiente" Width="147px" OnClick="Bcontinuar_Click" />
            <br />
        </div>
    </form>
</body>
</html>
