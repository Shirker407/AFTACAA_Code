<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MemberShip.aspx.vb" Inherits="AFTACWebSite.MemberShip" %>

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

    <title>Membership Administration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link href="_Styles/BasicStyles.css?v=2018.02.12" rel="stylesheet" />
    <link href="_Styles/myStyles.css?v=2018.02.12" rel="stylesheet" />
    <meta name="viewport"  content="width=device-width, maximum-scale=1.0, minimum-scale=1.0, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

   <div class="pageWrapper regBorder showShadow">
            <div>
                <p id="memTitle" class="centerText pTitle leftMargin10em">Membership Database Management</p>
            </div>

            <section class="topMargin2em" style="width:125%">
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>

                <aside class="width15 leftMargin1em floatLeft" style="margin-top:-2em;">
                    <asp:Label ID="lblListTitle" CssClass="block centerText" Font-Size="1.5em" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Entire Database<br/>Deceased Shown"></asp:Label>
                    <asp:Button ID="btnDeceased" Font-Size="1em" CssClass="block myBut autoMarginLeftRight centerText" runat="server" Text="Hide Deceased" OnClick="btnDeceased_Click" />
                    <asp:ListBox ID="lstMembers" CssClass="block topMargin1em leftMargin1em padding5" Font-Size=".9em" Font-Bold="true" BackColor="LightGoldenrodYellow" Rows="10" Width="95%" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="lstMembers_SelectedIndexChanged"></asp:ListBox>

                    <div class="topMargin1em">
                        <asp:Label ID="lblMemCount" CssClass="block leftMargin2em aLeft" ForeColor="Maroon" Font-Bold="true" Font-Size="1em" runat="server" Text="Label"></asp:Label>
                        <asp:Label CssClass="block leftMargin2em aLeft" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Search"></asp:Label>
                    </div>

                    <div>
                        <asp:Label ID="lblSearchErr" CssClass="leftMargin2em autoMarginLeftRight padding5" runat="server" Visible="false" ForeColor="Red" Font-Size="1em" Font-Bold="true" Text="Name Not Found"></asp:Label>
                        <asp:TextBox ID="txtSearch" CssClass="block autoMarginLeftRight padding5" width="8em" Font-Size="1em" Font-Bold="true" ForeColor="DarkBlue" BackColor="LightGoldenrodYellow" runat="server"></asp:TextBox>
                        <asp:Button ID="btnSearch" CssClass="block myBut topMargin1em autoMarginLeftRight" Width="8em" Font-Size="1em" runat="server" Text="Search" OnClick="btnSearch_Click" />        
                    </div>

                    <div class="width90 topMargin1em autoMarginLeftRight thinMaroonBorder aLeft">
                        <asp:Label CssClass="leftMargin1em autoMarginLeftRight" Font-Size="1.2em" Font-Underline="true" ForeColor="Maroon" Font-Bold="true" runat="server" Text="List By"></asp:Label>
                        
                        <div class="clear"></div>

                        <div>
                            <asp:ImageButton ID="searchChkNameNo" AlternateText="Checked.jpg" CssClass="floatLeft leftMargin1em" Visible="false" Width="10%" runat="server" ImageUrl="~/_Images/nocheck.jpg" OnClick="searchChkNameYes_Click" />
                            <asp:ImageButton ID="searchChkNameYes" AlternateText="noCheck.jpg" CssClass="floatLeft leftMargin1em" Visible="true" Width="10%" runat="server" ImageUrl="~/_Images/checked.jpg" OnClick="searchChkNameYes_Click"/>
                            <asp:Label CssClass="floatLeft leftMargin1em" Width="8em" Style="margin-top:-.3em;" Font-Size="1.1em" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Name"></asp:Label>
                            <div class="clear topMarginHalfem"></div>
                        </div>


                        <div class="topMarginHalfem">
                            <asp:ImageButton ID="searchChkIDNo" AlternateText="Checked.jpg" CssClass="floatLeft leftMargin1em" Visible="true" Width="10%" runat="server" ImageUrl="~/_Images/nocheck.jpg" OnClick="searchChkIDYes_Click" />
                            <asp:ImageButton ID="searchChkIDYes" AlternateText="noCheck.jpg" CssClass="floatLeft leftMargin1em" Visible="false" Width="10%" runat="server" ImageUrl="~/_Images/checked.jpg" OnClick="searchChkIDYes_Click" />
                            <asp:Label CssClass="floatLeft leftMargin1em" Width="8em" Style="margin-top:-.3em;" Font-Size="1.1em" ForeColor="Maroon" Font-Bold="true" runat="server" Text="ID Number"></asp:Label>
                            <div class="clear"></div>
                        </div>
                    </div>

                    <div class="topMargin1em centerDiv">
                        <asp:Button ID="btnMemAll" CssClass="mySelBut myBut autoMarginLeftRight" Font-Size="1em" runat="server" Text=" All Members " OnClick="btnMemAll_Click" />
                        <div class="leftMargin1Halfem">
                            <asp:Button ID="btnMemCalifornia" CssClass="mySelBut myBut floatLeft" Font-Size="1em" runat="server" Text=" California " OnClick="btnMemCalifornia_Click" />
                            <asp:Button ID="btnMemColorado" CssClass="mySelBut myBut floatLeft leftMarginHalfem" Font-Size="1em" runat="server" Text=" Colorado " OnClick="btnMemColorado_Click"/>
                            <div class="clear"></div>
                        </div>
                        <div class="leftMargin1em">
                            <asp:Button ID="btnMemFlorida" CssClass="mySelBut myBut floatLeft" Font-Size="1em" runat="server" Text=" Florida " OnClick="btnMemFlorida_Click" />
                            <asp:Button ID="btnNonMem" CssClass="mySelBut myBut floatLeft leftMarginHalfem" Font-Size="1em" runat="server" Text=" Non-Members " OnClick="btnNonMem_Click"/>
                            <div class="clear"></div>
                        </div>
                    </div>

                    <div class="centerDiv">
                        <asp:Button ID="btnEntire" CssClass="mySelBut hotBut autoMarginLeftRight" Font-Size="1em" runat="server" Text=" Entire Database " OnClick="btnEntire_Click"/>
                    </div>

                    <div class="clear"></div>

                </aside>

                <section id="demos" class="floatLeft leftMargin2em bottomMargin2em width60 maroonBorder smallShadow maroonBorder" style="padding-left:4em;">
                    <asp:Label ID="lblDBMess" CssClass="autoMarginLeftRight" Font-Size="2em" Font-Bold="true" Visible="true" ForeColor="Blue" runat="server" Text="Edit Data"></asp:Label>

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:Label ForeColor="Maroon" Font-Bold="true" Font-Size="1em" runat="server" Text="First Name: "></asp:Label>
                                <asp:TextBox ID="txtFirst" CssClass="padding5" Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:Label Width="80%" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Last Name: "></asp:Label>
                                <asp:TextBox ID="txtLast" CssClass="padding5" Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-1">
                            <asp:Label CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Initial: "></asp:Label>
                            <asp:TextBox ID="txtInitial" CssClass="block padding5"  Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-2 col-sm-offset-1">
                                <asp:Label CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Date Joined: "></asp:Label>
                                <asp:TextBox ID="txtJoined" CssClass="block padding5" Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-offset-1"></div>
                            <div  class="col-sm-1">
                                <asp:Label ID="lblID" CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-1">
                                <asp:Label CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Suffix: "></asp:Label>
                                <asp:TextBox ID="txtSuffix" CssClass="block padding5" Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ForeColor="Maroon" Font-Bold="true" runat="server" Text="Spouse: "></asp:Label>
                                <asp:TextBox ID="txtSpouse" Width="100%" CssClass="padding5" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <asp:Label CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="EMail: "></asp:Label>
                                <asp:TextBox ID="TxtEMail" Width="100%" CssClass="block padding5" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:Label CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Phone: "></asp:Label>
                                <asp:TextBox ID="txtPhone" CssClass="block padding5" Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-offset-1"></div>
                        </div>

                        <section class="floatLeft width55">
                            <asp:Panel ID="pnlAddress1" CssClass="maroonBorder showShadow" Visible="true" runat="server">
                                <div class="leftMargin1em">
                                    <div class="centerDiv">
                                        <asp:Label CssClass="autoMarginLeftRight" runat="server" Font-Size="1.5em" ForeColor="Maroon" Font-Bold="true" Text="Demographics"></asp:Label>
                                    </div>
                                    <div class="leftMargin2em">
                                        <asp:Label ForeColor="Maroon" Font-Bold="true" runat="server" Text="Address: "></asp:Label>
                                        <asp:TextBox ID="txtAddress" CssClass="padding5" Width="15em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                    </div>

                                    <div>
                                        <div class="inlineBlock">
                                            <asp:Label ForeColor="Maroon" Font-Bold="true" Font-Size="1em" runat="server" Text="City: "></asp:Label>
                                            <asp:TextBox ID="txtCity" CssClass="padding5" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="inlineBlock leftMargin1em">
                                            <asp:Label ForeColor="Maroon" Font-Bold="true" runat="server" Text="State: "></asp:Label>
                                            <asp:TextBox ID="txtState" CssClass="padding5" Width="4em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="width50 autoMarginLeftRight">
                                            <asp:Label ForeColor="Maroon" Font-Bold="true" runat="server" Text="Zip: "></asp:Label>
                                            <asp:TextBox ID="txtZip" CssClass="padding5" Width="8em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="leftMargin2em">
                                            <asp:Label ForeColor="Maroon" Font-Bold="true" runat="server" Text="Country: "></asp:Label>
                                            <asp:TextBox ID="txtCountry" CssClass="padding5" Width="15em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                        </div>

                                    </div>
                                </div>
                            </asp:Panel>
                        </section

                        <section class="floatLeft width35">
                            <div class="centerDiv">
                                <div class="centerDiv">
                                    <asp:Label ForeColor="Maroon" CssClass="block" Font-Bold="true" runat="server" Text="Cell Phone: "></asp:Label>
                                    <asp:TextBox ID="txtCellPhone" CssClass="block autoMarginLeftRight padding5" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                </div>
             
                                <div class="topMarginHalfem centerDiv">
                                    <asp:Label ForeColor="Maroon" Font-Bold="true" runat="server" Text="Rank: "></asp:Label>
                                    <asp:TextBox ID="txtRank" CssClass="padding5" Width="8em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                </div>
                                        
                                <div class="topMarginHalfem centerDiv">
                                    <div class="floatLeft leftMargin2em centerDiv">
                                        <asp:Label CssClass="inline" ForeColor="Maroon"  Font-Bold="true" Font-Size="1em" runat="server" Text="Dues: "></asp:Label>
                                        <asp:TextBox ID="txtDues" CssClass="padding5 inline" Width="4em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                    </div>

                                    <div class="floatLeft leftMargin2em centerText">
                                        <asp:Label ForeColor="Maroon" CssClass="aLeft inline" Font-Bold="true" Font-Size="1em" runat="server" Text="SEO Number: "></asp:Label>
                                        <asp:TextBox ID="txtSEO" CssClass="padding5 inline" Font-Size="1em" Width="4em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="topMarginHalfem centerDiv">
                                    <asp:Label CssClass="block autoMarginLeftRight" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="Transparent" runat="server" Text="Command Status:"></asp:Label>
                                    <asp:DropDownList ID="ddlCommand" CssClass="padding5" Width="15em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:DropDownList>
                                </div>

                                <div class="topMarginHalfem centerDiv">
                                    <asp:Label ForeColor="Maroon" CssClass="block autoMarginLeftRight" Font-Bold="true" Font-Size="1em" runat="server" Text="Cmd Dates: "></asp:Label>
                                    <asp:TextBox ID="txtcmdDates" CssClass="padding5 block autoMarginLeftRight" Font-Size="1em" Width="10em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="width100">
                                            <asp:Label CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="LRD Assignments"></asp:Label>
                                            <asp:TextBox ID="txtDets" CssClass="padding5 block" Width="90%" Height="5em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="width100"> 
                                            <asp:Label CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Remarks"></asp:Label>
                                            <asp:TextBox ID="txtRemarks" CssClass="padding5" Width="90%" Height="5em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="width50 autoMarginLeftRight">
                                    <asp:Label CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Comments: "></asp:Label>
                                    <asp:TextBox ID="txtComments" CssClass="padding5 block" Width="100%" Height="5em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                </div>

                            <div class="width80 autoMarginLeftRight maroonBorder showShadow">
                                <p class="centerText pTitle">Chapters</p>
                                <asp:ImageButton ID="calChkYes" CssClass="inline leftMargin1em" Visible="false" Width="5%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="calChkYes_Click"  />            
                                <asp:ImageButton ID="calChkNo" CssClass="inline leftMargin1em" Visible="true" Width="5%" ImageUrl="~/_Images/nocheck.jpg" runat="server" OnClick="calChkNo_Click"  />            
                                <asp:Label CssClass="inline leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="California"></asp:Label>
                                <asp:ImageButton ID="colChkYes" CssClass="inline leftMargin1em" Visible="false" Width="5%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="colChkYes_Click"  />            
                                <asp:ImageButton ID="colChkNo" CssClass="inline leftMargin1em" Visible="true" Width="5%" ImageUrl="_Images/nocheck.jpg" runat="server" OnClick="colChkNo_Click" />            
                                <asp:Label CssClass="inline leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Colorado"></asp:Label>
                                <asp:ImageButton ID="flaChkYes" CssClass="inline leftMargin1em" Visible="false" Width="5%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="flaChkYes_Click"  />            
                                <asp:ImageButton ID="flaChkNo" CssClass="inline leftMargin1em" Visible="true" Width="5%" ImageUrl="_Images/nocheck.jpg" runat="server" OnClick="flaChkNo_Click"  />            
                                <asp:Label CssClass="inline leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Florida"></asp:Label>
                    `       </div>

                            <div class="clear"></div>

                            <section class="topMargin2em bottomMargin2em width90 autoMarginLeftRight maroonBorder showShadow">
                                <div class="floatLeft width30 leftMargin5em centerDiv">
                                    <asp:ImageButton ID="deceasedChkNo" CssClass="floatLeft topMarginHalfem" Visible="true" Width="12%" ImageUrl="~/_Images/nocheck.jpg" runat="server" OnClick="deceasedChkNo_Click"  />            
                                    <asp:ImageButton ID="deceasedChkYes" CssClass="floatLeft topMarginHalfem" Visible="false" Width="12%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="deceasedChkYes_Click"  />            
                                    <asp:Label CssClass="floatLeft leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Deceased"></asp:Label>
                                </div>

                                <div class="floatLeft width30 centerDiv">
                                    <asp:ImageButton ID="electronicChkNo" CssClass="floatLeft topMarginHalfem" Visible="true" Width="12%" ImageUrl="~/_Images/nocheck.jpg" runat="server" OnClick="electronicChkNo_Click"  />            
                                    <asp:ImageButton ID="electronicChkYes" CssClass="floatLeft topMarginHalfem" Visible="false" Width="12%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="electronicChkYes_Click"  />            
                                    <asp:Label CssClass="floatLeft leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Elec Pomo"></asp:Label>
                                </div>

                                <div class="floatLeft width30 centerDiv">
                                    <asp:ImageButton ID="onLineChkNo" CssClass="floatLeft topMarginHalfem" Visible="true" Width="12%" ImageUrl="~/_Images/nocheck.jpg" runat="server" OnClick="onLineChkNo_Click"  />            
                                    <asp:ImageButton ID="onLineChkYes" CssClass="floatLeft topMarginHalfem" Visible="false" Width="12%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="onLineChkYes_Click"  />            
                                    <asp:Label CssClass="floatLeft leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="EAlls"></asp:Label>
                                </div>
                        
                                <div class="clear"></div>

                                <div class="floatLeft width30 leftMargin5em centerDiv">
                                    <asp:ImageButton ID="deleteChkNo" CssClass="floatLeft topMarginHalfem" Visible="true" Width="12%" ImageUrl="~/_Images/nocheck.jpg" runat="server" OnClick="deleteChkNo_Click"  />            
                                    <asp:ImageButton ID="deleteChkYes" CssClass="floatLeft topMarginHalfem" Visible="false" Width="12%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="deleteChkYes_Click"  />            
                                    <asp:Label CssClass="floatLeft leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Deleted"></asp:Label>
                                </div>

                                <div class="floatLeft width30 centerDiv">
                                    <asp:ImageButton ID="mailPomoChkNo" CssClass="floatLeft topMarginHalfem" Visible="true" Width="12%" ImageUrl="~/_Images/nocheck.jpg" runat="server" OnClick="mailPomoChkNo_Click"  />            
                                    <asp:ImageButton ID="mailPomoChkYes" CssClass="floatLeft topMarginHalfem" Visible="false" Width="12%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="mailPomoChkYes_Click"  />            
                                    <asp:Label CssClass="floatLeft leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Mail Pomo"></asp:Label>
                                </div>

                                <div class="floatLeft width30 centerDiv">
                                    <asp:ImageButton ID="failChkNo" CssClass="floatLeft topMarginHalfem" Visible="true" Width="12%" ImageUrl="~/_Images/nocheck.jpg" runat="server" OnClick="failChkNo_Click"  />            
                                    <asp:ImageButton ID="failChkYes" CssClass="floatLeft topMarginHalfem" Visible="false" Width="12%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="failChkYes_Click"  />            
                                    <asp:Label CssClass="floatLeft leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Bad EMail"></asp:Label>
                                </div>

                                <div class="clear"></div>
                            </section>

                            <div class="clear"></div>

                            <asp:Panel ID="MemButs" CssClass="autoMarginLeftRight width60 topMargin1em" Visible="false" runat="server">
                                <asp:Panel ID="pnlReasonForChange" Visible="true" runat="server">
                                    <div class="width50 autoMarginLeftRight">
                                        <asp:Label ID="lblModDate" CssClass="block" Font-Size="1.5em" ForeColor="Maroon" Font-Bold="true" runat="server" 
                                            Text="Date Last Modified:"></asp:Label>
                                    </div>
        
                                    <asp:Label CssClass="inline" ForeColor="Maroon" Font-Bold="true" 
                                        Font-Size="1.5em" runat="server" Text="Reason for Change:"></asp:Label>
                                    <asp:TextBox ID="txtReason" CssClass="inline padding5" Width="40%" Font-Size="1em" ForeColor="Maroon" 
                                        Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                </asp:Panel>

                                <asp:Label ID="lblReason" CssClass="autoMarginLeftRight topMargin1em bottomMargin1em" Font-Size="2em" Font-Bold="true" Visible="False" ForeColor="Red" runat="server" Text="A Reason must be entered"></asp:Label>

                                <div class="width60 autoMarginLeftRight">
                                    <asp:Button ID="btnSave" CssClass="smallBut floatLeft" Width="9em" runat="server" Text=" Save Changes " OnClick="btnSave_Click" />
                                    <asp:Button ID="btnAdd" CssClass="smallBut floatLeft leftMargin1Halfem" Width="9em" runat="server" Text=" Add New " OnClick="btnAdd_Click"  />
                                    <div class="clear"></div>
                                </div>

                                <div class="clear"></div>

                                <div class="centerText">
                                    <asp:Button ID="btnReturnToMenu" runat="server" CssClass="myBut bottomMarginHalfem topMargin1em autoMarginLeftRight" style="margin-left:-2em;" Text=" Return to Admin Menu " OnClick="btnReturnToMenu_Click"/>
                                </div>

                                <div class="clear"></div>
                            </asp:Panel>
                    </section>
                </section>
                <div class="clear"></div>

            </ContentTemplate>
            </asp:UpdatePanel>    
        </section>
        <div class="clear"></div>
    </div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" Interval="60000" runat="server" OnTick="Timer1_Tick"></asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>

    </form>
</body>
</html>
