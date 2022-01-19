<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Password.aspx.vb" Inherits="AFTACWebSite.Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-140259756-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-140259756-1');
    </script>    

    <link href="_Styles/BasicStyles.css" rel="stylesheet" />
    <link href="_Styles/myStyles.css" rel="stylesheet" />
    <title>Password</title>
</head>
<body class="backMoccasin maroonText">
    <form id="form1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="topMargin8em">
        <p class="centerText pTitle">Enter Your Credentials Here</p>
    </div>

    <div class="width40 autoMarginLeftRight topMargin4em">
        <asp:Label ID="Label1" CssClass="aRight" Font-Size="2em" ForeColor="Maroon" Font-Bold="true" Width="6em" runat="server" Text="User Name:"></asp:Label>
        <asp:TextBox ID="txtUserName" CssClass="leftMargin1em padding5" Font-Size="2em" Font-Bold="true" ForeColor="Maroon" runat="server"></asp:TextBox>
    </div>

    <div class="width40 autoMarginLeftRight topMargin4em">
        <asp:Label ID="Label2" CssClass="aRight" Font-Size="2em" ForeColor="Maroon" Font-Bold="true" Width="6em" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" CssClass="leftMargin1em padding5" Font-Size="2em" Font-Bold="true" ForeColor="Maroon" runat="server" TextMode="Password"></asp:TextBox>
    </div>

    <asp:Panel ID="pnlError" CssClass="width50 backYellow" Visible="false" runat="server">
        <asp:Label ID="lblErrMess" ForeColor="Red" runat="server" Text=""></asp:Label>
    </asp:Panel>

    <div class="width40 autoMarginLeftRight topMargin4em">
        <asp:Button ID="btnSubmit" CssClass="myBut block autoMarginLeftRight" runat="server" Text=" Submit Credentials " OnClick="btnSubmit_Click" />
    </div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" Interval="60000" runat="server" OnTick="Timer1_Tick"></asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>

    </form>
</body>
</html>
