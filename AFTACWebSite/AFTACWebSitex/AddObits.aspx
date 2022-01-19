<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddObits.aspx.vb" Inherits="AFTACWebSite.AddObits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Obituary Edit</title>
    <link href="_Styles/BasicStyles.css" rel="stylesheet" />
    <link href="_Styles/myStyles.css" rel="stylesheet" />
    <meta name="viewport"  content="width=device-width, maximum-scale=1.0, minimum-scale=1.0, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="pageWrapper regBorder showShadow">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

        <header class="memHeader autoMarginLeftRight backChocolate showShadow">
            <div class="floatLeft backMoccasin width25" style="background-color:chocolate;">
                <img id ="alumniLogo" alt="_Images/alumniLogo.jpg" class="width50 thinMaroonBorder smallShadow" src="_Images/alumniLogo.jpg" />
            </div>
            <div class="floatLeft backMoccasin width45" style="margin-top:.25em;">
                <asp:Label ID="Label1" CssClass="block" ForeColor="Yellow" BackColor="Chocolate" Font-Bold="true" Font-Size="2.5em" runat="server" Text="AFTAC ALUMNI"></asp:Label>
                <asp:Label ID="Label2" CssClass="block" ForeColor="Yellow" BackColor="Chocolate" Font-Bold="true" Font-Size="2.5em" runat="server" Text="ASSOCIATION"></asp:Label>
                <asp:Label ID="Label20" CssClass="block" ForeColor="Yellow" BackColor="Chocolate" Font-Bold="true" Font-Size="2.5em" runat="server" Text="(AFTACAA)"></asp:Label>
            </div>
            <div class="floatLeft backMoccasin width30" style="background-color:chocolate;">
                <img id="clickImage" alt="_Images/EFAE.jpg" class="width50 smallShadow"  src="_Images/EFAE.jpg" />
            </div>

            <div class="clear"></div>
        </header>

            <p class="pTitle centerText">Obituary Update Page</p>

        <aside class="floatLeft width25 topMargin2em leftMargin5em">
            <p class="centerText pTitle" style="font-size:1.5em;">Member's List</p>
            <asp:ListBox ID="lstMems" style="margin-top:-.5em;padding:5px;" Width="95%" CssClass="maroonBorder smallShadow" BackColor="Moccasin" Font-Bold="true" ForeColor="Maroon" Rows="10" runat="server" AutoPostBack="True"></asp:ListBox>
            <asp:TextBox ID="txtSearch" Font-Size="1.5em" Width="70%" CssClass="topMargin1em padding5" BackColor="Moccasin" ForeColor="Maroon" runat="server" ToolTip="Enter a whole name or the first few letters"></asp:TextBox>
            <asp:Label ID="lblmemmess" runat="server" ForeColor="Maroon" BackColor="Transparent" Visible="false" Text=""></asp:Label>
            <asp:Label ID="lblErrSearch" ForeColor="Red" CssClass="block" Visible="false" Font-Bold="true" Font-Italic="true" runat="server" Text="Name was not found"></asp:Label>
            <asp:Button ID="btnSearch" CssClass="myBut" runat="server" Text=" Search "/>   
            <div class="clear bottomMargin2em"></div>
        </aside>

        <section class="floatLeft width25 topMargin2em leftMargin5em maroonBorder smallShadow">
            <div>
                <asp:Label ID="Label3" runat="server" Font-Bold="true" ForeColor="Maroon" Text="Name:">
                </asp:Label><asp:TextBox ID="txtName" Font-Bold="true" ForeColor="Maroon" CssClass="leftMargin2em" runat="server"></asp:TextBox>
            </div>
            
            <div>    
                <asp:Label ID="Label4" runat="server" Font-Bold="true" ForeColor="Maroon" Text="DOD:"></asp:Label>
                <asp:TextBox ID="txtDOD" Font-Bold="true" ForeColor="Maroon" CssClass="leftMargin2em" runat="server"></asp:TextBox>
            </div>

            <div class="aLeft padding5">
                <asp:Label ID="Label5" runat="server" Font-Bold="true" ForeColor="Maroon" Text="Obituary:"/>
            </div>

            <div class="aLeft padding5">
                <asp:TextBox ID="txtObit" Font-Bold="true" ForeColor="Maroon" Width="95%" Height="200px" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>

        </section>

        <div class="clear"></div>
        </ContentTemplate>
        </asp:UpdatePanel>

    </div> <%--End of Pagewrapper--%>
    </form>
</body>
</html>
