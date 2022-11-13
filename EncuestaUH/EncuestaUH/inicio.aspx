<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="EncuestaUH.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 232px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            Cedula: <asp:TextBox ID="tcedula" runat="server" Width="140px"></asp:TextBox>
            <br />
            <br />
            Nombre:&nbsp; <asp:TextBox ID="tnombre" runat="server" Height="16px" Width="135px"></asp:TextBox>
            <br />
            <br />
            Genero:&nbsp; 
        &nbsp;<asp:RadioButton ID="rm" runat="server" Text="M" />
        &nbsp;&nbsp; <asp:RadioButton ID="rf" runat="server" Text="F"/>
            <br />
            <br />
            <asp:Button ID="BSiguiente" runat="server" Height="73px" OnClick="BSiguiente_Click" Text="siguiente" Width="157px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Rcontinuar" runat="server" Height="69px" OnClick="Rcontinuar_Click" Text="Reportes" Width="155px" />
        </div>
       
    </form>
</body>
</html>
