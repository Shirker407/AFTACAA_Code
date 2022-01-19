<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MemberShip.aspx.vb" Inherits="AFTACWebSite.MemberShip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                    <asp:Label ID="lblListTitle" CssClass="block centerText" Font-Size="1.5em" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Entire Database"></asp:Label>
                    <asp:ListBox ID="lstMembers" CssClass="block leftMargin1em padding5" Font-Size=".9em" Font-Bold="true" BackColor="LightGoldenrodYellow" Rows="10" Width="95%" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="lstMembers_SelectedIndexChanged"></asp:ListBox>

                    <div class="topMargin1em">
                        <asp:Label ID="lblMemCount" CssClass="block leftMargin2em aLeft" ForeColor="Maroon" Font-Bold="true" Font-Size="1em" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label12" CssClass="block leftMargin2em aLeft" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Search"></asp:Label>
                    </div>

                    <div>
                        <asp:Label ID="lblSearchErr" CssClass="leftMargin2em autoMarginLeftRight padding5" runat="server" Visible="false" ForeColor="Red" Font-Size="1em" Font-Bold="true" Text="Name Not Found"></asp:Label>
                        <asp:TextBox ID="txtSearch" CssClass="inline leftMargin2em autoMarginLeftRight padding5" width="8em" Font-Size="1em" Font-Bold="true" ForeColor="DarkBlue" BackColor="LightGoldenrodYellow" runat="server"></asp:TextBox>
                        <asp:Button ID="btnSearch" CssClass="inline myBut leftPaddingHalfem" Width="1em" Height="1em" runat="server" Text="" OnClick="btnSearch_Click" />        
                    </div>

                    <div class="width90 topMargin1em autoMarginLeftRight thinMaroonBorder aLeft">
                        <asp:Label ID="Label69" CssClass="leftMargin1em autoMarginLeftRight" Font-Size="1.2em" Font-Underline="true" ForeColor="Maroon" Font-Bold="true" runat="server" Text="List By"></asp:Label>
                        
                        <div class="clear"></div>

                        <div>
                            <asp:ImageButton ID="searchChkNameNo" AlternateText="Checked.jpg" CssClass="floatLeft leftMargin1em" Visible="false" Width="10%" runat="server" ImageUrl="~/_Images/nocheck.jpg" OnClick="searchChkNameNo_Click" />
                            <asp:ImageButton ID="searchChkNameYes" AlternateText="noCheck.jpg" CssClass="floatLeft leftMargin1em" Visible="true" Width="10%" runat="server" ImageUrl="~/_Images/checked.jpg" OnClick="searchChkNameYes_Click"/>
                            <asp:Label ID="Label70" CssClass="floatLeft leftMargin1em" Width="8em" Style="margin-top:-.3em;" Font-Size="1.1em" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Name"></asp:Label>
                            <div class="clear topMarginHalfem"></div>
                        </div>


                        <div class="topMarginHalfem">
                            <asp:ImageButton ID="searchChkIDNo" AlternateText="Checked.jpg" CssClass="floatLeft leftMargin1em" Visible="true" Width="10%" runat="server" ImageUrl="~/_Images/nocheck.jpg" OnClick="searchChkIDNo_Click" />
                            <asp:ImageButton ID="searchChkIDYes" AlternateText="noCheck.jpg" CssClass="floatLeft leftMargin1em" Visible="false" Width="10%" runat="server" ImageUrl="~/_Images/checked.jpg" OnClick="searchChkIDYes_Click" />
                            <asp:Label ID="Label71" CssClass="floatLeft leftMargin1em" Width="8em" Style="margin-top:-.3em;" Font-Size="1.1em" ForeColor="Maroon" Font-Bold="true" runat="server" Text="ID Number"></asp:Label>
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

                    <div class="topMargin1em">
                        <asp:ImageButton ID="imgShowDeceasedNo" AlternateText="Checked.jpg" CssClass="floatLeft" Visible="true" Width="2em" runat="server" ImageUrl="~/_Images/nocheck.jpg" OnClick="imgShowDeceasedNo_Click" />
                        <asp:ImageButton ID="imgShowDeceasedYes" AlternateText="noCheck.jpg" CssClass="floatLeft" Visible="false" Width="2em" runat="server" ImageUrl="~/_Images/checked.jpg" OnClick="imgShowDeceasedYes_Click" />
                        <asp:Label ID="Label13" CssClass="floatLeft leftMarginHalfem" Width="8em" Style="margin-top:.3em;" Font-Size="1.3em" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Show Deceased"></asp:Label>
                        <div class="clear"></div>
                    </div>

                </aside>

                <section id="demos" class="floatLeft leftMargin2em bottomMargin2em width60 maroonBorder smallShadow maroonBorder" style="padding-left:4em;">
                    <asp:Label ID="lblUpdate" CssClass="floatLeft topMargin1em leftMargin2em" Visible="false" runat="server" Font-Bold="true" Text="Updating Complete"></asp:Label>
                    <div class="clear"></div>

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:Label ID="Label15" ForeColor="Maroon" Font-Bold="true" Font-Size="1em" runat="server" Text="First Name: "></asp:Label>
                                <asp:TextBox ID="txtFirst" CssClass="padding5" Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label23" Width="80%" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Last Name: "></asp:Label>
                                <asp:TextBox ID="txtLast" CssClass="padding5" Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-1">
                            <asp:Label ID="Label24" CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Initial: "></asp:Label>
                            <asp:TextBox ID="txtInitial" CssClass="block padding5"  Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-2 col-sm-offset-1">
                                <asp:Label ID="Label25" CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Date Joined: "></asp:Label>
                                <asp:TextBox ID="txtJoined" CssClass="block padding5" Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-offset-1"></div>
                            <div  class="col-sm-1">
                                <asp:Label ID="lblID" CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-1">
                                <asp:Label ID="Label26" CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Suffix: "></asp:Label>
                                <asp:TextBox ID="txtSuffix" CssClass="block padding5" Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label29" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Spouse: "></asp:Label>
                                <asp:TextBox ID="txtSpouse" Width="100%" CssClass="padding5" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <asp:Label ID="Label30" CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="EMail: "></asp:Label>
                                <asp:TextBox ID="TxtEMail" Width="100%" CssClass="block padding5" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="Label31" CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Phone: "></asp:Label>
                                <asp:TextBox ID="txtPhone" CssClass="block padding5" Width="100%" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-offset-1"></div>
                        </div>

                        <div class="clear"></div>

                        <div class="container-fluid">
                            <div class="row bottomMargin1em" style="margin-top:-1em;">
                                <div class="col-sm-7">
                                    <asp:Panel ID="pnlAddress1" CssClass="thinMaroonBorder" Visible="true" runat="server">
                                        <div class="leftMargin1em">
                                            <div class="centerDiv">
                                                <asp:Label ID="Label32" CssClass="autoMarginLeftRight" runat="server" Font-Size="1.5em" ForeColor="Maroon" Font-Bold="true" Text="Primary Address"></asp:Label>
                                            </div>
                                            <div class="leftMargin2em">
                                                <asp:Label ID="Label34" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Address: "></asp:Label>
                                                <asp:TextBox ID="txtAddress" CssClass="padding5" Width="15em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                            </div>

                                            <div>
                                                <div class="inlineBlock">
                                                    <asp:Label ID="Label40" ForeColor="Maroon" Font-Bold="true" Font-Size="1em" runat="server" Text="City: "></asp:Label>
                                                    <asp:TextBox ID="txtCity" CssClass="padding5" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="inlineBlock leftMargin1em">
                                                    <asp:Label ID="Label41" ForeColor="Maroon" Font-Bold="true" runat="server" Text="State: "></asp:Label>
                                                    <asp:TextBox ID="txtState" CssClass="padding5" Width="4em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="width50 autoMarginLeftRight">
                                                    <asp:Label ID="Label42" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Zip: "></asp:Label>
                                                    <asp:TextBox ID="txtZip" CssClass="padding5" Width="8em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="leftMargin2em">
                                                    <asp:Label ID="Label43" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Country: "></asp:Label>
                                                    <asp:TextBox ID="txtCountry" CssClass="padding5" Width="15em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                                </div>

                                            </div>

                                            <div class="centerDiv">
                                                <asp:Button ID="btnShowSecondary" CssClass="autoMarginLeftRight smallBut bottomMarginHalfem" runat="server" Text=" Show Secondary Address " OnClick="btnShowSecondary_Click" />
                                            </div>
                                        </div>
                                    </asp:Panel>

                                    <asp:Panel ID="pnlAddress2" CssClass="thinMaroonBorder" Visible="false" runat="server">
                                        <div class="leftMargin1em">
                                            <div class="centerDiv">
                                                <asp:Label ID="Label44" CssClass="autoMarginLeftRight" runat="server" Font-Size="1.5em" ForeColor="Maroon" Font-Bold="true" Text="Secondary Address"></asp:Label>
                                            </div>
                                            <div class="leftMargin2em">
                                                <asp:Label ID="Label45" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Address: "></asp:Label>
                                                <asp:TextBox ID="txtAddress2" CssClass="padding5" Width="15em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                            </div>

                                            <div>
                                                <div class="inlineBlock">
                                                    <asp:Label ID="Label46" ForeColor="Maroon" Font-Bold="true" Font-Size="1em" runat="server" Text="City: "></asp:Label>
                                                    <asp:TextBox ID="txtCity2" CssClass="padding5" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="inlineBlock leftMargin1em">
                                                    <asp:Label ID="Label47" ForeColor="Maroon" Font-Bold="true" runat="server" Text="State: "></asp:Label>
                                                    <asp:TextBox ID="txtState2" CssClass="padding5" Width="4em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="width50 autoMarginLeftRight">
                                                    <asp:Label ID="Label48" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Zip: "></asp:Label>
                                                    <asp:TextBox ID="txtZip2" CssClass="padding5" Width="8em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="leftMargin2em">
                                                <asp:Label ID="Label49" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Country: "></asp:Label>
                                                <asp:TextBox ID="txtCountry2" CssClass="padding5" Width="15em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                            </div>

                                            <div class="centerDiv">
                                                <asp:Button ID="btnShowPrimary" CssClass="autoMarginLeftRight smallBut bottomMarginHalfem" runat="server" Text=" Show Primary Address " OnClick="btnShowPrimary_Click"  />
                                            </div>
                                        </div>
                                    </asp:Panel>
                                </div>

                                <div class="col-sm-5 topMargin2em">
                                    <div class="width60 autoMarginLeftRight" style="margin-top:-1.5em;padding-left:.5em;">
                                        <asp:Label ID="Label50" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Cell Phone: "></asp:Label>
                                        <asp:TextBox ID="txtCellPhone" CssClass="padding5" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                    </div>
             
                                    <div class="topMarginHalfem width60 autoMarginLeftRight">
                                        <asp:Label ID="Label51" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Rank: "></asp:Label>
                                        <asp:TextBox ID="txtRank" CssClass="padding5" Width="8em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                    </div>
             
                                    <div class="autoMarginLeftRight width40">
                                        <asp:Label ID="Label52" CssClass="inline" ForeColor="Maroon"  Font-Bold="true" Font-Size="1em" runat="server" Text="Dues: "></asp:Label>
                                        <asp:TextBox ID="txtDues" CssClass="padding5 inline" Width="4em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                    </div>

                                    <div class="centerText">
                                        <asp:Label ID="Label53" ForeColor="Maroon" CssClass="aLeft inline" Font-Bold="true" Font-Size="1em" runat="server" Text="SEO Number: "></asp:Label>
                                        <asp:TextBox ID="txtSEO" CssClass="padding5 inline" Font-Size="1em" Width="4em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                    </div>

                                    <div class="clear"></div>
                                    <div class="width70 autoMarginLeftRight">
                                        <asp:Label ID="Label54" CssClass="block autoMarginLeftRight" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="Transparent" runat="server" Text="Command Status:"></asp:Label>
                                        <asp:DropDownList ID="ddlCommand" CssClass="padding5" Width="15em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:DropDownList>
                                    </div>

                                    <div class="centerText">
                                        <asp:Label ID="Label55" ForeColor="Maroon" CssClass="block aLeft leftMargin6em" Font-Bold="true" Font-Size="1em" runat="server" Text="Cmd Dates: "></asp:Label>
                                        <asp:TextBox ID="txtcmdDates" CssClass="padding5 block leftMargin6em" Font-Size="1em" Width="10em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="width100">
                                        <asp:Label ID="Label56" CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Dets"></asp:Label>
                                        <asp:TextBox ID="txtDets" CssClass="padding5 block" Width="90%" Height="5em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="width100"> 
                                        <asp:Label ID="Label58" CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Remarks"></asp:Label>
                                        <asp:TextBox ID="txtRemarks" CssClass="padding5" Width="90%" Height="5em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="width50 autoMarginLeftRight">
                                <asp:Label ID="Label59" CssClass="block" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Comments: "></asp:Label>
                                <asp:TextBox ID="txtComments" CssClass="padding5 block" Width="100%" Height="5em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            </div>

                        <div class="thinMaroonBorder width80 autoMarginLeftRight">
                            <p class="centerText pTitle">Chapters</p>
                            <asp:ImageButton ID="calChkYes" CssClass="inline leftMargin1em" Visible="false" Width="5%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="calChkYes_Click"  />            
                            <asp:ImageButton ID="calChkNo" CssClass="inline leftMargin1em" Visible="true" Width="5%" ImageUrl="~/_Images/nocheck.jpg" runat="server" OnClick="calChkNo_Click"  />            
                            <asp:Label ID="Label60" CssClass="inline leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="California"></asp:Label>
                            <asp:ImageButton ID="colChkYes" CssClass="inline leftMargin1em" Visible="false" Width="5%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="colChkYes_Click"  />            
                            <asp:ImageButton ID="colChkNo" CssClass="inline leftMargin1em" Visible="true" Width="5%" ImageUrl="_Images/nocheck.jpg" runat="server" OnClick="colChkNo_Click" />            
                            <asp:Label ID="Label61" CssClass="inline leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Colorado"></asp:Label>
                            <asp:ImageButton ID="flaChkYes" CssClass="inline leftMargin1em" Visible="false" Width="5%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="flaChkYes_Click"  />            
                            <asp:ImageButton ID="flaChkNo" CssClass="inline leftMargin1em" Visible="true" Width="5%" ImageUrl="_Images/nocheck.jpg" runat="server" OnClick="flaChkNo_Click"  />            
                            <asp:Label ID="Label62" CssClass="inline leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Florida"></asp:Label>
                `       </div>


                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-4 aLeft">
                                    <asp:ImageButton ID="deceasedChkNo" CssClass="floatLeft topMarginHalfem" Visible="true" Width="12%" ImageUrl="~/_Images/nocheck.jpg" runat="server" OnClick="deceasedChkNo_Click"  />            
                                    <asp:ImageButton ID="deceasedChkYes" CssClass="floatLeft topMarginHalfem" Visible="false" Width="12%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="deceasedChkYes_Click"  />            
                                    <asp:Label ID="Label63" CssClass="floatLeft leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Deceased"></asp:Label>
                                </div>

                                <div class="col-sm-4 aleft">
                                    <asp:ImageButton ID="electronicChkNo" CssClass="floatLeft topMarginHalfem" Visible="true" Width="12%" ImageUrl="_Images/nocheck.jpg" runat="server" OnClick="electronicChkNo_Click"  />            
                                    <asp:ImageButton ID="electronicChkYes" CssClass="floatLeft topMarginHalfem" Visible="false" Width="12%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="electronicChkYes_Click" />            
                                    <asp:Label ID="Label64" CssClass="floatLeft leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="PoMo Elec. Del."></asp:Label>
                                </div>

                                <div class="col-sm-4 aleft">
                                        <asp:ImageButton ID="onLineChkNo" CssClass="floatLeft topMarginHalfem" Visible="true" Width="12%" ImageUrl="_Images/nocheck.jpg" runat="server" OnClick="onLineChkNo_Click" />            
                                        <asp:ImageButton ID="onLineChkYes" CssClass="floatLeft topMarginHalfem" Visible="false" Width="12%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="onLineChkYes_Click" />            
                                        <asp:Label ID="Label65" CssClass="floatLeft leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Recieve EAlls"></asp:Label>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-sm-5 col-sm-offset-1">
                                    <div>
                                        <div class="topMargin2em">
                                            <asp:ImageButton ID="deleteChkNo" CssClass="inline" Visible="true" Width="10%" ImageUrl="_Images/nocheck.jpg" runat="server" OnClick="deleteChkNo_Click" />            
                                            <asp:ImageButton ID="deleteChkYes" CssClass="inline" Visible="false" Width="10%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="deleteChkYes_Click" />            
                                            <asp:Label ID="Label68" CssClass="inline leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" 
                                                runat="server" Text="Deleted"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-5 col-sm-offset-1">
                                    <div>
                                        <div class="topMargin2em">
                                            <asp:ImageButton ID="failChkNo" CssClass="inline" Visible="true" Width="10%" ImageUrl="_Images/nocheck.jpg" runat="server" OnClick="failChkNo_Click" />            
                                            <asp:ImageButton ID="failChkYes" CssClass="inline" Visible="false" Width="10%" ImageUrl="_Images/checked.jpg" runat="server" OnClick="failChkYes_Click" />            
                                            <asp:Label ID="Label66" CssClass="inline leftMarginHalfem" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" 
                                                runat="server" Text="Bad EMail"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-sm-10 col-sm-offset-1">
                                    <div>
                                        <div>
                                            <asp:Label ID="Label67" CssClass="inline" ForeColor="Maroon" Font-Bold="true" 
                                                Font-Size="1.5em" runat="server" Text="Reason for Change:"></asp:Label>
                                            <asp:TextBox ID="txtReason" CssClass="inline padding5" Width="40%" Font-Size="1em" ForeColor="Maroon" 
                                                Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="clear"></div>

                            <div class="width50 autoMarginLeftRight">
                                <asp:Label ID="lblModDate" CssClass="block" Font-Size="1.5em" ForeColor="Maroon" Font-Bold="true" runat="server" 
                                    Text="Date Last Modified:"></asp:Label>
                            </div>
                        </div>

                        <div class="clear"></div>

                    </div>

                    <section id="MemButs" class="autoMarginLeftRight width60 topMargin1em">
                        <asp:Label ID="lblMess" CssClass="autoMarginLeftRight" Font-Size="2em" Font-Bold="true" Visible="False" ForeColor="Blue" runat="server" Text="Data Saved"></asp:Label>

                        <asp:Panel ID="pnlButs" CssClass="autoMarginLeftRight width70" runat="server">
                            <asp:Button ID="btnSave" CssClass="smallBut floatLeft" Width="9em" Visible="false" runat="server" Text=" Save Changes " OnClick="btnSave_Click" />
                            <asp:Button ID="btnAdd" CssClass="smallBut floatLeft leftMargin1Halfem" Width="9em" Visible="false" runat="server" Text=" Add New " OnClick="btnAdd_Click"  />
                        </asp:Panel>

                        <div class="clear"></div>

                        <div class="centerText">
                            <asp:Button ID="btnReturnToMenu" runat="server" CssClass="myBut bottomMarginHalfem topMargin1em autoMarginLeftRight" style="margin-left:-2em;" Text=" Return to Admin Menu " OnClick="btnReturnToMenu_Click"/>
                        </div>

                        <div class="clear"></div>

                    </section
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
