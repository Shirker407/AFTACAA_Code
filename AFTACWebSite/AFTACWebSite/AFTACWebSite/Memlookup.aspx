<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Memlookup.aspx.vb" Inherits="AFTACWebSite.Memlookup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%--    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-140259756-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-140259756-1');
    </script>    --%>

    <title>Member Lookup</title>
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

        <aside class="floatLeft width25 topMargin2em leftMargin5em">
             <p class="centerText pTitle" style="font-size:1.5em;">Member's List</p>
            <asp:ListBox ID="lstMems" style="margin-top:-.5em;padding:5px;" Width="95%" CssClass="maroonBorder smallShadow" BackColor="Moccasin" Font-Bold="true" ForeColor="#990000" Rows="10" runat="server" Font-Size="Larger" OnSelectedIndexChanged="lstMems_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
            <asp:TextBox ID="txtSearch" Font-Size="1.5em" Width="70%" CssClass="topMargin1em padding5" BackColor="Maroon" ForeColor="Yellow" runat="server" ToolTip="Enter a whole name or the first few letters"></asp:TextBox>
            <asp:Label ID="lblmemmess" runat="server" ForeColor="Maroon" BackColor="Transparent" Visible="false" Text=""></asp:Label>
            <asp:Label ID="lblErrSearch" ForeColor="Red" CssClass="block" Visible="false" Font-Bold="true" Font-Italic="true" runat="server" Text="Name was not found"></asp:Label>
            <asp:Button ID="btnSearch" CssClass="myBut topMargin1em" runat="server" Text=" Search " OnClick="btnSearch_Click" />   
        </aside>
        

        <section class="floatLeft width50 leftMargin2em">
            <p class="centerText topMargin1em" style="font-size:1em;">
                This Web-page Search Interrogates our Membership Database.<br />
                It is Continually Being Updated.<br />
                Check Back Regularly For New Or Revised Entries            
            </p>
        </section>

        <section class="floatLeft leftMargin2em bottomMarginHalfem topMargin1em width50 maroonBorder smallShadow">
            <asp:Panel ID="pnlMemDefault" Width="90%" Visible="true" runat="server">
                <div class=" width60 autoMarginLeftRight">
                    <asp:Label ID="Label3" runat="server" Font-Size="2em" ForeColor="Maroon" Font-Bold="true" Text="Either Search for a name or Select a name from the Member List"></asp:Label>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlMemDeceased" Visible="false" runat="server">
                <div class=" width60 autoMarginLeftRight topMargin2em bottomMargin2em">
                    <asp:Label ID="lblDeceasedMess" runat="server" Font-Size="2em" ForeColor="Maroon" Font-Bold="true" Text="Label"></asp:Label>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlNonMember" Visible="false" runat="server">
                <div class=" width60 autoMarginLeftRight topMargin2em bottomMargin2em">
                    <asp:Label ID="lblNonMember" runat="server" Font-Size="2em" ForeColor="Maroon" Font-Bold="true" Text="Label"></asp:Label>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlMemAlive" Visible="false" runat="server">
                <div class=" width80 autoMarginLeftRight topMargin2em bottomMargin2em">
                    <asp:Label ID="lblMemAlive" runat="server" Font-Size="2em" ForeColor="Maroon" Font-Bold="true" Text="Label"></asp:Label>
                    <div>
                        <asp:Image ID="imgCal" ImageUrl="~/_Images/checked.jpg" Width="5%" runat="server" /><span class="maroonText bold" style="font-size:1.5em;"> California</span>
                        <asp:Image ID="imgCol" CssClass=" leftMargin1Halfem" ImageUrl="~/_Images/checked.jpg" Width="5%" runat="server" /><span class="maroonText bold" style="font-size:1.5em;"> Colorado</span>
                        <asp:Image ID="imgFla" CssClass=" leftMargin1Halfem" ImageUrl="~/_Images/checked.jpg" Width="5%" runat="server" /><span class="maroonText bold" style="font-size:1.5em;"> Florida</span>
                    </div>
                </div>
            </asp:Panel>

            <div class="clear"></div>

            <asp:Panel ID="pnlHyper" Visible="false" runat="server">
                <asp:Label ID="Label4" runat="server" ForeColor="Maroon" CssClass="block" Font-Bold="true" Font-Size="1.5em" Text="Click the link below to send EMail to our Membership Chairman to get more information on this individual."></asp:Label>
                <asp:HyperLink ID="HyperLink1" NavigateUrl="#" ForeColor="Red" CssClass="block topMargin1em bottomMargin1em" Font-Size="1.5em" Font-Bold="true" 
                    runat="server"> Send EMail </asp:HyperLink>
            </asp:Panel>

        </section>

        <div class="width50" style="margin-left:35%;">
            <asp:Button ID="btnMemReturn" CssClass="myBut autoMarginLeftRight topMargin2em" runat="server" Text=" Return to Main Page " OnClick="btnMemReturn_Click" />
        </div>

        <div class="clear"></div>

        </ContentTemplate>
        </asp:UpdatePanel>

        <article class="myFooter centerDiv block">
            <p class="centerText" style="font-size:1.5em;">
                Click on the link below to get an application to join the<br /> <asp:HyperLink ID="HyperLink6" ForeColor="DarkRed" Font-Underline="true" Font-Size="1em" NavigateUrl="~/_PDFs/Florida Membership Application.pdf" Target="_blank" runat="server"> Florida Association Membership Application. </asp:HyperLink>
            </p>

        </article>

        <div class="clear bottomMargin2em"></div>

    </div>

    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" Interval="60000" runat="server" OnTick="Timer1_Tick"></asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>

    </form>
</body>
</html>
