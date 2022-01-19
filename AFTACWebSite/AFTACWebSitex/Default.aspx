<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="AFTACWebSite._Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AFTAC Alumni Website</title>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />--%>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link href="_Styles/BasicStyles.css" rel="stylesheet" />
    <link href="_Styles/myStyles.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1.0, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="pageWrapper regBorder showShadow">
        <header class="myHeaderFirst topMargin1em showShadow block">
            <div class="floatLeft backMoccasin width25" style="background-color:chocolate;">
                <img alt="_Images/alumniLogo.jpg" class="width50 thinMaroonBorder smallShadow" src="_Images/alumniLogo.jpg" />
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

        <p class="pTitle textShadow centerText"style="font-size:2.5em;">
            Welcome to the AFTAC Alumni Association Website         
        </p>

        <p class="pTitle centerText">
            Disclaimer Page         
        </p>

        <asp:Button ID="Button1" CssClass="myBut bottomMargin1em" runat="server" Text=" Continue to Main Page " OnClick="Button_Click"/>

        <div class="width80 maroonBorder autoMarginLeftRight redText backYellow topMargin1em padding5 smallShadow">
            <p class="redText fontSize2em">
                NOTICE: This is a Private Organization.  It is not part of the Department of Defense or any of its components and it has no governmental status.
            </p>
        </div>

        <div class="width80 maroonBorder autoMarginLeftRight redText backYellow topMargin1em padding5 smallShadow">
            <p class="redText fontSize2em">
                The 'AFTAC Alumni Association' provides a forum for those wishing to maintain a relationship with the center and its people, active-duty and retired. 
                Membership is open to past/present employees of all organizations associated with Long Range Detection, (AFMSW-1, 1009<sup class="redText">th</sup> SWS, AFOAT-1, 1035<sup class="redText">th</sup> FAG, 1035<sup class="redText">th</sup> TOG, 
                LRDAA and AFTAC), and any  subordinate field detachment.
            </p>
        </div>

        <div class="width80 maroonBorder autoMarginLeftRight redText backYellow topMargin1em padding5 smallShadow">
            <p class="redText fontSize2em">
                All postings included on this Florida AFTAC Alumni Association Website are purely informational and none of its contents are intended, nor can be considered, as being directive in nature. Participation in any posted events in this website, are solely at the discretion of the reader. This informational data that is provided is checked for accuracy and correctness by our organization, but in the final, it is incumbent on each reader to verify the validity of any of the data posted. The AFTAC Alumni Association, its officers, members and volunteers and the originators of posted articles cannot be held responsible for any personal injuries or financial loss to those individuals participating in, or responding to, any posted events or informational data. This includes, but not limited to, the loss of monies due to cancellations or rescheduling of such events or for any personal physical or financial losses caused by any inaccurate posting to any person attending or responding to the events posted here.  Our site contains links to other websites or content belonging to or originating from third parties. While we make every attempt to monitor and check such links for accuracy, adequacy, validity, reliability and availability of completeness, the AFTAC Alumni Association, its officers, members and volunteers and the originators of posted links cannot be held responsible, in any way, for faults in any of these links. By entering this website, you indicate your agreement with these terms. 
            </p>
        </div>

        <asp:Button ID="Button2" CssClass="myBut bottomMargin1em topMargin1em" runat="server" Text=" Continue to Main Page " OnClick="Button_Click" />

    </div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" Interval="60000" runat="server" OnTick="Timer1_Tick"></asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>

    <script src="_Scripts/myScript.js"></script>

</body>
</html>
