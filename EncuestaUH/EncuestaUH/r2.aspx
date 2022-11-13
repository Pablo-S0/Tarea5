<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="r2.aspx.cs" Inherits="EncuestaUH.r2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="237px" Width="297px" ImageUrl="~/Imagenes/r2.png" />
            <br />
            <br />
            Pregunta 2:&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" Height="24px" Width="96px">
                <asp:ListItem>a</asp:ListItem>
                <asp:ListItem>b</asp:ListItem>
                <asp:ListItem>c</asp:ListItem>
                <asp:ListItem>d</asp:ListItem>
                <asp:ListItem>e</asp:ListItem>
                <asp:ListItem>f</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Bcontinuar" runat="server" Height="51px" OnClick="Bcontinuar_Click" Text="siguiente" Width="168px" />
            <br />
        </div>
    </form>
</body>
</html>
