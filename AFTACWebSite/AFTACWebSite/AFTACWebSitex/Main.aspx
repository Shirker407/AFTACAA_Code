<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Main.aspx.vb" Inherits="AFTACWebSite._Default" %>

<%--*****************************************************************************--%>
     <%--TABLE OF CONTENTS--%>
     <%--myHeader = Header--%>
     <%--mainMenu = Menu--%>
     <%--defaultArt = Main Page--%> 
     <%--passwordArt = Password Page--%>     
     <%--picnicArt = AFTAC Annual Spring Picnic --%>                                      
     <%--sbArt = SnowBall 2018 --%>                                      
     <%--2017AirShowArt = 2017 Air Show Video --%>                                      
     <%--2018AirShowArt = 2018 Air Show Video --%>                                      
     <%--dedicationArt =  Building Dedication Video --%>                                      
     <%--reunionArt = 2015 Reunion Video --%>                                      
     <%--WallofHonorArt = Wall ofHonor Video --%>                                      
     <%--underArt = Video of New Building Upgrade --%>                                      
     <%--historyAlumniArt = History of Alumni Association --%>                                      
     <%--historyArt =  History of AFTAC --%>                                      
     <%--wallArt = 20 Year Wall Honorees--%>                                      
     <%--honorArt = Wall of Honor --%>                                      
     <%--alumniArt =  Alumni of the Year --%>                                      
     <%--openHouseArt =  AFTAC Headquarters Open House --%>                                      
     <%--golfGetArt = Golf N’GetTogether 2016 --%>                                      
     <%--toiletArt = Toilet Bowl 2016 --%>                                      
     <%--colFallDinerArt = Colorado Fall Dinner --%>                                      
     <%--specialLinksArt = SPECIAL LINKS --%>                                      
     <%--dailyHitReportArt =  Daily Hit Report --%>                                      
     <%--jobsArt = JOBS --%>                                      
     <%--newsToKnowArt = NEWS TO KNOW --%>                                      
     <%--pomoArt = Pomos Page --%>                                      
     <%--obituariesArt =  Obituaries --%>                                      
     <%--sageShopArt = Sage Shop --%>                                      
     <%--calendarArt = Active Calendar --%>                                      
     <%--electedBoardArt = Elected Board Members --%>                                      
     <%--selectedBoardArt =  Selected Board Members --%>                                      
     <%--deploymentArt =  AFTAC Cares --%>                                      
     <%--adminMenu =  Admin Menu --%>                                      
     <%--PasswordArt =  Password --%>                                      
     <%--changepasswordArt =  Change Password --%>                                      
     <%--membershipadminArt =  Member Admin --%>    
     <%--friendsArt = Friends Search --%>                                  
<%--*****************************************************************************--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AFTAC Alumni Website</title>
    <meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=.5, initial-scale=1.0" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
    <link href="_Styles/BasicStyles.css?v=2018.02.12" rel="stylesheet" />
    <link href="_Styles/myStyles.css?v=2018.02.12" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="pageWrapper regBorder showShadow" style="font-size:1.1em;">
        <aside id="mainMenu" class="myAside smallShadow  block" runat="server">
            <div class="topMargin1em backChocolate whiteText maroonBorder width90 autoMarginLeftRight padding5">
                <a class="whiteText centerText" style="font-size:1em;" href="mailto:fcalenda@aol.com,aftacaawebmaster@gmail.com">Click to send Comments<br />or Report Errors</a>
            </div>

            <div class="topMarginHalfem width90 autoMarginLeftRight backChocolate maroonBorder" style="overflow-y: scroll;max-height:30em">
                <ul class="mainMenu">
                    <li id="liMainPage" class="liMainMenu bottomDot" style="color:lightgreen;">Main Page</li>

                    <li id="liEventPhotos" class="liMainMenu bottomDot">Activities
                        <div id="divEvents" class="underMenu noDisplay">
                            <span id="retreat" data-toggle-art="retreatArt" class="underSel block leftMargin1em bottomDot">Annual Retreat Ceremony</span>
                            <span id="wccPic" data-toggle-link="http://www.aftacwcc.org/PhotoAlbums/20180519_SpringPicnic/20180519_WCCPicnic-SlideShow.pdf" class="underSel block leftMargin1em bottomDot">2018 WCC Spring Picnic</span>
                            <span id="eventsSnowBall" class="underSel block leftMargin1em bottomDot">Snow Ball 1st Article - 1/20/2018</span>
                            <span id="eventsSnowBall2" class="underSel block leftMargin1em bottomDot">Snow Ball 2nd Article - 1/20/2018</span>
                            <span id="eventsToiletBowl" class="underSel block leftMargin1em bottomDot">Toilet Bowl - 12/1/2017</span>
                            <span id="eventsOpenHouse" class="underSel block leftMargin1em bottomDot">AFTAC Open House - 12/22/2017</span>
                            <span id="ladiesLuncheon" class="underSel block leftMargin1em bottomDot">AFTAC Ladies Luncheon - 12/6/2017</span>
                            <span id="diningH2" class="underSel block leftMargin1em bottomDot">AFTAC 70<sup class="yellowText">th</sup> Anniversary<br />Dining Out - 10/20/2017</span>
                            <span id="eventsWCCReunion" class="underSel block leftMargin1em bottomDot">AFTAC Reunion - 6/15/2017</span>
                            <span id="eventsGolfGet" class="underSel block leftMargin1em bottomDot">Golf N’GetTogether - 11/4/2016</span>
                        </div>
                    </li>

                    <li id="liMeeting" class="liMainMenu bottomDot">AFTACAA Board Meeting
                        <div id="divMinutes" class="underMenu noDisplay">
                            <span id="showMinutes" class="underSel block bold leftMargin1em bottomDot">Minutes</span>
                            <span id="showAgenda" class="underSel block bold leftMargin1em">Agenda Next Meeting</span>
                        </div>
                    </li>

                    <li id="liBooster" class="liMainMenu bottomDot">AFTAC Booster Club News</li>

                    <li class="bottomDot"><a id="looka" href="Memlookup.aspx" class="yellowText fontSize1em">AFTAC Friends Search</a></li>

                    <li id="liIndependent" class="liMainMenu bottomDot">Alumni Chapters
                        <div id="divChapters" class="underMenu noDisplay">
                            <a id="showCal" class="underSel block leftMargin1em" style="font-size:1em;">West Coast Chapter</a>
                            <a id="showCol" class="underSel block leftMargin1em" style="font-size:1em;">Colorado Chapter</a>
                        </div>
                    </li>

                    <li id="liAlumni" class="liMainMenu bottomDot">Alumni of the Year</li>
                
                    <li id="liWoodwork" class="liMainMenu bottomDot">Amazing Woodwork</li>
                
                    <li id="liOfficers" class="liMainMenu bottomDot">Board Members
                        <div id="divBoard" class="underMenu noDisplay">
                            <span id="showElected" class="underSel block bold leftMargin1em">Elected Board</span>
                            <span id="showAppointed" class="underSel block bold leftMargin1em">Appointed Board</span>
                        </div>
                    </li>

                    <li id="liCalendar" class="liMainMenu bottomDot">Calendar of Events</li>

                    <li id="liConstitution" class="liMainMenu bottomDot">Constitution & Bylaws
                        <div id="divConstitution" class="underMenu noDisplay">
                            <a id="showByLaws" class="underSel block leftMargin1em" style="font-size:1em;">Bylaws</a>
                            <a id="showConstitution" class="underSel block leftMargin1em" style="font-size:1em;">Constitution</a>
                        </div>
                    </li>

                    <li id="fSpot" data-toggle-link="https://www.youtube.com/embed/9FCxuVSkT7k" class="liMainMenu bottomDot">Fun Spot - Future Generations - There Is Hope</li>

                    <li id="liHistory" class="liMainMenu bottomDot">Histories
                        <div id="divHistory" class="underMenu noDisplay">
                            <span id="historyAFTAC" class="myHistories underSel block leftMargin1em bottomDot yellowText">AFTAC History</span>
                            <span id="historyAlumni" class="myHistories underSel block leftMargin1em bottomDot yellowText">Alumni History</span>
                            <span id="heritageandHistory" class="myHistories underSel block leftMargin1em bottomDot yellowText">Heritage and History</span>
                            <span id="oconnerHistory" class="myHistories underSel block leftMargin1em bottomDot yellowText">Piece of History by Jack O'Conner</span>
                            <span id="excelHistory" class="myHistories underSel block leftMargin1em bottomDot yellowText">Organizational Excellence Award</span>
                            <span id="last70years" class="myHistories underSel block leftMargin1em bottomDot yellowText">AFTAC's Last 70 Years</span>
                            <span id="olMemories" class="myHistories underSel block leftMargin1em bottomDot yellowText">A Member's Story</span>
                        </div>
                    </li>
                    <li id="liHurricane" class="liMainMenu bottomDot">Hurricane Tracking
                        <div id="divHurricane" class="underMenu noDisplay">
                            <span id="nhc" class="myweather underSel block leftMargin1em bottomDot yellowText">National Hurricane Ctr</span>
                            <span id="wunder" class="myweather underSel block leftMargin1em bottomDot yellowText">Wunderground Weather</span>
                        </div>
                    </li>
                    <li id="liJobs" class="liMainMenu bottomDot">Job Listing</li>
                    <li id="liStatistics" class="liMainMenu bottomDot">Monthly Statistics</li>
                    <li id="liNewsToKnow" class="liMainMenu bottomDot">News to Know</li>
                
                    <li id="liObituaries" class="liMainMenu bottomDot">Obituaries
                        <div id="divObits" class="underMenu noDisplay">
                            <span id="obitsRecent" class="underSel block leftMargin1em">Recent Obituaries</span>
                            <span id="obitsArchived" class="underSel block leftMargin1em">Archived Obituaries</span>
                        </div>
                    </li>

                    <li id="liAlbums" class="liMainMenu bottomDot">Photo Albums
                        <div id="divAlbums" class="underMenu noDisplay">
                            <span data-toggle-link="/_pdfs/Spring 2018 Golf Outing.pdf" class="underSel block leftMargin1em">Srpring 2018 Golf Outing</span>
                            <span data-toggle-link="/_pdfs/Fall 2018 Golf Outing.pdf" class="underSel block leftMargin1em">Fall 2018 Golf Outing</span>
                        </div>
                    </li>

                    <li id="liPoMos" class="liMainMenu bottomDot">Post-Monitors
                        <div id="divPomos" class="underMenu noDisplay">
                            <span id="pomosArchived" class="underSel block leftMargin1em">Archived Post Monitors</span>
                            <span id="pomosCurrent" class="underSel block leftMargin1em">Recent Post Monitors</span>
                        </div>
                    </li>

                    <li id="liSageShop" class="liMainMenu bottomDot">Sage Shop</li>
                    <li id="liSpecialLinks" class="liMainMenu bottomDot">Special Links</li>
                    <li id="liVideos" class="liMainMenu bottomDot">Videos
                        <div id="divVideos" class="underMenu noDisplay">
                            <span id="vid_2015Reunion" class="underSel block bottomDot leftMargin1em">2015 Worldwide AFTAC Reunion</span>
                            <span id="vid_2017AirShow" class="underSel block bottomDot leftMargin1em">2017 Melbourne Airshow</span>
                            <span id="vid_2018AirShow" class="underSel block bottomDot leftMargin1em">2018 Melbourne Airshow</span>
                            <span id="vidUpgrade" class="underSel block bottomDot leftMargin1em">AFTAC Building Update</span>
                            <span id="vidDedication" class="underSel block bottomDot leftMargin1em">Building Dedication</span>
                            <span id="vidSeminar" class="underSel block bottomDot leftMargin1em">AFTAC Seminar by Dr. Glenn Sjoden</span>
                            <span id="vidStonehenge" class="underSel block bottomDot leftMargin1em">Stonehenge</span>
                            <span id="vidWall" class="underSel block bottomDot leftMargin1em">Wall of Honor</span>
                        </div>
                    </li>

                    <li id="liWall" class="liMainMenu bottomDot">Wall 20 Year</li>
                    <li id="liHonor" class="liMainMenu bottomDot">Wall of Honor</li>
                </ul>
            </div>

        </aside>

        <header id="mainHeader" class="myHeader topMargin1em showShadow block" style="margin-left:22%;" runat="server">
            <div class="floatLeft backMoccasin width25" style="background-color:chocolate;">
                <asp:ImageButton ID="alumniLogo" CssClass="width50 thinMaroonBorder smallShadow" ImageUrl="_Images/alumniLogo.jpg" runat="server" OnClick="alumniLogo_Click" />
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
        
        <article id="defaultArt" class="myArts noDisplay">            
            <div class="clear topMargin2em"></div>

            <div class="rows redBorder backYellow topMargin2em smallShadow" style="width: 100%">
                <div id="additions" class="width70 redText" style="float: left">
                    <table class="tableAnnouncements">
                        <tr class="trAnnouncementsHeader bottomDotRed">
                            <td class="announcement">New Additions and Updates</td>
                            <td class="date">Posted</td>
                        </tr> 
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Added Stonehenge Video - Videos</td>
                           <td class="date">3/27/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Minutes and Agenda posted - AFTACAA Board Meeting</td>
                           <td class="date">3/26/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Wall of Honor Video - Videos</td>
                           <td class="date">3/26/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">AFTAC Seminar by Dr. Glenn Sjoden - Videos</td>
                           <td class="date">3/26/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Added 2015 Aftac Reunion Video - Videos</td>
                           <td class="date">3/25/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Updated Colorado Reunion Roster 81 attending - Upcoming Events</td>
                           <td class="date">3/25/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Calendar of Events Updated</td>
                           <td class="date">3/24/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Fun Spot Updated - Future Generations - There Is Hope</td>
                           <td class="date">3/24/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Video Section was Updated</td>
                           <td class="date">3/24/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Added Mary Lubin's Obituary - Recent Obits</td>
                           <td class="date">3/21/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Denver World-wide Reunion Attendee List Updated - Upcoming Events</td>
                           <td class="date">3/16/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Toilet Bowl to be held 4/5/2019 - Upcoming Events</td>
                           <td class="date">3/14/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Nuclear air sampling aircraft on display at Patrick AFB - News to Know</td>
                           <td class="date">3/14/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Defense Department pushing ahead to merge commissary and exchange systems - News to Know</td>
                           <td class="date">3/13/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Congressional staffers learn about AFTAC’s heritage, mission - News to Know</td>
                           <td class="date">3/12/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">2019 AFTAC Alumni Worldwide Reunion Update - Upcoming Events</td>
                           <td class="date">3/9/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Added Jon Secoy's Obituary - Archived Obits</td>
                           <td class="date">3/7/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Added Willis Glenn Price's Obituary - Recent Obits</td>
                           <td class="date">3/6/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">AFTAC Awards Ceremony - Hot Topics</td>
                           <td class="date">2/25/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Added William McCune's Obituary - Recent Obits</td>
                           <td class="date">2/23/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Volunteers For The Melbourne Air And Space Show  - Upcoming Events</td>
                           <td class="date">2/13/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Free Military Tax Preparation - Hot Topics</td>
                           <td class="date">2/3/2019</td>
                        </tr>
                        <tr class="trAnnouncementsEntry bottomDotRed">                    
                           <td class="announcement">Disney Military Discounts for 2019 - Hot Topics</td>
                           <td class="date">12/17/2018</td>
                        </tr>
                    </table>
                </div>

                <div class="width30 redText" style="float: right;border-left:3px solid red;">
                    <p class="pTitle underLine centerText redText topMargin1em" style="font-size: 1.4em;">Next Alumni Meeting</p>                    
                    <p class="centerText redText" style="font-size: 1em; margin-top:-1em;">Monday, 8 April<br/><br />
                        AFTAC Alumni Association Monthly Meeting<br /><br />
                        Time: 1600 - 1700 hrs<br/><br />
                        Location: HQ AFTAC, Lobby Conference Room
                    </p>
                </div>
            </div>
            <div class="rows redBorder backYellow smallShadow redText bottomMargin2em" style="width: 100%">
                <div class="width40">
                        <p class="pTitle redText underLine" style="margin-top:-.5em; font-size: 1.4em"">HOT TOPICS</p>
                        <ul class="ulLink ulLinkBold ulLinkRedText ulLinkBottomDottedRed" style="margin-top:-2em; text-align: left;">
                           <li><div data-toggle-art="aftacAwardsArt">AFTAC Awards Ceremony</div></li>
<%--                           <li><div data-toggle-art="retreatArt">2019 Annual Retreat Ceremony</div></li>--%>
                           <li><div data-toggle-art="taxArt">Free Military Tax Preparation</div></li>
                           <li><div data-toggle-link="https://disneyworld.disney.go.com/special-offers/military-multi-day-tickets-2019/">Disney Military Discounts for 2019</div></li>
                           <li><div data-toggle-link="/_pdfs/HockeySchedule.pdf">2018 – 2019 AFTAC Hockey Schedule</div></li>
                        </ul>
                </div>

                <div class="width60" style="border-left: 3px solid red">
                        <p class="pTitle redText underLine" style="margin-top: -.5em; font-size: 1.4em;">UPCOMING EVENTS</p>
                        <ul class="ulLink ulLinkBold ulLinkRedText ulLinkBottomDottedRed" style="margin-top: -2em; text-align: left;">
                            <li><div data-toggle-link="https://airandspaceshow.com/air-show-volunteer/">Volunteers For The Melbourne Air Show<span style="float: right">3/30-31</span></div></li>
                            <li><div data-toggle-art="newToiletArt">AFTAC Toilet Bowl<span style="float: right">4/5/2019</span></div></li>
                            <li><div data-toggle-art="coloReunionArt">2019 World-Wide Reunion Update<span style="float: right">6/13/2019</span></div></li>
                        </ul>
                </div>
            </div>
            
        </article>

        <article id="newToiletArt" class="myArts noDisplay">
            <p class="pTitle centerText">2019 AFTAC Toilet Bowl</p>
            <p>
                <img alt="Baseball.jpg" class="float-left width20 thinBorder showShadow rightMarginHalfem" src="_Images/Baseball.jpg" />
                Hello all Alumni members.  This msg was just posted in the AFTAC Headquarters bldg.
                <br />
                It is the Toilet Bowl/Picnic. Alumni are included in the invite.
                <br />
                One bonus...Once again the Alumni will be responsible for serving the Adult beverages. 
                <br />
                Food and entertainment are FREE!!    
                <br />
                If you’re coming for the food and festivities, unlimited beer will cost you $5.. See below for more details. Those Alumni that serve the alcoholic beverage will not have to pay this fee. 
                <br />
                It would be great for people to volunteer for a 2 hour shift in the 10-12, 12-2, or 2-4 time slots (or any portion of those) We’d like 2 persons per shift.
                <br /><br />
                Contact Sean Ryan at 321-591-9053  or <a href="MailTo:oceanblueview@yahoo.com">oceanblueview@yahoo.com</a> if you would be available to help serve beer. Please specify a time as shown above.  First come first selected.
                <br />
                Other volunteers are needed for help keep score for the baseball (?) games, for umpires (even one-eyed accepted) and possible help serving food.
                <br /><br />
                Contact Carol Snyder for information at <a href="MailTo:carol.snyder@us.af.mil">carol.snyder@us.af.mil</a> or 321-494-4402 
                <br /><br />
                Hope to see you there.
                <br />
                Ed Lindsay, President, AFTACAA
            </p>

            <div class="width70 autoMarginLeftRight backChocolate yellowText maroonBorder showShadow">
                <p class="pTitle centerText darkBlueText fontSize2em">Official Invitation</p>

                <p class="yellowText">
                    Team AFTAC,<br />
                    Hope you are ready for our annual Toilet Bowl!<br /><br />
                    <strong class="darkBlueText">- What:</strong> 2019 AFTAC Toilet Bowl Softball Tourney (Like no other baseball game you’ve ever seen).
                    <br /><br />
                    <strong class="darkBlueText">- Where:</strong> Viera Regional Park
                    <br /><br />
                    <strong class="darkBlueText">- When:</strong> 5 April 2019; Games begin 0800L
                    <br><br />
                    <strong class="darkBlueText">- Who:</strong> Open to all AFTAC members, alumni, and families
                    <br /><br />
                    <strong class="darkBlueText">- Why:</strong> Approved alternate duty location, Free Food, $5 All-You-Can-Drink Beer bracelets
                    <br /><br />
                    Beer bracelets can be purchased at the event.
                </p>
            </div>
        </article>

        <article id="aftacAwardsArt" class="myArts noDisplay">
            <p class="pTitle centerText">
                2019 AFTAC Awards Ceremony<br />
                Patrick AFB Beach House<br />
                February 22, 2019
            </p>

            <img alt="Award1.jpg" class="width20 autoMarginLeftRight" src="_Photos/News2Know/Award1.jpg" />

            <hr class="myHR" />

            <p>
                <img class="floatLeft width20 rightMargin1em maroonBorder showShadow" alt="award9jpg" src="_Photos/News2Know/Award9.jpg" />
                On the occasion of awards to the most outstanding AFTAC performers of the year, our 2019 Alumni Of The Year, Pete Gilbert was included in this ceremony.
                <br /><br />
                Although this year’s venue was more “relaxed” than previous ceremonies, the military honors were still preserved. Following a social hour, the assembly was then called to order.  
                <br /><br />
                The National Anthem was sounded, an invocation was given and distinguished guests were identified and the award nominees were announced.
                <br /><br />
                A short presentation was made by Mr. Leland (Lee) Hathaway who spoke of his past military service and his deep appreciation of AFTAC and the work that is performed.
                <br /><br />
                <img class="floatLeft width20 rightMargin1em maroonBorder showShadow" alt="award3jpg" src="_Photos/News2Know/Award3.jpg" />
                <img class="floatRight width20 leftMargin1em maroonBorder showShadow" alt="award2jpg" src="_Photos/News2Know/Award2.jpg" />
                After the awards to the active duty and civilians’ selectees, Pete Gilbert, accompanied by his wife Shirley, was called to the front to accept his Alumni of the Year award amidst a solid round of applause.  He accepted the award from Colonel Hartman and Chief Joseph, he offered a sharp salute and returned to the Alumni table with a huge smile on his face.
                <br /><br />
                Pete is very deserving of this award and the recognition given to him and all the Alumni by the AFTAC Commander.
                <br /><br />
                <span class="maroonText fontSize2em">Well done Pete!!!!</span>
            </p>

            <h2 id="morePics" class="redText bold redText fontSize2em bottomMargin1em underLine" style="cursor:pointer;">Click to see More Pictures</h2>

            <section id="allAwardPhotos" class="noDisplay">
                <figure>
                    <img id="awardPic" alt="award1.jpg" class="width50 autoMarginLeftRight maroonBorder showInsideShadow" src="_Photos/News2Know/Award1.jpg" />
                    <h2 id="awardMess" class="bold maroonText centerText">The Award"</h2>
                </figure>

                <div class="width50 autoMarginLeftRight">
                    <input id="butAwdPrevious" class="myBut inLine centerText" style="width:6em;" value="Previous" />
                    <input id="butAwdNext" class="myBut inLine leftMargin2em centerText" style="width:6em;" value="Next" />
                    <br />
                    <input id="butAwdSlide" class="myBut autoMarginLeftRight topMargin1em centerText" style="width:10em;" value="Show Slide Show" />
                </div> 
            </section>
        </article>

        <article id="retreatArt" class="myArts noDisplay">
            <p class="pTitle centerText">AFTAC Alumni Retreat Attendance</p> 
            <p>
                On 14 January 2019, AFTAC participated in the Quarterly Formal Retreat Ceremony at HQ 45 Space Wing, Patrick AFB. In addition to the full complement of active duty AFTAC personnel performing the ceremony, a contingent of the AFTAC Alumni Association was privileged to attend.
            </p>

            <div class="floatLeft width45">
                <figure>
                    <img alt="Retreat1.png" class="width90 autoMarginLeftRight maroonBorder" src="_Photos/Retreat/Retreat1.jpg" />
                    <figcaption class="centerText maroonText fontSize1em bold" style="">Spectators</figcaption>
                </figure>
            </div>

            <div class="floatLeft width45">
                <figure>
                    <img alt="Retreat2.png" class="width90 autoMarginLeftRight maroonBorder" src="_Photos/Retreat/Retreat2.jpg" />
                    <figcaption class="centerText maroonText fontSize1em bold">
                        Association members in attendance (L to R) were: Sean Ryan, Terry Hammond, Frank Calenda, Bob Wiley, John Horsch, Ed Lindsay, Bob Chadwick, James Whidden (Not Shown)
                    </figcaption>
                </figure>
            </div>

            <div class="clear"></div>

            <div class="floatLeft width45">
                <figure>
                    <img alt="Retreat3.png" class="width90 autoMarginLeftRight maroonBorder" src="_Photos/Retreat/Retreat3.jpg" />
                    <figcaption class="centerText maroonText fontSize1em bold">Retreat detail forming up</figcaption>
                </figure>
            </div>

            <div class="floatLeft width45">
                <figure>
                    <img alt="Retreat4.png" class="width90 autoMarginLeftRight maroonBorder" src="_Photos/Retreat/Retreat4.jpg" />
                    <figcaption class="centerText maroonText fontSize1em bold">Detail at parade rest prior to start</figcaption>
                </figure>
            </div>

            <div class="clear"></div>

            <div class="floatLeft width45">
                <figure>
                    <img alt="Retreat5.png" class="width90 autoMarginLeftRight maroonBorder" src="_Photos/Retreat/Retreat5.jpg" />
                    <figcaption class="centerText maroonText fontSize1em bold">Our Flag</figcaption>
                </figure>
            </div>

            <div class="floatLeft width45 topMargin6em">
                <figure>
                    <img alt="Retreat6.png" class="width90 autoMarginLeftRight maroonBorder" src="_Photos/Retreat/Retreat6.jpg" />
                    <figcaption class="centerText maroonText fontSize1em bold">Ceremony’s end; flag being folded</figcaption>
                </figure>
            </div>

            <div class="clear"></div>

            <p>
                It was a reliving of an old tradition and elicited pride from all who attended.
                <br /><br />
                Article and Photos by Bob Chadwick, AFTAC Alumni
            </p>
        </article>

        <article id="taxArt" class="myArts noDisplay">
            <img alt="TaxReturn" class="width80 autoMarginLeftRight topMargin2em" src="_Images/TaxReturn.jpg" />
        </article>

        <article id="febBreakfast" class="myArts noDisplay">
            <p class="pTitle centerText">Denver Alumni February Breakfast</p> 

            <p>
                Dear Alumni, Families and Friends, <br />
                You are invited to come to our February breakfast on Saturday, 23 February 2019 at 0900. 
                Place: Aurora Hills Golf Course – The Tin  Cup, 50 S. Peoria St. Aurora, CO 80012
                <br /><br />
                The menu is the Tin Cup buffet, with eggs, potatoes, meats, biscuits & gravy, toast, green chili, juice and coffee.
                <br /><br />
                The cost is $15 per person, collected at the breakfast. Children are half-price.
                <br /><br />
                Please RSVP no later than Friday, 15 February. 
                <br /><br />
                You can reply all to this message or contact  <a href="MailTo:Treasurer@aftacco.org">Bill Schmied</a> or <a href="MailTo:Treasurer@aftacco.org">Darrel Cline</a>. 
                <br />
                We hope to see you there! 
            </p>
        </article>

        <article id="france2Art" class="myArts noDisplay">
            <p class="pTitle underLine">Geophysicist – Sisprobe – Institute of Earth Sciences, Grenoble-Alpes University, France – Posted: 21 Dec 2018 – Closes: When filled.  </p>
            <p>
                As a Geophysicist, you will be at the core of Sisprobe production and services (data processing). You will be working closely with our R&D team and scientific board. You will be also responsible for editing scientific reports and presenting to client the results together with the methodology.
                *Experience in:<br />
                 &nbsp;&nbsp;&nbsp;- surface waves tomography and inversion (ideally ANSWT);<br />
                 &nbsp;&nbsp;&nbsp;- passive seismic data and processing.<br />
                *Advanced Matlab or/and Python knowledge (any additional programming language will be an advantage);
                *Master in geophysics, seismology, mathematics, physics (PhD is not required);
                *Fluent in written and spoken English.
                If you are interested in this position, please send your resume and cover letter to: <a href="MailTo:Richard.Lynch@Sisprobe.com">Richard.Lynch</a>
            </p>
        </article>

        <article id="france1Art" class="myArts noDisplay">
            <p class="pTitle underLine">Seismic Data Analyst - – Sisprobe – Institute of Earth Sciences, Grenoble-Alpes University, France – Posted: 21 Dec 2018 – Closes: When filled.</p>
            <p>
                Job summary: Analysis of passive seismic (i.e. ambient seismic noise) data recorded in projects around the world using a well-defined workflow
                Job details: Sisprobe is looking for a young highly motivated scientist to strengthen the company’s data processing group. You would work as part of the team processing passive seismic data from mineral and oil & gas exploration projects, applying routine workflows.
                No prior experience with seismology or exploration geophysics required, although it would be advantageous.
                Minimum requirements:<br />
                &nbsp;&nbsp;&nbsp;* BSc/Licence or MSc/Master in geophysics, physics or applied mathematics from an internationally recognised university<br />
                &nbsp;&nbsp;&nbsp;* Fluency in spoken and written English (French is not required, but would be helpful to the successful candidate)<br />
                EU citizen/permanent resident/holder of current EU work permit would be preferred.
                If you are interested in this position, please send your resume and cover letter to: <a href="MailTo:Richard.Lynch@Sisprobe.com">Richard.Lynch</a>
            </p>
        </article>


        <article id="hockey1Art" class="myArts noDisplay">
            <p class="pTitle centerText">2018 – 2019 AFTAC Hockey Schedule</p>

            <img alt="hocket.jpg" class="autoMarginLeftRight bottomMargin2em width70 maroonBorder showShadow" src="_Images/hockey.jpg" />
        </article>

        <article id="woodenHQArt" class="myArts noDisplay">
            <img alt="Wooden HQ.jpg" class="width70 autoMarginLeftRight maroonBorder showShadow" src="_Photos/Wooden HQ.jpg" />
            <p class="topMargin2em">
                <span class="maroonText underLine">Website Committee Note:</span> Mark Smith sent this to us a while back. It is an amazing effort by one of our AFTAC Alumni which only goes to prove that AFTAC’ers are multi-talented.  Thanks for this input and your effort Mark.
                <br /><br />
                AFTAC Alumni, I built the wooden AFTAC display as a going away gift for Mr. Jim Kelly.  Jim was AFTAC’s Operations Security (OPSEC) Manager when he retired from civil service, and had been with AFTAC since 1991 (military and civilian).
                I had a “wire-frame” outline drawing of the building and decided that I wanted to make Jim something special for his going away gift…something no one else had.   I took the wire-frame drawing and extrapolated the measurements to ensure they were “to scale”.  I used red oak for the main part of the building, sapele (looks like mahogany) for the stairs and concrete planters to the sides of the stairs, and black walnut for the windows and trim.  I finished the display with a natural stain to bring out the grain of the wood, and sprayed 4 coats of lacquer.  Either side of the entrance is adorned with the AFTAC coin, front and back.  The flag I printed mirror images and glue it around a 1/8” dowel rod.  The letters that spell out Air Force Technical Applications Center were made by a 3-D printer.  I didn’t have anything to scale the letters to other than photos of the front of Building 989.  It took between 40 to 50 hours to create the display.  I found the dragons at the flea market west of Melbourne and I-95 and had a friend airbrush them.  The base of the display is made from red oak.
                <br /><br />
                The purple dragons represent the OPSEC program.<a href="http://www.af.mil/News/Article-Display/Article/614272/af-adopts-new-dragon/" target="_blank"> (Click here to learn more about OPSEC)</a> A program that Jim Kelly took pride in every day at AFTAC.  HE walked the walk and talked the talk, and brought a program that was given little more than lip-service to life, and even gained Air Force-level recognition.  “OPSEC has always been an important factor in the military.  Since Vietnam, OPSEC has become an established process used by military, federal, and state and local agencies, as well as private companies”
                <br /><br />
                Jim would tell you, or anyone, that everyone in AFTAC is on the OPSEC Program team.  It was his attitude that drew people to be more actively engaged in OPSEC.  Jim Kelly definitely exhibited excellence in all he did, just as AFTAC has done for more than 70 years.
                <br /><br />
                There is something nostalgic about that old Tech Lab to me…as a kid arriving here in 1973, riding by the building every day of my childhood knowing my dad worked there, and it was just so big!!!  It is much like home to many AFTACers that have spent part of if not all of their career there.  To many people, it was home, and they loved it as it had become a symbol of excellence not only at Patrick Air Force Base, but also to the Air Force and to our nations’ leaders.
                <br /><br />
                Thank you for your interest.  I have considered trying to recreate the entire complex, rocket garden and all, but that could take several hundreds of hours.  I would have to research to find out what rockets were on display.
                <br />
                Mark Smith
            </p>
        </article>

        <article id="coloPicnicArt" class="myArts noDisplay">
            <p class="pTitle centerText">Colorado Annual Picnic</p>
            <p>
                Dear Alumni, Families and Friends,<br /> 
                This year's annual picnic will be at Matney Park on 7 July 
                from 11am to 3pm. 
                <br /><br />
                All are welcome. Like last year, Rick and I will furnish burgers, brats, hot dogs, condiments, 
                lemonade, potato salad, chips and watermelon. 
                <br /><br />
                Donations are welcome. 
                <br /><br />
                Feel free to bring a dish to share. Adult beverages are OK - we have a permit. RSVPs are 
                appreciated but not required (just click here to reply to <a href="MailTo:President@aftacco.org">President Bryce Dunn</a>). 
                <br /><br />
                Come on out and enjoy the view of Pikes Peak and some camaraderie. We hope to see you there! 
                Matney Park is located at 5790 Lantern Cr., Castle Rock, CO 80104. The amenities are listed 
                on the <a href="http://co-castlerock2.civicplus.com/Facilities/Facility/Details/27" target="_blank">Castle Rock website.</a>  
                <br /><br />
                Best Regards,<br />
                Bryce Dunn<br /> 
                303-358-2976
            </p>

        </article>

        <article id="toilet2017Art" class="myArts noDisplay">
            <p class="pTitle centerText">AFTAC Toilet Bowl 2017<br />by George Mirda</p>
            <p>
                <img class="floatLeft width25 rightMarginHalfem maroonBorder showShadow" alt="tb1.jpg" src="_Photos/ToiletBowl/TB1.JPG" />
                December 1st in the
                North means football,
                snow and below
                zero temperatures,
                but at the
                Viera Regional
                Sports Complex
                and to AFTAC active
                duty, civilians,
                contractors and
                alumni the temps
                are 80F, beer and softball tournaments.
                <br /><br />
                Friday began at 0900 with spirited play and challenge
                rounds. Event lead, SMSgt Steve “Carp” Carpenter
                from DO, organized committees and set up a fantastic
                venue for hundreds of attendees with all the trimmings
                (barbeque pork a la TSgt Chevis Stanley) dogs, burgers,
                even an Italian Ice truck. Alumni hosted and managed
                4 kegs of beer and a tasty cider to help cool down
                the players. John Horsch, Frank Calenda, Ed Lindsey
                assured tradition and
                99 culture were maintained.
                <br /><br />
                <img class="floatRight width25 leftMarginHalfem maroonBorder showShadow" alt="tb2.jpg" src="_Photos/ToiletBowl/TB2.JPG" />
                The tournament was
                superbly honchoed
                by Kathie Querry who
                made sure rigid compliance
                with rules
                complimented the fun
                atmosphere. After
                many games, including a loser’s bracket ultimate loser
                (DO # 2 team … toilet bowl, number 2, get it?).
                <br /><br />
                <img class="floatLeft width25 rightMarginHalfem maroonBorder showShadow" alt="tb3.jpg" src="_Photos/ToiletBowl/TB3.JPG" />
                The loser becomes next year’s
                Toilet Bowl organizer. The final
                game between Mission Support
                and the Directorate of Operations
                was hard fought, but in an
                exciting and razor-close finish,
                MS triumphed 8 runs to 7.
                <br /><br />
                Prior to the big game, a home
                run derby was held for a field of
                nearly 20. Despite huge, powerful
                Casey’s stepping up to bat,
                an everyman-sized nuclear engineer
                from TM, Capt Taylor Yousley, who played college
                baseball, knocked the most balls out of the park
                and took home bragging rights and the envied slugger
                trophy.
                <br /><br />
                <img class="floatRight width25 leftMarginHalfem maroonBorder showShadow" alt="tb4.jpg" src="_Photos/ToiletBowl/TB4.JPG" />
                Highlights of the
                day were, for the
                first time in a long
                time, a lack of major
                injuries, some
                terrific cornhole
                mini-tourneys, long
                chow lines, but
                satisfyingly more
                than enough food
                and drink for all to
                savor till the very
                end. Col Gorski
                threw out the first pitch and flipped the ceremonial coin
                to determine the final game’s to the field or at-bat. Later,
                he and Command Chief Joseph presented the latrine-themed
                awards.
                <br /><br />
                The Toilet Bowl harkens back to it’s annual namesake
                softball tournament 4 decades ago at AFTAC’s depot/
                laboratory on McClellan AFB, California. My observation
                is that deadly cigarettes have been replaced with
                much more healthy cellphones. Soft drinks have taken
                a backseat to bottled water. Yet what hasn’t changed is
                the competitive spirit and camaraderie that sports
                brings out in everyone whether player, official or spectator.
                Plus the USAF’s finest organization and best
                people made it a day to remember for years to come.
            </p>
        </article>

        <article id="minutesArt" class="myArts noDisplay">
            <p class="pTitle centerText">AFTACAA Board Meeting Minutes by Year</p>

            <div class="floatLeft">
                <p class="centerText">2019</p>
                <div class="backYellow maroonBorder showShadow" style="height:20em;margin-top:-1em;">
                    <ul class="minutesUL">
                        <li><a href="_Minutes/3-11-2019_Minutes.pdf" target="_blank">3-11-2019</a></li>
                        <li><a href="_Minutes/2-11-2019_Minutes.pdf" target="_blank">2-11-2019</a></li>
                        <li><a href="_Minutes/1-14-2019_Minutes.pdf" target="_blank">1-14-2019</a></li>
                    </ul>
                </div>
            </div>

            <div class="floatLeft leftMargin1em">
                <p class="centerText">2018</p>
                <div class="autoMarginLeftRight backYellow maroonBorder showShadow" style="height:20em;margin-top:-1em;">
                    <ul class="minutesUL">
                        <li><a href="_Minutes/12-10-2018-Minutes.pdf" target="_blank">12-10-2018</a></li>
                        <li><a href="_Minutes/11-13-2018-Minutes.pdf" target="_blank">11-13-2018</a></li>
                        <li><a href="_Minutes/10-9-2018_Minutes.pdf" target="_blank">10-9-2018</a></li>
                        <li><a href="_Minutes/9-7-2018_Minutes.pdf" target="_blank">9-7-2018</a></li>
                        <li><a href="_Minutes/8-13-2018_Minutes.pdf" target="_blank">8-13-2018</a></li>
                        <li><a href="_Minutes/7-9-2018_Minutes.pdf" target="_blank">7-9-2018</a></li>
                        <li><a href="_Minutes/6-11-2018_Minutes.pdf" target="_blank">6-11-2018</a></li>
                        <li><a href="_Minutes/5-14-2018_Minutes.pdf" target="_blank">5-14-2018</a></li>
                        <li><a href="_Minutes/4-9-2018_Minutes.pdf" target="_blank">4-9-2018</a></li>
                        <li><a href="_Minutes/3-12-2018_Minutes.pdf" target="_blank">3-12-2018</a></li>
                        <li><a href="_Minutes/2-12-2018_Minutes.pdf" target="_blank">2-12-2018</a></li>
                        <li><a href="_Minutes/1-8-2018-Minutes.pdf" target="_blank">1-8-2018</a></li>
                    </ul>
                </div>
            </div>

            <div class="floatLeft leftMargin1em">
                <p class="centerText">2017</p>
                <div class="autoMarginLeftRight backYellow maroonBorder showShadow" style="height:20em;margin-top:-1em;">
                    <ul class="minutesUL">
                        <li><a href="_Minutes/12-11-2017_Minutes.pdf" target="_blank">12-11-2017</a></li>
                        <li><a href="_Minutes/11-13-2017_Minutes.pdf" target="_blank">11-13-2017</a></li>
                        <li><a href="_Minutes/10-6-2017_Minutes.pdf" target="_blank">10-6-2017</a></li>
                        <li><a href="_Minutes/8-14-2017_Miniutes.pdf" target="_blank">8-14-2017</a></li>
                        <li><a href="_Minutes/7-10-2017_Minutes.pdf" target="_blank">7-10-2017</a></li>
                        <li><a href="_Minutes/6-12-2017_Minutes.pdf" target="_blank">6-12-2017</a></li>
                        <li><a href="_Minutes/5-8-2017_Minutes.pdf" target="_blank">5-8-2017</a></li>
                        <li><a href="_Minutes/4-10-2017_Minutes.pdf" target="_blank">4-10-2017</a></li>
                        <li><a href="_Minutes/3-13-2017_Minutes.pdf" target="_blank">3-13-2017</a></li>
                        <li><a href="_Minutes/2-13-2017_Minutes.pdf" target="_blank">2-13-2017</a></li>
                        <li><a href="_Minutes/1-9-2017_Minutes.pdf" target="_blank">1-9-2017</a></li>
                    </ul>
                </div>
            </div>

            <div class="clear"></div>
 


            <div class="floatLeft leftMargin1em" style="margin-top:-3em;">
                <p class="pTitle centerText">2016</p>
                <div class="autoMarginLeftRight backYellow maroonBorder showShadow" style="height:20em;20em;margin-top:-1em;">
                    <ul class="minutesUL">
                        <li><a href="_Minutes/12-12-2016_minutes.pdf" target="_blank">12-12-2016</a></li>
                        <li><a href="_Minutes/11-14-2016_Minutes.pdf" target="_blank">11-14-2016</a></li>
                        <li><a href="_Minutes/10-11-2016_Minutes.pdf" target="_blank">10-11-2016</a></li>
                        <li><a href="_Minutes/9-9-2016_Minutes.pdf" target="_blank">9-9-2016</a></li>
                        <li><a href="_Minutes/8-8-2016_Minutes.pdf" target="_blank">8-8-2016</a></li>
                        <li><a href="_Minutes/7-11-2016_Minutes.pdf" target="_blank">7-11-2016</a></li>
                        <li><a href="_Minutes/6-13-2016_Minutes.pdf" target="_blank">6-13-2016</a></li>
                        <li><a href="_Minutes/5-9-2016_Minutes.pdf" target="_blank">5-9-2016</a></li>
                        <li><a href="_Minutes/4-11-2016_Minutes.pdf" target="_blank">4-11-2016</a></li>
                        <li><a href="_Minutes/3-14-2016_Minutes.pdf" target="_blank">3-14-2016</a></li>
                        <li><a href="_Minutes/2-8-2016_Minutes.pdf" target="_blank">2-8-2016</a></li>
                        <li><a href="_Minutes/1-11-2016_Minutes.pdf" target="_blank">1-11-2016</a></li>
                    </ul>
                </div>

                <div class="clear"></div>

            </div>
        </article>

        <article id="coloReunionArt" class="myArts noDisplay">
            <p class="pTitle centerText">2019 AFTAC Alumni Worldwide Reunion Update<br />a/o February 2019</p> 

            <p class="width95 autoMarginLeftRight maroonBorder showShadow">
                This reunion is sponsored by the Colorado AFTAC Alumni Association and is taking place at the Denver-
                Aurora DoubleTree Hotel by Hilton located at 13696 East Iliff Place, Aurora, Colorado 80014. The reunion
                is open to all current and former members, family members and guests of AFTAC, its predecessor
                organizations, subordinate units and associated units. A block of rooms has been reserved for the nights
                of 13, 14, & 15 June 2019 at a special rate of $119.00 (plus tax) per night and includes a full breakfast
                buffet (limit two per room). This special room rate is available using group code AFA and will be available
                until 24 May 2019 or until the group block is sold out, whichever comes first. Additional room nights
                for check-in beginning on 10 June and check-out as late as 19 June may be booked at the same rate on a
                space available basis. Our room block consists of the standard 1-King Bed, a few of the 1-King Bed Larger
                Mobility Access with Tub, and some 2-Queen Bed rooms which may be booked at the AFTAC rate on a
                space available basis. If you have any problems booking rooms using our special rate group code AFA
                please call the hotel Sales Coordinator, Tina Le, at 303-337-2800 ext. 157 or Direct 303-614-0788. We
                very strongly recommend making reservations early so we can request increases to the room block before
                additional rooms become unavailable. Booking a reservation is a simple process using the AFTAC Alumni
                Web Page provided by the DoubleTree when available, the public DoubleTree website, or telephone:
            </p>
            <div class="width95 topMargin2em autoMarginLeftRight padding5 maroonText maroonBorder showShadow">
                <p class="centerText">
                    www.doubletree3.hilton.com <strong>(Enter Group Code AFA)</strong><br/>
                    or call the Denver-Aurora DoubleTree desk at 303-337-2800
                </p>
            </div>
            <p class="width95 topMargin2em autoMarginLeftRight padding5 maroonText maroonBorder showShadow">
                There will be a golf tournament (cost is $40 each) on Friday morning, 14 June, and a charter bus trip to
                Black Hawk on Saturday morning, 15 June, spending up to four hours at the casinos. The cost for the
                charter bus trip is $25 each and requires a minimum of 50 people with a maximum of 56. Also check out
                www.wingsmuseum.org and www.forneymuseum.org for visits. The informal meet and greet icebreaker
                with Hors D’Oeuvres and cocktails (cash bar), along with briefings by local AFTAC unit personnel, is Friday
                evening. The formal dinner banquet and ceremony is Saturday evening, 15 June, along with special guest
                speakers. Our hospitality suite in the hotel will be open starting at noon on Thursday, 13 June. It will be
                closed during the Friday icebreaker and Saturday dinner. An informal Sunday morning farewell breakfast
                at the hotel may also be added if there is sufficient interest. Again, please make your room reservations
                early because June is a very popular time for visitors in Colorado.
                <br /><br />
                <strong>NOTE: All existing alumni reservations previously made using the Group Rate Code AFT will be
                updated to AFA by the hotel and the assigned reservation confirmation numbers remain the same.</strong>
                <br /><br />
                Click <a href="\_PDFs\2019 Reunion Registration Form.pdf" target="_blank">here</a> to get a printable registration form. If you have
                any questions or need more info, send an email to: 
                <a href="MailTo:President@aftacco.org">President</a> or <a href="MailTo:Treasurer@aftacco.org">Treasurer</a>
            </p>

            <p class="pTitle centerText">2019 Reunion Roster</p>

            <div class="floatLeft width45">
                <asp:GridView ID="gvReunion1" Font-Bold="true" CssClass="autoMarginLeftRight redBorder showShadow" runat="server" BackColor="#FFF29D" ForeColor="Yellow" HeaderStyle-ForeColor="Yellow" HeaderStyle-BackColor="#00CCFF"></asp:GridView>
            </div>

            <div class="floatLeft width45 leftMargin1em">
                <asp:GridView ID="gvReunion2" Font-Bold="true" CssClass="autoMarginLeftRight redBorder showShadow" runat="server" BackColor="#FFF29D" ForeColor="Yellow" HeaderStyle-ForeColor="Yellow" HeaderStyle-BackColor="#00CCFF"></asp:GridView>
            </div>

            <div class="clear"></div>

            <asp:Label ID="lblAttending" runat="server" CssClass="centerText" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" Text="Number Attending: "></asp:Label>

            <p class="centerText">If you have any questions, please email <a href="MailTo:Treasurer@aftacco.org">Bill Schmied</a></p>

        </article>

        <article id="triCareArt" class="myArts noDisplay">
            <p class="pTitle centerText">Federal TriCare Dental and Vision Plans Changing</p>

            <p>
                As many of you might know, those of you that have the Tricare Delta Dental coverage, it will terminate on December 31st of this year. We have provided our website readers with four notifications and this will be the final one. 
                <br /><br />
                If you do not respond to the new program, you will be AUTOMATICALLY DROPPED from the program until the next open enrollment at the end of 2019.  
                <br /><br />
                A couple things I will note. Be sure to read about how some of the plans that are offered, will require that you be enrolled for up to a year before certain procedures will be covered, even if you presently have a plan with them. Also, you might want to check with your dentist office to make sure they are enrolled in the plan you might select.
            </p>
            <div class="clear"></div>
            <div class="width80 autoMarginLeftRight padding5 maroonBorder showShadow">
                <p class="redText width95">
                    Here are the pertinent internet links:<br /><br />

                    <a href="https://www.military.com/militaryadvantage/2018/07/26/6-things-know-about-new-military-retiree-dental-coverage.html" target="_blank">6 Things to Know About New Military Retiree Dental Coverage</a>
                    <br /><br />
                    <a href="https://tricare.benefeds.com/InfoPortal/" target="_blank">Tricare Benefits InfoPortal</a>
                </p>
            </div>

            <div class="width80 autoMarginLeftRight topMargin2em padding5 maroonBorder showShadow">
                <p class="redText width90">
                    Here are telephone numbers that might also provide assistance:<br /><br />

                    1-877-888-FEDS (1-877-888-3337),<br />TTY number 1-877-889-5680 to enroll or change your enrollment
                </p>
            </div>

            <div class="clear"></div>
            <p class="pTitle">Regards, Your Alumni Website guys</p>
        </article>

        <article id="awardsArt" class="myArts noDisplay">
            <p class="pTitle centerText">Awards and Wall of Honor Presentations</p>

            <img src="_Images/Award2.jpg" alt="Award2.jpg" class="width15 autoMarginLeftRight maroonBorder" />

            <p>
                "Two exciting annual events are in the planning stages. AFTAC will have it's Annual Awards and Wall of Honor Presentation in the near future. Watch the Hot Topics and the Calendar of Events for updates." 
            </p>
        </article>

        <article id="excellenceArt" class="myArts noDisplay">
            <p class="pTitle centerText">
                AFTAC Commanders Message on the Organizational Excellence Award         
            </p>
            <p>
                It is an honor to recognize the Air Force Technical Applications Center's recent achievement of the Air Force Organizational Excellence Award from 1 Jun 15 - 31 May 17.  
                <br /><br />
                Over the past two years, AFTAC has done a tremendous job maintaining mission focus and supporting the fight around the globe. National Agencies, Combatant Commands, and Staffs constantly rely on our hard work and expertise to enforce our national deterrence strategy and shape our national policies. As Commander, I have reiterated many times that AFTAC's actions are constantly being noticed by those outside this building - today is no different. 
                <br /><br />                
                Congratulations AFTAC, on achieving another Air Force Organizational Excellence Award! We were 1 of 10 organizations within Air Combat Command chosen to receive this honor, and it is no doubt due solely to our professional workforce's commitment to the mission and dedication in service to our Nation. 
            </p>
        </article>

        <article id="ladiesLunchArt" class="myArts noDisplay">
            <p class="pTitle centerText">
                AFTAC Ladies Christmas Luncheon<br />
                By Judy Henderson
            </p>
            <p>

                <img alt="_Photos/LadiesLunch/LL1.jpg" class="floatLeft width25 thinMaroonBorder rightMarginHalfem" src="_Photos/LadiesLunch/LL1.jpg" />
                Following a long tradition (which started when AFTAC was located in Virginia) of having an AFTAC Ladies Christmas Luncheon, a handful of AFTAC ladies (active and retired) gathered at Beef O’Brady’s in Satellite Beach, FL, on 6 December.  
                <br /><br />
                As usual, there was a lot of chatter among the attendees to catch up on news of what everyone is doing these days and to see pictures of a new grandbaby and to talk about everyone’s family and health.  
                <br /><br />
                <img alt="_Photos/LadiesLunch/LL2.jpg" class="floatLeft width25 thinMaroonBorder rightMarginHalfem" src="_Photos/LadiesLunch/LL2.jpg" />
                Part of our tradition for the last several years is to bring a donation for TOYS FOR TOTS, and we had a great collection to donate to the cause this year.  
                <br /><br />
                Ladies, if you’re interested in attending next year, watch the AFTAC Alumni Web site or Email Judy Henderson at 
                <a href="MailTo:jem2415@earthlink.net">jem2415@earthlink.net</a> to be placed on the list of those who receive a direct invitation.
            </p>
        </article>

        <article id="diningOut" class="myArts noDisplay">
            <p class="pTitle centerText">
                70th Anniversary of AFTAC<br />
                By Judy (Milam) Henderson,<br />AFTAC Alumni (1965 to 1999)
            </p>

            <div class="width70 autoMarginLeftRight">
                <img id="DOpic" alt="DO1.jpg" class="doPic autoMarginLeftRight showShadow maroonBorder block" style="height:30em;" src="_Photos/Dining/DO1.jpg" />
                
                <div class="clear"></div>

                <input id="doButPrev" class="myBut floatLeft topMargin1em leftMargin2em width20" type="button" value=" Previous " />
                <input id="doButNext" class="myBut floatLeft topMargin1em leftMargin2em width20" type="button" value=" Next " />            
                <input id="doButSS" class="myBut floatLeft topMargin1em leftMargin2em" type="button" value=" Start Slide Show " />
            </div>

            <div class="clear"></div>
            <hr class="myHR" />
            <div> 
                <p>
                    It seemed like a strange place to hold the 70th AFTAC Anniversary Dining Out, but nothing about this anniversary was routine. The location of the Dining Out seemed slightly strange – in an airplane hangar at the Warbirds Aviation Museum in Titusville, FL – but this proved to be an ideal location, with a static display of airplanes related to the AFTAC mission. When you work for AFTAC, you expect things to be planned and carried out with the utmost efficiency, but it seemed like this might not be the case with the Dining Out, through no fault of the organizers. Originally scheduled to be held in September, Hurricane Irma left many Brevard County FL residents without power for several days to more than a week, resulting in the delay of the activities until the third week of October. The Honorable James R. Clapper was scheduled to be the speaker, but he had to cancel at the last minute for personal reasons, so the AFTAC Historian, Dr. Mike Young, stepped in and gave a briefing about the 70-year history. With all the setbacks, and the need to plan the Dining Out twice because of Hurricane Irma, the venue was appropriate, the evening was entertaining, the food was wonderful, and the speaker was knowledgeable and interesting. Kudos go to the 70th Anniversary committee.
                    <br /><br />
                    The Dining Out began with a wonderful selection of hors d’oeuvres served to the guests as they viewed the displays and listened to the music. When the dinner chimes sounded, attendees proceeded to their seats and the formal program began, followed by the delicious dinner, and then the speaker’s presentation, interspersed by visits to the Grog Bowl.
                    <br /><br />
                    If you’ve never attended a Dining Out, you may not know that the Grog Bowl is a focal point of the evening. Many members were required to visit the Grog Bowl to atone for infractions of the rules, including the Commander, Col Steven Gorski and his wife, Trisha. The Grog bowl is filled with a variety of libations that one would not normally mix together and drink. Fortunately, there were several designated drivers, in case someone made too many trips to the Grog Bowl.
                    <br /><br />
                    Toward the end of the program, the cake cutting ceremony took place using sabers before the “Closing of the Mess,” at which time the music and dancing began. It was a wonderful evening of military regimen mixed with laughter and an opportunity to get to know some of the active-duty members.
                </p>
            </div>
        </article>

        <article id="last70yearArt" class="myArts noDisplay">
            <p class="pTitle topMargin1em centerText underLine">AFTAC's Last 70 Years</p>

            <img id="hisPic" alt="DO1.png" src="_Photos/AftacHistory/DO1.png" class="autoMarginLeftRight block" style="height:35em;" />

            <div class="width60 autoMarginLeftRight">
                <input id="hisButPrevious" class="myBut floatLeft" type="button" value=" Previous " />
                <input id="hisButNext" class="myBut floatLeft leftMargin1em width25" type="button" value=" Next " />
                <input id="hisButSS" class="myBut floatLeft leftMargin1em" type="button" value=" Start Slide Show " />
                <div class="clear"></div>
            </div>
        </article>

        <article id="modlog" class="myArts noDisplay">
            <p class="pTitle centerText underLine">Modification Log</p>
            <asp:Button ID="modLogReturn" CssClass="autoMarginLeftRight smallBut block bottomMargin1em fontSize1em" runat="server" Text=" Return To Menu " OnClick="modLogReturn_Click" />
            <asp:GridView ID="gvModLog" CssClass="autoMarginLeftRight topMargin1em" Font-Bold="true" runat="server"></asp:GridView>
        </article>

        <article id="eallArt" class="myArts noDisplay">
            <p class="pTitle centerText underLine">Eall Address Report</p>
            <asp:Button ID="butEallReturn" CssClass="autoMarginLeftRight smallBut block bottomMargin1em fontSize1em" runat="server" Text=" Return To Menu " OnClick="modLogReturn_Click" />
            <asp:TextBox ID="txtEalls" Width="80%" Height="30em" ForeColor="Maroon" Font-Bold="true" TextMode="MultiLine" CssClass="autoMarginLeftRight bottomMargin2em maroonBorder showShadow padding5" runat="server" Wrap="True"></asp:TextBox>
        </article>

        <article id="localeallArt" class="myArts noDisplay">
            <p class="pTitle centerText underLine">Local Eall Address Report</p>
            <asp:Button ID="butLocalEallReturn" CssClass="autoMarginLeftRight smallBut block bottomMargin1em fontSize1em" runat="server" Text=" Return To Menu " OnClick="modLogReturn_Click" />
            <asp:TextBox ID="txtLocalEalls" Width="80%" Height="30em" ForeColor="Maroon" Font-Bold="true" TextMode="MultiLine" CssClass="autoMarginLeftRight bottomMargin2em maroonBorder showShadow padding5" runat="server" Wrap="True"></asp:TextBox>
<%--            <asp:Button ID="butlocalCopy" CssClass="autoMarginLeftRight topMargin1em smallBut block bottomMargin1em fontSize1em" runat="server" Text=" Copy Addresses to Clip Board " OnClick="butlocalCopy_Click" />--%>
        </article>

        <article id="allMailArt" class="myArts noDisplay">
            <p class="pTitle centerText underLine">Eall Address Report</p>
            <asp:Button ID="Button1" CssClass="autoMarginLeftRight smallBut block bottomMargin1em fontSize1em" runat="server" Text=" Return To Menu " OnClick="modLogReturn_Click" />
            <div class="floatLeft leftMargin2em width40" >
                <p class="pTitle centerText">Good Emails</p>
                <asp:TextBox ID="txtGood" Height="30em" ForeColor="Maroon" Font-Bold="true" TextMode="MultiLine" CssClass="autoMarginLeftRight bottomMargin2em maroonBorder showShadow padding5" Width="90%" runat="server" Wrap="True"></asp:TextBox>
            </div>

            <div class="floatLeft leftMargin2em width40" >
                <p class="pTitle centerText">Bad Emails</p>
                <asp:TextBox ID="txtBad" Height="30em" ForeColor="Maroon" Font-Bold="true" TextMode="MultiLine" CssClass="autoMarginLeftRight bottomMargin2em maroonBorder showShadow padding5" Width="90%" runat="server"></asp:TextBox>
            </div>

            <div class="clear"></div>
        </article>

        <article id="wunderArt" class="myArts noDisplay">
            <p class="pTitle centerText underLine">Wunderground Weather</p>
            <p>
                This site is produced by The Weather Company, and IBM Business and, in the past, has proven quite accurate for path projection.  It is NOT provided on this website for use as a planning tool.  Information from your local city emergency center should be used for planning purposes.
            </p>

            <div class="width75 autoMarginLeftRight maroonText">
                <ol class="wunderDiv">
                    <li>Clicking on the link below will open a page with a map and below that a series of access to information on current storms.</li>
                    <li>Scrolling down you will find the names of Tropical Depressions and active Hurricanes.</li>
                    <li>Below each listing is a tab, “Storm Details”.</li>	
                    <li>By clicking on that, the particular storm will be detailed with a large map showing it’s current position and a projected path.</li>
                    <li>Below that map are smaller maps that will show the indicated data.  For example, clicking on “Computer Models”, the larger map will change depicting projected path as determined by weather computers.</li>
                    <li>Clicking on the other small maps will change the larger map to show that indicated data.</li>
                </ol>
            </div>

            <p>
                There are other options on this site that can be explored for additional information on world-wide storms and weather in your area.  Don’t hesitate to explore this site.

            </p>

            <div>
                <a class="underLine centerText" href="https://www.wunderground.com/hurricane" target="_blank" style="font-size:2em;">Wunderground Weather</a>
            </div>
        </article>

        <article id="nhcArt" class="myArts noDisplay">
            <p class="pTitle centerText underLine">National Hurricane Center</p>
            <p>
                This site is produced by the National Hurricane Center and, in the past, has proven quite accurate for path projection.  It is NOT provided on this website for use as a planning tool.  Information from your local city emergency center should be used for planning purposes
                <br /><br />
                Instructions for use:
            </p>

            <div class="width75 autoMarginLeftRight maroonText">
                <ol class="nhcDiv">
                    <li>When you click on the link below, you will see a map of the Eastern United States and a portion of the Atlantic that stretches from North Africa, where most hurricanes originate, Westward to the Atlantic coast of the U.S. .</li>
                    <li>If hurricanes are active, it will show icons of their present location. These icons are explained at the bottom of the map</li>
                    <li>Projected paths are predicted for storms ranging from a “Tropical Depression” to a “Post Tropical Cyclone”.</li>	
                    <li>Click on any icon within that range and a second map will be loaded showing the projected path.</li>
                    <li>You will also see a selection of small maps at the top of this page which will provide you other information on that storm.</li>
                    <li>Selecting the page-back option on your computer will bring you back to the first page where you can view another storm if there is one..</li>
                </ol>
            </div>

            <p>
                There are other options on this site that can be explored for additional information on world-wide storms and weather in your area.  Don’t hesitate to explore this site.

            </p>

            <div>
                <a class="underLine centerText" href="http://www.nhc.noaa.gov/?atlc" target="_blank" style="font-size:2em;">National Hurricane Center</a>
            </div>
        </article>

        <article id="wccelectionArt" class="myArts noDisplay">
            <p class="pTitle centerText topMargin1em underLine">West Coast Chapter Fall Social & Election Of Officers</p>

            <div class="width80 autoMarginLeftRight maroonBorder smallShadow">
                <p class="centerText ">
                    West Coast Chapter Fall Social & Election Of Officers<br />
                    Sam's Hof Brau<br />
                    Sunday, 12 Nov 2017 11:30am-2:30pm
                </p>

                <p class="centerText">
                    Note: Sign-up is required due to limited seating! (40)<br />
                    Deadline for receipt of your sign-up information/form is 11/5/2017!!<br /> 
                    <a href="_PDFs/FallSocialSignupForm.pdf" target="_blank">Click here for Details & Sign-up Form</a>
                </p>
            </div>
        </article>

        <article id="wallhonorArt" class="myArts noDisplay">
            <p class="pTitle centerText topMargin1em underLine">Wall of Honor Selection Process begins in August</p>
            <p>
                On 16 August, the AFTAC Heritage Committee will begin the five-month process of selecting the next inductees into the AFTAC Wall of Honor. Each year, the committee selects three exceptional AFTAC veterans for this honor. The committee members, delegates from each of the directorates, work within their respective organizations to nominate candidates. Each directorate may nominate three people. 
                <br /><br />
                The Heritage Committee, chaired by the vice commander, reviews the nomination packets throughout the fall time frame and votes in early December. 
                <br /><br />
                After the commander approves the results, AFTAC holds a formal ceremony in late January or early February. Bob Wiley represents the AFTAC Alumni Association on the committee. 
                <br /><br />
                Please contact Bob at <a href="MailTo:rwiley1@cfl.rr.com">rwiley1@cfl.rr.com</a> with any questions you may have.
            </p>
        </article>

        <article id="aftacboosterArt" class="myArts noDisplay">
            <p class="pTitle centerText">AFTAC Booster Club News</p>

            <p>
                1. Do you remember the old AFTAC building that was the icon of PAFB since mid-1950s? It stood for nearly 70 years before being demolished in 2015. Lucky for us we kept some momentos. The name of AFTAC can never be demolished, literally. AFTAC Booster Club currently has 28 of the original 35 letters spelling out “Air Force Technical Applications Center”. These metal letters braved many storms and tribulations and are now available to purchase. Proceeds from the fundraiser will be used to benefit the AFTAC airmen and their families serving today. Visit the AFTAC Alumni Website for more information!” (I didn’t get the photos of the letters yet but I confirmed that we have 28 out of 35 letters)
                <br /><br />
                <b>NOTE: </b>Other than the paragraph above, this page is under construction.
                </p>
        </article>

        <article id="oconnerArt" class="myArts noDisplay">
            <p class="pTitle centerText">A Piece of History - by Jack O'Conner</p>

            <p>
                <img class="floatLeft width25 thinMaroonBorder rightMarginHalfem" src="_Photos/Aircraft/c-47.png" />
                It was September 1955 and I had just completed our roughly three months of training in Tail # 263---our beloved C-47 “Goony Bird”--- and WB-29’s, which had been modified to conduct training and operations for our specialty. I had just been certified to operate solo as a Special Equipment Operator. I was stationed at my first permanent duty assignment: Western Field Office of the 1009th Special Weapons Squadron, McClellan AFB, CA. WB-29’s were also stationed at McClellan AFB, but as the 57th Air Weather Squadron. The SEO would be the eleventh man on the crew. We had no crew position available, so we sat on the floor in the rear compartment with our back against the bomb bay bulkhead between the two scanners. After takeoff, the SEO would take over the right scanner position where our equipment had been pre-positioned and tied down. Looking back upon it, we were the only thing not tied down. We didn’t know any better and we had a job to do on that aircraft, so we didn’t worry about it. 
                <br /><br />
                <img class="floatLeft width25 thinMaroonBorder rightMarginHalfem" src="_Photos/Aircraft/B-29.png" />
                In the WB-29’s, we only had a “honey bucket” which was situated directly behind the left scanner position. All human excretions went into that bucket. You can imagine, though you may not want to, just how bad that thing was smelling after we all had been drinking coffee for awhile in briefings and preflight duties without being able to avail ourselves of the scant facilities in the hangar. The beloved honey bucket was used soon and often. More later about that! It is not germane to this story. Directly behind that was the place where we put the box containing all of our lunches---two per crewmember. Twenty two box lunches. We had no heated lunches back in those days. We didn’t have a means to heat them. 
                <br /><br />
                Back SACTO: I was lying there next to my new bride dreaming of a wonderful something or other. We were startled out of our slumber with the shrill ring of our telephone. 
                <br /><br />
                “This is Capt. Copeland. Airman O’Connor, a staff car will be in front of your apartment in 30 minutes to pick you up for transport to San Francisco Int’l Airport. I can’t tell you where you are going from there, but be packed and ready for 30 days. We will keep your wife informed on your progress. Others are going with you.” 
                <br /><br />
                And, thanks to the originator of our concern and the time difference, our alert always seemed to come at about the same time: 3:00AM, PST. The big problem with this is that we never knew what day it might happen or who and how many SEO’s would be called to go. It varied with each occasion, so we always had a bag packed ready to go. 
                <br /><br />
                So started my first TDY. We always had a First Class Ticket in our pocket because there was almost always room back there, even if the rest of the plane was sold out. (The Pan American Clipper had a great lounge down a circular stairway where, if we were first to get there, we could stretch out on the sofas. There was no bar service at 5:00 AM). We always just had to get to our destination ASAP. Positioning was of prime importance. Our own Weather Man from 1009th SWS HQ at Langley AFB was on his way to provide expertise in where we should be flying. We had to hit the ground running and be airborne in a WB-29 within 12 hours. Most times one of us would be airborne within three hours of our arrival at Eielson AFB, AK, if we had a good idea of where we needed to be. 
                <br /><br />
                There was no such thing as “Crew Duty Time”. We flew as needed. We learned real fast, that this was the routine method of initiating a TDY for anyone in the Cloud Chasing Business ((or: our type of business)). Capt Buck Copeland and A/1c Guy Davis flew alternating days for over a month. On their “day off”, they manned the desk---monitoring and reporting up the line what was happening in the aircraft. Obviously, neither had any crew rest. They both were burned out by the time the operation concluded. 
                <br /><br />
                That was the beginning of six great years with the 1009th SWS and flying as an enlisted Aircrew Member. Initially, we were considered additional Non-Crew Member, which paid us $50.00 per month for “hazardous duty pay”. Most of us just wanted to be able to wear enlisted crewmember wings, but a raise in pay to $55.00 per month would be a welcome increase in our meager pay---as would the designation of flight pay. It was minimal compensation for being separated from wife and baby girl for sudden, and frequent separations from the family. It was especially hard on my wife who did not know what we were doing let alone where we were going or why. 
                <br /><br />
                The Aircraft Commanders (AC’s) always were a little curious if we hadn’t flown with him before, because the flying time we logged was “z” time, listed as ‘other”. That was an unusual crewmember designation. He stayed suspicious until we found what we were looking for. Then, I think, he understood. 
                <br /><br />
                One of the most amazing aspects to me, and probably most of us, was the ability of an A/2C to tell a Lt Col where to take his modified bomber and tell him when to turn and when to orbit. It was a little scary the first few times, but they had been briefed and I only had one flight when the Aircraft Commander did not follow my instructions and what flight profile I wanted. 
                <br /><br />
                <img class="floatLeft width25 thinMaroonBorder rightMarginHalfem" src="_Photos/Aircraft/b-36.jpg" />
                B-36 It was during a roughly twenty seven hour RB-36 mission and we were headed back to Travis AFB without any success. Exhausted, I thought I’d take a nap, and though we had 2 engines shut down, we still had 8 engines working so I told the AC to maintain 35,000 ft as long as possible and then make a steep approach to Travis AFB. I went to sleep which was understandable (In addition, RB-36 pre-flight took about 3 hours, so I had been at or in the plane for over 27 hours already). The Aircraft Commander decided to make a long shallow approach to Travis so we lost about 3 hours off of the high altitude profile I had requested. During my “nap time”, I had the radio operator monitor my equipment in the event anything happened. 
                <br /><br />
                Upon landing, I gave a long sigh of relief, knowing crew rest and a loving wife was awaiting me at McClellan. Instead, Immediately after engine shutdown, I had a big surprise awaiting my arrival. As I disembarked, I was surprised, shaken and not a little frightened to see our Field Office Commander, Col Griffin, waiting for me along with his secretary. Under the wing of the giant ten engine RB-36, at an improvised desk and chair, the secretary typed as I explained what happened. Two days later, the Aircraft Commander was a Co-Pilot. This was in General Curtis Lemay’s Strategic Air Command. It was amazing how much clout a little airman had in this organization. Of course, this was when the Squadron had a two star General for a commander and we had the number one priority in the Air Force. There were four Full Colonels just in the Western Field Office at McClellan AFB, CA. 
                <br /><br />
                Though we had nothing to show for our long flight but flight time logged, it was still a successful mission. Just like hunting or fishing, there would be better results on the next time out!            </p>
        </article>

        <article id="annualmeetingArt" class="myArts noDisplay">
            <p class="pTitle centerText">
                Elections Meeting
            </p>

            <p class="pTitle centerText maroonBorder smallShadow">
                Elections Meeting Location: Manatee Cove Golf Course (MCGC),<br />
                (Putter Room). Meeting: 1130 - 1230<br />
                Pay-as-You-Go Lunch available from Fairways Snack Bar, before meeting.<br />
                <span class="maroonText italic" style="font-size:.8em;">For your early dining pleasure, lunch, may be ordered, at 1030.</span> 

            </p>
        </article>

<%--        <article id="2018SeptemberSocialArt" class="myArts noDisplay">
            <p class="pTitle centerText">2018 AFTACAA September Social</p>
            <p class="pTitle centerText maroonBorder smallShadow" style="font-size: 25px">
                <span style="font-weight: bold">** Friday, 7 September</span><br/>
                <span style="color: green">2018 AFTACAA Sociable September XXI/Annual Off-Site/Board/
                    FY19 Elections Luncheon/Meeting/AOY Board and Selection Meeting</span><br/>
                <span style="font-weight: bold">(AOY Board follows. Select, members only.)</span><br/>
                <span style="font-weight: bold">Location:</span> Manatee Cove Golf Course (MCGC), (Putter Room), PAFB.  <span style="font-weight: bold">Meeting:</span> 1130 - 1230.<br/>
                <span style="font-weight: bold">Pay-as-You-Go Lunch is available, <span style="text-decoration: underline">before meeting</span>, from Fairways Snack Bar.</span><br/>
                <span style="color: red; text-decoration: underline">For your early dining pleasure, lunch may be ordered at 1030.</span><br/>
            </p>
        </article>--%>
        
        <article id="CoAlumniBreakfastArt" class="myArts noDisplay">
            <p class="pTitle centerText">Colorado Alumni Breakfast</p>
            <p class="pTitle centerText maroonBorder smallShadow" style="font-size: 25px">
                <span style="font-weight: bold">24 February 2018</span><br/>
                <span style="color: green">AACO Alumni Breakfast</span><br/>
                We would like to welcome you to our Alumni breakfast on 24 February 2018 at 0900.<br/>
                Alumni, active duty, family members, and friends are most welcome to attend.<br/>
                Aurora Hills Golf Course - Tin Cup Bar & Grill<br/>
                50 S. Peoria St. Aurora, CO 80012<br/>
                The cost is $15 per person, collected at the breakfast. Children are half-price.<br/>
                Menu is the Tin Cup buffet, with eggs, potatoes, meats, biscuits & gravy, toast, juice and coffee.<br/>
                <span style="color: red">Please RSVP by 17 February (you can reply all to this message). </span><br/>
                We hope to see you there!<br/>

                <span style="font-weight: bold">Colorado Alumni POC:</span> Bryce Dunn, <a href="mailto:EchoesPublisher@aftacco.org?subject=AACO%20Alumni%20Breakfast">EchoesPublisher@aftacco.org</a><br/>
            </p>
        </article>

        <article id="heritageArt" class="myArts noDisplay">
            <p class="pTitle">
                History and Heritage: Similar, yet different Commentary 
                <br />
                <span class="italic maroonText" style="font-size:.75em;">by Chief Master Sgt. Michael Joseph, AFTAC Command Chief</span> 
            </p>

            <p style="margin-top:-1em;">
                I would venture to guess that many people use the word “history” and “heritage” interchangeably.  I have to admit, I used to think they were synonymous and never gave much thought to the idea that not only are they two separate and distinct words, they are also two separate and distinct concepts. 
                <br /><br />
                Let me explain.  The textbook definition of the word history is:  the study of past events, particularly in human affairs.  The definition of the word heritage is:  a legacy, tradition or inheritance; something possessed as a result of one’s situation.  Different words with different meanings, but inextricably intertwined. 
                <br /><br />
                AFTAC’s history is a robust one, filled with ‘firsts’ for our nation from our inception in 1947 until present day.  The center’s history is a chronological account of what AFTAC has accomplished for the past 70 years and the compilation of events that define us as an Air Force organization. 
                <br /><br />
                Heritage, on the other hand, has a bit of emotion tied to it.  It’s about identity and a sense of belonging.  Heritage is the “war story” about the people – the faces of AFTAC. It’s the more intangible of the two words, since heritage deals more with the human landscape versus historic relics and artifacts. 
                <br /><br />
                Our proud history is reflected in our heritage, and much of that can be attributed to the AFTAC Alumni.  Through your tireless efforts, the Alumni Association has gone to great lengths to preserve our past and keep our customs and traditions alive. I want to continue to foster this relationship between the AFTAC Alumni and our current active military and civilian workforce.  
                <br /><br />
                History is our past; heritage is a reminder of our past.  Or as I like to say, history makes us smarter; heritage makes us prouder.         
            </p>
        </article>

        <article id="sbArt" class="myArts noDisplay">
            <p class="pTitle centerText underLine">SnowBall 2018<br />Submitted By Gene and Dee Melchior</p>

            <h1 id="h1SBSlideShow" class="bold maroonText underLine" style="cursor:pointer;"> Show Slide Show </h1>

            <div id="divSBSlideShow" class="maroonBorder smallShadow noDisplay">

                <div class="sbFigs width75 autoMarginLeftRight">
                    <img id="sbPic" alt="sb1.JPG" class="autoMarginLeftRight maroonBorder smallShadow" style="height:25em;" src="_Photos/SnowBall/sb1.JPG" />
                </div>

                <div class="autoMarginLeftRight width50 topMargin1em">
                    <input id="btnsbPrevious" type="button" class="myBut inLine width40" value=" Previous " />
                    <input id="btnsbNext" type="button" class="myBut inLine leftMargin2em width40" value=" Next " />
                </div>

                <input id="btnsbStartShow" type="button" class="myBut autoMarginLeftRight topMargin1em" value=" Start Slide Show " />

                <div class="clear bottomMargin2em"></div>
            </div>

            <section id="mySBArticle" class="sbSects block">
                <p>
                    The annual AFTAC alumni “Snowball” was held on January 20th at the Holiday Inn VieraMelbourne.
                    <br /><br />
                    Our commander, Col. Stephen Gorski, provided an interesting overview of current AFTAC activities.  His updates are always interesting and keep alumni “in touch” with the mission they served.
                    <br /><br />
                    Attendees enjoyed a festive evening renewing old friendships and sharing memories.  The menu for the event, Hunters Chicken Breast or Flat Iron Steak served with a delicious Mushroom-wine sauce, was enjoyed by all.  Key Lime Pie topped off the dinner.
                    <br /><br />
                    The “Mobile Sensors” theme honored AFTAC members currently serving aboard the ships that carry on our world-wide mission.  High lighting the evening was a presentation by DR. Mike Young, our AFTAC  historian.  Mike provided models of the current ships, and answered questions for those who gathered around the displays.  Our thanks to you, Mike! 
                    <br /><br />
                    The end of the evening announced the AFTAC Alumni for 2017.  It was John "Butch" Kemna, from the West Coast Chapter.  Butch was announced at the worldwide reunion in Sacramento held in June 2017.  This was our official announcement to finally welcome him in to the honored ranks.
                    <br /><br />
                    Alumni member, Gene Melchior, (while working as a contractor with Lockheed Martin) provided pictures taken in 1999, while he was aboard the now de-commissioned Cobra Judy ship  “Observation Island”. Gene was gratified that there was so much interest in his photos, posterboard and experiences. 
                    <br /><br />
                    Michelle Ryan and Judy Henderson added centerpieces adorned with nautical figures that were a complement to the ship displays. A hearty thank you, ladies!
                    <br /><br />
                    Our thanks to Sean Ryan for his planning and great efforts in making this all happen. Also, thanks to all those that volunteered to help with the various tasks needed to provide such a great evening.                
                    <br /><br />
                    We look forward to next years “Snowball 2019” when alumni gather again! 
                </p>
            </section>
        </article>

        <article id="sb2Art" class="myArts noDisplay">
            <p class="pTitle centerText bold">2018 AFTAC Alumni Association (AFTACAA) Snowball XX</p>
            <p class="centerText">
                Article – Sean Ryan <br />
                Photos – Michelle Ryan and Judy Henderson
            </p>
            <hr class="myHR" />
            <h1 id="h1SB2SlideShow" class="bold maroonText underLine" style="cursor:pointer;"> Show Slide Show </h1>

            <div id="divSB2SlideShow" class="maroonBorder smallShadow noDisplay">

                <div class="sb2Figs width75 autoMarginLeftRight">
                    <img id="sb2Pic" alt="sb2-1.JPG" class="autoMarginLeftRight maroonBorder smallShadow" style="height:25em;" src="_Photos/SnowBall2/sb2-1.JPG" />
<%--                    <figcaption class="width70 topMargin1em autoMarginLeftRight italic maroonText">Carol Snyder & Kathy & Karley Herschelman</figcaption>--%>
                </div>

                <div class="autoMarginLeftRight width50 topMargin1em">
                    <input id="btnsb2Previous" type="button" class="myBut inLine width40" value=" Previous " />
                    <input id="btnsb2Next" type="button" class="myBut inLine leftMargin2em width40" value=" Next " />
                </div>

                <input id="btnsb2StartShow" type="button" class="myBut autoMarginLeftRight topMargin1em" value=" Start Slide Show " />

                <div class="clear bottomMargin2em"></div>
            </div>

            <p>
                Since 1999, the AFTAC Alumni Association (AFTACAA), Florida Chapter, has ‘thrown a themed event called Snowball' at the start of the new year. We like to entertain this event when our ‘Sage Snowbirds’ are in town. It is a grand way to introduce the newly elected and appointed board members, recognize Alumni and Alumni accomplishments, hold a festive and social get-together followed by a sit-down dinner and wish old friends and Alumni a great start, to a new year. It is also a great time to honor and recognize the Alumni of the Year (AOY) for the previous year. This year's splendid and outstanding event and evening was held at the Holiday Inn Hotel, Melbourne-Viera, Florida, on Saturday, 20 January 2018. 
                It is tradition at the annual Snowball, where we welcome the AFTAC Commander, Vice Commander, Chief Scientist, Director of Staff, Command Chief, Directors, Group and Squadron Commanders, all active-duty military and civilian, and any outlying area commanders, that are in attendance. We also pay special tribute to the spouses and significant others in support of Alumni members at the Snowball. 
                <br /><br />
                The nights festivities kicked off with a Social Hour where guests enjoyed reminiscing about AFTAC and catching up and socializing with old friendships and sharing memories of their time in the unit, around-the-world, or in the headquarters building at Patrick AFB thru the years. The bartender "Ryan", once again, was truly superb in serving great cocktails and beverages throughout the evening. The yearly slide show, organized and built by Bob Wiley with photos by Judy Milam-Henderson of previous Snowball's, Winter Socials, Golf Tournaments, Toilet Bowl and Winddowns, was continually shown. Memories of some good times for the year were shown with photos taken by Bob Wiley and Judy Milam-Henderson, among others that contributed. 
                <br /><br />
                This year’s theme, was "Mobile Sensors", joining previous themes honoring Hawaii, Germany, Florida, Wyoming, Thailand, Australia, Korea, Nebraska and Colorado … locations where AFTAC had or has a presence, among others worldwide. It honored unit members presently serving on, or have served on, the ships that continue to conduct a key aspect of the world-wide AFTAC mission, 24/7. Of special note, Dr. Mike Young, the AFTAC Historian, provided 2 models of the respective ships for display, answered a Q&A with guests questions during the evening, and briefed certain aspects of their respective mission(s). Thank you kindly Dr. Young -- Well done and greatly appreciated! 
                <br /><br />
                A very delicious dinner for the evening was served consisting of Hunter's Chicken Breast w/Mushroom Wine Sauce, Mashed Potatoes and Vegetable Medley, or Flat Iron Steak with Roasted Potatoes, Vegetable Medley and Wine Mushroom Sauce or Portobello Mushroom Napoleon w/Fresh Vegetables and Red Pepper Sauce. Accompaniments included House Salad, Dinner Rolls and Butter, Iced Tea, Water, Coffee, and a delightful and delicious dessert of Key Lime Pie. 
                After a brief break after dinner, the AFTAC Commander, Colonel Steven Gorski, provided an outstanding Power Point slide mission brief and overview of AFTAC's current activities and status. His Status of Command slide show, was truly "spot on" and brought the AFTACAA “in tune and current” with the mission they once served in, and what is on the horizon for AFTAC down the road. 
                <br /><br />
                The evening ended with the announcement of the AFTAC Alumni of the Year for 2017. TSgt(R) John "Butch" Kemna, from the West Coast Chapter in Sacramento, CA was selected. Butch's name was initially announced at the June 2017 Worldwide Reunion in Sacramento. The AFTACAA officially announced his name to welcome him into the honored recipients of the AOY ranks. Florida Chapter Alumni member, Gene Melchior, graciously provided photos and made poster boards of items taken in 1999, while he was aboard, the now decommissioned Cobra Judy ship (“Observation Island”), while he was a contractor aboard the ship. 
                <br /><br />
                Judy Milam-Henderson and Michelle Ryan made centerpieces decorated with nautical figures and "sea like" items, that were an awesome compliment to the ship displays. Thank you Judy and Michelle…It added so much color and "theme diversity" to the guest tables. A special thanks to all Team AFTAC Alumni Members and Spouses that volunteered to help with the various tasks and support required to provide for an awesome evening for all in attendance, once again. We look forward to the 2019 Snowball XXI in January 2019, when the Alumni gather once again, to mingle, socialize, and reminisce of the times we were in and the current AFTAC of today and recognize 2019 AOY.
            </p>
        </article>

        <article id="2015ReunionArt" class="myArts noDisplay">
            <div id="2015ReunionVideo" class="myvids nodisplay">
                <video id="2015Reunion" preload="auto" controls="controls" poster="_images/airshow.png" class="width60 autoMarginLeftRight maroonBorder showShadow">
                    <source src="http://aftacaa.us/_Videos/2015 AFTAC Reunion.mp4" type="video/mp4" />
                    <source src="http://aftacaa.us/_Videos/2015 AFTAC Reunion.ogv" type="video/ogg" />
                    <source src="http://aftacaa.us/_Videos/2015 AFTAC Reunion.webm" type="video/webm" />
                    Sorry, but your browser does not support video
                </video>
            </div>
        </article>

        <article id="2017AirShowArt" class="myArts noDisplay">
            <div id="2017AirShowVideo" class="myvids nodisplay">
                <video id="2017vidAirShow" preload="auto" controls="controls" poster="_images/airshow.png" class="width60 autoMarginLeftRight maroonBorder showShadow">
                    <source src="http://aftacaa.us/_Videos/2017 Melbourne Air Show.mp4" type="video/mp4" />
                    <source src="http://aftacaa.us/_Videos/_Videos/2017 Melbourne Air Show.ogv" type="video/ogg" />
                    <source src="http://aftacaa.us/_Videos/_Videos/2017 Melbourne Air Show.webm" type="video/webm" />
                    Sorry, but your browser does not support video
                </video>
            </div>
        </article>

        <article id="2018AirShowArt" class="myArts noDisplay">
            <div id="2018AirShowVideo" class="myvids nodisplay">
                <video id="2018vidAirShow" preload="auto" controls="controls" poster="_images/airshow.png" class="width60 autoMarginLeftRight maroonBorder showShadow">
                    <source src="http://aftacaa.us/_Videos/2018 Melbourne Air Show.mp4" type="video/mp4" />
                    <source src="http://aftacaa.us/_Videos/_Videos/2018 Melbourne Air Show.ogv" type="video/ogg" />
                    <source src="http://aftacaa.us/_Videos/_Videos/2018 Melbourne Air Show.webm" type="video/webm" />
                    Sorry, but your browser does not support video
                </video>
            </div>
        </article>

        <article id="dedicationArt" class="myArts noDisplay">
            <div id="dedicationVideo" class="myvids nodisplay">
                <video id="vidDed" preload="auto" controls="controls" poster="_images/Building Dedication.png" class="width60 maroonBorder showShadow">
                    <source src="http://aftacaa.us/_Videos/AFTAC Building Dedication.mp4" type="video/mp4" />
                    <source src="http://aftacaa.us/_Videos/AFTAC Building Dedication.ogv" type="video/ogg" />
                    <source src="http://aftacaa.us/_Videos/AFTAC Building Dedication.webm" type="video/webm" />
                    Sorry, but your browser does not support video
                </video>
            </div>
        </article>

        <article id="honorVidArt" class="myArts noDisplay">
            <div id="honorVideo" class="myvids nodisplay">
                <video id="vidHonor" preload="auto" controls="controls" poster="_images/Building Dedication.png" class="width60 maroonBorder showShadow">
                    <source src="http://aftacaa.us/_Videos/Wall of Honor.mp4" type="video/mp4" />
                    <source src="http://aftacaa.us/_Videos/Wall of Honor.ogv" type="video/ogg" />
                    <source src="http://aftacaa.us/_Videos/Wall of Honor.webm" type="video/webm" />
                    Sorry, but your browser does not support video
                </video>
            </div>

        </article>

        <article id="stonehengeArt" class="myArts noDisplay">
            <div id="stonehengeVideo" class="myvids nodisplay">
                <video id="vidstonehenge" preload="auto" controls="controls" poster="_images/Building Dedication.png" class="width60 maroonBorder showShadow">
                    <source src="http://aftacaa.us/_Videos/Stonehenge.mp4" type="video/mp4" />
                    <source src="http://aftacaa.us/_Videos/Stonehenge.ogv" type="video/ogg" />
                    <source src="http://aftacaa.us/_Videos/Stonehenge.webm" type="video/webm" />
                    Sorry, but your browser does not support video
                </video>
            </div>

        </article>

        <article id="SeminarArt" class="myArts noDisplay">
            <div id="SeminarVideo" class="myvids nodisplay">
                <video id="vidSem" preload="auto" controls="controls" poster="_images/Building Dedication.png" class="width60 maroonBorder showShadow">
                    <source src="http://aftacaa.us/_Videos/AFTAC Seminar.mp4" type="video/mp4" />
                    <source src="http://aftacaa.us/_Videos/AFTAC Seminar.ogv" type="video/ogg" />
                    <source src="http://aftacaa.us/_Videos/AFTAC Seminar.webm" type="video/webm" />
                    Sorry, but your browser does not support video
                </video>
            </div>

        </article>

        <article id="underArt" class="myArts noDisplay">
            <div id="underVideo" class="myvids nodisplay">
                <video id="vid_Under" preload="auto" controls="controls" poster="_images/upgrade.png" class="width60 maroonBorder showShadow">
                    <source src="http://aftacaa.us/_Videos/AFTAC UPGRADE.mp4" type="video/mp4" />
                    <source src="http://aftacaa.us/_Videos/AFTAC UPGRADE.ogv" type="video/ogg" />
                    <source src="http://aftacaa.us/_Videos/AFTAC UPGRADE.webm" type="video/webm" />
                    Sorry, but your browser does not support video
                </video>

            <p class="centerText">Video by Clark Creery</p>
            </div>
        </article>

        <article id="historyAlumniArt" class="myArts noDisplay">
            <asp:Label ID="Label17" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2.5em" runat="server" Text="History of AFTAC Alumni Association"></asp:Label>

            <div>
                On March 12, 1985, the AFTAC Commander, Colonel  James R. Clapper invited a group of retired and active duty AFTAC’ers to meet with him.  He requested that they form an AFTAC Alumni Association (AFTACAA).  It was established at that time, a Board of Directors was elected and it was chartered in 1986
                <br /><br />
                This association was established to provide a forum for members wishing to maintain a relationship with AFTAC and its people, both active duty and retired. The membership is open to all those who serve and who have served with the mission of this organization and its field detachments since its inception.  This is to include all ancillary support venues such as Security Police, Administrative, Personnel and Civilians.
                <br /><br />
                We function as three independent groups.  Besides our association, they include the California and the Colorado chapters.
                <hr class="myHR" />
                <span class="underLine maroonText italic" style="font-size:1.3em;">Florida Alumni Association</span><br />                
                Dues are $10 yearly (1 October through 30 September)<br />
                Lifetime membership $75<br />
                Monthly meetings are designated to be held the second Monday of each month at 1600hrs. They are generally held at the AFTAC Headquarters but can be scheduled for other locations. Dates, times and venues are subject to change and can be found on this website’s menu item “Calendar of Events”
                Mailing address is:<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;AFTACAA<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;Po Box 254892<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;Patrick AFB, Fl 32925-0892
                <br /><br />
                We have several communications resources:<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="maroonText italic">Post Monitor Newsletter (PoMo):</span><br /> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Namesake  of the prior active duty “Monitor” Publication<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="maroonText italic">An active website containing:</span><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Breaking News, job offers, event photos and much more.<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="maroonText italic">An instant email notification:</span><br /> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Service to all members with important news.  Acronym <br />is “eAll”
                <br /><br />
                Our Board of Directors quinquennials (5 or more years in one or several<br /> offices )<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Clark Creery</span><br />		
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Newsletter, 1985/1989 through 1995 (7 years)<br />
		        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;President, 1994 through 1995 (1 year)<br />
		        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Webpage/Membership, 2001 through 2016 (15 years)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Frank Hall</span><br />		
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;President/Vice President, 1989 through 1998 (9 years)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Judy Milam</span><br />		
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;President, 2004 (1 year)<br />
		        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Secretary, 1989 through 2006 (17 years)<br />
		        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hospitality, From 2001 to Present (15 years)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Eunice Harris</span><br />		
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hospitality, 1989 through 2000 (11 years)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Mary Welch</span><br /> 		
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Membership, 1991 through 1999 (8 years) (Deceased)<br /> 
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Carl Gailey</span><br />		
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Treasurer, 1991 through 1999 (8 years) (Deceased)<br /> 
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Swede Swansen</span><br />	
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Publications, 1993 through 2006 (13 years)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">John and Chris Horsch</span><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Post Monitor Newsletter, 1996 to Present (20 years) (Chris Deceased)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Pat Snyder</span><br />		
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Insider/Sage Shop, 1996 through 2010 (14 years)<br />
		        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vice President, 2004 (1 year)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Mike Black</span><br />		
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Webmaster, 1996 through 2010 (14 years)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Jim Payne</span><br />	
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Membership, 1999 through 2004 (5 years)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Joe Goldian</span><br />		
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Treasurer, 2003 to Present (13 years) (Deceased)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Randy Vlassick</span><br />		
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Membership 2004 through 2009 (5 years)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Sean Ryan</span><br />	
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Secretary, 2009 through 2015 (6 years)<br />
		        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Social Events, 2010 through Present (6 years)<br />
	            &nbsp;&nbsp;&nbsp;&nbsp;<span class="underLine maroonText italic">Steve Revels</span><br />		
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sage Shop, 2010 through 2016 (6 years)
                <hr class="myHR" />
                <span class="underLine maroonText italic" style="font-size:1.3em;">West Coast Chapter</span><br /> 
	            Formed in 1999<br /><br />
                General membership meetings are held quarterly Mar, Jun, Sep & Dec on the 2nd Mondays at 7pm.<br /><br />
                Social events include a Spring Picnic BBQ on Armed Forces Day each May and a Fall Social luncheon near Veteran’s Day in November.<br /><br />
                Dues are $10– Lifetime membership $75<br />
                Publish a newsletter – Depot Fallout<br />
                For more information <a id="calInfo" class="redText underLine">click here</a> or email: <a href="mailto:tod.alumni@aftacwcc.org">tod.alumni@aftacwcc.org</a><br />
		        Postal Mailing address:<br />
			    &nbsp;&nbsp;&nbsp;&nbsp;Alumni Association<br />
			    &nbsp;&nbsp;&nbsp;&nbsp;PO Box 3974<br />
                &nbsp;&nbsp;&nbsp;&nbsp;Citrus Heights, CA  95611-3974<br />
                <hr class="myHR" />
                <span class="underLine maroonText italic" style="font-size:1.3em;">Colorado Chapter</span><br />
	            Formed in 1986<br />
	            Dues are $5 per year<br />
	            Publish a newsletter – Echoes<br />
                General membership meetings are normally scheduled twice per year usually in the first and third calendar quarters<br />
                Several social events are held each year<br />
                For more information <a id="colInfo" class="redText underLine">click here</a> or email: <a href="mailto:www.aftaccco.org">aftacco.org</a><br />
                <hr class="myHR" />
                World wide reunions are held every two years in a rotation between chapters.  Information on these reunions will be initially sent in an eAll and followed by articles in the PoMo’s, the chapter newsletters and articles in this website.

            </div>
        </article>

        <article id="historyArt" class="myArts noDisplay">
            <div>
                <img alt="AFTAC LOGO" class="autoMarginLeftRight width30 topMargin2em maroonBorder smallShadow" src="_Images/AFTACLogo.JPG" />
            </div>

            <p>
                <span class="redText underLine">Mission</span><br /> 
                The Air Force Technical Applications Center (AFTAC) provides national authorities quality technical measurements to monitor nuclear treaty compliance and develops advanced proliferation monitoring technologies to preserve our nation’s security.  It is the sole organization in the federal government whose mission is to detect and report technical data from foreign nuclear explosions.
                <br /><br />
                Consisting of more than 3,600 sensors worldwide, AFTAC operates and maintains a global network of nuclear event detection equipment called the U.S. Atomic Energy Detection Systems (USAEDS), the largest sensor network in the U.S. Air Force.  Once a disturbance is detected underground, underwater, in the atmosphere or in space, the event is analyzed for nuclear identification, and the findings are reported to national command authorities.
                <br /><br />
                AFTAC’s nuclear event detection mission is directly linked to its nuclear treaty monitoring mission.  AFTAC monitors signatory countries’ compliance with the 1963 Limited Test Ban Treaty.  This treaty prohibits nuclear testing anywhere but underground and prohibits the venting of nuclear debris or radiation from those tests into the atmosphere outside the country’s national borders.  AFTAC also monitors the Threshold Test Ban Treaty of 1974 and the Peaceful Nuclear Explosion Treaty of 1976. The 1974 treaty limits the size of underground nuclear tests to 150 kilotons, while the 1976 treaty prohibits the testing of nuclear devices outside of agreed treaty sites.
                <br /><br />
                AFTAC is on the leading edge of technological research and the evaluation of verification technologies for current and future treaties involving weapons of mass destruction which threaten our national security.  In 2014, AFTAC supplemented its extensive network of contracted laboratories by opening its state-of-the-art Ciambrone Radiochemistry Lab to analyze and assess compliance with nuclear weapons testing in support of USAEDS and AFTAC’s Nuclear Debris Collection and Analysis Program.  The 38,000 square foot lab filled a void created when the center’s central laboratory at McClellan AFB, Calif. closed after the 1995 Base Realignment and Closure actions.
                <br /><br />
                <span class="redText underLine">People</span><br />
                AFTAC employs more than 1,000 personnel and boasts a highly educated force possessing 171 associate degrees, 121 bachelor’s degrees, 214 master’s degrees and 63 doctorate degrees.
                <br /><br />
                <span class="redText underLine">Organization</span><br />
                AFTAC is a surveillance organization subordinate to 25th Air Force, an Air Combat Command Numbered Air Force, located at Lackland AFB, Texas.  AFTAC is located at Patrick AFB on Florida’s east coast, less than 30 miles south of the Kennedy Space Center.  AFTAC includes nine detachments, six operating locations and more than 60 unmanned equipment locations around the world supporting AFTAC’s long range nuclear detection mission. In addition, AFTAC manages 11 world-class laboratories to assist the International Atomic Energy Agency with the promotion of safe, secure and peaceful use of nuclear technologies.  In 2015, AFTAC became a wing-level organization within the Air Force, paving the way for partial unitization with the establishment of squadrons. This organizational restructure better reflects the center’s global mission importance.  Since becoming a wing equivalent, AFTAC activated five newly-designated squadrons in October 2015 to better align with the wing structure.  The new squadrons are the Technical Surveillance Squadron, the Technical Operations Squadron, the Technical Support Squadron, the Technical Sustainment Squadron, and the Cyber Capabilities Squadron.
                <br /><br />
                <span class="redText underLine">History</span><br />
                Soon after the end of World War II, Gen. Dwight D. Eisenhower recognized the need to monitor nuclear programs.  In 1947 he directed the Army Air Forces to develop technologies capable of detecting “atomic explosions anywhere in the world.”  In 1949, a particulate sampler aboard an Air Weather Service modified B-29 flying between Alaska and Japan detected debris from the first Russian atomic test – an event experts predicted could not happen until the mid-1950s.  
                <br /><br />
                As the Air Force activated AFTAC in 1959 to prepare to monitor compliance with the Limited Test Ban Treaty (LTBT), AFTAC assumed some responsibilities for the USAEDS and the advancement of Long Range Detection capabilities.  Over time, AFTAC’s various programs evolved into a unique resource system monitoring compliance with nuclear treaties; supporting our nation’s space program; and helping to protect citizens during emergencies involving nuclear materials.
                <br /><br />
                Over the years, the Air Force tasked the nuclear treaty monitoring center to conduct short-notice collection operations.  In April 1986, AFTAC responded to the Ukrainian nuclear accident at the Chernobyl Nuclear Power Plant in the former Soviet Union.  In total, AFTAC flew 55 sorties compiling 502 flying hours, and AFTAC’s McClellan Central Laboratory processed 354 samples and logged more than 2,500 man-hours.
                <br /><br />
                In October 2006, AFTAC detected an event associated with North Korea’s claim of a nuclear test and later provided verification of the nuclear event to national authorities.
                <br /><br />
                More recently, the center supported Operation Tomodachi, the U.S. government’s response to the 9.0 earthquake and subsequent tsunami that hit Japan.  The Fukushima Daiichi Nuclear Power Plant experienced a nuclear meltdown in three of the plant’s six nuclear reactors.  AFTAC personnel flew nine nuclear debris collection sorties, processing 342 seismic events, and analyzed 660 samples from the affected Pacific peninsula.
                <br /><br />
                In the summer of 2015, AFTAC led the removal of 10 Radioactive Thermoelectric Generators, or RTGs, from Alaska, which were no longer required to power AFTAC’s seismic array.  The power source was the Air Force’s largest source of sensitive radioactive material.  This endeavor safely and successfully removed nuclear radiation from the environment and eliminated a potential source of material for use by terrorists in improvised radiological explosive devices or dirty bombs.
                <br /><br />
                In December 2015, the IAEA released its final assessment on “Past and Present Outstanding Issues” regarding Iran’s nuclear program.  AFTAC provided trace forensic analysis of samples supporting the IAEA’s mission to monitor Iranian compliance with the Joint Comprehensive Plan of Action.  As a major component of the IAEA’s network of analytical labs, AFTAC’s analysis was foundational to the report.
                <br /><br />
                AFTAC is also on the forefront of protecting the homeland as it establishes an array of sensors across the United States as part of the National Technical Nuclear Forensics program.  This program is designed to collect forensic analysis after detonations to aid the Federal Bureau of Investigation in attributing attacks on U.S. soil to foreign governments or terrorist entities to swiftly bring those responsible to justice.  AFTAC’s efforts are making the Department of Defense’s vision to protect U.S. personnel and interests from the threat of a domestic nuclear detonation a reality.
                <br /><br />
                Today, AFTAC continues to improve the USAEDS. As the nation’s caretaker of USAEDS, AFTAC works closely with the Comprehensive Test Ban Treaty Organization in Vienna, Austria. Together, both parties are significantly improving the International Monitoring System (IMS). In fact, AFTAC now contributes six of its U.S.-based USAEDS seismic monitoring stations to the IMS. 
                <br /><br />
                (Current as of March 2016)
                <br /><br />
                Point of Contact
                <br />
                AFTAC Public Affairs
                <br />
                (321) 494-7688
            </p>
        </article>

        <article id="olMemoriesArt" class="myArts noDisplay">
            <p class="pTitle centerText">Memories of an OL</p>

            <p>
                I am a veteran of the obscure OL AS, also known as VELA Seismological Center/VSC,  I was there from ’72 - ’75.  It was located at 312 Montgomery St in (Old Town) Alexandria.  Oddly, the building is still there and is now occupied by a political consulting firm.
                <br /><br />
                While this started as an offsite branch of AFTAC  TG-1 when it was at Telegraph Road, it continued into the late 1970s as OL AS after AFTAC "moved south”.
                <br /><br />
                While the true AFTAC mission was classified at the time, VSC mainly spent ARPA (now DARPA) money for test ban treaty related research and mainly functioned in the unclassified world - even hosting Soviet visitors at one point!
                <br /><br />
                Hope our history is not forgotten.  VSC was the original home of Dr. Frank Pilotte who became better known after he moved to Florida.
                <br /><br />
                It is also where Ralph Alewine started as a 2nd Lt. transferring from the Army.  He later went on to major positions in DoD in test ban treaty matters.
                <br /><br />
                So while OL AS was not in an exotic overseas location, it functioned for more than a decade as a visible “tip of the iceberg” for AFTAC for international cooperation related to test ban discussions.  It also developed, along with its onsite contractors, algorithms for digital signal processing of seismic data for underground nuclear test detection purposes.
                <br /><br />
                Michael J. Marcus
            </p>
        </article>

        <article id="wallArt" class="myArts noDisplay">
            <asp:Label ID="Label8" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2.5em" runat="server" Text="20 Year Wall Honorees"></asp:Label>

            <div id="wallListings" class="backChocolate block maroonBorder showShadow">
                <asp:ListBox ID="lstWall1" CssClass="topMarginHalfem bottomMarginHalfem leftMarginHalfem thinMaroonBorder" style="padding-left:3px" BackColor="Moccasin" Font-Bold="true" Height="30em" Width="22%" runat="server" OnSelectedIndexChanged="lstWall1_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
                <asp:ListBox ID="lstWall2" CssClass="topMarginHalfem bottomMarginHalfem leftMarginHalfem thinMaroonBorder" style="padding-left:3px" BackColor="Moccasin" Font-Bold="true" Height="30em" Width="22%" runat="server" OnSelectedIndexChanged="lstWall2_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
                <asp:ListBox ID="lstWall3" CssClass="topMarginHalfem bottomMarginHalfem leftMarginHalfem thinMaroonBorder" style="padding-left:3px" BackColor="Moccasin" Font-Bold="true" Height="30em" Width="22%" runat="server" OnSelectedIndexChanged="lstWall3_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
                <asp:ListBox ID="lstWall4" CssClass="topMarginHalfem bottomMarginHalfem leftMarginHalfem thinMaroonBorder" style="padding-left:3px" BackColor="Moccasin" Font-Bold="true" Height="30em" Width="22%" runat="server" OnSelectedIndexChanged="lstWall4_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
            
                <div class="clear"></div>

                <p class="centerText yellowText">(D) = Deceased</p>
            </div>

            <div id="hideListings" class="width50 noDisplay autoMarginLeftRight">
                <asp:Button ID="butShowListings" CssClass="autoMarginLeftRight myBut padding5" runat="server" Text="Return to Listings" OnClick="butShowListings_Click" />
            </div>

            <div class="width100 autoMarginLeftRight">
                <div id="wallPic" class="topMargin2em">
                    <asp:Image ID="wallImg" CssClass="width100 noDisplay maroonBorder showShadow" ImageUrl="_Photos/20YearWall/Ace.jpg" runat="server" />
                </div>
            </div>
        </article>

        <article id="honorArt" class="myArts noDisplay">
            <asp:Label ID="Label27" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2.5em" runat="server" Text="Wall of Honor"></asp:Label>
            
            <div id="wohMainImg" class="block backChocolate maroonBorder showShadow">
                <div class="bold"><p class="pTitle centerText yellowText">Honor Wall Honorees</p></div>
                <asp:ListBox ID="lstWOH1" CssClass="autoMarginLeftRight bold floatLeft maroonBorder leftMargin7em bottomMargin2em" Width="30%" Font-Bold="true" Height="15em" runat="server" style="padding-left:3px" BackColor="Moccasin" ForeColor="Maroon" OnSelectedIndexChanged="lstWOH_SelectedIndexChanged" AutoPostBack="True">
                </asp:ListBox>
                <asp:ListBox ID="lstWOH2" CssClass="autoMarginLeftRight bold floatLeft maroonBorder leftMargin3em bottomMargin2em" Width="30%" Font-Bold="true" Height="15em" runat="server" style="padding-left:3px" BackColor="Moccasin" ForeColor="Maroon" OnSelectedIndexChanged="lstWOH_SelectedIndexChanged" AutoPostBack="True">
                </asp:ListBox>
                <div class="clear"></div>
            </div>
            <div id="wohDiv" class="noDisplay">
                <p id="wohName" class="pTitle centerText underLine">Hello World</p>

                <img id="wohImg" alt="_Photos/WOH/Butler.png" class="width30 inLine autoMarginLeftRight bottomMargin2em maroonBorder showShadow" src="_Photos/WOH/Butler.png" />
                <input id="btnwohReturn" type="button" class="myBut leftMargin3em topMargin3em bottomMargin2em" value="Return to Listing" />

                <div>
                    <div id="wohVerbage" class="width90 autoMarginLeftRight maroonBorder">
                        <%--Place holder for the Verbage--%>
                    </div>
                </div>

                <div class="clear"></div>
            </div>
        </article>


        <article id="alumniArt" class="myArts noDisplay">
            <asp:Label ID="Label28" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2.5em" runat="server" Text="Alumni of the Year"></asp:Label>
        
            <div class="italic width90 maroonBorder smallShadow backChocolate padding5">
                <ul class="alumniList leftMargin5em floatLeft leftMargin1em">
                    <li id="gilbertSel">Pete Gilbert-2018</li>
                    <li id="kemnaSel">John "Butch" Kemna-2017</li>
                    <li id="snyderSel">Carol Snyder-2016</li>
                    <li id="calendaSel">Frank Calenda-2015</li>
                    <li id="ryanSel">Sean Ryan-2014</li>
                    <li id="gibbonsSel" class="yellowText">Lonnie Gibbons-2013</li>
                    <li id="melchiorSel" class="yellowText">Gene & Dee Melchior-2012</li>
                    <li id="klugSel" class="yellowText">Dale Klug-2011</li>
                </ul>
                <ul class="alumniList leftMargin2em floatLeft leftMargin1em">
                    <li id="smithSel" class="yellowText">Jack Smith-2010</li>
                    <li id="jacksonSel" class="yellowText">Jack Jackson-2009</li>
                    <li id="wileySel" class="yellowText">Bob Wiley-2008</li>
                    <li id="schmiedSel" class="yellowText">Bill Schmied-2007</li>
                    <li id="carsonSel" class="yellowText">Deborah Carson-2006</li>
                    <li id="blackSel" class="yellowText">Mike Black-2005</li>
                    <li id="goldianSel" class="yellowText">Joe Goldian-2004</li>
                    <li class="yellowText">Pat Snyder-2003</li>
                </ul>
                <ul class="alumniList leftMargin2em floatLeft leftMargin1em">
                    <li id="johnsonSel" class="yellowText">Joe Johnson-2002</li>
                    <li id="payneSel" class="yellowText">Jim Payne-2001</li>
                    <li class="yellowText">Ben Vlassick-2000</li>
                    <li class="yellowText">John & Christel Horsch-1999</li>
                    <li class="yellowText">Frank Hall-1998</li>
                    <li class="yellowText">Judy Milam-1997</li>
                    <li class="yellowText">Carl Gailey-1996</li>
                    <li class="yellowText">Clark Creery-1995</li>
                </ul>
                <div class="clear"></div>
            </div>

            <div class="padding5 topMargin2em maroonBorder showShadow width90">
                <article id="defaultAlum" class="alumArt block">
                    <img alt="Some AOY" class="autoMarginLeftRight topMargin2em width85 maroonBorder showShadow" src="_Photos/AOY/Alumni2018.jpg" />
                    <p class="italic fontSize1em darkRedText topMargin1em leftMargin1em">From Left to right:<br />Judy Milam, Frank Hall, John Horsch, Bob Wiley, Sean Ryan, Frank Calenda, Carol Snyder, Pete Gilbert</p>

                    <div class="width95 autoMarginLeftRight italic">
                        <p class="centerText">The Alumni of the Year that attended the last Snowball</p>
                    </div>
                </article>

                <article id="notIncluded" class="alumArt noDisplay">
                    <img alt="Not Included" class="autoMarginLeftRight width30 topMargin2em maroonBorder smallShadow" src="_Images/Not Included.jpg" />

                    <p class="pTitle centerText">This page is still under construction.<br />We are still looking for some documentation.</p>
                </article>

                <article id="gilbert" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        Pete Gilbert<br />
                        2018 ALUMNI OF THE YEAR
                    </p>
                    <img alt="Gilbert.jpg" class="width40 autoMarginLeftRight" src="_Photos/AOY/Gilbert.jpg" />
                    <p>
                        Pete Gilbert was named "AFTAC's 2018 Alumni of the Year" at the  Florida Snowball Banquet held 2 February 2018.<br /> 
                        Colonel Hartman and CMSG Joseph presented Pete with the award.
                        <br /><br />
                        I was sworn into the Air Force at the induction center on Whitehall Street in lower Manhattan on December 6th 1963, my 20th birthday.
                        <br /><br />
                        I was then sent to Lackland Air Force Base for my basic training. While there, I was told to report to this Major, I forgot his name, and he asked me if I would be willing to go to school for this secret outfit. He could not even tell me what they did. Being totally intrigued with the idea I agreed. So, after basic I was sent to Lowry Air Force Base to become enrolled in “Special Weapons School”. I went to school for “Q” systems. However; upon graduation I was given orders to report to McClellan Airforce Base and to be in “L” Systems.
                        <br /><br />
                        I spent a year in the 1155th Technical Operations at McClellan, in the Electronic Maintenance Department and we were tasked in fixing any piece of electronic equipment that was not functioning. The job that I was primarily responsible for was repairing and calibrating the many oscilloscopes that we had. It was very demanding and at the same time a satisfying job. It was the first real technical job that I had ever held. I saw that there was an opening in Det 407 and I applied for the position. Surprisingly I got it and packed my bags and away I went.
                        <br /><br />
                        While at 407 I again worked In Electronic Maintenance. I was working under a great boss, Walt Allen. He was an inspiration to me and taught me a lot about my job and just life in general. He meant a lot to me.
                        As my term of enlistment was ending, I was informed that my name was on the promotion list. If I reenlisted, I would be made a Staff Sergeant. I was given the option to extend my current enlistment until the promotion became effective, at this time I would reenlist and get a very handsome reenlistment bonus. I knew everything at that time, At least I thought I did, and I turned it all down. This I now believe was the biggest mistake in my life.
                        <br /><br />
                        I enjoyed my time with, what is now called AFTAC, and was very lucky to be honored to be a small part of it. After all these years I am still a part of it again. It was an extreme honor and surprise to be chosen as Alumni of the Year. To be honored by a bunch of individuals that I hold in such high esteem is one of my most cherished moments and it will be with me the rest of my life.
                    </p>
                </article>

                <article id="kemna" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        John "Butch" Kemna<br />
                        2017 ALUMNI OF THE YEAR
                    </p>
                    <img alt="Kemna1" class="width40 autoMarginLeftRight" src="_Photos/AOY/Kemna_1.jpg" />
                    <p>
                        John "Butch" Kemna was named "AFTAC's 2017 Alumni of the Year" at the AFTAC worldwide reunion banquet held 17 June 2017   
                        <img alt="Kemna2" class="width25 floatLeft rightMarginHalfem" src="_Photos/AOY/Kemna_2.jpg" /> at McClellan Park, Ca. Joe Johnson, West Coast Alumni Chapter Vice President is shown presenting Butch with the traditional AOY polo shirt. 
                        <br /><br />
                        I​ ​spent​ ​20​ ​years​ ​in​ ​the​ ​Air​ ​Force,​ ​May​ ​60​ ​–​ ​May​ ​80,​ ​was​ ​assigned​ ​to​ ​AFTAC​ ​​ ​the​ ​whole​ ​time.​ ​​ ​I​ ​was asked​ ​at​ ​Lackland​ ​to​ ​ volunteer​ ​for​ ​a​ ​Special​ ​Weapons​ ​Career​ ​Field,​ ​which​ ​turned​ ​out​ ​to​ ​be​ ​Q-System [99125]​ ​in​ ​AFTAC.​ ​​ ​ One​ ​year​ ​later​ ​I​ ​found​ ​out​ ​what​ ​the​ ​job​ ​was.​ ​​ ​I​ ​spent​ ​time​ ​at​ ​McClellan​ ​and an assignment overseas​ ​in​ ​Q-System.​ ​​ ​When​ ​I​ ​came​ ​back​ ​to​ ​McClellan​ ​I​ ​cross​ ​trained​ ​into​ ​A-System.​ ​​ ​I​ ​spent​ ​17 unbelievable​ ​years,​ ​amassing​ ​over​ ​7,500​ ​hours​ ​of​ ​flight​ ​time​ ​supporting​ ​airborne​ ​sampling​ ​program​ ​all over​ ​the​ ​world.​ ​​ ​The​ ​friends​ ​I​ ​made,​ ​the​ ​places​ ​I​ ​went​ ​and​ ​ the​ ​things​ ​we​ ​did​ ​I​ ​would​ ​not​ ​give​ ​up​ ​for anything.
                    </p>
                </article>

                <article id="snyder" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        Carol Snyder <br />2016 ALUMNI OF THE YEAR
                    </p>
                    <img alt="Snyder.png" class="autoMarginLeftRight width40 smallShadow thinMaroonBorder" src="_Photos/AOY/snyder.png" />
                    <p>
                        I started at AFTAC in 1996, working for Joe Marshall in TM (Joe is a 2016 Wall of Honor Recipient).
                        I officially joined the Alumni Association in 2001.  For the past 15 years, I've supported the association in various ways -- attending meetings, holding Vice President position for a year, helping to set up Snowball dinners, coordinating efforts between the Alumni, the Booster Club and the Spouses Group, etc.
                        <br /><br />
                        After Pat Snyder retired in 2010 the baton was passed to me to be the "intrepid insider."  I've tried my best to get the Alumni the answers they've needed (although not necessarily the ones they wanted!). I never would have thought I'd be at AFTAC 20 years after starting the job, but I'm glad to be here and I'm proud to be a part of such an awesome group of Alumni!
                        <br /><br />
                        I was so surprised when the Commander, Col Gorski, announced my name at the Snowball As the "Intrepid Insider," you guys usually tell me everything...I should have known something was up when you said you had to keep the name "close hold.”  Sneaky people!  It’s an honor I hold very dear.  Thank you for bestowing it on me!
                        <br /><br />
                        Love you all,
                        Carol.


                    </p>
                </article>                                                                                                                                                                  

                <article id="calenda" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        Frank S. Calenda <br />2015 ALUMNI OF THE YEAR
                    </p>
                    <p>
                        Frank started his Air Force career in August 1955 and was in one of the last flights to complete the 3
                        month basic training at Sampson AFB in upstate New York. He attended a year long school at Lowry
                        <img alt="Frank Calenda" src="_Photos/AOY/calenda.png" class="floatLeft width35 rightMargin1em maroonBorder" />
                        Air Force Base to become a Nuclear Weapons Technician, working on some of the earliest Strategic weapons in
                        America's arsenal. In 1960, he progressed to working with the nuclear warheads on the Atlas missiles at Offutt Air Force
                        Base and Titan missiles at Larson Air Force Base. In 1964, he was selected to attend AFTAC's year long "Q" systems class at Lowry. That was
                        followed with an assignment to the installations shop at McClellan. There, he installed "Q" equipment at several classified locations around the
                        world. In 1967, he left to become the Maintenance Technician at the remote Navy site H2 in northern
                        Iceland. The following year, he and his family were assigned to John Hay Air Base at Baguio City in the
                        Philippines. He was the Assistant Chief Operator at that location. In 1970, they left for an assignment to
                        Headquarters AFTAC in Alexandria where he worked in the Operations Directorate as the
                        Supervisor of the Q data terminal. The year 1972 brought the move of AFTAC to Patrick Air Force Base.
                        Frank joined the advance party in Florida and his task was to set-up the QSystem.
                        Shortly thereafter, Frank and his family were assigned to Det 422 at Misawa, Japan. Frank became
                        the “I” System Chief Operator at this location. The following year, they were sent to a classified OL
                        where he performed advisory duties for two years. In 1976, he was reassigned to AFTAC headquarters at
                        Patrick as the Superintendent of the Satellite Terminal until his retirement in April of 1978.
                    </p>
                    <p>
                        Following USAF retirement, Frank attended Brevard Community College where he attained an
                        Associate of Science degree in Bio Engineering and was immediately hired by the then Holmes Regional
                        Medical center in Melbourne as a medical equipment technician. He worked there for 10 years progressing
                        to the Director of the BioMedical department with prime duties in the Radiology Department. Because
                        of his experience with maintaining the cancer radiation treatment machine (a linear accelerator) he was
                        offered a position with Varian Associates Medical Division in Palo Alto, California. He completed his
                        BioMedical training with Varian through courses from Stanford University. He worked for Varian installing
                        the Accelerators at various medical facilities around the United States and Japan. Frank retired from the
                        work force in 1998. 
                    </p>
                    <p>
                        Frank was married to his wife Edna in June 1959 in Hampton, New Hampshire. They have two boys.
                        Tony, their oldest son, graduated from Satellite High and joined AFTAC for his entire 22 year Air Force
                        career. Michael is an Associate Professor of Culinary Arts at Johnson and Wales University in Charlotte,
                        North Carolina.
                    </p>
                    <p>
                        Frank, with the close support of Edna, has been a member of the AFTAC Alumni Association since 1978
                        when it was first formed by a small group of AFTAC retirees. Membership was around 40 members and
                        was then a venue for comradery and friendship. During General Clappers command of the
                        organization a number of years later, the formal Alumni Association was formed and members of the
                        initial group were awarded lifetime memberships for their initial efforts. Because of his extensive traveling
                        with his company early on, Frank’s involvement with the Association was minimal. Since his full retirement,
                        he has become quite active with our present organization involving himself in many active duty
                        functions in support of the Booster Club and other Alumni functions. Frank was the chair for the financial
                        database and overall registration for the 2015 Worldwide Reunion, not to mention his forming a
                        mini-reunion for Detachment 418 during the Denver, Colorado Worldwide Reunion in 2014. Frank is a
                        go-to guy and we salute his selection as the AOY.
                    </p>

                    <p class="pTitle centerText">Very Well Deserved!!</p>
                </article>

                <article id="ryan" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        Sean Ryan<br />2014 ALUMNI OF THE YEAR
                    </p>
                    <p>
                        Sean stepped up in September, 2009, to offer his services as the Chapter Secretary for the FY2010 Board and has continued in that
                        <img alt="ryan.png" class="floatLeft width35 rightMargin1em maroonBorder" src="_Photos/AOY/ryan.png" />
                        position since. We spotlighted him in PM2010.04 so you’d know him a little better and since that time we
                        have learned just how invaluable he can be. In that issue we wrote, “By the way, nice picture,” we made sure we could do the same here.
                    </p>
                    <p>
                        Since becoming our Secretary, Sean has helped in innumerable ways, time and again, not only keeping the minutes of our minutes and distributing them, but
                        keeping the association on track and making arrangements for our meeting locations and times.
                    </p>
                    <p>
                        This has included meetings we have in the 'Headquarters Building' and our off-site meetings at the
                        ‘Tides,’ ‘Golf-Course Clubhouse,’ ‘Marina & Yacht Club,’ and the ‘Riverside Dining Facility.’ This includes
                        last minute changes of dates and times and special meetings for the several events the association sponsors
                        and the upcoming ‘WorldWide 2015’ Reunion.’ 
                    </p>
                    <p>
                        Sean has stepped up more than once to help with our major annual event, ‘SnowBall,’ and was the
                        ‘Major Arranger’ for the most recent in 2014.’ He also assisted with this years ‘Center Annual Spring Picnic.’ 
                    </p>
                    <p>
                        Finally, Sean recently added another board position, ‘Publicity,’ to his resume and has redefined that position
                        in a most positive manner. --Thank you, Sean, we salute you for the outstanding service you provide Alumni, and before that the Air
                        Force, 1982-2008, and AFTAC, 1998-2008. 
                    </p>
                </article>

                <article id="gibbons" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        Alumni of the year, 2013<br />MSgt (Ret) Lonnie Gibbons
                    </p>

                    <img alt="gibbons2.png" class="width50 autoMarginLeftRight maroonBorder" src="_Photos/AOY/gibbons2.png"/>

                    <p class="myCaption width50">
                        Col Parker, AFTAC/CV, presents the ‘Space Coin’ Certificate of
                        Recognition and John Horsch the ‘Traditional T.’ Below, Ginny joins
                        Lonnie in this honor. Write-up below from nomination submission.
                    </p>

                    <p>
                        <img alt="gibbons1.png" class="width25 floatLeft maroonBorder topMarginHalfem rightMarginHalfem" src="_Photos/AOY/gibbons1.png"/>
                        Lonnie and wife, Ginny, have
                        been active members of this
                        chapter since its establishment
                        in 1991. Lonnie has participated
                        in practically every membership
                        meeting and served on numerous
                        chapter event working committees
                        during the last twentytwo
                        years. His work especially
                        assisting with arranging and coordinating social events
                        including annual picnics and dinners, golf outings, and
                        worldwide reunions held here in Colorado, has greatly
                        contributed to sustaining this chapter’s longevity. For
                        many years he has been the key person obtaining refreshments,
                        ice, coolers and other supplies, and then
                        hauling them and setting up at picnics and ) reunions. He has
                        been the focal point for organizing and successfully
                        managing the hospitality rooms at several of our hosted
                        alumni reunions and especially the 2013 worldwide
                        reunion here in Aurora, Colorado. When the calls go
                        out for assistance, whether they be for help putting up
                        decorations for the chapter’s annual Veteran’s Day
                        dinner, providing food and refreshments after a golf
                        outing, or any activity, Lonnie & Ginny consistently answer
                        these calls - true AFTAC alumni team members.
                        <br /><br />
                        Lonnie began his Air Force career in the administrative
                        field enlisting in 1956. His first assignment out of
                        basic training was a 12-month tour of duty in South
                        Korea. This was followed by another hardship assignment
                        lasting five years at the USAF Security Service
                        Language School at Indiana State University. During
                        this assignment he married Ginny and started a family.
                        He got his introduction to AFTAC when he was assigned
                        to SPINSTRA at Lowry AFB in 1964. This was
                        followed by an overseas assignment to Detachment
                        418, then back to Lowry AFB in 1968 being assigned
                        to Detachment 57. He served one more AFTAC overseas
                        assignment at Detachment 333 during the 1974- 75 timeframe prior to being assigned to Air Force Logistics
                        Command at Wright-Patterson AFB in Ohio.
                        After only a short time he was reassigned to Peterson
                        AFB in Colorado Springs and then back to Lowry AFB
                        where he retired from active duty in 1977. Lonnie
                        signed on with the Defense Investigative Service in
                        1982 and is now living the life of a retired civil servant. 
                    </p>
                </article>

                <article id="melchior" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        Alumni of the year, 2012<br />MSgt (Ret) Gene and Dee Mechior
                    </p>

                    <img alt="Melchoior1.png"  class="width50 autoMarginLeftRight maroonBorder" src="_Photos/AOY/Melchoior1.png"/>

                    <p class="italic width50 autoMarginLeftRight maroonText" style="font-size:.8em;">
                        Gene and Dee accept the ‘Space Coin’ Certificate from our President,
                        Terry Hammond, following his announcement of their selection.
                        Picture by Judy Milam-Henderson
                    </p>

                    <p>
                        A highlight of our annual SnowBall gathering was our President, Terry Hammond, announcing Gene and Dee Melchoior were selected for this honor
                        by their peers of the years before. Gene and Dee's unflagging devotion to alumni, and the alumni assn, has been cumulative over the years and they have
                        never failed to be major supporters of this annual event and many others. They were presented our 'Space Coin' plaque and Gene the 'Traditional T.'
                    </p>
                    <p>
                        Other notable events of the evening were the invocation by Sean Ryan, our Secretary, who preceded his prayer by naming Sages, and Spouses, who have deceased
                        since last year’s Snowball, we had comments from AFTAC CC, Col Worley, and an exceptional Detachment 402 briefing by the Detachment
                        Chief, SMSgt John Shank, (who was here for the Center's Commander's Conference). Det 402 was honored at this event as our 'newest Det,' and 'Japan'
                        was our theme (Gene and Dee had the club-house decorated accordingly with many items from their travels and fellow colleague sages who donated items).
                    </p>
                    <p>
                        Dee made a short 'thank you' speech and Gene gave us a shout!! Later they wrote, "We totally enjoyed last night’s Snowball and to say the least, it was a wonderful
                        surprise to be given the award! Our association has so much shared history. It is our pleasure to be a part of the group! We thank everyone for this honor."
                    </p>


                    <img alt="Melchoior2.png" class="width50 autoMarginLeftRight maroonBorder" src="_Photos/AOY/Melchoior2.png"/>

                    <p class="italic width50 autoMarginLeftRight maroonText" style="font-size:.8em;">
                        Gene, joined by Dee, accepts the ‘Alumni of the Year, 2012’ trophy
                        from Col Worley/CC and Chief Neri/CCS. Photo by Bob Wiley
                    </p>

                    <p>
                        Gene and Dee were also honored at the 'Center Annual Award Banquet' the following Tuesday evening (02.12) with a trophy bearing the 'Alumni
                        of the Year, 2012' Selection. (pictured above) NOTE 2: Gene and Dee had made ‘origami doves’ for the tables.
                        Later they sent note writing, “Please put the website listed below in the PoMo. Some folks at the SnowBall want to try the paper folding
                        art. Thanks.” 
                    </p>
                </article>

                <article id="klug" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        Alumni of the year, 2011<br />Dale Klug
                    </p>

                    <p>
                        <img alt="klug.png" class="floatLeft width35 rightMargin1em maroonBorder" src="_Photos/AOY/klug.png" />
                        This year's SnowBall was one of the best ever; food was great, Chief Nederhoed's Detachment 460 briefing was right on target, entertainment "rocked," and
                        having our 2011 ‘Alumni of the Year (AOY),’ Dale Klug, and spouse Rose, (pictured) travel from CA, rounded out the program.
                    </p>

                    <p>
                        We had sufficient time to socialize with all our alumni, active-duty and with a wonderful assortment of Hors d'oeuvres before our program
                        started. Bob Wiley treated us to a slide show featuring past SnowBall performances and a montage of activities in which
                        alumni members participated during the past year.
                    </p>

                    <p>
                        Chapter President, Terry Hammond, opened by introducing our dignitaries attending; Vice Commander Col Roberts, 
                        Chief Scientist Dr. O'Brien, Director of Staff Mr. Whidden, Superintendent CMSgt Nederhoed, Historian Mr. Young, Inspector General
                        CMSgt Revels, Materials Director Dr. DeForest, Atmos/Space Directorate Lt Col Wingate, and Dale and Rose Klug. The Center's 'Commander's Conference'
                        had been delayed so we were not graced by Detachment 460 Commander’s, Major Johnson, attendance this year ... maybe we'll be back on track next year.
                    </p>

                    <p>
                        Then Rebecca Lehnerz performed the National Anthem acapella (great job). Following that Sean Ryan, our Chapter Secretary, led us in an invocation.
                    </p>

                    <p>
                        Dinner followed with a buffet that was excellent; the Grilled Salmon, Chicken Marsala, and Prime Rib were abundant with all the trimmings. The staff really did a
                        great job preparing and serving dinner. Their choice of dessert was perfect with a Vanilla Ice Cream Raspberry
                        Parfait to top off a scrumptious meal. I saw a lot of guests trying to get that last bit of ice cream from the
                        bottom of the parfait glass. No one went home hungry!
                    </p>

                    <p>
                        Chief Nederhoed gave us an excellent briefing on "A day at Det 460." He showed the diversity of the challenges
                        the detachment members face each day as they maintain the array of seismic equipment; from terrain, weather, wildlife, and giant mosquitoes. Having been
                        stationed at the detachment, Chief Nederhoed was an exceptional stand-in for the detachment commander.
                    </p>

                    <p>
                        At the shank of the evening Terry re-presented the 'Space Coin' ‘Alumni of the Year 2011’ plaque to Dale Klug; it had been presented initially when Dale's AOY
                        selection was announced at the California Chapter 'WorldWide Reunion' in May of last year. Dale had a few words of thanks and presented the Center with several
                        artifacts for the 'Hall of Heritage,' a plaque from now closed 'Technical Operations Division,' and a real
                        surprise when he donated an original coffee cup used by recently deceased (Aug), and beloved Center Icon, Mary Welch. She had asked him to hold the cup while
                        he was visiting with her at the HQ many years back and Dale had held on to it for all the ensuing years.
                    </p>

                    <p>
                        Keeping with the theme of this event, we then played several 'Alaska' knowledge quizzes-prizes were awarded by Gene and Dee Melchoir to the person who answered
                        the most questions correctly. Seems we had a tie between Sean Ryan (our own Chapter Secretary) and Dr. DeForest (TM Director). They both received
                        dinner gift cards. Many of us remained for much longer to enjoy the great music provided by Entertainer, Billy
                        Lee, and dancing that followed. At the end of the evening, most attendee's thought the music set just the right tone giving us mellow background music during the
                        meal and then stepping it up several notches afterward. Some admitted staying so late the South Gate was closed when they left and they had to make a Uturn
                        for the trek to the main gate!!
                    </p>
                </article>

                <article id="smith" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        Jack Smith<br />ALUMNI OF THE YEAR, 2010
                    </p>

                    <img alt="smith1.png" class="width50 autoMarginLeftRight maroonBorder" src="_Photos/AOY/smith1.png"/>
                
                    <p class="myCaption width50">
                        Jack accepts trophy from Col Prupas, with Lloyd French, Alumni
                        President and John Nederhoed in attendance.
                    </p>
                    <p>
                        Wow, what a six-day period we had, Feb 05-10! It started
                        ‘rollin’ with the ‘SnowBall’ and marched forward to
                        the ‘Center Annual Awards Banquet.’ These are annual
                        events made very special this year when our ‘Alumni of
                        the Year, 2010,’ Jack Smith, CO Chapter President,
                        showed his considerable respect for this once in a lifetime
                        honor. He, and his wife, Helen, traveled from their
                        home in the Denver area to be here in person to express
                        their unbrideled appreciation and humility for this
                        selection. 
                        <br /><br />
                         Jack and Helen started the recognition period by moving
                        into base dig’s right on the ocean arranged by
                        CMSgt John Nederhoed/CCS, with assistance from
                        CMSgt Dave Melton/TM, our assn vice. They were also
                        treated to a HQ Building and ‘Hall of Heritage’ tour by
                        CMSgt Steve Revels/IG. These experiences were just
                        the beginning as they were recognized at both the
                        ‘SnowBall’ and the ‘Awards Banquet in a grand style.
                         A portion of the well attended ‘SnowBall’ (02.05) was
                        dedicated to Jack’s accomplishments and he had time
                        to speak to the group about what the honor meant to
                        him. It was very moving to hear him speak, meaning all
                        the more because of their efforts to be here. (much more
                        on the ‘SnowBall,’ with pictures, later in the issue, ‘Alumni Events’)
                        <br /><br />
                         Jack, and others to be honored, made a grand entrance
                        into the ‘Center Awards Banquet’ on the following
                        Thursday by entering the room though ‘Arched Sabers,’
                        pictured here.
                        Other military ceremonies
                        performed
                        prior to dining was
                        the ‘Presentation of
                        Colors’ by the
                        ‘Honor Guard’ and
                        the ‘POW/MIA
                        Table’ ceremony …
                        these presentation’s
                        are made all
                        the more special as they are being done by our successor’s,
                        those currently serving AFTAC’s mission. There
                        was also an invocation by Chaplain Capt Williams and
                        the ‘National Anthem’ by Ms Rebecca Lehnerz, a member
                        of the ’Greenlight Band’ who has performed at numerous
                        AFTAC and Alumni events.
                    </p>
                </article>

                <article id="jackson" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        Walter ‘Jack’ Jackson <br />ALUMNI OF THE YEAR, 2009
                    </p>

                    <p>
                        Jack’s selection as our 15th AOY was announced on Jan 30th at SnowBall XII. Here we see him accepting
                        <img alt="Jacson.png" class="floatRight leftMarginHalfem maroonBorder" src="_Photos/AOY/jackson.png" />
                        the ’Traditional T’ and our ’Space Coin’ plaque from Assn President, Lloyd French. In making the announcement,
                        Lloyd spoke of Jack’s accomplishments for the assn (see editorial), and his involvement with
                        veterans everywhere. For this ‘Salute,’ we asked Jack to provide information about himself. As you read
                        what follows, you will come to fully understand Jack’s selection for this honor.
                    </p>
                    <p>
                        Jack was born and raised in Philadelphia. After graduating from high school, he entered the Air Force,
                        completed basic training and received his first assignment as an Air Policeman at Craig AFB, Selma, Alabama.
                        After this assignment, he served at Bitburg Air Base Germany, George AFB, Victorville, California,
                        Danang Air Base Republic of South Vietnam, Langley AFB, Kusan Air Base, Korea and Patrick
                        AFB, Florida.
                    </p>
                    <p>
                        While serving his country, Jack had the opportunity to do a lot of traveling and was in 13 countries around
                        the world. He was active in sports playing football in Germany and softball as a pitcher. He was also on the
                        Air Training Command swimming team in 1959 finishing third place in the 100 yard back stroke.
                    </p>
                    <p>
                        After retiring from the Air Force, Jack worked as a Veterans Employment Representative with the state
                        of Florida. After 22 years he called it quits and is now enjoying his retirement.
                    </p>
                    <p>
                        He is a member of the Vietnam Veterans of Brevard color guard, Paralyzed Veterans of America, Disabled
                        Americans, American Legion, VFW, Veterans Memorial Center, Brevard Veterans Council and the AFTAC
                        Alumni Association (being one of the first to join).
                    </p>
                    <p>
                        Jack is on the VVB Reunion Committee for the Vietnam Memorial Traveling Wall. He brought Stand
                        Down for homeless veterans to Brevard County. He also worked as a County Service Officer and was a
                        National Service Officer for the American Legion.
                    </p>
                    <p>
                        Jack is the proud father of two girls and two granddaughters. Unfortunately his wife of three years
                        passed away in November of 2009. He is proud to have served his country and enjoys volunteering
                        wherever needed and enjoys retirement to the fullest.
                    </p>
                    <div class="clear"></div>
                </article>

                <article id="wiley" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        Robert ‘Bob’ Wiley<br />Alumni Of The Year, 2008!!                     
                    </p>
                    <img alt="wiley.png" class="maroonBorder autoMarginLeftRight" src="_Photos/AOY/wiley.png" /> 
                    <p class="centerText italic maroonText" style="font-size:.8em;">
                        Bob is presented the traditional AOY ‘T’ by the<br />
                        Florida Alumni Assn President, Lloyd French.. 
                    </p>
                    <p>
                        Bob was also recognized at the ‘Center Annual Awards Banquet’ in February, and will be again at the May
                        ‘WorldWide Reunion.’ He has been a member of the association since his retirement in 1985. Over the years
                        he has been a mainstay contributing articles and photographs of the alumni activities for the Post-Monitor and
                        was association President, FY2007/08. During this time, he completed action for an LRD 50th Anniversary Commemorative
                        coin to ‘fly in space.’ This coin will be presented to the Center for display in the ‘Hall of Heritage,’
                        and the few remaining coins in this series will be presented to deserving alumni. Bob also took the lead in
                        encouraging additional participation in association management and increasing membership. He is Chair of the
                        2009 WorldWide Reunion Committee.
                    </p>
                </article>

                <article id="schmied" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        2007 ALUMNI OF THE YEAR <br />WILLIAM "BILL" SCHMIED                     
                    </p>
                    <img alt="schmied1.png" class="maroonBorder autoMarginLeftRight" src="_Photos/AOY/schmied1.png" />
                    <p>
                        In a first for the association, the AOY selection
                        <img alt="schmied2.png" class="width25 floatLeft maroonBorder topMarginHalfem rightMarginHalfem" src="_Photos/AOY/schmied2.png"/>
                        was made in May (usually, Dec-Jan), and announced
                        prior to the annual SnowBall (Jan-Feb).
                        We broke precedent to recognize a most deserving
                        individual in front of peers he serves so well
                        and at an event with a large, varied audience, the
                        2007 Colorado sponsored, WorldWide reunion.
                        The Colorado Chapter President, Jack Smith,
                        in a ceremony during the reunion banquet (6/10),
                        noted the many accomplishments Bill rendered
                        as a member and in serving on the board.
                        “He is a member of both the Colorado and Florida
                        chapters, where he is a Lifetime member. He
                        joined the CO chapter even before he retired in
                        1991 and since that time has served our chapter
                        very actively and has been a board member for
                        almost 15-years. He has been critical in the success
                        of our chapter since he first signed on and
                        has been deeply involved in every reunion, to include
                        this one, and every other facet of our chapters
                        operation.”
                        <br /><br />                        
                        The ceremony concluded with the AFTAC Commander,
                        Col Westergren, making the actual announcement
                        of Bill’s selection and presenting the
                        ’Traditional T.’ 
                        <br /><br />                        
                        Other AOY’s in attendance included Frank Hall (98),
                        John Horsch (99), Joe Johnson (02), and Ginger
                        Vlassick representing Ben (00, deceased).                     

                    </p>

                </article>

                <article id="carson" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        2006 ALUMNI OF THE YEAR <br />DEBORAH CARSON                     
                    </p>
                    <img alt="carson.png" class="maroonBorder autoMarginLeftRight" src="_Photos/AOY/carson.png" />
                    <p>
                        Congratulations Deborah for this important recognition during SnowBall IX. The highlight of the
                        annual event, the announcement recognizes the many contributions Deborah has made to supporting
                        alumni and the association-especially in the areas of reviewing portions of this publication
                        and her management of the annual SnowBalls.
                    </p>
                    <p>
                        Spotlighted in the September Post-Monitor last year, her alumni association peers selected her
                        for this honor. Her many accomplishments are detailed in that issue. Thank you Deborah and
                        we look forward to your continuing assistance.  Additionally, Deborah was 
                        recognized at the Center Annual Awards event. More on that, and a picture, in the ‘Center Annual Awards’ article
                        that follows and in the ‘Prez Sez’ column. 
                    </p>
                </article>
            
                <article id="black" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        2005 ALUMNI OF THE YEAR <br />MIKE BLACK                    
                    </p>

                    <img alt="black.png" class="width50 autoMarginLeftRight maroonBorder" src="_Photos/AOY/black.png" />

                    <p class="myCaption width50">
                        Mike accepting ‘AOY’ shirt from assn president, Carol Snyder                     
                    </p>

                    <p>
                        Mike is the associations’ original and continuing webmaster (www.aftacalumni.org). His selection
                        was announced at the SnowBall on January 28th, and he was also recognized at the Center
                        Annual Awards Banquet on March 2.
                        <br /><br />
                         Mike’s service to the Air Force started in October, 1972. and to AFTAC in June, 1981, where
                        he served until his retirement in August, 1992. His AF assignments took him to Lowry, Eglin,
                        Aviano and Tyndall AFB’s, and his AFTAC duties were in Advanced Technology (with a side-trip to
                        TN) at the headquarters.
                        <br /><br />
                         Mike joined the alumni at retirement and in
                        1996 he and two other members, Clark Creery, Mike Black, the association’s ‘Alumni Of The
                        Year,’ was among those honored; his wife, Toni,
                        was also there to enjoy the occasion.
                        <br /><br />
                         Among the association members in attendance
                        were the President, Carol Snyder, past-Vice, Pat
                        Snyder, Dave O’Brien and wife, PJ, Chuck
                        McBrearty and wife Linda, John Loftis, John
                        Carson, Gary Killian, Dennis Gilroy and our
                        Post-Monitor rovin’ reporter and digipic photographer,
                        Bob Wiley and his wife Judith.
                        <br /><br />
                         The Center Commander, Col. Turner, and Superintendent,
                        Chief French (both association
                        members), presided and presented the trophies.
                        Mike was recognized for his continuing contributions
                        to the Center and to the alumni (see the
                        page 1 ‘Salute’ for details).
                        <br /><br />
                         The alumni attending were honored and rewarded
                        by being seated with the AFTAC Squadron
                        Commander, Maj Trevillin, and his First Sergeant,
                        SMSgt Parkhill, and at a table near the
                        dais with a clear view of the ceremonies and the
                        band stand . "Full Spectrum", the Band of the
                        USAF Reserve, from Warner-Robins provided
                        music for dining and a short program before the awards presentation. Following the presentations,
                        the ‘Green Light Band’ raised everyone's
                        spirits with a couple of rousing patriotic songs.
                        <br /><br />
                         Col Tuner closed the presentations with a recap
                        of 2005 highlights on newcomers, transfers, retirements,
                        mission accomplishments, etc. He finished
                        with a recitation of what he called a "ditty",
                        "I Love AFTAC" (see active-duty pages).
                         Other alumni still serving AFTAC as Civil Service
                        who were honored included Gary Killian
                        and John Carson. 
                    </p>
                </article>
            
                <article id="goldian" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        2004 ALUMNI OF THE YEAR <br />JOE GOLDIAN                    
                    </p>
                    <img alt="goldian.png" class="maroonBorder autoMarginLeftRight" src="_Photos/AOY/goldian.png" />
                    <p>
                        Congratulations Joe.
                        Your selection recognizes
                        your extensive
                        time and service. And
                        this service has been long in
                        tenure and broad and deep
                        in application.
                        <br /><br />                        
                         Joe began attending association
                        meeting even before
                        he retired, starting in 1991.
                        He currently serves as our treasurer and, in 1999,
                        served as our Vice President.
                         During this period Joe has never failed to step forward
                        to help in whatever endeavor the association
                        was involved in. He has personally managed several
                        golf tournaments, and was ‘Joe on the spot’ for
                        reunions and other association matters. He has
                        been a member since 1991.
                        <br /><br />                        
                         Joe was born in North Carolina in 1949 and joined
                        the Air Force in Jan, 1968. He served in AFTAC
                        from 4/68 to 7/74 and 7/75 to 9/91. His final assignment
                        in AFTAC was as Manager, Treaty
                        Monitoring Operations Program. Joe retired as a
                        MSgt in September 1991. Joe's assignments include
                        American Samoa, Mindinao Philippines,
                        Wonju Korea, and several tours at Denver and
                        the various Headquarters locations. Joe was
                        one of the first AFTACers to perform Treaty directed
                        inspections on Soviet missiles. 
                        <br /><br />                        
                        Thanks Joe, for your service to this country, AFTAC,
                        and now the association. Your contributions
                        are truly appreciated. Congratulations again on
                        your selection as our 'Alumni of The Year, 2004.'
                         Joe’s selection was announced at the association’s
                        annual SnowBall on Feb 5th and he was
                        again recognized at the Center’s Annual Award
                        Banquet on March 3rd.
                    </p>
                </article>
 

                <article id="payne" class="alumArt alumArt noDisplay">
                    <p class="pTitle centerText">
                        2001 ALUMNI OF THE YEAR <br />JIM PAYNE                    
                    </p>
                    <img alt="payne.png" class="maroonBorder autoMarginLeftRight" src="_Photos/AOY/payne.png" />
                    <p>
                        The highlight of our annual association Snow- Ball on February 18th was the announcement of the selection of Jim Payne as the '2001 Alumni of the Year.' He received a special coin that flew on the Shuttle Orbiter 'Atlantis' on the occasion of the Air Force, and AFTAC's, 50th anniversary (Sep-Oct '97). Jim will also be honored at the AFTAC Command Award ceremony on April 24th at the PAFB NCO Club, come on out and show your support (info. page 19).
                        At the presentation, Joe Marshall, Association President, noted that Jim began his Air Force career in October, '52. He first served in Ground Radio at Japan, NJ, and MS. In May '62, he was assigned to AFTAC initially serving in the 'R' technique. Jim worked at several detachments as well as at Denver, Germany and California. In 1981, Cot. 'Meis' selected him to the organization's highest enlisted post, 'Senior Enlisted Advisor,' and he served in this capacity until his retirement in '83.
                        Along the way. Jim earned a Master of Science degree in Management and was decorated with the Meritorious Medal and the Air Force Commendation Medal with one oak leaf cluster.
                        He has been an active supporter and lifetime member of the Alumni Association since the first year of its existence in 1985. In 1999, he accepted the Membership chair and has made notable contributions in that position.
                        <br /><br />                        
                        Jim has implemented procedures and changed the membership data from a hardcopy status to a computer generated product, and at the same time linking the Worldwide Directory, Membership Directory and the individual data of 4000 records.
                        <br /><br />                        
                        Jim has also established procedures to contact individuals who register on the web page and any member who 'overlooks' their dues. He makes them aware of the advantages of staying with, or joining, the alumni association in a very informal, friendly manner. Jim also handles all requests (letters, emails, packages), and ships any items ordered from the association's 'Shop.'
                        All in all, Jim does an outstanding service for your association. Thank you Jim, for your continuing service to the Air Force, AFTAC, and the Long-Range Detection Alumni Association.
                    </p>
                </article>
            </div>

            <div class="clear"></div>

        </article>

        <article id="golfGetArt" class="myArts padding10 noDisplay maroonBorder smallShadow">
            <asp:Label ID="Label7" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2em" runat="server" Text="Golf N’GetTogether"></asp:Label>
            <asp:Label ID="Label11" CssClass="block" ForeColor="DarkRed" Font-Italic="true" Font-Bold="true" Font-Size="1.4em" runat="server" Text="Reported By Ed Lindsay"></asp:Label>

 
            <p>The Fall Golf N’GetTogether was originally scheduled for 30 September.  A conflict with the AFTAC Toilet Bowl the following week and possible bad weather caused concern of a low turnout.  We did not want the same issues as our Spring GetTogether, with the 2nd half rainout.  Plus we had to try to get our tournament in the books before the golf course went to Winter rates.  There were many negotiations, changing schedules around, and the golf course being closed for 16 days due to damage from Hurricane Matthew.  Finally reached an agreement to hold the GetTogether the Friday before Daylight saving went in to effect.</p>
            
            <div class="floatLeft width45">
                <figure>
                    <img alt="gg1.jpg" class="width90 leftMargin3em maroonBorder smallShadow" src="_Photos/golfGetTogether/gg1.jpg" />   
                    <figcaption class="width90 topMargin1em maroonText leftMargin3em italic">John H., Eileen B., and Pat S. registering the golfers</figcaption>
                </figure>     
            </div>
            <div class="floatLeft width45">
                <figure>
                    <img alt="gg2.jpg" class="width90 leftMargin3em maroonBorder smallShadow" src="_Photos/golfGetTogether/gg2.jpg" />   
                    <figcaption class="width90 topMargin1em maroonText leftMargin3em italic">Best dressed: Ed Lindsay, Frank Woodard, Pat Murphy, Tony Calenda</figcaption>
                </figure>     
            </div>
            <div class="clear"></div>

            <p>On 4 November, 86 men and women gathered to socialize, beat up a defenseless, little ball, and have some adult beverages and food.  It was going to be a beautiful day.  To start off, John Horsch joined Ed Lindsay to stuff the goodie bags with water, bananas, crackers, slim jims, and other survival supplies.  It was a hectic job and these two worked feverishly to get the bags stuffed before the masses showed up.  Then on to the registration.  Eileen Best showed up to lend a hand and John H jumped right in to help sell Mulligans.  Pat Snyder, who was also golfing, asked to helped and jumped right in to get the golfers signed up.  Bob Wiley and Judy Henderson arrived and started taking photos.  It was a great start, to a great day.</p>
            <p>Rene Uzee, the Manatee Golf Course Tournament Director, and ex-AFTACer gathered the players around for a final brief.  With all the formal announcements completed, the 22 teams headed to their assigned holes.  Bob Wiley could be seen throughout the course snapping photos.  While everyone was out chasing the golf balls, Eileen and Judy stayed behind to sort out the Raffle ticket mess that Ed had left them.  They did a phenomenal job making sure that everyone that played, received at least on door prize.</p>
            <p>As the day progressed, one could hear many cheers and expletives emanating around the course.  The rain never came, the course was in great condition, and the weather was awesome.  A perfect day for golf with a whole bunch of friends.  The teams started to head back to the clubhouse to turn in their scorecards.  Then they sat down for a nice catered Bar B Que lunch, catered by the golf course staff.  Ed then began to give out the awards.</p>
            
            <div class="floatLeft width45">
                <figure>
                    <img alt="gg3.jpg" class="width90 leftMargin3em maroonBorder smallShadow" src="_Photos/golfGetTogether/gg3.jpg" />   
                    <figcaption class="width90 topMargin1em maroonText leftMargin3em italic">1st place: Joe H., Bob C., Sonny Z., Donnie C.</figcaption>
                </figure>     
            </div>
            <div class="floatLeft width45">
                <figure>
                    <img alt="gg4.jpg" class="width90 leftMargin3em maroonBorder smallShadow" src="_Photos/golfGetTogether/gg4.jpg" />   
                    <figcaption class="width90 topMargin1em maroonText leftMargin3em italic">2nd place: Gary K., Chad B., Larry S., Larry B.</figcaption>
                </figure>     
            </div>
            <div class="clear"></div>

            <div class="width95 padding10 autoMarginLeftRight maroonBorder smallShadow">
                <ul>
                    <li><span class="underLine maroonText">1st place:</span>  Joe Hauser, Bob Callahan, Sonny Zigler, Donnie Coffield.</li>
                    <li><span class="underLine maroonText">2nd place:</span> Gary Killian, Chad Brotherton, Larry Silhanek, Larry Brown</li>
                    <li><span class="underLine maroonText">3rd place:</span> Troy Lawson, Daneille Turlington, Jason Netz, Jason Klug</li>
                    <li><span class="underLine maroonText">Closest to the pins:</span> Mike Paglia, Troy Lawson, Marty Urbanski, Devin Dean</li>
                    <li><span class="underLine maroonText">Long Drive:</span>  Women:  Pat Snyder&nbsp;&nbsp;&nbsp;Men: Evan Carlson</li>
                </ul>
            </div>
            <p>
                And of course we couldn’t have had such a successful event without all of our sponsors.  Thank you to Moon Golf, Fiesta Azteca, Beef O’Brady’s, Charlie and Jake’s, U.S. 1 Golf Center, 
                And our $250 sponsors: Space Coast Intelligent Solutions and Andres Yepes from Raymond James, Financial Advisors  
            </p>
        </article>
            
        <article id="toiletArt" class="myArts noDisplay maroonBorder smallShadow">
            <asp:Label ID="Label5" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2em" runat="server" Text="TOILET BOWL"></asp:Label>
            <asp:Label ID="Label6" CssClass="block" ForeColor="DarkRed" Font-Italic="true" Font-Bold="true" Font-Size="1.4em" runat="server" Text="Reported By Ed Lindsay"></asp:Label>
            <p>Fall of 2016 was a season for many needs for change in AFTAC.  So, more of the same.  One of these was the need to change the date of the Annual gathering that pits Directorates/Squadrons against each other on the softball field.  A windy, blowhard named Matthew visited much of the East coast of the U.S.  The initial Toilet Bowl date of  7 October had to be scrubbed three days prior to the event since it appeared that Matthew was looking to do some major damage to the Space Coast.</p>
            
            <p>Matthew passed and now it was time to clean up.  But the question still arose, “when is the Toilet Bowl”?  AFTACers needed a break from the hustle and bustle, so Nov 10, the day before Veteran’s Day, was the date selected for competition, food, and fun.</p>
            <p>The softball competition was a double-elimination format, with 9 teams participating.  An 8:00 safety brief was conducted.  Then the first games began.  It was a very calm, cool day.  Perfect for a long day of softball and picnicking.  Unlike some of the previous years that were hot, muggy, and rainy at times.  The games went on and some teams were eliminated.</p>
            <figure class="width45 autoMarginLeftRight">
                <img alt="tb1.jpg" class="leftMargin1em maroonBorder smallShadow width90" src="_Photos/toilet/tb1.jpg" />
                <figcaption class="italic topMarginHalfem fontSize1em maroonText centerText">
                    Director of Staff, Jim Whidden taking his turn providing beverages
                </figcaption>
            </figure>
            <p>Throughout the day, chances for the Winter Social gift baskets were also being sold.  This was a great idea and many were filling up those chance boxes with plenty of tickets.</p>
            <p>Bob Wiley, James Griffieth, Ed Lindsay, and Jim Whidden helped man the beer kegs.  Beer and cider was flowing and the stories were being told.  The championship teams had been determined, but they would have to wait.  It was now time for the Home Run Derby and to eat some wonderful pulled pork, hot dogs, and hamburgers that had been prepared by MSgt Chevis Stanley and others. </p>
            <figure class="width45 floatLeft">
                <img alt="tb2.jpg" class="leftMargin2em maroonBorder smallShadow width90" src="_Photos/toilet/tb2.jpg" />
                <figcaption class="italic topMarginHalfem fontSize1em maroonText centerText">
                    Colonel Gorski, AFTAC commander, getting a pie in the face for the cause
                </figcaption>
            </figure>
            <figure class="width45 floatLeft">
                <img alt="tb5.jpg" class="leftMarginem maroonBorder smallShadow width90" src="_Photos/toilet/tb5.jpg" />
                <figcaption class="italic topMarginHalfem fontSize1em maroonText centerText">
                    People getting ready to get a pie in the face.  Colonel Gorski on the left.
                </figcaption>
            </figure>
            <div class="clear"></div>
            <p>Also during the day’s events, there was a nominating competition going on to select someone to get a pie in the face.  Once the Home Run Derby was finished, the real bidding started.  Five individuals were selected, but this author does not know all the recipients.  Two of them were AFTAC Commander, Colonel Gorski and SMSgt Chad Madore.</p>
            <figure class="width45 autoMarginLeftRight">
                <img alt="tb3.jpg" class="leftMargin1em maroonBorder smallShadow width90" src="_Photos/toilet/tb3.jpg" />
                <figcaption class="italic topMarginHalfem fontSize1em maroonText centerText">
                    AFTAC Alumni president Ed Lindsay, playing for the winning MS-1 team
                </figcaption>
            </figure>
            <p>After people got cleaned up, the masses met for the final games.  Colonel Gorski thanked everyone for attending and the National Anthem was sung by Atomic Blue, the AFTAC chorus.  Then Mission Support 1 (MS) and Materials Directorate (TM) faced off.  MS-1 had already beat TM in a close game during regular competition.  The MS-1 team took it to the TM team hard and only one game was needed to crown MS-1 the winners for the second year straight.</p>
            <p>It was a great day to get together, have some friendly competition, many laughs, and get ready for the long weekend.  Looking forward to next year’s event and I have heard some murmurings of putting together an AFTAC Alumni team…I know we have some softball players out there and some very crafty ones at that.</p>
            <figure class="width45 autoMarginLeftRight">
                <img alt="tb4.jpg" class="leftMargin1em maroonBorder smallShadow width90" src="_Photos/toilet/tb4.jpg" />
                <figcaption class="italic topMarginHalfem fontSize1em maroonText centerText">
                    Some of the Toilet Bowl trophies and the tournament bracket
                </figcaption>
            </figure>
       </article>

        <article id="specialLinksArt" class="myArts noDisplay">
            <asp:Label ID="Label22" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2.5em" runat="server" Text="SPECIAL LINKS"></asp:Label>
            <p class="width50 topMargin1em autoMarginLeftRight smallShadow maroonBorder">
                This is a list of web pages that we feel would be useful to you. If you would like to see more, please contact the webmaster and let us know.
            </p>
            <ul id="linkUl" class="autoMarginLeftRight topMargin2em">
                <li>
                    <a href="http://www.va.gov" target="_blank">Veterans Admin</a>
                </li>
                <li>
                    <a href="http://www.gopatrickfl.com/" target="_blank">Go Patrick FL</a>
                </li>
                <li>
                    <a href="http://www.25af.af.mil" target="_blank">25<sup class="redText">th</sup> Air Force News</a>
                </li>
                <li>
                    <a href="http://militaryadvantage.military.com/" target="_blank">The Military Advantage Blog</a>
                </li>
            </ul>
<%--            <img id="coin" alt="EFAE.jpg" src="_Images/EFAE.jpg" />--%>
        </article>

        <article id="dailyHitReportArt" class="myArts noDisplay">
            <asp:Label ID="Label21" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2.5em" runat="server" Text="DAILY HIT REPORT"></asp:Label>

            <div class="width60 autoMarginLeftRight">
            <asp:GridView ID="gvDailyHitReport" CssClass="floatLeft topMargin2em" runat="server" AlternatingRowStyle-BackColor="#FFFFCC" Font-Bold="True" EditRowStyle-BackColor="DarkRed" BorderColor="DarkRed" HeaderStyle-BorderStyle="Solid" RowStyle-BorderColor="DarkRed" RowStyle-ForeColor="DarkRed"></asp:GridView>
            <asp:GridView ID="gvIPTotals" CssClass="floatLeft topMargin2em leftMargin3em" runat="server" AlternatingRowStyle-BackColor="#FFFFCC" Font-Bold="True" EditRowStyle-BackColor="DarkRed" BorderColor="DarkRed" HeaderStyle-BorderStyle="Solid" RowStyle-BorderColor="DarkRed" RowStyle-ForeColor="DarkRed"></asp:GridView>
            </div>
        </article>

        <article id="jobsArt" class="myArts noDisplay bottomMargin7em">

            <asp:Label ID="Label57" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2.5em" runat="server" Text="JOBS"></asp:Label>
        
            <p class="redText centerText">
                NOTE: Unless otherwise requested, we will credit you, by name, for notifying us of information for this page. 
            </p>            
            
            <hr class="myHR" />

            <h2 id="france2" class="jobSearch bold aLeft underLine leftMargin5em">Geophysicist – Sisprobe – Institute of Earth Sciences, Grenoble-Alpes University, France – Posted: 21 Dec 2018 – Closes: When filled.  </h2>

            <h2 id="france1" class="jobSearch bold aLeft underLine leftMargin5em">Seismic Data Analyst - – Sisprobe – Institute of Earth Sciences, Grenoble-Alpes University, France – Posted: 21 Dec 2018 – Closes: When filled.</h2>

            <h2 data-toggle-link="https://www.usajobs.gov/GetJob/ViewDetails/519078200#overview" class="jobSearch bold aLeft underLine leftMargin5em">Computer Scientist – USGS – Pasadena, CA – Posted: 19 Dec 2018 – Closes: 4 Jan 2019</h2>

            <h2 data-toggle-link="http://www.mvo.ms/pub/Vacancies/20181212-SRC_Vacancy_Computer_Programmer.pdf" class="jobSearch bold aLeft underLine leftMargin5em">Computer Programmer - Seismic Research Centre of The University of the West Indies, Trinidad and Tobago – Trinidad – Posted: 19 Dec 2018 – Closes: 13 Jan 2019</h2>

            <h2 data-toggle-link="https://www.candidatemanager.net/cm/p/pJobDetails.aspx?mid=YWWY&sid=BWDY&jid=GTCXGTWCXU&a=Ya5kVOjNOCU%253d" class="jobSearch bold aLeft underLine leftMargin5em">Laboratory Manager – Ocean Bottom Seismometer Instrument Center, Woods Hole Oceanographic Institution – Woods Hole, MA – Posted: 10 Dec 2018 – Closes: 30 Jun 2019</h2>

            <h2 data-toggle-link="https://www.candidatemanager.net/cm/p/pJobDetails.aspx?mid=YWWY&sid=BWDY&jid=GTCXGTWCXGT&a=Ya5kVOjNOCU%253d" class="jobSearch bold aLeft underLine leftMargin5em">Data Specialist - Ocean Bottom Seismometer Instrument Center, Woods Hole Oceanographic Institution – Woods Hole, MA – Posted: 10 Dec 2018 – Closes: 30 Jun 2019</h2>

            <h2 data-toggle-link="https://www.usajobs.gov/GetJob/ViewDetails/517782200" class="jobSearch bold aLeft underLine leftMargin5em">Geophysicist/Physical Scientist/Oceanographer (Watchstander), National Oceanic and Atmospheric Administration – Palmer, AK – Posted: 5 Dec 2018 – Closes: 11 Dec 2018</h2>

            <h2 data-toggle-link="http://careers.alaska.edu/cw/en-us/job/510583/gi-aec-data-specialist" class="jobSearch bold aLeft underLine leftMargin5em">Research Professional/Data Specialist – Alaska Earthquake Center – Fairbanks, AK – Posted 8 Nov 2018 – Closes: When filled.</h2>

            <h2 class="jobSearch bold aLeft leftMargin5em underLine" style="cursor:default">Field Technician – Lamont-Doherty Earth Observatory – Columbia University, NY – Posted: 23 Oct 2018 – Closes: 31 Dec 2018</h2>

            <h2 class="jobSearch bold aLeft leftMargin5em underLine" style="cursor:default">Staff Scientist/Data Specialist – IRIS Passcal – New Mexico Tech, NM – Posted: 23 Oct 2018 – Closes: 31 Jan 2019: Apply to: New Mexico Tech, Human Resources 801 Leroy Pl. Brown Hall Box 119, Socorro, NM 87801-4796</h2>

            <h2 data-toggle-link="https://uacareers.com/postings/32799" class="jobSearch bold aLeft underLine leftMargin5em">Information Technology Network Specialist – Department of Geosciences – University of Arizona – Posted: 23 Oct 2018 – Closes: 14 Dec 2018</h2>

            <h2 data-toggle-link="https://uwhires.admin.washington.edu/eng/candidates/default.cfm?szCategory=jobprofile&szOrderID=160545" class="jobSearch bold aLeft underLine leftMargin5em">Field Engineer – Pacific Northwest Seismic Network – University of Washington – Posted: 23 Oct 2018 – Closes: 30 Dec 2018</h2>

            <h2 data-toggle-link="https://kbrwyle.jobs/albuquerque-nm/seismic-data-quality-control-qc-analyst/E0614308B0604FACABFA368302FB2551/job" class="jobSearch bold aLeft underLine leftMargin5em">Seismic Data Quality Control (QC) Analyst Albuquerque, New Mexico – Posted: 23 Oct 2018</h2>

            <h2 data-toggle-link="https://utah.peopleadmin.com/postings/81552" class="jobSearch bold aLeft underLine leftMargin5em">Research Scientist – Utah Seismograph Stations – University of Utah – Posted: 31 Aug 2018- Closes: 31 Dec 2018</h2>

            <p class="centerText">
                Please forward all queries to: <a class="redText underLine" href='mailto:alaskamorgans@gmail.com'>Scott Morgan</a> 
            </p>

        </article>

       <article id="databaseArt" class="myArts noDisplay bottomMargin7em">
           <p class="pTitle centerText">Database Administrator at PAFB</p>
           <h1 data-toggle-link="http://kegmaninc.com/index.php/job/database-administrator-2018-1224-134/" class="autoMarginLeftRight underLine maroonText bold topMargin3em" style="cursor:pointer;">See details of Database Administrator Job</h1>
           <h1 data-toggle-link="http://kegmaninc.com/index.php/side-navigation/jobs" class="autoMarginLeftRight underLine maroonText bold topMargin2em" style="cursor:pointer;">Click here to see other great jobs at KEGMAN Inc.</h1>
       </article>

       <article id="newsToKnowArt" class="myArts noDisplay bottomMargin7em">

            <asp:Label ID="Label3" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2.5em" runat="server" Text="NEWS TO KNOW"></asp:Label>
            
           <div class="aLeft">
                <p id="newsTitle" class="width30 pTitle redText inline leftMargin1em">Current News Articles</p>
                <input id="btnShowArticles" class="myBut inline leftMargin8em" type="button" value=" Show Archived Articles " />
            </div>

            <div class="clear"></div>

           <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Nuclear air sampling aircraft on display at Patrick AFB - 3/14/2019</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkSampling" class="n2KPara noDisplay">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-4 offset-md-1">
                                <figure>
                                    <img alt="Sampling1.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Sampling1.jpg" />
                                    <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                        U.S. Air Force Staff Sgt. Theodore "TJ" Bencoter, a special equipment operator with the Air Force Technical Applications Center's Detachment 1 at Offutt AFB, Neb., reviews technical collection information aboard the WC-135 Constant Phoenix. The aircraft was on display at Patrick AFB, Fla., for members of the nuclear treaty monitoring center and base personnel to tour. (U.S. Air Force photo by Susan A. Romano)
                                    </figcaption>
                                </figure>
                                <figure class="topMargin1em">
                                    <img alt="Sampling4.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Sampling4.jpg" />
                                    <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                        U.S. Air Force Staff Sgt. Theodore "TJ" Bencoter, a special equipment operator with the Air Force Technical Application Center's Detachment 1 at Offutt AFB, Neb., explains to visitors how the aircraft collects air samples when flying in an area where nuclear debris may be present. (U.S. Air Force photo by Susan A. Romano)
                                    </figcaption>
                                </figure>
                            </div>
                            <div class="col-md-3">
                                <figure>
                                    <img alt="Sampling2.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Sampling2.jpg" />
                                    <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                        U.S. Air Force Senior Airman Victor Williams (front) repositions a whole air sphere aboard the WC-135 Constant Phoenix as Master Sgt. Jose Gallegos observes. The Airmen, both special equipment operators, are members of the Air Force Technical Applications Center's Detachment 1 based at Offutt AFB, Neb., and were at Patrick AFB, Fla., to offer tours of the nuclear treaty monitoring aircraft. (U.S. Air Force photo by Susan A. Romano)
                                    </figcaption>
                                </figure>
                            </div>
                            <div class="col-md-4">
                                <figure>
                                    <img alt="Sampling3.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Sampling3.jpg" />
                                    <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                        The WC-135 Constant Phoenix on display at Patrick AFB, Fla. (U.S. Air Force photo by Susan A. Romano)
                                    </figcaption>
                                </figure>
                                <figure class="topMargin1em">
                                    <img alt="Sampling5.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Sampling5.jpg" />
                                    <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                        U.S. Air Force Tech. Sgt. David Suberlak, a special equipment operator with the Air Force Technical Applications Center's Detachment 1 at Offutt AFB, Neb., examines the inner workings of a U1B foil, the device that cycles filter paper within the foil as the aircraft flies through an area where radioactive debris may be present. (U.S. Air Force photo by Susan A. Romano)
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                    </div>

                    <div class="clear"></div>

                    <div>
                        <p class="block">
                            The aircraft that performs atmospheric sampling for the Air Force Technical Applications Center was on display for invited guests to get a glimpse into how AFTAC personnel perform their nuclear treaty monitoring mission. 
                            <br /><br />
                            Based out of Offutt AFB, Neb., the WC-135 Constant Phoenix routinely conducts air sampling missions over the Pacific Ocean, Bay of Bengal, Mediterranean, Polar Regions, Indian Ocean, and off the coasts of South America and Africa in support of the Limited Test Ban Treaty of 1963. 
                            <br /><br />
                            The LTBT prohibits nuclear weapons tests or explosions in the atmosphere, in outer space or underwater. The treaty does not ban tests underground, but it does prohibit explosions if they cause radioactive debris to permeate beyond the territorial boundaries of the country responsible for the test. 
                            <br /><br />
                            To verify compliance with the treaty, signatories agree to a system of controls and inspections aimed at limiting nuclear weapon test explosions. One way to verify compliance is to conduct background collections in the atmosphere. 
                            <br /><br />
                            The WC-135 crew of special equipment operators operate a suite of collection devices that are housed in the main body of the aircraft. One is an external flow-through device called a U1B foil. Similar to how a traditional jukebox operates, filter paper is cycled through the foil into the airstream as the aircraft flies through an area where radioactive debris may be present. Simultaneously, large high-pressure spheres collect whole air samples through an onboard compressor system. 
                            <br /><br />
                            Once the collections are complete, the spheres and filter papers are sent to AFTAC’s network of laboratories for analysis. 
                            <br /><br />
                            “The aircraft doesn’t routinely fly near Patrick, so any time we can seize the opportunity to showcase the jet to our workforce, we take it,” said Lt. Col. Matthew Morello, 21st Surveillance Squadron commander. “We think it’s important for people who are involved in the day-to-day AFTAC mission to see how their work plays a role in our airborne collection operations.” 
                            <br /><br />
                            The Air Force has two WC-135 aircraft in its inventory – both based at Offutt AFB. 
                            <br /><br />
                            “While the jets themselves and flight crew of the Constant Phoenix fall under 55th Wing at Offutt, the SEOs belong to AFTAC,” said Col. Jon VanNoord, 709th Surveillance and Analysis Group commander. “To correctly position the aircraft takes a team effort between the flight deck and the SEOs. It’s not often you find a junior noncommissioned officer telling the commissioned officer piloting the plane where to fly the aircraft, but that’s the case when we receive operational taskings. Our SEOs are typically junior to mid-grade NCOs who use a variety of methods to determine the optimal patterns the jet should fly to get the best collects.” 
                            <br /><br />
                            Nearly 350 people toured the Constant Phoenix while it was on the ground a Patrick. 
                            <br /><br />
                            “A big thank you to the crew and maintainers from the 55th for their support and participation in the tour,” said VanNoord. “We couldn’t have done it without their assistance.”
                        </p>
                    </div>
                </article>
            </section>

           <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Rare boat-to-boat transfer executed on the high seas - 3/13/2019</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkBoat2Boat" class="n2KPara noDisplay">
                    <div  class="width45 floatLeft">
                        <figure>
                            <img alt="B2B1.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/B2B1.jpg" />
                            <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Members of the U.S. Coast Guard transport Capt. Paul A. Karsten III (center) via rescue boat to the USNS Invincible, a radar ship that collects ballistic missile data for the Air Force Technical Applications Center at Patrick Air Force Base, Florida, as part of the center's nuclear treaty monitoring mission. (Photo courtesy of the U.S. Coast Guard)
                            </figcaption>
                        </figure>
                    </div>

                    <div  class="width45 leftMargin2em floatLeft">
                        <figure>
                            <img alt="B2B2.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/B2B2.jpg" />
                            <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Capt. Paul A. Karsten III, (in rescue boat with blue helmet), prepares to transfer from the rescue boat to the USNS Invincible to take command of the mission aboard the radar vessel. Karsten, a member the 22nd Surveillance Squadron at the Air Force Technical Applications Center, Patrick Air Force Base, Florida, was rapidly deployed to replace the acting mission commander due to a family emergency. Boat-to-boat transfers are rare for AFTAC mission commanders. (Photo courtesy of the U.S. Coast Guard)
                            </figcaption>
                        </figure>
                    </div>

                    <div class="clear"></div>

                    <div  class="width45 autoMarginLeftRight">
                        <figure>
                            <img alt="B2B3.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/B2B3.jpg" />
                            <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                A small rescue boat is seen approaching the USNS Invincible in the Persian Gulf with Invincible mission commander Capt. Paul A. Karsten III aboard.  Karsten, a member of the 22nd Surveillance Squadron at the Air Force Technical Applications Center, Patrick Air Force Base, Florida, was transferred to the ship after the current mission commander was redeployed on emergency leave. (Photo courtesy of the U.S. Coast Guard)
                            </figcaption>
                        </figure>
                    </div>

                    <div class="clear"></div>

                    <div>
                        <p class="block">
                            A rare sight was seen by crew members of the USNS Invincible recently when the ship’s mission commander transferred to the ship while it was out to sea. 
                            <br /><br />
                            Capt. Paul A. Karsten III received a short-notice tasking to replace the current MC who had a family emergency and needed to rapidly redeploy home.  Since there wasn’t enough time nor pier availability to bring the Invincible into port, Lt. Col. Christopher Terry made the decision to transfer Karsten from a small U.S. Coast Guard rescue boat to the Military Sealift Command vessel. 
                            <br /><br />
                            Karsten is a member of the 22nd Surveillance Squadron at the Air Force Technical Applications Center headquartered in Cocoa Beach, Fla.  As the sole nuclear treaty monitoring center in the Department of Defense, AFTAC assigns company grade officers from the center to serve as mission commanders on one of its two ships to lead onboard operations in the collection of ballistic missile data. 
                            <br /><br />
                            One way it accomplishes that mission is through the radar platforms aboard the Invincible. 
                            <br /><br />
                            “The ship operates on an unpredictable schedule where mission taskings are routinely short notice and require quick reactions to support theater commanders,” said Maj. Benjamin Christensen, assistant director of operations for the 22nd SURS.  “When we learned of the family emergency, our team here at Patrick AFB rapidly jumped into action to get the current mission commander home and get Capt. Karsten out to sea.” 
                            <br /><br />
                            Those actions don’t come without a great deal of challenging-but-mandatory requirements. 
                            <br /><br />
                            “We have to ensure we are communicating with everyone involved,” said Terry, 22nd SURS commander.  “The team contacted Combined Task Force 53 and the U.S. Coast Guard in the region for assistance, and Capt. Karsten had to coordinate rendezvous operations with Invincible’s ship master.  And of course, the daily mission must continue uninterrupted, so pulling it off doesn’t come without its own set of hurdles.” 
                            <br /><br />
                            Terry said he’s extremely proud of the teamwork he witnessed throughout the transfer operation. 
                            <br /><br />
                            “It’s very rare to for us to execute a ship-to-ship small boat transfer aboard our mobile sensor ships,” he said.  “But when situations like this arise, they give our crew members an opportunity to see how important it is to be flexible while out to sea and what needs to happen in an emergency like this.  We’re grateful to CTF 53 and Coast Guard for their assistance.  It’s all about teamwork.” 
                            <br /><br />
                            Karsten is expected to be out to sea as the mission commander for a three-month rotation.

                        </p>
                    </div>
                </article>
            </section>

           <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Defense Department pushing ahead to merge commissary and exchange systems - 3/13/2019</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkExchange" class="n2KPara noDisplay">
                    <div  class="width45 floatLeft">
                        <figure>
                            <img alt="Exchange.jpg" class="maroonBorder smallShadow width75" src="_Photos/News2Know/Exchange.jpg" />
                            <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                The new commissary at Fort Belvoir, Va., opened in the spring of 2017, is located next to the post exchange. (Kevin Robinson/Defense Commissary Agency)
                            </figcaption>
                        </figure>
                    </div>

                    <div>
                        <p class="block">
                            Defense officials are a step closer to merging the three military exchange systems and the commissary system into one “defense resale enterprise.”
                            <br /><br />
                            In a memo signed March 1, Lisa Hershman, acting DoD chief management officer, approved the business case for the merger.
                            <br /><br />
                            The merger will require the approval of Congress and nothing is yet final. Current law requires the Defense Department to operate separate commissary and exchange systems, so that law would have to be repealed. Another law prohibits DoD from using any taxpayer dollars to implement consolidation of resale entities until Oct. 1, as lawmakers evaluate the proposal.
                            <br /><br />
                            In the meantime, a task force will continue with planning efforts for a consolidated organization, stated Hershman, who is in the position that ranks third in the DoD hierarchy. The consolidation of the commissary and exchange systems also must be approved by acting deputy secretary of defense David Norquist. A source said he is expected to approve the proposal within days; a report and legislative proposals will then be sent to Congress.
                            <br /><br />
                            Officials have said that the first step would be to merge the exchange systems — Army and Air Force Exchange Service (AAFES), Navy Exchange Service Command and Marine Corps Exchange. It’s not clear whether officials have the authority to do that without legislation, but regardless, they can’t spend taxpayer dollars on any consolidation implementation before Oct. 1.
                            <br /><br />
                            The draft report from the task force, which analyzed the business case for consolidation, said its analysis supports merging the above-store functions of the exchange systems entirely, along with the above-store functions of the Defense Commissary Agency, into a single organization, while keeping specific grocery functions separate.
                            <br /><br />
                            Hershman’s memo stated she will recommend that the Marine Corps Morale, Welfare and Recreation and Warfighter and Family Services operations under the umbrella of Marine Corps Community Services, or MCCS, also be included in the consolidation because of their operational model, which includes the Marine Corps Exchange.
                            <br /><br />
                            Marine Corps officials have previously pushed back against proposals to put MCCS under the control of the proposed new defense agency, citing these efforts are “viewed as an intrusion to Title X authorities.” The MCCS organization “provides the commandant of the Marine Corps an integrated system of community services to help care [for], equip, and train our warfighters,” officials said in a previous position paper.
                            <br /><br />
                            The costs of implementing the consolidation is estimated to be $457 million to $570 million over five years, according to the business case analysis from the defense task force, completed in November. The task force stated DoD could “harvest significant savings” by consolidating commissary and exchange systems into one entity, and contends the benefits would “far exceed the costs.”
                            <br /><br />
                            Hershman stated she will also recommend that the deputy secretary authorize a new defense agency or expand the mission of an existing DoD component to assume jurisdiction over the defense resale enterprise. She’ll recommend that the new agency be placed under the authority of the Under Secretary of Defense for Personnel and Readiness.
                            <br /><br />
                            The task force report indicated that regardless of consolidation, the Defense Commissary Agency needs a full-time director, so that hiring process will begin, Hershman stated.
                            <br /><br />
                            While day-to-day operations of the separate resale organizations will continue, resale leaders must go to the task force director for approval before taking any actions that “could be inconsistent with or hamper consolidation,” Hershman wrote.
                            <br /><br />
                            “The department’s intent is to improve community services for our service members and their families, improve support to commanders, and fulfill its fiduciary responsibility” concerning taxpayer and nonappropriated, or MWR, funds, Hershman wrote.
                        </p>
                    </div>
                </article>
            </section>

           <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Congressional staffers learn about AFTAC’s heritage, mission - 3/13/2019</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkStaffers" class="n2KPara noDisplay">
                    <div  class="width45 floatLeft">
                        <figure>
                            <img alt="Staffers.jpg" class="maroonBorder smallShadow width75" src="_Photos/News2Know/Staffers.jpg" />
                            <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Mr. Jim Whidden, director of staff for the Air Force Technical Applications Center, briefs staff members from Rep. Bill Posey's (FL-8) office in AFTAC's Heritage Room at Patrick Air Force Base, Florida. The staffers visited the nuclear treaty monitoring center March 4, 2019 to learn more about AFTAC's heritage and global mission. Pictured from left to right: Whidden; Stuart Burns, chief of staff; Rick Podliska, senior policy advisor; and Patrick Gavin, district director. (U.S. Air Force photo by Susan A. Romano)
                            </figcaption>
                        </figure>
                    </div>

                    <div>
                        <p class="block">
                            Three members of U.S. Rep. Bill Posey’s (FL-8) office visited the Air Force Technical Applications Center March 4 to learn more about the center’s rich history and heritage. 
                            <br /><br />
                            Stuart Burns, Posey’s chief of staff, Rick Podliska, senior policy advisor, and Patrick Gavin, the congressman’s district director, traveled to the base and were met by Col. Jon VanNoord, 709th Surveillance and Analysis Group commander and Jim Whidden, AFTAC director of staff.  
                            <br /><br />
                            The visitors toured AFTAC’s Heritage Room – a showcase of equipment, memorabilia and artifacts dating back to the long range detection mission of the 1940s and 1950s. 
                            <br /><br />
                            “It’s always beneficial when we can have congressional staffers see for themselves just how vital our mission is to the safety and security of our nation,” said Whidden.  “We appreciate the time these gentlemen took out of their schedule to learn more about AFTAC’s role in nuclear event detection and nuclear treaty monitoring, and we hope they’ll come back again for another update on our evolving global responsibilities.”
                        </p>
                    </div>
                </article>
            </section>

           <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">STEM outreach key to uniting Airmen with students - 2/20/2019</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkOutreach" class="n2KPara noDisplay">
                    <div  class="width45 floatLeft">
                        <figure>
                            <img alt="Outreach1.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Outreach1.jpg" />
                            <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Croton Elementary Science Fair judge Diana Velosa gives a high five to Brianna Laflamme, a 4th grader at the Brevard County school as Velosa's co-workers, Staff Sgt. Jordan Peterson and Master Sgt. Michael Nolan laugh along.  The members of the Air Force Technical Applications Center at Patrick AFB, Fla., volunteered to serve as judges, examining more than 200 projects by 4th, 5th and 6th graders Feb. 7, 2019. (U.S. Air Force photo by Susan A. Romano)
                            </figcaption>
                        </figure>
                    </div>

                    <div  class="width45 leftMargin2em floatLeft">
                        <figure>
                            <img alt="Outreach2.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Outreach2.jpg" />
                            <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Elijah Norsworthy, a 5th grader at Croton Elementary School in Melbourne, Fla., explains his scientific method to  Staff Sgt. Samuel Carmichael and Airman 1st Class Cynthia A. Schroll, members of the Air Force Technical Applications Center.  The Airmen served as judges for the school's annual science fair Feb. 7, 2019.   (U.S. Air Force photo by Susan A. Romano)
                            </figcaption>
                        </figure>
                    </div>

                    <div class="clear"></div>

                    <div  class="width45 floatLeft">
                        <figure>
                            <img alt="Outreach3.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Outreach3.jpg" />
                            <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Jarvienis Rosario, a 4th grader at Croton Elementary School, answers questions from Science Fair judges Senior Airman Harold Fisher Jr., and Airman 1st Class Ruben Vera-Colon who traveled from Patrick AFB, Fla., to Croton Feb. 7, 2019 to assist the school with its annual event.  Fisher and Vera-Colon are members of the Air Force Technical Applications Center, the Department of Defense's sole nuclear treaty monitoring center.  (U.S. Air Force photo by Susan A. Romano)
                            </figcaption>
                        </figure>
                    </div>

                    <div  class="width45 leftMargin2em floatLeft">
                        <figure>
                            <img alt="Outreach4.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Outreach4.jpg" />
                            <figcaption class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                2nd Lt. Tyler Peterson and Claudia Granger, scientists from the Air Force Technical Applications Center at Patrick AFB, Fla., listen to Bryce Jeffrey, a 6th grader at Croton Elementary School, describe his science fair project that dealt with the aerodynamics of paper airplanes.  The AFTAC duo was part of a team of 18 Airmen – military and civilian alike – who volunteered to serve as science fair judges Feb. 7, 2019.  (U.S. Air Force photo by Susan A. Romano)
                            </figcaption>
                        </figure>
                    </div>

                    <div class="clear"></div>

                    <div>
                        <p class="block">
                            A group of Airmen – military and civilian alike – traveled to Croton Elementary School in Melbourne, Fla., Feb. 7 to serve as Science Fair judges.
                            <br /><br />
                            Eighteen members of the Air Force Technical Applications Center here volunteered to examine more than 200 projects put together by 4th, 5th and 6th grade students and evaluate them based on their creativity, scientific thought, skill, clarity, thoroughness and knowledge gained.  
                            <br /><br />
                            Students were able to choose a topic from three basic categories:  physical, environmental or biological.  Once their topic was approved by their science teacher, they were required to employ the scientific method by forming a hypothesis, gathering the needed materials, developing a procedure, conducting the experiment, recording the results and ultimately drawing a conclusion of their findings.
                            <br /><br />
                            Croton Science Fair Coordinator Stacy Walsh gave each judge a rubric – a guide listing specific criteria for grading or scoring each entry – and the volunteers were divided up into small groups to review the tri-fold boards on display in the school’s cafeteria.
                            <br /><br />
                            The judges were then given the opportunity to interview each student to ask them about their methodology, the conclusions they drew from their experiments and how they came up with their hypothesis.
                            <br /><br />
                            Brianna Laflamme, a 4th grader in Mrs. Roberts’ class, impressed the judges with her project on what types of food ants are attracted to.  Master Sgt. Michael Nolan, Staff Sgt. Jordan Peterson and Diana Velosa asked the 9-year-old where she got the idea for her project.
                            <br /><br />
                            “One day I saw a bunch of ants in our cabinet, and it got me to thinking about what kind of food they’re attracted to,” said Brianna.  “So I thought it would be cool to set out different types of food to see what they’d be drawn to.”
                            <br /><br />
                            When the judges asked her if she was surprised with the outcome, she got a big smile on her face and said, “I really never thought they’d go towards the jalapeno, but they did!”
                            <br /><br />
                            Walsh, who has been an educator for more than 23 years, is in her third year at Croton, and her first year being in charge of the Science Fair.
                            <br /><br />
                            “The students have been working on their projects pretty much since September,” the 6th grade math and science teacher explained.  “At the beginning of the school year, they were given folders with background information about the program and a basic layout of what will be required of them when it comes time to put their boards together.  When the students returned to school after the winter break, that’s when students really started putting more energy and attention into their projects with the help of their teachers and family members.”
                            <br /><br />
                            Jarvienis Rosario, another member of Mrs. Roberts’ 4th grade class, hypothesized on whether the color of M&M candies would fade if placed in a cup of vinegar.
                            <br /><br />
                            “This was so much fun!” she exclaimed.  “Last year in 3rd grade we had to do a group class project and I loved doing it.  So this year I was so excited because I knew I was going to be able to do a project on my own.”
                            <br /><br />
                            Jarvienis was interviewed by Airman 1st Class Ruben Vera-Colon and Senior Airman Harold Fisher Jr.  The Airmen were intrigued by her concept and wanted to know about the outcome of her efforts.
                            <br /><br />
                            “Before I did the actual experiment, I didn’t think the vinegar would affect the M&Ms at all,” she told the judges, “but after I put them in the cups, I saw all the color fade off of them.  It was exciting and surprising!”
                            <br /><br />
                            When asked what she wants to be when she grows up, she declared, “I’m going to be a science teacher because I love doing stuff like this!”
                            <br /><br />
                            Jennifer Kelly had a very personal reason for volunteering to serve as a judge.
                            <br /><br />
                            “I graduated from Croton in 1996 and my son went to school here as well, so it seemed like a perfect opportunity for me to give back,” Kelly said.  “I teamed up with my co-worker Carmen Bigas and we judged projects done by the 5th graders.  It brought back a lot of memories of my time spent at the school, and of when I put together my own Science Fair project.  It’s always very rewarding when you can give back to the community.  I really enjoyed myself and hope I can be a part of it again next year.”
                            <br /><br />
                            In addition with being proud of the hard work and effort the students devoted to their projects, Walsh was equally impressed with the AFTAC volunteers.
                            <br /><br />
                            “The people from Patrick have been so incredibly accommodating and paid such close attention to the small details, like bending down to meet eye-to-eye with the students, showing an incredible amount of patience while speaking with some of our more shy children, and providing such positive feedback on the scoring sheets so each student would be able to read something good about their project from each judge,” Walsh said.
                            <br /><br />
                            She added, “The kids also were given the chance to meet real scientists and people they can look up to and possibly emulate later in life.  I can’t say enough about the men and women from AFTAC.  We’re indebted to them.”
                            <br /><br />
                            This is the sixth year AFTAC has participated in Croton’s annual Science Fair.
                        </p>
                    </div>
                </article>
            </section>

           <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Another tournament, another trophy for AFTAC Hockey - 1/16/2019</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkHockey" class="n2KPara noDisplay">
                    <div  class="width45 autoMarginLeftRight">
                        <div>
                            <img alt="Hockey.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Hockey.jpg" />
                            <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Members of the Athletes for Teamwork and Charity Hockey Club pose for a team photo after their tournament win against the Northeast Indiana Warbirds and the Tampa Warriors. The team is made up of players who work at the Air Force Technical Applications Center, Patrick AFB, Fla.  (Courtesy photo)
                            </p>
                        </div>
                    </div>

                    <div>
                        <p class="block">
                            The team co-hosted the charity tournament to raise money for Lighting Made Sled Hockey, a program sponsored by the Tampa Bay Lighting hockey team that provides people with disabilities the ability to play the game they love.  Players sit in specially designed sleds that sit atop two skate blades.  Competitors use two sticks with metal picks on one end to propel themselves across the ice and stick blades on the other to pass and shoot the puck.
                            <br /><br />
                            In early 2018, the Northeast Indiana Warbirds from Fort Wayne, Ind., approached AFTAC Hockey about possible games in Florida.  From there, AFTAC contacted the Tampa Warriors, affiliated with the USA Warriors program, about scheduling head-to-head match-ups at the new Florida Hospital Rink in Wesley Chapel, with all proceeds going to the sled hockey league.
                            <br /><br />
                            Bill Hungate, captain of AFTAC’s club, was thrilled when he was approached to co-host the tournament.
                            <br /><br />
                            “Our team has traveled to compete against national-level competition like the U.S. Naval Academy, The Citadel, and the FBI’s D.C., just to name a few,” Hungate explained.  “But when you’re responsible for bringing in a team from out of state, there are a lot more logistical aspects to consider.  It was great to skate against the Warbirds and the Warriors.”
                            <br /><br />
                            The first match pitted the Warriors against the Warbirds.  It was end-to-end action with the Warriors holding a 6-4 advantage until early into the third period when Warbird ace Lawne Snyder, a former minor league professional player and current Tampa resident, uncorked a wicked slap shot that whizzed just above the goalie’s glove and shattered the plexiglass behind the net.  The remainder of the game was cancelled so repairs could be made.
                            <br /><br />
                            The next match-up saw the Warbirds going head-to-head against AFTAC.  “This game was a shootout!” exclaimed AFTAC forward Cam Maddox.  “High scoring, lots of shots on goal and super energy from both teams.  It makes for great hockey.”
                            <br /><br />
                            AFTAC won the game, 15-7.
                            <br /><br />
                            The final game of the tournament was between AFTAC and the talented Warriors team.  Some Warbird players asked to join the AFTAC roster as players and coaches because they were having so much fun.  The score was knotted in the third period until AFTAC’s captain tallied the game-winning goal with less than a minute to go, giving AFTAC the win and the Warbirds players a taste of victory in Florida.
                            <br /><br />
                            “Our charity matches are what we call ‘no-contact games,’ meaning we don’t hit and check and tolerate fights like you might see in an NHL game,” Hungate explained.  
                            <br /><br />
                            “During our last match, there was a lot of incidental contact that came in the spirit of good competition.  But one of the great things about hockey is that no matter what happens on the ice, there is always a post-game handshake at center ice.  Overall, I think it was an incredibly successful tournament, and many of the Warbird players said they’re already planning personal vacations to come back to Florida and connect with our players.  Between making new friends and raising money for a great cause, it really doesn’t get much better than that.”
                            <br /><br />
                            The tournament raised more than $1,000.
                            <br /><br />
                            This was the second championship trophy AFTAC won in 2018; the first was against the Tampa Bay Fire Fighters in September.  
                            <br /><br />
                            AFTAC kicks off its collegiate portion of their schedule, with their next game is scheduled for Saturday, Jan. 19 at the Space Coast Iceplex in Rockledge, Fla., where they’ll be lacing up to play Eastern Florida State College Titans for the first time.  Proceeds will go to EFSC’s scholarship program and Space Coast Blast Sled Hockey.  
                            <br /><br />
                            After EFSC, the team hits the road for a game against the Lynn University Fighting Knights in Boca Raton Feb. 2, then onto South Beach for a game versus the Hurricanes at the University of Miami Feb. 23.
                            <br /><br />
                            For the team’s full schedule, to donate, or to obtain tickets for the game, visit the AFTAC Hockey Facebook page or send an email to <a href="MailTo:AFTAChockey@gmail.com">AFTAChockey@gmail.com</a>.
                        </p>
                    </div>
                </article>
            </section>

           <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">A1C with Ph.D. lands job at nuclear treaty monitoring center - 12/16/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkA1C" class="n2KPara noDisplay">
                    <div  class="width45 autoMarginLeftRight">
                        <div>
                            <img alt="A1C.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/A1C.jpg" />
                            <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Air Force Basic Training graduation photo of Airman 1st Class Cynthia A. Schroll.  Schroll is a radiochemistry technician at the Air Force Technical Applications Center, Patrick AFB, Fla.  (Courtesy photo)
                            </p>
                        </div>
                    </div>

                    <div>
                        <p class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            It’s not often you see those three-letter titles – A1C and Ph.D. – used to refer to the same person.  As a matter of fact, only one-hundredth of one percent of the Air Force’s enlisted force from E-1 through E-9 possess a doctor of philosophy degree – that’s just 33 Airmen out of 259,190 currently on active duty.
                            <br /><br />
                            Yet one woman with a doctorate in chemistry found herself signing on the proverbial dotted line, completing basic training, and is now assigned to the Department of Defense’s sole nuclear treaty monitoring center here.
                            <br /><br />
                            Airman 1st Class Cynthia A. Schroll enlisted in the Air Force in December 2017, though her unique career journey began much earlier, soon after the terrorist attacks of Sept. 11, 2001.
                            <br /><br />
                            “I was in my senior year of high school in 2001, and after 9/11 happened, I told my parents I wanted to enlist,” Schroll said.  “During the discussion, my mother said something that struck me, even using the word ‘please’ and asking me to do something for the first time in my life instead of telling me to.  She said, ‘Please don’t enlist.  I’ve been saving your whole life for you to go to college.’  I knew how much it meant to her, and I respect my parents deeply, so I went to college.”
                            <br /><br />
                            Schroll attended Morehead State University in Kentucky and earned a bachelor’s degree in chemistry in 2006.  She bypassed the traditional path after her undergraduate studies and went straight into the doctoral program at the University of Cincinnati.  
                            <br /><br />
                            “It’s not uncommon for people looking into science degrees to forego a master’s program and go straight into a doctoral studies,” Schroll explained.  “Most universities that offer a Ph.D. will let you obtain a master’s degree if you find yourself struggling with the Ph.D. work load.”
                            <br /><br />
                            She joked, “Someone once told me that the difference between a Ph.D. and a master’s degree is the Ph.D. project has to work in the end, while a master’s student can write up all the ways the project didn’t work!”
                            <br /><br />
                            Upon completion of her doctorate in analytical chemistry with an emphasis in spectroelectrochemical detection of f-block elements (say that five times fast!), she went straight into the work force doing environmental sample preparation, product management and worked as a contract research assistant at Pacific Northwest National Laboratory. She also taught general chemistry at the University of Cincinnati for two years. It was an enjoyable career per se, Schroll said, but military service was still on her mind.
                            <br /><br />
                            “I had everything going for me – a great education, good job, supportive family, everything – yet I was still thinking about enlisting,” she said.  “But I had some significant hurdles to overcome.  I was overweight and knew that was going to be a factor as to whether I’d qualify or not.  I had pets.  I had a house.  And then in 2014 I lost my mother to multiple myeloma, a form of blood cancer.  It was devastating to my family and me.  I took it quite hard and was lost without her influence.”
                            <br /><br />
                            From that tragedy, however, came the realization that she still wanted to serve her country and thought it would be a lasting tribute to her beloved mother.
                            <br /><br />
                            “I knew deep-down from the beginning she didn’t want me to join the service, but through all the grief I was experiencing, I had to find a path that would bring me greater reward,” she explained.
                            <br /><br />
                            So after several months of careful thought, consideration and a solid work-out program, Schroll paid a visit to her local recruiter to change her title from ‘Doctor’ to ‘Airman.’
                            <br /><br />
                            “Before I left for basic, I had several lengthy conversations with my sister who served in the Army for almost 10 years and I spoke to several other female friends who had also gone through the experience,” she said.  “They all told me about the mind games I should expect from the military training instructors (MTIs) and some of the difficulties that arise when you put 40 women together in small quarters for several weeks at a time.  Needless to say, I found basic training quite entertaining!”
                            <br /><br />
                            During basic, trainees are selected to fill certain jobs and responsibilities given to each flight:  dorm chief, element leader, chow runner, and entry controller, just to name a few.  Schroll volunteered to be the flight’s academic monitor.  When the MTI asked what made her qualified for the job, she nonchalantly mentioned she had taught classes before.  The MTI did some digging and learned that Schroll had a Ph.D.
                            <br /><br />
                            “It all came out from there,” she said.  “I tried to downplay it as much as I could, and I offered to help any of my flight mates with their study techniques, because we were all in this together.  We had one trainee who had such bad text anxiety and we were all worried she was going to run out of the classroom before she finished the end-of-course exam.  When our MTI started reading off our test scores, we collectively held our breath when hers was read and we cheered like mad when it was a passing score.  A few of us even cried.  By far my proudest moment as the academic monitor was the fact we all passed our exams the first time through.”
                            <br /><br />
                            She graduated basic training in February 2018 and was sent to Goodfellow AFB, Texas, to undergo special instruments training.  While there, she became friends with a large contingent of Air Force firefighters.
                            <br /><br />
                            “Our tech school was housed with the Airmen who undergo firefighting training, and it was so much fun,” Schroll recalled.  “I was selected to be a red rope, the person who oversees dorm activities, and they kept me so grounded.  I had so much respect for them that on my last day I woke up at 3:30 a.m. to go to their daily formation so I could shake every single hand and say thanks.  I love and respect them all so much.”
                            <br /><br />
                            During her tenure at Goodfellow, she received a special visitor who requested to meet with her.  She was quite surprised to learn it was a command chief master sergeant who made the trip to speak directly with her.
                            <br /><br />
                            “I was pretty floored when I found out Chief Master Sgt. (Michael) Joseph came to the schoolhouse to discuss career options with me,” she said.  “He introduced himself as the command chief for the Air Force Technical Applications Center, and said his commander was very interested in having me on his team at Patrick AFB.  I can’t put my finger on it, but during my conversation with Chief Joseph, I realized this was my chance to live out my desire to serve, especially in the capacity of a scientist.  I thought to myself, ‘These folks who have so much experience would know how best to use my skills,’ so I put my trust in them.”
                            <br /><br />
                            Joseph was highly impressed when he met with Schroll.
                            <br /><br />
                            “I heard about A1C Schroll as she was coming through the (academic training) pipeline since AFTAC has a majority of the 9S100 Airmen in the Air Force,” said Joseph.  “Every Airman has a story, and I wanted to hear hers.  Her background was impressive -- she had written two books and has a patent to her name, but it was her desire to serve that impressed me the most.  With her chemistry background and our operational need for highly-skilled chemists, it seemed like a natural fit for her to come to AFTAC.”
                            <br /><br />
                            Recruiting personnel who possess highly-technical scientific degrees and experience has been a challenge for the nuclear treaty monitoring center, but AFTAC’s senior enlisted advisor believes they’re seeking out ways to overcome that challenge.
                            <br /><br />
                            “Sometimes the Air Force does not get the ‘talent management’ piece right and we need to do all we can to get our people to the right place at the right time," Joseph said. "Airman Schroll has already made a positive impact in her squadron and is working to be the best Airman she can be.  As leaders, I believe that is all we can really ask of our workforce.”
                            <br /><br />
                            Schroll is assigned to AFTAC’s radiochemistry laboratory working as a radiochemistry technician.  She is responsible for preparing reagent kits in the lab’s tech room as well as co-managing the precious metals program.
                            <br /><br />
                            “I love the responsibility that comes from knowing our chemists are counting on me to prep their reagents properly and in a timely manner,” said Schroll.  “If anything goes wrong with the chemistry, the first place that is looked at is the reagent, so I want them to have confidence when they see my initials on the label that they were prepared correctly.”
                            <br /><br />
                            When asked if she was looking at becoming a commissioned officer someday, Schroll said it’s not out of the question, but it’s not her immediate focus.
                            <br /><br />
                            “Right now, I’m still brand new to the Air Force, so I am learning as much about it as possible.  I’m an airman first class, and with that comes the responsibility of being the best A1C I can be.  My focus is on doing the job I am fortunate to have, and doing it as best I can. When I look to the future, I only see broad opportunities.  But I’ve never been one to look too far ahead because all too often we make this grand dream or goal, only to forget to focus on the little steps to get there.  I’m focusing on the little steps right now.”
                        </p>
                    </div>
                </article>
            </section>

           <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Our Cardboard Christmas Tree - 11/28/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkCardboard" class="n2KPara noDisplay">

                    <div  class="width45 autoMarginLeftRight">
                        <div>
                            <img alt="Cardboard_tree.jpg" class="maroonBorder smallShadow width100" src="_Images/Cardboard_Tree.jpg" />
                            <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                A photo of the cardboard Christmas tree created by the son of Senior Master Sgt. Eric V. Reynolds, superintendent at the Air Force Technical Applications Center, Patrick AFB, Fla.  (Courtesy photo)
                            </p>
                        </div>
                    </div>

                    <div>
                        <p class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            Holidays are tough for me.  I used to love Thanksgiving and Christmas, but some difficult times fell upon my family and I found myself separated from the joy I once knew.  Maybe you find this season difficult as well, or maybe you are a sucker for Hallmark-esque Christmas tearjerkers like me my wife.  Either way, I’d like to share a little story about how my hardened heart found some healing after great tragedy. 
                            <br /><br />
                            Christmastime was always a very special time for me, with many fond memories of decorating with my mother.  She would always make cocoa and we would put up the tree together and sing our favorite songs.  I tried my best to keep that tradition alive after getting married and hoped to pass it on to my kids.  But the Christmas of 2016 was very different.  Neither my wife nor I wanted to have anything to do with Christmas that year.  
                            <br /><br />
                            Six months earlier my infant son, Marshall, passed away.  We saw our children as our most precious gifts, so the thought of celebrating without one of them was hard to bear. In our grief we kept putting off decorating, even though our other children were super excited about what they knew was supposed to be coming.  My heart had hardened against the holiday.   My older son knew my wife and I were having trouble and couldn’t celebrate this season, but he didn’t want the rest of the family to miss out.  So he decided to help.  He came up with a plan and went to work trying to recreate the magic he remembered from previous years.  
                            <br /><br />
                            It started with a cardboard tree.  He cut out a six foot tall tree from an old cardboard box, then colored the entire thing with green crayon.  He even made a yellow paper star for the top.  The other kids joined in and created paper ornaments to put on the tree.  But that’s wasn’t enough for him, so he went to the next level.
                            <br /><br />
                            It was now sometime around the middle of December, well past when we traditionally decorated.  I left for work very early one morning but had to run back to the house to retrieve something I had left behind.  As I quietly snuck back inside careful not to awaken anyone, I was confronted by a strange scene.  My 7-year-old son was struggling to put together our seven foot tall artificial Christmas tree while my wife and the other kids were still sleeping.  Once he noticed I was there he looked at me like I imagine a burglar would look at a cop.  He was shocked and a little scared, not knowing how I would react to his endeavor.
                            <br /><br />
                            In that moment, my brittle heart shattered.  I was reminded of the joy and hopeful expectation we often have in our youthful innocence.  I was reminded of the most precious gift I ever received -- the love and acceptance of my holy father, through his son Jesus Christ.  I was reminded of my responsibility to live and to love.  I was reminded to give.  So I told my son it was okay and I would help him finish setting up the tree when I came home after work, even though I really didn’t want to.  I resolved to not let the joy of the season escape from my kids’ lives just because of my own grief.
                            <br /><br />
                            I still grieve, and probably always will a little bit.  But holidays have gotten easier since I made a transition.  Now, instead of trying to recreate the memories of my youth so I could relive those joyous moments, I am trying to get better every day at giving back to my family and others.  My hope is that they would have some memories worth cherishing and looking back on when their tough times come.  I know I’ve certainly needed them.
                            <br /><br />
                            If you find yourself down this time of year, try doing something different.  Don’t worry if you can’t get home for the holidays, or if you don’t have someone special to celebrate with.  Make this year about giving to others.  There are so many lonely, hurting and over-stressed people out there just trying to make ends meet, keep their family together or even make it to the next day, let alone to the New Year.  So give, serve, pray, or do whatever you can do to help bring a smile to someone else’s face this time of year, whether they choose to celebrate Christmas or any other holiday.  You’ll be surprised how soon the smile comes back to your own face when you know you had a part in bringing joy to others.    
                        </p>
                    </div>
                    </article>
                </section>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Hoop coaches, life mentors: AFTAC Airmen engage with community youth - 11/16/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkHoop" class="n2KPara noDisplay">
                    <div  class="width45 floatLeft">
                        <div class="width95">
                            <img alt="Hoop1.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Hoop1.jpg" />
                            <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Airmen from the Air Force Technical Applications Center, Patrick AFB, Fla., pose for a photo in the base fitness center.  The Airmen volunteered their off-duty time to serve as youth basketball coaches for a local recreational league.  Pictured from left to right:  Staff Sgt. Jordan Peterson, Staff Sgt. Dustin Elliott, Staff Sgt. Floridamae Mones, Airman 1st Class Willie Robinson and Airman 1st Class Canaan Kennedy.  (U.S. Air Force photo by Phillip C. Sunkel IV)
                            </p>
                        </div>
                    </div>

                        <div  class="width45 floatLeft">
                            <div class="width95">
                                <img alt="Hoop2.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Hoop2.jpg" />
                                <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Staff Sgt. Jordan Peterson (center) and Airman 1st Class Canaan Kennedy (left) discuss playmaking strategies with their basketball team during a game in Viera, Fla.  The Airmen, assigned to the Air Force Technical Applications Center, Patrick AFB, Fla., volunteered their off-duty time to serve as coaches and mentors to youth from the local area.  (Courtesy photo)
                                </p>
                            </div>
                        </div>

                        <div class="clear"></div>

                        <div  class="width45 autoMarginLeftRight">
                            <div class="width95">
                                <img alt="Hoop3.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Hoop3.jpg" />
                                <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Team photo from Viera Regional Community Center's recreational basketball league.  Staff Sgt. Jordan Peterson (far right) and Staff Sgt. Floridamae Mones (far left), both assigned to the Air Force Technical Applications Center, Patrick AFB, Fla., volunteered their time to serve as coaches.  Pictured are (front row, left to right): Justin Lee, Jesse McDuffie, Brielle Basham; middle row: Cole Guest, Graeme Burns, John Banks, Jakai Shack; back row:  Cyrus Matini, Kyle Bortz, Aeddon Burns.  (Courtesy photo)
                                </p>
                            </div>
                        </div>

                        <div class="clear"></div>

                        <div>
                            <p class="block">
                                <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                                When a local recreational basketball league was looking for volunteers to coach youth athletes, two brothers assigned to the Air Force Technical Applications Center stepped up to the challenge.
                                <br /><br />
                                Staff Sgts. Jarrod and Jordan Peterson, despite having no children of their own, submitted their names for consideration to the Viera Regional Community Center, a multipurpose athletic facility near the base that’s home to fall and spring basketball leagues.  After a face-to-face interview and required background check, the pair were initially assigned to coach 11-12 year-old age groups of eager boys and girls.
                                <br /><br />
                                Realizing the rec center needed more volunteers, the brothers reached out to some of their co-workers and encouraged them to get involved.  They convinced several Airmen to join them as assistant coaches.
                                <br /><br />
                                “We sought out people with the innate ability to make a difference and to give them a platform to exercise their leadership and public speaking skills,” said Jordan.  “The Air Force looks for those characteristics in its Airmen, and this was a perfect opportunity for some of the junior Airmen here at AFTAC to hone those skills in a completely different environment.”
                                <br /><br />
                                Meeting twice a week for two hours of practice in preparation for their weekly game, Jordan reached back to his own high school days and employed a coaching style that addressed the various skill levels of his players.
                                <br /><br />
                                “I used skill-based training, and I sought out players for various positions that I haven’t mastered myself,” he explained.  “Occasionally, I’ll ask them to come to practice and teach their teammates their respective roles on the court.  They get a better understanding of what a good player is by learning from their peers, and it doesn’t matter if they’re a boy or a girl – each comes with their own set of abilities and weaknesses, and we work together as a unit, much like the military does, to accomplish our goals.”
                                <br /><br />
                                His brother continued, “Together, we used our split development to our advantage,” said Jarrod.  “Back in the day, Jordan was always more of an aggressive post player, while I was quicker on my feet and focused more on shooting and creating openings.  It’s worked well for us.”
                                <br /><br />
                                Airman 1st Class Canaan Kennedy, one of the co-workers the Petersons recruited to assist with coaching, explained why he chose to get involved.
                                <br /><br />
                                “I think it’s really important to volunteer because when I was growing up, I had a lot of coaches I considered as role models and mentors,” he said.  “Many of them truly made a difference in my life, so I think if I can make a difference to one of my players, it makes it all worthwhile.”
                                <br /><br />
                                In an age where electronic devices are far more prevalent than basketballs in the hands of today’s youth, children have fewer opportunities for face-to-face interaction with their peers and mentors.  Programs like this are helping bridge that gap.
                                <br /><br />
                                For the past 16 years, Stephane Mohr has worked for Brevard County Parks and Recreation, and is currently Viera Regional Community Center’s recreational leader.  She understands the importance of having military members serve as volunteer coaches.
                                <br /><br />
                                “When people from Patrick AFB come out to help us, their presence shows the kids how to be passionate about something you love,” she said.  “The Airmen teach them how to be strong and stay in the fight until the fight is over, win or lose.  They also teach them responsibility, respect, discipline, and especially how to just have fun.”
                                <br /><br />
                                She added, “I have so many parents who request to have their kids play on Jordan and Jarrod’s teams.  Even after the season is over, they would check on the players and invite them to play a pick-up game here at the center.  I couldn’t ask for better coaches and role models.”
                                <br /><br />
                                The fraternal twins, who work as web developers for AFTAC’s 709th Cyberspace Squadron, share a passion for basketball, and now after coaching local youth, also share a special place in their hearts for the players who have made such an impact on them.
                                <br /><br />
                                “The rec league is an excellent way for these kids to strengthen their friendships, learn new skills, get some exercise and most important, have some fun,” said Jarrod.  “Throughout all four of the teams I’ve coached in Viera, I’ve had one player on all four teams:  Brielle Basham.  She’s the smallest girl in the league, and I’ve seen her grow and evolve, not just physically, but mentally as well.  She would constantly approach us looking for ways to improve, and she was always so excited about getting better – so much so that her parents also started to ask us how to make sure she was doing things right.  Between her specific talent and her spike in confidence, I’d trust her with the game-winning shot any day.”
                                <br /><br />
                                Several player-parents showered the Airmen with praise for their involvement.
                                <br /><br />
                                “I don’t think Coach (Jordan) Peterson will ever know the impact he’s had on my son,” said Tyna Fish, mom of Lashaun, better known to his teammates as Prince.  “He was going through a very dark time in his life, and being a single parent isn’t easy.  Lashaun desperately craved a male mentor in his life, so when (Jordan) chose him to be captain of the team, it actually changed his life.  I can’t thank him enough for recognizing his ability and giving him the chance to shine.  I want him to know how much I appreciate all he’s done!”
                                <br /><br />
                                Accolades continued from another parent.
                                <br /><br />
                                “Justin just loved Coach Peterson and Coach (Staff Sgt. Floridamae) Mones,” said Tracy Lee.  “He told me the coaches never treated him ‘like a kid’ and I’ve never seen him love going to practices and games as much as he did with these coaches.  And giving him a special military coin for Most Improved Player meant a lot to all of us!”
                                <br /><br />
                                Over the past three years he’s been coaching at VRCC, Jordan has seen huge growth in his players.
                                <br /><br />
                                “The influence you may have on a young adult is incredibly fulfilling,” he said.  “We had two kids on our squad last year who didn’t want to try out for their high school team when the season started.  By the time we finished the season and freshman tryouts were underway, we received emails and texts from the parents telling us that their child had made the high school roster.  It makes you realize you truly can have an impact.  It’s very gratifying.”
                                <br /><br />
                                The other AFTAC volunteer coaches include Tech. Sgt. Desiree Penn, Airman 1st Class Ruben Vera Colon, Staff Sgt. Dustin Elliott, Airman 1st Class Willie Robinson, Rodney Gaines, and Airman 1st Class Myles McCurdy.
                                <br /><br />
                                “These Airmen are volunteering their time to help our program be a success, and the kids love them all so much,” Mohr said.  “During our medal and trophy ceremony last season, Jordan brought (military challenge) coins for each of the kids for being most improved, hardest worker, always being on time, never giving up, and so on.  They didn’t have to do that, but I’ll tell you it meant so much to the kids and their parents.  I can’t thank them all enough for their time and support, and especially for their service to our country.  The world is a much better place because of them!”
                                <br /><br />
                                The Peterson brothers encourage others to get involved in community programs.
                                <br /><br />
                                “There are countless opportunities for Airmen to play a role in area athletics and youth programs,” said Jarrod.  “You just have to commit the time and effort to it.  It does take a lot of dedication, but the rewards far outweigh anything.”
                                <br /><br />
                                Jordan added, “We’ve had some of our athletes who ‘aged out’ of the program return to volunteer and assist in coaching alongside us in a support role.  And a few of them have expressed an interest in joining the Air Force.  It doesn’t get much better than that!”
                            </p>
                        </div>
                    </article>
                </section>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Leadership in a Selfie Culture - 11/6/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkSelfie" class="n2KPara noDisplay">

                    <div  class="width45 autoMarginLeftRight">
                        <div>
                            <img alt=" Selfie.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Selfie.jpg" />
                            <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Photo courtesy of Vadim Guzhva.
                            </p>
                        </div>
                    </div>

                    <div>
                        <p class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            An interesting thing about leadership and painting is that both require priming in order to last.  A painter’s canvas must first be conditioned to accept the paint.  They stretch the canvas and secure it so it retains its shape.  Then they prime it, or cover it in gesso, a substance that serves three purposes: to prevent the fabric from rotting; to allow the painter to establish the right texture or foundation upon which to paint their masterpiece; and to prevent the canvas from absorbing the paint, thus allowing the artist to have a greater impact while using less paint.  
                            <br /><br />
                            Similarly, a leader conditions the environment and the people to accept their vision before providing direction.  The leader must establish their own credibility while instilling a culture of integrity, accountability, flexibility and excellence.  This serves to prevent rotten or toxic behavior, sets a foundation allowing open and honest communication, and helps the leader draw out the best in their people without overly taxing their personal resources.  
                            <br /><br />
                            Without these early efforts to set the climate and foundation for success, leaders may find themselves constantly having to deal with rotten leaders, skeptics, and laggards trying to undermine their vision.  They may also end up burning themselves out early on by focusing too much time reactively fixing preventable problems rather than progressing towards the big picture.   Either way the results are not what was envisioned.
                            <br /><br />
                            Ask yourself – would you rather people know the color of your eyes or the character of your heart?  If you choose the latter, establish the foundation first and above all - avoid painting a self-portrait.  Simply put, the portrait of a true leader is best viewed as a landscape.  A leader’s signature - their character - is found in the culture that emerges, the incredible things that are accomplished, and the lives that are changed.  
                        </p>
                    </div>
                </article>
            </section>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">AFTAC molecular biologist represents Air Force at SWE18 conference - 11/6/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkWE18" class="n2KPara noDisplay">
                    <div  class="width45 autoMarginLeftRight">
                        <div>
                            <img alt=" WE18.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/WE18.jpg" />
                            <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                A panel of experts deliver their remarks and take questions from the audience attending the 2018 Society of Women Engineers Annual Conference in Minneapolis Oct. 20, 2018.  Air Force Technical Applications Center molecular biologist Julia Ignacek (second from right) represented the Air Force at the event to discuss innovation in the public sector.  Pictured with Ignacek are Dr. Alexis McKittrick, research staff member for the Science and Technology Policy Institute and panel moderator; Roslin Hicks, deputy director for NASA’s Michoud Assembly Facility; and Col. Michelle Link, assistant program officer for U.S. Army Logistics. (U.S. Air Force photo by Rose Day)
                            </p>
                        </div>
                    </div>

                    <div class="clear"></div>

                    <div>
                        <p class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            With more than 14,000 in attendance featuring 300 worldwide organizations, the conference attracts prestigious leaders and champions of industry and academia to encourage women to achieve their full potential as engineers.  This year, SWE18’s keynote speakers were Cindy Kent, former president and general manager of 3M’s Infection Prevention Division; Marillyn A. Hewson, Chairman and Chief Executive Officer of Lockheed Martin Corp.; and Kim Underhill, group president of Kimberly-Clark’s North American consumer business.
                            <br /><br />
                            Ignacek’s panel included Dr. Alexis McKittrick, research staff member for the Science and Technology Policy Institute in Washington, D.C. (panel moderator); Col. Michelle Link, assistant program officer for U.S. Army Logistics; and Roslin Hicks, deputy director for NASA’s Michoud Assembly Facility.
                            <br /><br />
                            “I was honored to be asked to represent the Air Force at the conference, and I’d like to thank Randy Mieskoski (HAF/A1), Rose Day (AFTAC recruiting), Jennifer Abman Scott (SWE Board of Directors), and AFTAC senior leadership for allowing me the opportunity to participate in this incredibly rewarding conference.  There is so much to learn when we open our minds to other perspectives, and I believe we grow both personally and professionally from these opportunities.”
                        </p>
                    </div>
                </article>
            </section>


            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Air Force Chief Scientist pays visit to treaty monitoring center - 10/22/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkChief" class="n2KPara noDisplay">
                    <div  class="width45 floatLeft">
                        <div class="width95">
                            <img alt="Chief1.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Chief1.jpg" />
                            <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Dr. Richard J. Joseph, Chief Scientist of the Air Force, speaks to members of the Air Force Technical Applications Center in the nuclear treaty monitoring center's Doyle Northrup Auditorium at Patrick AFB, Fla.  Joseph attended AFTAC annual Research and Development Roadmap Forum to discuss innovative concepts that fit into the center's technical forensics mission.  (U.S. Air Force photo by William M. Donelson)
                            </p>
                        </div>
                    </div>

                    <div  class="width45 floatLeft">
                        <div class="width95">
                            <img alt="Chief2.jpg" class="maroonBorder smallShadow width100" src="_Photos/News2Know/Chief2.jpg" />
                            <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Dr. Richard J. Joseph (left), Chief Scientist of the Air Force, meets with Dr. Glenn E. Sjoden (center), chief scientist of the Air Force Technical Applications Center, and Dr. William Junek, AFTAC's senior scientist, during Joseph's visit to the nuclear treaty monitoring center at Patrick AFB, Fla.  Joseph came to AFTAC to attend its annual Research and Development Roadmap Forum and took the opportunity to tour the facility and meet the Airmen who perform the mission.  (U.S. Air Force photo by Susan A. Romano)
                            </p>
                        </div>
                    </div>

                    <div class="clear"></div>

                    <div>
                        <p class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            The Chief Scientist of the Air Force paid a visit to the Department of Defense’s sole nuclear treaty monitoring center recently to meet with senior leaders and attend the center’s annual Research and Development Roadmap Forum.
                            <br /><br />
                            Dr. Richard J. Joseph was one of 169 mission partners and community stakeholders who attended the Air Force Technical Applications Center’s annual forum, which was designed to focus on AFTAC’s multi-faceted, global mission.
                            <br /><br />
                            “The purpose of the R&D Roadmap is to codify pathways to meet forthcoming challenges of our treaty monitoring and nuclear forensics mission,” said Dr. William Junek, AFTAC senior scientist.  “We were fortunate enough to have Dr. Joseph join us this year, and his contributions during our breakout sessions were invaluable.”
                            <br /><br />
                            Ed Darmiento, project officer for the forum, worked closely with numerous subject matters experts at AFTAC to put together a robust program that included briefings by AFTAC’s principal customers and national authorities as well as breakout sessions to allow attendees to network with each other.
                            <br /><br />
                            The first day consisted of briefings that covered a variety of topics:  AFTAC’s mission overview, R&D blueprint development, and how new innovation concepts fit into AFTAC’s treaty monitoring and technical forensics mission.
                            <br /><br />
                            Day two was a collection of breakout sessions that gave attendees the opportunity to provide, modify and refine inputs to AFTAC’s draft 2019 R&D roadmap.
                            <br /><br />
                            Ed Darmiento, AFTAC’s chief of emerging technologies, was the project officer for the forum, and he and his team invested more than 1,000 man-hours to logistical planning that included the event agenda, lodging, transportation, security, and meals.
                            <br /><br />
                            “This year, we wanted to incorporate as many suggestions from the previous forums as possible to show a continuous dedication to make it better from year to year,” said Darmiento.  “We also modernized the registration process, which included commissioning a website to streamline the registration process and make it user-friendly.  I think we hit the mark.”
                            <br /><br />
                            Prior to the start of the forum, the Air Force Chief Scientist had the opportunity to tour AFTAC’s radiochemistry lab, Innovation Lab, and 24/7 operations center.
                            <br /><br />
                            Joseph, a former commissioned officer in the Air Force, has more than 40 years of experience as a physicist, directed energy researcher, senior program manager, national security advisor, and government executive.  In his role as the Air Force’s senior scientist, he advises the Air Force Chief of Staff and Secretary of the Air Force by providing assessments on a wide range of scientific issues.  He is responsible for identifying and analyzing technical issues to bring them to the attention of other senior Air Force and governmental leaders.
                            <br /><br />
                            “I’m extremely proud of the team who navigated all the moving parts to make a program like this such a success,” said Dr. Glenn E. Sjoden, AFTAC chief scientist.  “Until you actually put together an event of this magnitude, you truly can’t appreciate how much work is actually involved.  It takes a remarkable team comprised of members working across multiple directorates to make a forum of this complexity successful.”
                            <br /><br />
                            Sjoden added, “I hope Dr. Joseph and the rest of our stakeholders walked away with a greater understanding of AFTAC’s global mission, and I hope they will return next year with even bigger and better ideas to discuss.”
                        </p>
                    </div>
                </article>
            </section>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Downrange ‘MacGyvers’ creatively get the job done - 10/3/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkMacgyver" class="n2KPara noDisplay">
                        <div  class="width45 floatLeft">
                            <div class="width95">
                                <img class="maroonBorder smallShadow width100" src="_Photos/News2Know/macgyver1.jpg" />
                                <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    An Airman from the Air Force Technical Applications Center ascends to the top of a wind turbine at McMurdo Station, Antarctica, to inspect components used to power the seismic site.  The inspection was part of AFTAC’s annual maintenance requirement at its numerous seismic locations around the globe.  (U.S. Air Force photo)
                                </p>
                            </div>
                        </div>

                        <div  class="width45 floatLeft">
                            <div class="width95">
                                <img class="maroonBorder smallShadow width100" src="_Photos/News2Know/macgyver2.jpg" />
                                <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Senior Airman Jeremiah H. Odendahl (left) and Staff Sgt. David D. Mose Jr., both seismic technicians at Detachment 421 in Alice Springs, Australia, conduct routine maintenance at one of the detachment's 22 seismic detectors that contribute to the U.S. Atomic Energy Detection System.  The seismic work performed at the detachment is part of the Air Force Technical Applications Center's worldwide mission of nuclear treaty monitoring.  (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                        <div class="clear"></div>

                        <div class="width45 floatLeft">
                            <div class="width95">
                                <img class="autoMarginLeftRight width95 maroonBorder smallShadow" src="_Photos/News2Know/macgyver3.jpg" />
                                <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Seismic technicians from the Air Force Technical Applications Center, Patrick AFB, Fla., traveled to Vanda, Antarctica to conduct routine annual maintenance on seismic equipment that contributes to the U.S. Atomic Energy Detection System.  (U.S. Air Force photo)
                                </p>
                            </div>
                        </div>

                        <div class="width45 floatLeft">
                            <div class="width95">
                                <img class="autoMarginLeftRight width95 maroonBorder smallShadow" src="_Photos/News2Know/macgyver4.jpg" />
                                <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Rugged terrain surrounds Staff Sgt. Steven Milliman (seen in center distance) as he conducts periodic maintenance in Morocco on AFTAC’s global network of seismic sensors that contribute to the U.S. Atomic Energy Detection System.  (U.S. Air Force photo) 
                                </p>
                            </div>
                        </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            For six successive years starting in 1986, faithful viewers tuned in every evening before Monday Night Football to see what kind of clever solutions Secret Agent Angus MacGyver would concoct to solve cases for the fictional Department of External Services.
                            <br /><br />
                            The rise of MacGyver’s popularity largely stemmed from his innovative and resourceful use of common items to repair things in an improvised way.  His ability to use everyday objects to solve seemingly impossible crimes quickly morphed into a verb (to MacGyver something) to describe when someone uses items on hand to make a quick repair.
                            <br /><br />
                            Today, members of the Air Force Technical Applications Center sometimes find themselves applying a few MacGyver tactics as a last resort when they travel to one of the center’s many overseas detachments to conduct periodic maintenance on vital seismic equipment.
                            <br /><br />
                            AFTAC, the sole organization in the Department of Defense tasked with detecting worldwide nuclear events, has more than 3,600 sensors across the globe to monitor seismic activity.  While some of the sites are located in relatively accessible places geographically, many of them are unmanned and positioned at austere locations in extremely rugged territory.
                            <br /><br />
                            Despite the austerity, Airmen assigned to the 709th Technical Maintenance Squadron at AFTAC must perform periodic maintenance at these sites to ensure uninterrupted access to critical seismic data.  From the frozen mountain peaks above the Arctic Circle to the windswept deserts of the Australian Outback to the sub-zero temperatures in the Antarctic, the maintainers trek to some of the most remote corners of the world.  And while they travel with a large amount of supplies to repair and maintain their precision equipment, they sometimes find themselves in situations that require MacGyver-like problem-solving skills.
                            <br /><br />
                            Take for example a recent trip to one of their unmanned sites in an isolated area of the north arctic.  The frigid winter temperatures and ten months of precipitation led to build-up on the exterior of the seismic boreholes.  The maintainers had to fabricate an ice-catching bucket and ice removal tool due to significant ice incursion.  Technicians weren’t able to pull the instrument out for repair until the ice was chipped away.  But chipping away at the ice posed another problem – the ice chips would tumble down the borehole and damage the seismometer.  So the team concocted the bucket-and-pick system they now use at sub-zero locations to catch the ice before it can fall into the hole.
                            <br /><br />
                            Another unusual situation for the team occurred in eastern Asia.  When the Airmen arrived to conduct routine maintenance, they discovered a red-footed falcon had made a nest five feet in diameter on one of the site’s solar panels.
                            <br /><br />
                            “We had to fashion a way to carefully remove the nest in one piece and relocate it to a nearby rock outcropping, all while the falcon was keeping a sharp eye on us as we moved her home,” said Master Sgt. Chevis P. Stanley, subsurface maintenance flight chief.  “The good thing was there were no eggs in the nest; otherwise, I’m not so sure she would have kept her distance as we moved it from point A to point B.”
                            <br /><br />
                            The maintainers travel with a large kit containing items that are included for obvious reasons -- and some, not so obvious.
                            <br /><br />
                            “You’ll always find standard supplies like electrical tape, all-in-one multi-tools, nuts and bolts, welding materials, etc., in our travel kits,” said Stanley.  “But from experience, we also travel with other more obscure things we may need at our sites, items like super glue, zip ties, toilet paper, electrical plug adapters, wet wipes, pick-axes, even a few tennis balls.”
                            <br /><br />
                            AFTAC’s seismic mission touches every continent on earth through the U.S. Atomic Energy Detection System – the largest sensor network in the U.S. Air Force.  Once a disturbance is detected underground, the data is transmitted to AFTAC’s 24/7 operations center at Patrick AFB, then analyzed to determine if the disturbance is nuclear in nature.
                            <br /><br />
                            It’s a critical mission that has national command authority interest, and the Airmen who maintain the precision equipment take their role in global nuclear event detection very seriously.
                            <br /><br />
                            “We go to great lengths to ensure we’ve made the necessary repairs and calibrated all the sensors before we ship them to our operating locations,” said Master Sgt. Joseph King, 709th Support Squadron central repair facility superintendent.  “We’ve also built an entire continuity program on ‘unacceptable calibrations.’ For the most part, AFTAC’s seismic arrays are located in unpopulated, aseismic areas of the world, which is what we strive for in order to analyze and report clean and accurate seismic data.  However, when we conduct the calibrations here at Patrick, which by our standards is an industrial area with lots of foot and vehicular traffic, that kind of ‘noise’ tends to give our calibrators headaches because the seismometers are so incredibly sensitive, making calibration very difficult.”
                            <br /><br />
                            So King and his co-workers in the CRF came up with an ingenious way to perform precision calibrations right here at their home base prior to shipping the equipment downrange.
                            <br /><br />
                            “To further isolate the seismometer from environmental noise, we used an isolation table and a noise-cancelling sound booth,” he said.  “Then we concocted a system for the table to ride on tennis balls placed in a bed of sand on a thick rubber mat.  I’m very proud of the ‘out-of-the-box-thinking’ that went down with this particular project.  It works like a charm.”
                            <br /><br />
                            The equipment undergoes meticulous calibration in Florida prior to being shipped to an overseas detachment, but a small chord of fear is still struck in the hearts of the Airmen who perform the work.
                            “While we ensure the seismometers are sufficiently calibrated in the CRF, they still need to endure the frightening task of being shipped halfway around the globe,” said King.  “I think we all know what the word ‘fragile’ means to a cargo company.  More often than not the seismic equipment will need some level of additional repair when it arrives at its final destination.”
                            <br /><br />
                            Of course, the CRF’s MacGyver-like techniques are used as a last resort when an unusual situation arises at a maintenance site.
                            <br /><br />
                            “The Airmen who conduct the repairs at our overseas detachments are governed by some pretty stringent Air Force instructions, policies, standards and contractual obligations,” said Dave Merker, AFTAC’s Director of Systems Development.  “They know the need to follow established technical orders to make any necessary adjustments on the equipment.  But at some locations, such as our seismic site in Antarctica, we have an exceedingly small window of opportunity to perform annual maintenance.  And sometimes, a bit of old-school ingenuity is required to ensure we have uninterrupted access to that vital seismic data.  The ‘MacGyver’ technique is employed only as a last resort when all other avenues have been exhausted.”
                            <br /><br />
                            When the team returns the following maintenance cycle, they’ll adjust the MacGyver’ed equipment to its proper state with the necessary accessories and parts, Merker said.
                            <br /><br />
                            “We have to make the most of the short period of time we’re on the ground to work on the equipment, troubleshoot anything that needs troubleshooting, and leave it better than we found it so the data flows as required,” said Stanley.  “One of the biggest lessons I’ve learned in this job is that you never truly know what issues you may encounter, and all you can do is prepare as best you can for every contingency.  Once you’ve done that, you just have to do the best you can with what you’ve got and be as flexible as possible.  It’s definitely a challenge.”
                            <br /><br />
                            Chief Master Sgt. Michael Joseph, AFTAC’s command chief, has been continuously impressed by the creativity and ingenuity of his maintainers.
                            <br /><br />
                            “Our Airmen are well trained and prepared to do the mission, but sometimes they are faced with unique challenges,” said Joseph.  “They just find a way to ensure the mission can continue uninterrupted.”
                        </p>
                    </div>
                </article>
            </section>

<%--                <article id="ntkTestla" class="n2KPara noDisplay">
                        <div class="autoMarginLeftRight width55">
                            <div class="width100">
                                <img class="maroonBorder smallShadow width95" style="height:24em;" src="_Photos/News2Know/Testla3.jpg" />
                                <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    James Griffieth, a member of the Air Force Technical Applications Center, explains how a tesla coil works to students from Flint, Mich., who were attending the National Organization of Black Chemists and Chemical Engineers annual conference in Orlando Sept. 18, 2018.  The students competed in NOBCChE's Science Bowl the day before.  Pictured with Griffieth from left to right are students from Flint Southwester Classical Academy:  Brook Fordham, 16; Alayna Goff, 17; Kwame Wade, 16; and Keishaun Wade, 17.(U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                        <div class="clear"></div>

                        <div class="width45 floatLeft">
                            <div class="width95">
                                <img class="autoMarginLeftRight width95 maroonBorder smallShadow" src="_Photos/News2Know/Testla1.jpg" />
                                <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Rose Day (right), chief of recruiting for the Air Force Technical Applications Center, Patrick AFB, Fla., talks about AFTAC job opportunities with Jada Hoyle-Gardner (center), a biomedical science graduate student at Florida A&M University and Keisha Smith (left), Ph.D candidate in neuroscience at Meharry Medical College in Nashville during the National Organization of Black Chemists and Chemical Engineers annual conference in Orlando, Fla., Sept. 18, 2018.  (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                        <div class="width45 floatLeft">
                            <div class="width95">
                                <img class="autoMarginLeftRight width95 maroonBorder smallShadow" src="_Photos/News2Know/Testla2.jpg" />
                                <p class="italic autoMarginLeftRight width100 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Michael Ball (right) and Rose Day (center), members of the Air Force Technical Applications Center, Patrick AFB, Fla., speak with a visitor to their booth in the exhibition hall during the National Organization of Black Chemists and Chemical Engineers annual conference in Orlando, Fla., Sept. 18, 2018.  Ball and Day were on hand to explain job opportunities available at the nuclear treaty monitoring center.  (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            With the help of members of the Air Force Technical Applications Center, children and adults alike were drawn to synchronized music emanating from a Tesla coil on display at the National Organization of Black Chemists and Chemical Engineers annual conference Sept. 17-18 in Orlando.
                            <br /><br />
                            The conference is NOBCChE’s premier event where visiting students can interact with corporate, academic, non-profit and government professionals in the fields of chemistry, chemical engineering, and other STEM-related fields.  Each year, the organization hosts a Science Bowl for students in grades 4 to 12, with questions that focus heavily on well-known scientists and inventors of color throughout history.
                            <br /><br />
                            AFTAC Airmen volunteered their time to serve as judges, time keepers, score keepers and room facilitators for the Science Bowl on day one of the program.  NOBCChE is dedicated to building a cadre of young people from all walks of life, while inspiring and supporting minority students to pursue careers in science and technology.
                            <br /><br />
                            AFTAC, the Department of Defense’s sole organization responsible for nuclear treaty monitoring, has more than 1,000 personnel who have vast scientific experience and educations:  chemists, physicists, nuclear engineers, biologists, mathematicians, geologists and seismologists, just to name a few.  They are highly sought after by schools, companies and organizations to assist with STEM-related events.  The NOBCChE conference was no exception.
                            <br /><br />
                            “It was a top-notch experience for me,” said Yvette Coleman, one of the 15 AFTAC volunteers.  “I enjoyed seeing all the different universities and corporations that took part, but the most important highlight for me was watching the students participate in the Science Bowl.”
                            <br /><br />
                            On day two of the conference, Airmen set up an interactive display in conference exhibit hall that included seismometers, vacuum pumps, 3-D printers and the always-entertaining Tesla coil.  The high-voltage wireless transformer created visual bolts of lightning set to music, which has the capacity to generate up to 250,000 volts, and drew quite a crowd.
                            <br /><br />
                            Alfred Cook, a science teacher at Flint Southwester Classical Academy in Flint, Mich., escorted four of his top students to the conference to expose them to STEM professionals from all walks of life and give them a chance to compete in the science bowl.
                            <br /><br />
                            “Our goal on this trip was to take first place in the bowl while putting Flint and our school on the map,” Cook said with pride.  “We’ve been training for this for months now, both before and after school, using our own curriculum as well as anything we could find online to give us a competitive edge.  Of course our biggest challenge is always financing a trip like this, but these students are the best of the best and it’s a great experience for them.”
                            <br /><br />
                            Flint has had its share of news headlines recently, most prominent being the water crisis the city has faced.  The situation has had an obvious and influential impact on Cook’s science bowl competitors. 
                            <br /><br />
                            One of his students, Keishaun Wade, was unequivocal when asked what he wants to be when he graduates:  “I will be an urban planner.  I want to change Flint.”
                            <br /><br />
                            James “Griff” Griffieth, a frequent AFTAC STEM volunteer, explained why he thinks it’s important to stay engaged with the youth of today.
                            <br /><br />
                            “This year was especially meaningful to me since NOBCChE sponsored a school from Flint,” Griff said.  “It was great getting to know these kids who have been through so much in their young lives, yet they are persevering in the quest for knowledge and looking at how they can change the future.  People ask why I volunteer, and it comes down to two simple things: we are all responsible to give back to our community whenever possible, and I really derive a lot of joy from helping these young adults experience science and technology in hopes to inspire them to be the next Nikola Tesla or Mae Jamison.” 
                            <br /><br />
                            In addition to the interactive STEM display, AFTAC’s chief of recruiting, Rose Day, managed a booth in the exhibition hall to encourage students to consider employment with the Department of Defense’s sole nuclear treaty monitoring center.
                            <br /><br />
                            “NOBCChE is my favorite recruiting event of the year because this organization really focuses on mentoring and inspiring the next generation of STEM professionals,” said Day.  “Most of the students we met had been involved with NOBCChE since high school and are now stand-out undergraduate, graduate, and even doctoral students from the best technology institutions in the country such as MIT and Georgia Tech.  Many of them were very interested in our SMART Service for Scholars and Palace Acquire Intern programs that help fund their education and guarantee employment upon graduation.” 
                            <br /><br />
                            For more information about AFTAC’s STEM outreach program or to learn more about a career at AFTAC, send an email to <a href="MailTo:AFTAC.Jobs@us.af.mil">AFTAC.Jobs@us.af.mil</a>
                        </p>
                    </div>
                </article>


                <article id="ntkProtoType" class="n2KPara noDisplay">
                        <div class="autoMarginLeftRight width55">
                            <div class="width100">
                                <img class="maroonBorder smallShadow width95" style="height:24em;" src="_Photos/News2Know/ProtoType3.jpg" />
                                <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    An computer-generated artist's rendering of a winch mast assembly crate that is now being used by the Air Force Technical Applications Center, Patrick AFB, Fla., to ship and store precision seismic equipment.  (U.S. Air Force illustration)
                                </p>
                            </div>
                        </div>

                        <div class="clear"></div>

                        <div class="width45 floatLeft">
                            <div class="width95">
                                <img class="autoMarginLeftRight width95 maroonBorder smallShadow" src="_Photos/News2Know/ProtoType1.jpg" />
                                <p class="italic autoMarginLeftRight width95 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Tech. Sgt. Timothy Kavanagh, noncommissioned officer-in-charge of product support for the Air Force Technical Applications Center, Patrick AFB, Fla., explains to Chief Master Sgt. Frank Batten, command chief of Air Combat Command, how he designed a crate to better ship, house and store AFTAC's precision seismic equipment that is used to monitor worldwide nuclear activity.  (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                        <div class="width45 floatLeft">
                            <div class="width95">
                                <img class="autoMarginLeftRight width95 maroonBorder smallShadow" src="_Photos/News2Know/ProtoType2.jpg" />
                                <p class="italic autoMarginLeftRight width95 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    A sketch of a prototype shipping crate to store and house precision seismic equipment for the Air Force Technical Applications Center, Patrick AFB, Fla.  The sketch was used to develop a workable solution to inventory issues at the nuclear treaty monitoring center's overseas detachments.  (U.S. Air Force illustration)
                                </p>
                            </div>
                        </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            When members of the only agency in the Department of Defense charged with monitoring nuclear treaties discovered shipped equipment was not being accurately accounted for at forward supply points, they took to the drawing board to devise a solution.
                            <br /><br />
                            Airmen from the Air Force Technical Applications Center here were determined to solve negative inventory trends, so they sketched out a conceptual prototype the old-fashioned way – with pen and paper.
                            <br /><br />
                            One aspect of the nuclear treaty monitoring center’s global mission is to gather seismic data to detect underground nuclear activity.  The center uses seismometers positioned throughout the world to accomplish that mission.  In order to perform routine maintenance on their precision equipment, AFTAC Airmen rely on what’s called a winch mast assembly that is used to install, troubleshoot, remove and replace seismometers that sit in boreholes up to 500 feet below the earth’s surface.  
                            <br /><br />
                            When the assembly, with its multiple parts and pieces, is hoisted out of the borehole, it’s either placed in storage, shipped back to Florida for maintenance, or repaired on site.  Over time, many of the parts were being separated from the main assembly, which ultimately caused inventory, shipping and maintenance issues.
                            <br /><br />
                            So a team of AFTAC logisticians got together to figure out how to solve the problem. Tom Lehnerz, chief materiel manager and a supply expert with the 709th Support Group’s logistics flight, spearheaded the effort.  Once he and his team had a viable concept, they built a prototype, modified it a few times based on inputs from depot and field technicians, and came up with a workable solution.
                            <br /><br />
                            “We noticed there was an issue with inventories of our tilt mass assembly and realized our equipment wasn’t being accurately accounted for at forward supply points.  With some brain power, some trial-and-error tests, and a lot of ingenuity, the team developed a process that should result in a $20,000 cost savings for the Air Force,” said Lehnerz.  
                            <br /><br />
                            “A prototype is worth a thousand meetings,” said Tech. Sgt. Timothy Kavanagh, noncommissioned officer-in-charge of product support.  “That’s why we opted to go straight to the drawing board to diagram out exactly what we needed.  We worked closely with the 45th Space Wing’s woodworkers from their Transportation Management Office who deal with shipping crates on a daily basis to help us go from concept to reality.”
                            <br /><br />
                            According to David Paynter, 709th SPTG logistics flight manager, the crate the team developed will decrease maintenance preparation time by 50 percent, improve inventory accuracy of $40,000 worth of precision equipment and reduce annual inventory time by 50 percent.
                            <br /><br />
                            “We received tremendously positive feedback from our remote seismic station operators at several of our overseas sites as well as from our technical schoolhouse in Texas after we completed field implementation,” said Paynter.  “We showcased it to the commander and command chief of Air Combat Command when they visited AFTAC, and they seemed quite impressed with the team’s ingenuity and innovativeness.  Any time we can save the Air Force money while simultaneously improving the process, it’s a job well done.”
                            <br /><br />
                            To date, Lehnerz’ team has built 11 crates and nine of them have been shipped to AFTAC’s overseas operating locations.
                            <br /><br />
                            “As we continue to collect and gather feedback from the detachment chiefs at the OLs, we will build additional assemblies to meet their needs,” said Lehnerz.
                        </p>
                    </div>
                </article>--%>


            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Chemist at AFTAC earns award from national Hispanic organization - 9/19/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkChemist" class="n2KPara noDisplay">
                        <div class="autoMarginLeftRight width55">
                            <div class="width100">
                                <img class="maroonBorder smallShadow width95" style="height:24em;" src="_Photos/News2Know/Chemist2.jpg" />
                                <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Diana Velosa, a chemist with the Air Force Technical Applications Center, Patrick AFB, Fla., talks about career opportunities with high school students attending STEMversity in Milledgeville, Ga. Velosa spends a good deal of her time, both on and off duty, mentoring students in forensic science and math as part of the organization’s STEM/diversity outreach program.  (U.S. Air Force photo by Rose Day)
                                </p>
                            </div>
                        </div>

                        <div class="clear"></div>

                        <div class="width45 floatLeft">
                            <div class="width95">
                                <img class="autoMarginLeftRight topMargin2em width95 maroonBorder smallShadow" src="_Photos/News2Know/Chemist1.jpg" />
                                <p class="italic autoMarginLeftRight width95 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    An ever-present participant when the Air Force Technical Applications Center showcases its mission on the road, Diana Velosa enjoys reaching out to America’s youth to encourage them to pursue careers in STEM -- science, technology, engineering and math. (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                        <div class="width45 floatLeft">
                            <div class="width95">
                                <img class="autoMarginLeftRight width95 maroonBorder smallShadow" src="_Photos/News2Know/Chemist3.jpg" />
                                <p class="italic autoMarginLeftRight width95 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Diana Velosa (center, in black) a chemist with the Air Force Technical Applications Center, provides mentorship to Dayana Paz (seated) during the June 2015 STEMversity program on the campus of Central State Hospital in Georgia.  Velosa and fellow AFTAC member Maj. Allen Cohen (pictured), attended the summer program that focuses on STEM and gives underrepresented middle and high school youth an opportunity to conduct experiments and use precision instruments in real-life laboratories.  (U.S. Air Force photo by Rose Day)
                                </p>
                            </div>
                        </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            A scientist at the Air Force Radiochemistry Laboratory here was selected to receive the Meritorious Service Award from National Image, Inc.
                            <br /><br />
                            Diana Velosa, a chemist in the Air Force Technical Applications Center’s Ciambrone Radiochemistry Lab, earned the award for “fostering an innovative and harmonic environment between the military and the Hispanic-American civilian community.”
                            <br /><br />
                            As one of two lead technicians in AFTAC’s world-class clean room, Velosa safely processed nuclear samples for the International Atomic Energy Agency in an effort to combat nuclear weapons proliferation.  She is responsible for analyzing and identifying radiological and nuclear debris from foreign nuclear explosions in support of national security requirements.
                            <br /><br />
                            In addition to her role at the Department of Defense’s sole nuclear treaty monitoring center, Velosa spent countless hours mentoring students and participating in regional community events to help bring science-related demonstrations and exhibits to local schools.  
                            <br /><br />
                            “Diana is a worker who not only has a huge impact on her co-workers and our national security, but also on those outside the walls of the lab,” said Lt. Col James Thomas, lab commander.  “She has represented AFTAC at STEM fairs, national conferences, recruiting events and science bowls to help promote the importance of science, especially to young Americans who are still in high school, and she always receives the highest praise for her efforts.  This award is very well deserved, and we’re proud to have her as a member of our scientific team.”
                            <br /><br />
                            The mission of National Image, Inc., is to promote Hispanic employment in the federal government through training, leadership development, education and the advancement for civil rights.  It is a non-profit organization and works with federal agencies to promote recruitment.
                            <br /><br />
                            One of the traits the organization looks for when selecting recipients of their awards is leadership, especially with regard to education.  Velosa’s resume certainly fits the bill.
                            <br /><br />
                            “I am greatly honored to receive such prestigious recognition,” she said.  “I truly enjoy helping my community, especially those in underprivileged areas, reach their full potential.  My father moved my family and me from a country that has seen extreme violence and corruption for many years, and through his integrity, determination, honesty and work ethic, he was and always will be an inspiration to me.”
                            <br /><br />
                            She added, “I work with some of the very best scientists in the Air Force and to know they nominated me for this award makes all my efforts so worthwhile.  I can’t thank them and National Image, Inc., enough for such a great honor.”
                        </p>
                    </div>
                </article>
            </section>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">eFAILution Wall:  Failure + Learning = Successful Evolution - 9/18/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkFailure" class="n2KPara noDisplay">
                        <div class="autoMarginLeftRight width50 topMargin1em">
                            <img class="autoMarginLeftRight width90 maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/Failure1.jpg" />
                            <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                Projects developed by members of the Air Force Technical Applications Center are on display in the nuclear treaty monitoring center's Innovation Lab at Patrick AFB, Fla.  The lab built an "eFAILution” wall – a prominent centerpiece showcasing projects that didn’t quite make the grade.  It’s what lab personnel describe as "a lineage of success born of failure."  (U.S. Air Force photo by Matthew S. Jurgens)
                            </p>
                        </div>

                        <div class="clear"></div>
                    
                        <div class="floatLeft width45 topMargin1em">
                            <div class="width95 autoMarginLeftRight">
                                <img class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/Failure2.jpg" />
                                <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Members of the Air Force Technical Application Center's Innovation Lab pose in the nuclear treaty monitoring center's machine shop.  The lab encourages and enables innovators at AFTAC to take calculated risks and evolve from failure to achieve success.  Pictured (l to r starting in front row): Lt. Col. Christopher Hall, Staff Sgt. Josh Van Horne, Senior Airman James Rensehhouse, Master Sgt. Nathan Shaw, 1st Lt. Drew Belk, Tech. Sgt. Collin Pesicka, Tech. Sgt. Riley Mills, Capt. Barron Stone, and Senior Airman Matthew Goodrich.  (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                        <div class="floatLeft width45">
                            <div class="width95 autoMarginLeftRight">
                                <img class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/Failure3.jpg" />
                                <p class="italic autoMarginLeftRight width95 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Pictured:  the eFAILution Wall at the Air Force Technical Applications Center, Patrick AFB, Fla.   The wall, complete with motivational quotes and projects that failed to be implemented, is used as a means to cultivate and capitalize on the talent of the workers at AFTAC while encouraging them to take their concepts and make them a reality in a positive learning environment.  (U.S. Air Force photo by Matthew S. Jurgens)
                                </p>
                            </div>
                        </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            Henry Ford, founder of the Ford Motor Company and captain of industry once said, “Failure is the only opportunity to begin again, only this time more wisely.”
                            <br /><br />
                            One Air Force organization is taking Ford’s words to heart.  The Air Force Technical Applications Center, the sole agency within the Department of Defense tasked with monitoring nuclear treaties and nuclear detonations around the world, is emphasizing to its workforce the importance of learning through failure.
                            <br /><br />
                            In 2013, AFTAC formed an Innovation Lab to find ways to improve and accomplish their mission by developing concepts and technologies faster and cheaper.  But the number one reason for establishing the lab was to enable innovators within the center to take calculated risks and evolve from failure to achieve success.  From that concept grew the center’s “eFAILution” wall – a prominent centerpiece of projects displayed on the wall that didn’t quite make the grade.  It’s what lab personnel describe as “…a lineage of success born of failure…” and their central message is simple: continue to learn and evolve from your mistakes.
                            <br /><br />
                            “AFTAC has some of the most incredibly talented people in the Air Force,” said Col. Chad Hartman, AFTAC commander, “but our most powerful attribute is this organization’s long-standing culture of continuous learning.  We are not simply ‘celebrating failure’ at AFTAC; what we are celebrating is a willingness to take risks and fail forward in order to learn.”
                            <br /><br />
                            While Webster’s defines failure as the state or condition of not meeting a desirable or intended objective, the team of AFTAC’s premier enablers of innovation looks at failure as a means to achieve a better, more productive outcome, with an aim at unleashing a innovation mindset.
                            <br /><br />
                            “When people come to the lab with a concept, we don’t want them to feel discouraged if their design doesn’t work the first time,” said Master Sgt. Nathan Shaw, lab superintendent. “The whole idea is to cultivate and capitalize on the talent of the workers here at AFTAC and encourage them to take their concepts and make them a reality, all while operating in a positive learning environment.” 
                            <br /><br />
                            The lab’s wall has about a dozen projects ranging in scope from a cooked Raspberry Pi (a tiny single-board computer) to an entirely 3-D printed programmable rover that can be operated remotely or autonomously.  The lessons gained from these failures have energized the lab team and AFTAC’s 1,000+ strong workforce to rethink solutions to problems.
                            <br /><br />
                            “There has been a lot of discussion at all levels in the Air Force recently about failure,” said 1st Lt. Drew Belk, Innovation Lab flight commander.  “The Secretary of the Air Force and the Air Force Chief of Staff have been stressing the importance of ‘shaping our competitive edge’ through innovation, which includes learning from failure, even if it means accepting more risk.”
                            <br /><br />
                            Air Force Secretary Heather Wilson recently spoke at a conference in Montgomery, Ala., where she said, “It doesn’t matter to me if (Airmen) get it right the first time.  It matters to all of us that we keep innovating constantly, rather than sitting back and analyzing people for failure.”
                            <br /><br />
                            Belk is encouraged by Wilson’s leadership and views on the importance of failing in the name of mission accomplishment.  “I believe the key thing to remember is failure is only fatal if it is final.  Failure provides us the opportunity to learn and make the next iteration better,” he said.
                            <br /><br />
                            Any successful inventor will tell you that virtually nothing ever works on the first try. That’s why AFTAC’s senior leaders realize one of the key ingredients to the lab’s success comes down to one word: persistence.  
                            <br /><br />
                            “Typically, high-speed thinkers are full of ideas and work hard to transfer their ideas from thought-to-product,” said Dr. Dan DeForest, AFTAC’s Director of Strategic Integration.  “Sometimes, however, their ideas simply don’t come to fruition, whether that’s due to a design flaw, engineering obstacle, or even a lack of resources.  But they don’t give up – they continue to persist and seek out workable solutions. It’s senior leadership’s job to clear the path to allow this persistence.” 
                            <br /><br />
                            Couple that persistence with failure and learning, and you have a recipe for success.  “The value of learning from failure cannot be overstated,” said Hartman.
                            <br /><br />
                            The Innovation Lab has grown exponentially since its inception and has been benchmarked by other organizations throughout the Air Force.  The team of AFTAC Airmen who make up the Innovation Lab possess a diverse set of skills:  electrical, chemical and mechanical engineers; computer scientists and programmers; technical applications specialists; and machinists, just to name a few.  Each Airman has demonstrated a persistent desire to excel while applying their vast knowledge and abilities.
                            <br /><br />
                            “One of the more enjoyable challenges in the lab is thinking of ways to improve things that already work,” said Tech. Sgt. Collin J. Pesicka, noncommissioned officer-in-charge of rapid development.  “When you spend time fixing things that are broken, you can’t help but wonder about complacency.  That’s why we began saying, ‘If it ain’t broke, make it better.’  It’s important to investigate all potential opportunities to fail during the continuous improvement process.  And sometimes that includes reinventing the wheel.”
                            <br /><br />
                            For example, lab personnel learned the hard way when they engineered a device to capture debris from a routing table by attaching a vacuum.  They wanted to create a solution to reduce airborne effluents.  However, after debris failed to get sucked up into the vacuum, they realized there was a huge bottleneck near the attachment.  
                            <br /><br />
                            “The initial design contained an unforeseen choke point, which failed to allow for effective dust extraction,” said Belk.  “Through ‘eFAILution’ we prevailed and developed a better design that continues to suck to this day, which in this case is a good thing!”
                            <br /><br />
                            With the requirement to develop more high-power computing capabilities and technologies, the potential for this kind of innovation is a game-changer.
                            <br /><br />
                            “Failure in the U.S. Air Force has historically been a word whispered behind closed doors and swept under the rug as much as possible,” said Capt Barron Stone, 709th Support Squadron director of operations and former officer-in-charge of the Innovation Lab. “It’s encouraging to be a part of the culture change that highlights failure as a means of getting to a better final product. Grass-roots innovation and engineering efforts often require assumptions to expedite progress or save money. With these assumptions, failure is inevitable, but it allows us to learn quickly and make adjustments to get a successful prototype. It’s been extremely refreshing and rewarding to be a part of this team.”
                            <br /><br />
                            Today, Air Force leadership at the highest levels have challenged its officers and senior enlisted advisors to create a culture where Airmen can and should put innovation at the forefront of their daily actions and encourage them to step outside their comfort zone to kick-start innovation while trying out new ideas.
                            <br /><br />
                            AFTAC has proven it’s an organization that’s capitalizing on that challenge.
                            <br /><br />
                            “Our National Defense Strategy recognizes that we have to be agile enough to deliver performance at the speed of relevance because the complexity and pace of change we face in the world today is only increasing,” said Hartman.  “AFTAC’s mindset of iterative learning from failure is key to enabling the organizational agility we require to be successful.  I’m extremely proud of our men and women’s ingenuity.”
                            <br /><br />
                            Belk and his team are encouraging their co-workers to come to the lab with project ideas.  “If the concept works, we’ll celebrate.  If the concept doesn’t work, we’ll still celebrate and encourage them to go back to the drawing board to apply the lessons we’ve learned to make the next generation prototype a success.”  
                        </p>
                    </div>
                </article>
            </section>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">AFTAC Hockey takes trophy at charity match - 9/18/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkHockeyWin" class="n2KPara noDisplay">
                        <div class="floatLeft width45">
                            <div class="width95 autoMarginLeftRight">
                                <img class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/HockeyWin1.jpg" />
                                <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Traveling Challenge Cup trophy earned by members of the Athletes for Teamwork and Charity (AFTAC) based at Patrick AFB, Fla., after their match with the Tampa Bay Fire Fighters.  AFTAC won the game 9-7, with all proceeds going to Camp Hopetake, a sleepaway camp for children with burn injuries.   (Courtesy photo)
                                </p>
                            </div>
                        </div>

                        <div class="floatLeft width45">
                            <div class="width95 autoMarginLeftRight">
                                <img class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/HockeyWin2.jpg" />
                                <p class="italic autoMarginLeftRight width100 leftMargin4em topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Players from Athletes for Teamwork and Charity (AFTAC) and Tampa Bay Fire Fighters (TBFF) pose for a group photo after the two teams competed in a charity match to raise funds for Camp Hopetake, a sleepaway camp for children who have survived severe burns.  (Courtesy photo)
                                </p>
                            </div>
                        </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            Players from the Athletes for Teamwork and Charity Hockey Club competed against the Tampa Bay Firefighters Aug. 25 to raise money for adolescent burn victims and walked away with the coveted Traveling Challenge Cup trophy.
                            <br /><br />
                            The AFTAC Hockey Club, a 501(c)(3) charitable non-profit organization, faced off against firemen from the greater Tampa area for the fourth time in as many years to support TBFF’s adopted charity, Camp Hopetake – a sleepaway summer camp for children ages 5-17 who have survived burn injuries.
                            <br /><br />
                            From the opening faceoff to the final buzzer, it was a see-saw scoring game, with AFTAC tallying the first goal.  Quickly, TBFF fought back to take the lead.  The second period saw end-to-end action and the fans were energized.  As the teams entered the third period with Tampa up 7-6, AFTAC surged ahead, shutting down the firefighters’ vaunted offense and won the game, 9-7.
                            <br /><br />
                            “By far, TBFF is the best team we’ve ever skated against, and this was probably the best game we’ve ever played as a team,” said Bill Hungate, team captain.  “I’m so proud of our effort on and off the ice, especially when the outcome benefits children.”
                            <br /><br />
                            His players had nothing but praise for Hungate’s motivational speech that propelled them toward victory.
                            <br /><br />
                            “In between the second and third periods when we were down by two, Bill got us fired up by saying, ‘We’ve already won this game, guys – they just don’t know it yet.’  I took those words to heart and we went out there and gave it our all!” said center Mike Nolan.  “I could not have asked for a better way to kick off the season.”
                            <br /><br />
                            The matchup was an ‘across-the-board’ charitable event, with referees offering their services for free, discounted ice time at the rink, and the challenge cup donated by a local vendor.  Between ticket sales and direct donations, the teams raised more than $1,500 to benefit TBFF’s chosen charity.
                            <br /><br />
                            “Camp Hopetake provides a safe, comfortable, supportive environment for kids who have been through some pretty traumatic circumstances,” said defenseman Paul Bertrand.  “The word ‘Hopetake’ is the Seminole Indian word for children, and many of us on the team are parents ourselves, so we take the game pretty seriously when we know the money raised goes to such a great cause.”
                            <br /><br />
                            TBFF is supported by the Tampa Bay Lightning, a National Hockey League team that has authorized the use of its trademark lightning bolt in the TBFF logo.  Members of the Lightning organization were on hand at the game to show support for their community team and were impressed with what they saw.
                            <br /><br />
                            “The Lightning guys approached me after the game to say they are definitely interested in supporting future events between AFTAC and TBFF, which is a huge compliment to us as a team,” said Hungate.  “I mean, some of the guys on TBFF have professional minor league hockey experience, and knowing we can impress pros from the NHL is pretty humbling.  We’re looking forward to more matches with this outstanding club.”
                        </p>
                    </div>
                </article>
            </section>


            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Center exercises capability to relocate treaty monitoring mission - 9/6/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkRelocate" class="n2KPara noDisplay">
                        <div class="floatLeft width60">
                            <div class="width95 autoMarginLeftRight">
                                <img id="relocatePic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/Relocate1.jpg" />
                                <p id="relocateMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Keith Ewasiuk, (center) maintenance operations control center manager for the Air Force Technical Applications Center, explains to Col. Ralph E. Bordner III (lower right), AFTAC vice commander, how data is analyzed after the nuclear treaty monitoring center transfers the mission from its primary location at Patrick AFB, Fla., to its alternate location in Millington, Tenn.  Also pictured (l to r):  Maj. William J. Pattinson, 22nd Surveillance Squadron director of operations; Staff Sgt. Beau Brennan, subsurface analyst; and Lt. Col. Joseph H. Shupert, 709th Surveillance and Analysis Group deputy commander. (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                    <div class="floatLeft width35 topMargin10em leftMargin2em">
                        <div class="autoMarginLeftRight width95">
                            <input id="relocatePrevious" class="myBut width40" type="button" value=" Previous " />
                            <input id="relocateNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                        </div>

                        <div class="topMargin2em">
                            <input id="relocateSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                        </div>
                    </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p id="relocateArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            <strong>Millington, Tenn. - </strong> The Air Force Technical Applications Center exercised its capability to transfer its critical nuclear treaty monitoring mission Aug. 14-15 to the center’s newly established contingency operations location in Millington, Tenn.
                            <br /><br />
                            AFTAC is the sole organization in the Department of Defense tasked with monitoring worldwide nuclear detonations and with providing national decision makers with data analysis on atomic events underwater, in the atmosphere, underground or in space.
                            <br /><br />
                            Because of its no-fail 24/7 mission, AFTAC is tasked with providing uninterrupted access to nuclear event detection data to provide national decision makers at the highest levels in the U.S. government.  The center also operates the U.S. National Data Center, the nation’s arm of the International Monitoring System that supports the Comprehensive Test Ban Treaty Organization to limit nuclear testing and proliferation worldwide.
                            <br /><br />
                            Millington offers AFTAC leadership the unique opportunity to create a fully operational alternate operations center if needed in the event its primary location at Patrick AFB should become inhabitable due to a natural or man-made disaster.
                            <br /><br />
                            Referred to as a COOP (contingency of operations), a team of subject matter experts traveled to Tennessee to establish communication lines, ensure connectivity was fully operational, and prepare to transfer the mission from AFTAC’s operations center to the alternate facility.  While it sounds relatively simple, there are a lot of complicated and moving parts of the transfer.
                            <br /><br />
                            “We don’t just operate off of one network,” said Master Sgt. Michael Nolan, cyber operations superintendent.  “We collect, process and analyze and report data from three systems – our standard open-source network (NIPR), our secure router (SIPR) and our highly classified system (JWICS).  It would be a lot simpler if we were just working from one unclassified system, but due to the nature of our mission, it’s critical for us to provide access to all three operational systems.  So it does take some time and effort to ensure the team has precisely what they need to successfully transfer from one location to another.”
                            <br /><br />
                            The team is also responsible to inform outside agencies and stakeholders, such as combatant commanders, international mission partners, AFTAC’s higher headquarters, and the National Military Command Center, just to name a few.
                            <br /><br />
                            For this exercise, 2nd Lt. Morgan Snyder served as the senior duty officer overseeing execution of the transfer.  Sitting at her side was Master Sgt. Jorge Garcia, AFTAC operations manager, who was responsible for systems validation and ensuring COOP team members were prepared to accept mission transfer.
                            <br /><br />
                            “It’s always challenging to be geographically separated from your primary headquarters,” said Snyder, “but as the SDO, it falls upon me to make sure the transfer is seamless and successful.  There are times when I feel a lot of pressure and responsibility, especially since our mission is so critical, but I have a lot of SMEs (subject matter experts) I can rely on to assist me if I have any questions or concerns.  It’s a total team effort.”
                            <br /><br />
                            AFTAC’s vice commander, Col. Ralph E. Bordner III, traveled to Millington to observe the process and learn how his Airmen execute the COOP.
                            <br /><br />
                            “As the nation’s leading expert on nuclear detection, we as an organization need to ensure we are prepared for any contingency that may alter how we do business,” said Bordner. “One of the ways we do that is to conduct exercises that examine our critical functions, validate our ability to relocate our surveillance operations, and verify the effectiveness of our alert mission.”
                            <br /><br />
                            He added, “For the past several months, the team here has been meticulously planning for the COOP, and by all accounts, the transfer was a huge success.  It’s a testament to their hard work, and I’m confident should a hurricane head our way this season, we are fully prepared to deliver our findings to national decision makers.”
                        </p>
                    </div>
                </article>
            </section>

<%--                <article id="ntkStemGirls" class="n2KPara noDisplay">
                        <div class="floatLeft width60">
                            <div class="width95 autoMarginLeftRight">
                                <img id="stemGirlsPic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/StemGirls1.jpg" />
                                <p id="stemGirlsMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    When Senior Master Sgt. Tonya L. Cobarruviaz enlisted in the Air Force more than 16 years ago, little did she know she would spend 14 of those 16 years with the same organization. It is a testament to her knowledge, skill and expertise that she remains one of the stalwart senior noncommissioned officers assigned to the Air Force Technical Applications Center. (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                    <div class="floatLeft width35 topMargin10em leftMargin1em">
                        <div class="autoMarginLeftRight width95">
                            <input id="butstemGirlsPrevious" class="myBut width40" type="button" value=" Previous " />
                            <input id="butstemGirlsNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                        </div>

                        <div class="topMargin2em">
                            <input id="butstemGirlsSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                        </div>
                    </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p id="stemGirlsArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            In 1976, esteemed historian and author Laurel Thatcher Ulrich wrote a book entitled, “Well-Behaved Women Seldom Make History.”  The premise of her work was to shine a light on famous women throughout history who challenged the way things were done.  While the title may seem to be a modern-day rallying cry for women to go out and break the rules through misbehavior, that was not the premise of her message.  Ulrich’s emphasis was to encourage women to do more – to break with convention, make a mark on history and prove that ordinary people, including women, can have a lasting impact on the world by doing the unexpected.
                            <br /><br />
                            Today, women from all walks of life are taking Ulrich’s words to heart and finding ways to break those proverbial molds as they seek out careers in positions traditionally held by men.  
                            <br /><br />
                            Women make up half the current U.S. workforce, but only 26 percent of them are in STEM – science, technology, engineering and math.  According to the U.S. Census Bureau, 61 percent of women in STEM are in the social sciences (communication, education, public health, etc.). Only 13 percent of women are in a hard science field such as engineering.
                            <br /><br />
                            From an Air Force perspective, 64,367 of the nearly 321,000 Airmen currently on active duty are women.  Of that 20 percent, even less are in STEM-related fields.  Air Force leadership is trying to break that cycle.
                            <br /><br />
                            In a live session with The Washington Post’s David Ignatius last month, Secretary of the Air Force Heather Wilson discussed new Air Force initiatives aimed at inspiring more women to enter scientific career fields.  During the interview, Wilson elaborated on steps the service is taking to recruit more women.
                            <br /><br />
                            “One of the things we’re trying to do is to encourage more young women to go to engineering school,” said Wilson.  “Sometimes the way in which we talk about engineering is not resonating with our daughters, and it is with our sons. We found that if you look at teenagers, more boys are satisfied by solving the problem.  They get satisfaction out of fixing something.  A disproportion number of girls want to know why the problem matters.  So, if we say, ‘Come be an engineer and you can do cool stuff,’ we’re talking to the boys.  If you say, ‘If you want to make a difference in someone’s life; if you want to have clean water or save the life of a family member you love, or make the environment cleaner, or provide energy to the world, be an engineer.’  Then we’re talking to both boys and girls.”
                            <br /><br />
                            One Air Force entity has made great strides on making Wilson’s STEM goals a reality.  The Air Force Technical Applications Center, headquartered at Patrick AFB, Fla., is a highly-technical organization made up of scientists, technicians, engineers and analysts whose role is to detect, identify, analyze and report nuclear detonations underground, in the atmosphere, underwater or in space.  
                            <br /><br />
                            It is the sole organization in the Department of Defense charged with this vital international mission.
                            <br /><br />
                            Despite its vital role to national decision makers, AFTAC’s pool of employees leans heavily male.  Of its more than 1,000+ members who make up the center’s workforce, only 160 are military or civilian females.  Even fewer than that are in STEM positions.
                            <br /><br />
                            One of the ways AFTAC is looking to increase the number of female employees in technically-skilled roles is hosting its annual Women in Science and Engineering Symposium.  For the past four years, AFTAC has invited the best speakers from various industries – academia, defense, corporate and commercial – to share best practices on how to recruit, engage, employ and encourage women into hard science career paths.
                            <br /><br />
                            Rose Day, AFTAC’s chief of civilian recruiting, believes the best way to “break the mold” is to expose girls at an early age to the sciences.
                            <br /><br />
                            “One of the messages I like to relay to students when we travel for recruiting efforts is very simple:  I tell the girls, ‘You are needed.’  Everyone wants to hear those words because it makes them feel like they are a valuable, needed contributor,” Day explained.  “We have to be advocates, we have to set the example and we have to collaborate.  But we can’t do this alone.  We also have to partner with the men in the room because their advocacy is a critical part to the partnership.  That’s how we break the mold.”
                            <br /><br />
                            This year, America celebrates the 38th anniversary of the establishment of National Women’s Equality Day, on Aug. 26.  The commemoration stemmed out of the National Women’s History Project as a way to promote and educate the role of women throughout history.
                            <br /><br />
                            In honor of National Women’s Equality Day, here are just a few of AFTAC’s “mold-breakers:”
                            <br /><br />
                            <span class="redText underLine">Staff Sgt. Terica G. Clewis</span><br />
                            Staff Sgt. Terica Clewis has been assigned to the nuclear treaty monitoring center performing various roles for the past three years.  Her current duties include designing innovated software systems that assist center personnel (as well as the rest of the Air Force) efficiently manage, store and process large-scale data.  
                            <br /><br />
                            “My team and I are responsible for exploring ways to apply machine-learning algorithms to the data so analysts can provide more robust information to leadership at a much faster rate,” Clewis explained.  “I have been able to demonstrate how the development process can foster greater innovation and better teamwork.  Collaborating together requires everyone to see the impact of communicating properly with colleagues.  It’s extremely rewarding.”
                            <br /><br />
                            But the “reward” didn’t always come easy to Clewis.
                            <br /><br />
                            “I’m a single mom, and right after my daughter was born I was in a predominantly-male maintenance squadron. There were times I had to go above and beyond what was typically required just to prove I was part of the team.  I volunteered for every repair job and performed all the preventative maintenance tasks to build up my skills and illustrate I was just as good – if not better – than my male coworkers.  Because women sometimes have to juggle so many different responsibilities at once, we are great at finding creative ways to perform tasks faster and more efficiently.”
                            <br /><br />
                            Clewis holds a bachelor’s degree in business administration and has her sights on earning her master’s degree in data science.
                            <br /><br />
                            “Ten years from now, I see myself completing my graduate degree, recruiting more women into the 9S100 (scientific applications specialist) career field, mentoring other young female Airmen and preparing for military retirement!”
                            <br /><br />
                            <span class="redText underLine">Tech. Sgt. BreAnne Groth</span><br />
                            When AFTAC celebrated National Pi Day on March 14, Tech. Sgt. BreAnne Groth’s section was amazed when the NCO picked up a dry-erase marker and began writing out Pi in decimal form from memory.  With ease, she surpassed 100 decimal points and stopped only because she ran out of room on the white board and had to get back to work.   
                            <br /><br />
                            Math and science have always been a passion of hers, and she definitely applies her knowledge in her everyday responsibilities at AFTAC.  As the center’s satellite technique alert officer, she is a qualified national expert in analyzing and reporting global nuclear detonations to national decision makers in accordance with ratified nuclear treaties.  She is also responsible for monitoring state-of-the-art health and configuration control of more than 200 sensors on 38 orbiting space vehicles.
                            <br /><br />
                            “This means I’m not only concerned with ensuring and optimizing current sensor performance; I also advise the treaty monitoring community of future constellations and make recommendations for sensors that will be used well after I retire from the Air Force,” Groth said.
                            <br /><br />
                            During the seven years she’s been assigned to AFTAC, Groth progressed through different positions:  satellite data analyst, radiation measurements technician, space operations system analyst, and now noncommissioned officer in charge of U.S. Nuclear Detonation Detection System (USNDS) operations.  She possesses two academic degrees, an associates degree in scientific analysis technology and a bachelor’s degree in applied mathematics.  Her goal is to be selected to attend the Air Force Institute of Technology to earn a master’s degree in space systems.
                            <br /><br />
                            “My parents taught me when I was younger to ‘do what you love,’ and that has never steered me wrong,” said Groth.  “Any career field may seem like a challenge, but the secret is to embrace and learn from the differences.  STEM has so many different kinds of people, including really smart women, but the one thing we all have in common is our passion for science!”
                            <br /><br />
                            <span class="redText underLine">Senior Master Sgt. Tonya L. Cobarruviaz</span><br />
                            When Senior Master Sgt. Tonya L. Cobarruviaz enlisted in the Air Force more than 16 years ago, little did she know she would spend 14 of those 16 years with the same organization. It is a testament to her knowledge, skill and expertise that she remains one of the stalwart senior NCOs assigned to the center.
                            <br /><br />
                            She arrived at AFTAC when she was a tender 20 years old, and over the years she has worked at AFTAC’s headquarters at Patrick AFB as well as at several of AFTAC’s overseas and stateside detachments.
                            <br /><br />
                            As the superintendent for the experts who conduct advanced analysis on data received from geophysical and atmosphere and space mission sets, she is tasked with ensuring members of the 23rd Analysis Squadron have the resources they need to get the mission done.  She also goes to great lengths to remove any barriers that may stand in their way to achieve the mission.
                            <br /><br />
                            “I like helping people,” she said.  “I feel very rewarded when there is something I can do that makes someone else’s job or life better, even slightly.  It takes a lot of effort to affect change in a large organization like ours, and the few times I’ve been able to do that were some of the best work moments I’ve ever experienced.”
                            <br /><br />
                            Cobarruviaz, who holds a dual-major bachelor’s degree in interdisciplinary studies and business management, and a master’s degree in strategic intelligence, prides herself not only on what she’s accomplished academically, but also what she’s achieved physically.
                            <br /><br />
                            “As one of the few women in an organization dominated by men, I have always pushed myself to be at least as good as the average male when it comes to physical fitness,” she said.  “Male and female Airmen have different requirements for push-ups, run times, sit-ups and body measurements, but I typically use the men’s standards to push myself to be better.  The older I get, the harder it is, but I still try.  I think being mentally fit is equally important as being physically fit.”
                            <br /><br />
                            <span class="redText underLine">Capt. Pamela Zhang</span><br />
                            Capt. Pamela Zhang joined the AFTAC team in 2016 as a chemist.  She’s parlayed the education she received at the U.S. Air Force Academy into an important leadership position within AFTAC’s 709th Surveillance and Analysis Group.  She credits her continued success to a solid upbringing.
                            <br /><br />
                            “My family was instrumental in creating a foundation where I felt encouraged to pursue science, and hard work made anything attainable,” Zhang stated.  “I went to summer science camps and participated in a lot of extra-curricular STEM activities while I was growing up, so I think doing all those activities when I was young showed me how to have thick skin and to be OK with being different, especially since most of the camps were made up of boys.  I remember one summer some younger boys were teasing me, and I was so infuriated with them for being so immature and unfair.  But my parents made me return and taught me to never back down from any problem I faced.  From that, I learned to ask a lot of questions of my teachers, instructors and counselors, and I think that had a lot to do with where I am today.”
                            <br /><br />
                            Zhang, who also has a master’s degree in chemistry from the University of Illinois-Urbana Champaign, is pursuing a second graduate degree in international relations and contemporary war.
                            <br /><br />
                            “Being well-rounded is an important part of education and being an officer,” she explained.  “As much as I enjoy STEM and studying it, if we as STEM professionals fail to understand the greater global environment and how STEM is used by other nations, our work can lack impact and be used in unanticipated ways.  I may regret leaving the safety of the STEM field, at least academically, but I’m excited to begin studying a new and foreign subject.”
                            <br /><br />
                            <span class="redText underLine">Diana C. Velosa</span><br />
                            An ever-present participant when AFTAC showcases its mission on the road, Diana Velosa enjoys reaching out to America’s youth to encourage them to pursue careers in STEM.  For the past several years, members of the treaty monitoring center have conducted STEM outreach at numerous venues – science bowls, robotics competitions, science fair judging, school mentoring and summer science camps. 
                            <br /><br />
                            Her field of expertise is chemistry, and she puts her degree to good use in the Air Force’s only one of its kind capabilities, the Ciambrone Radiochemistry Laboratory.
                            <br /><br />
                            “I’ve had the pleasure of being a part of the AFTAC family since 2014,” Velosa said.  “I assist with separation, purification and analytical chemical techniques, as well as work with spectroscopy instrumentation and alpha, beta and gamma measurement equipment.  I am very proud of our mission and what we are able to accomplish on a daily basis, especially when I know I am contributing to the safety of our country and that of our allies.”
                            <br /><br />
                            When asked what it has been like as a woman to work in a predominantly male field of study, Velosa said, “I think our society has come a long way in accepting women as a vital part of the workforce, and we contribute just as much as our male counterparts.  However, it is sometimes a lot more challenging for us to be a good mother, wife and scientist all at the same time.  I’ve been very lucky, though – I’ve had many very supportive supervisors who put themselves in the shoes of us modern-day women, and they understand how much we have to balance.”
                            <br /><br />
                            She added, “Being a Hispanic female scientist whose first language is not English, I’ve faced a lot of challenges.  But if I could give my young self a piece of advice, I would say this:  don’t worry about fitting into anybody else’s mold of what career a girl should pursue.  Explore your interests and seek out internships to discover your passion.  Then go for it!”
                            <br /><br />
                            <span class="redText underLine">Parveen S. Kapoor</span><br />
                            One of only four women in her squadron, Parveen Kapoor is the chief of the Atmosphere and Space Operations Flight within the 23rd Analysis Squadron at AFTAC.  She leads a flight comprised of military and civilian scientists, mathematicians, engineers and technicians responsible for the operation and maintenance of the USNDS.  
                            <br /><br />
                            As a 34-year career civil servant, Kapoor served in a multitude of STEM roles for the Air Force, with 16 of those years at AFTAC.  With a bachelor’s degree in applied mathematics and a minor in physics, coupled with her master’s degree in applied statistics, Kapoor’s broad educational background has proven instrumental to AFTAC’s success and mission accomplishment.
                            <br /><br />
                            “As a young child, I struggled quite a bit in math,” Kapoor said.  “In fact, my first grade teacher told my parents I would never be able to do math successfully.  Even up to about 8th grade, I remember not understanding mathematical principles very well.   It wasn’t until about my sophomore year in high school that I had a great algebra teacher who explained things in a very basic, easy-to-understand manner.  All of a sudden, things began to click and my grades drastically improved.  That was definitely a turning point in my early STEM education.”
                            <br /><br />
                            Kapoor knows first-hand how important the right teacher is to a struggling student.  So much so that she tutors high school and college students in her spare time.
                            <br /><br />
                            “In order for us as a nation to be a technical superpower, we need to groom talent in STEM and it starts in the schools” she explained.  “Recently, there has been a major emphasis placed in this area for young girls, and while I’m completely on board with that, I believe there needs to be encouragement across the board for both boys and girls in STEM.”
                        </p>
                    </div>
                </article>--%>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Contractor with treaty monitoring center puts lifesaving skills to the test - 8/24/2018</h2>
                </div>

                <article id="ntkSkills" class="n2KPara noDisplay">                    
                <div class="clear"></div>
                    
                    <div>
                        <div>
                            <div class="width40 autoMarginLeftRight">
                                <img alt="skills.jpg" class="width100 block autoMarginLeftRight topMargin1em maroonBorder smallShadow" src="_Photos/News2Know/Skills.jpg" />
                                <span class="bold width100 topMargin1em autoMarginLeftRight block italic maroonText aLeft" style="font-size:1em;">
                                    Christopher Minamyer (left) and his aunt, Leticia Godinez, are interviewed by local media after they helped save a drowning man at a Tampa-area beach.  Minamyer, a mechanical engineering contractor for Kegman, Inc., at the Air Force Technical Applications Center, Patrick AFB, Fla., was lauded for his life-saving skills.  (Photo courtesy of ABC Action News, WFTS-TV/Tampa)
                                </span>
                            </div>

                        </div>

                        <div class="clear"></div>

                        <p id="SkillsArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            It started out as a relaxing day at the beach – abundant sunshine, warm water, comfortable sea breeze, and good company.  But the serene setting was quickly interrupted when beachgoers rushed to help pull a drowning man to safety.
                            <br /><br />
                            Christopher Minamyer, a mechanical engineering contractor for Kegman, Inc., at the Air Force Technical Applications Center here, was visiting his relatives recently on Florida’s Sun Coast.  Chris and his wife were playing catch with their children as his aunt and uncle planted their beach chairs in the sand to enjoy the scenery and soak in the sun.  As they were playing, Chris saw an exhausted couple attempting to drag a man on shore as a woman called for help.
                            <br /><br />
                            He ran over while yelling to his aunt, Leticia Godinez, a registered nurse with 40 years’ experience, to join him at the shoreline to help.  When they reached the prone man, the couple said they found him in the ocean, face down, and wasn’t sure how long he’d been underwater.
                            <br /><br />
                            Chris, a former Air Force officer, allowed his military training skills to kick in.  They pulled him away from the incoming waves to drier sand.  The man was unconscious and unresponsive, so Leticia established an airway.  Beachgoers flagged down a police officer who raced over on his all-terrain vehicle.  Leticia and the officer worked together to get the man’s heart pumping faster, while Chris started stomach compressions on each exhale to get the water out of the victim’s lungs.
                            <br /><br />
                            “When the paramedics finally arrived, they got an IV into him quickly, but were concerned about his heartrate,” said Chris.  “They performed traditional CPR on him and quickly loaded him onto a stretcher.  He was still unconscious at that point.”
                            <br /><br />
                            According to a report by ABC Action News (WFTS-TV/Tampa), the 63-year-old victim was transported to Largo Medical Center with life-threatening injuries.  Once he received medical care, he regained consciousness, was able to breathe on his own, and communicate with family members.
                            <br /><br />
                            “Not a lot was going through my mind at the time we were trying to rescue him,” Chris said, “other than trying to get him to breathe and get him to safety.  Afterwards, though, I was thinking about it a lot.  I really thought he wasn’t going to make it based on the shape he was in when we found him.  When I heard the next day he was alive, I was very relieved.”
                            <br /><br />
                            The victim’s family contacted Chris and his aunt to express their thanks for their selfless actions.
                            <br /><br />
                            “His daughter and sister were extremely grateful to my aunt and me for helping out,” Chris said.  “They told me the doctors put him into a medically-induced coma for 24 hours, and after that he was responsive and talking to his family members.  They also said he has a good chance to fully recover, but has a long road ahead of him.  I’m keeping him in my prayers and glad he’s alive today.”
                            <br /><br />
                            Minamyer’s supervisor had nothing but praise and admiration for his employee. 
                            <br /><br />
                            “Chris’ sacrificial and quick-thinking efforts to rescue a drowning man were surprising, but not unexpected,” said Rob Martin, geophysical acquisition manager for the MERC-G contract.  “As a former Air Force officer and current contract engineer, Chris has consistently demonstrated a commitment to leadership, faith and service to others.  We’re extremely proud to have him on our team.”
                        </p>
                    </div>
                </article>
            </section>

<%--                <article id="ntkPhone" class="n2KPara noDisplay">                    
                    
                <div>
                    <div>
                        <div class="width40 inlineBlock">
                            <img alt="phone1.jpg" class="width100 block autoMarginLeftRight topMargin1em maroonBorder smallShadow" src="_Photos/News2Know/Phone1.jpg" />
                            <span class="bold width100 topMargin1em autoMarginLeftRight block italic maroonText aLeft" style="font-size:1em;">
                                James Griffieth (right), an equipment control officer for the Air Force Technical Applications Center, Patrick AFB, Fla., examines new phones with Staff Sgt. Dali Ramos, a member of Griffieth's installation upgrade team.  The nuclear treaty monitoring center replaced more than 975 telephones to meet or exceed established security requirements.  (U.S. Air Force photo by Susan A. Romano)
                            </span>
                        </div>

                        <div class="width40 leftMargin2em inlineBlock">
                            <img alt="Phone2.jpg" class="width100 block autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/Phone2.jpg" />
                            <span class="bold width100 topMargin1em autoMarginLeftRight block italic maroonText aLeft" style="font-size:1em;">
                                A collection of old telephones is placed in a large cardboard box at the Air Force Technical Applications Center, Patrick AFB, Fla. The nuclear treaty monitoring center replaced its full complement of existing telephones with new systems to meet or exceed established security requirements.  (U.S. Air Force photo by Susan A. Romano)
                            </span>
                        </div>
                    </div>

                    <div class="clear"></div>

                    <p id="PhoneArt" class="block">
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        The Air Force Technical Applications Center here replaced its full complement of telephones to meet or exceed established security requirements outlined in guidance from the Committee on National Security Systems. 
                        <br /><br />
                        AFTAC’s workforce of more than 1,000 operates in a sensitive compartmented information facility, or SCIF, where it conducts its international nuclear treaty monitoring mission.  Due to the nature of the information the center processes on a daily basis, personnel require secure communications to execute their respective jobs and duty requirements.
                        <br /><br />
                        Done in two phases, AFTAC’s team of comm experts began configuring and building user profiles prior to connecting the systems to the network.  Once that process was complete, phase two was underway and the team began transferring more than 985 phone numbers from the existing switch belonging to the 45th Communications Squadron to AFTAC’s own new switch.
                        <br /><br />
                        According to Staff Sgt. Sean Phillips, information technology project manager, upgrading AFTAC’s telephone system was necessary to eliminate any system vulnerabilities.  
                        <br /><br />
                        “Our new phone system is part of what’s called Telecommunications Security Group Six, or TSG-6, and it brings a lot of innovative features to desktop communications, with the most important being secure comms,” said Phillips.  
                        <br /><br />
                        James Griffieth, AFTAC equipment control officer, was the team lead for the installation upgrade and oversaw five Airmen who assisted with the transfer.
                        <br /><br />
                        “AFTAC had been using Avaya Instruments for several years, and while they are quality phones, they didn’t meet the necessary security requirements when it comes to cybersecurity instructions,” said Griffieth.  “We are replacing about 1,200 pieces of equipment with modified Cisco phones, which will put us in compliance with CNSS guidelines.  It also gives our leadership peace of mind knowing the information is safe and secure.”
                        <br /><br />
                        The cost of the conversion was about $2.1 million -- $1.8 million during phase one, and about $350,000 for phase two.
                        <br /><br />
                        Griffieth said the new phones will have many of the same features as the old phones – speed dial, voice mail, ring tones, phone directory, etc., but pointed out one feature center personnel will have to get used to.  “Be sure to push the TSG-6 red button to speak to your caller!”
                    </p>
                </div>
            </article>--%>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Cop for a Day: AFTAC Airmen learn role of base Security Forces - 8/21/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkSFS" class="n2KPara noDisplay">                    
                    
                    <div>
                        <div class="width50 autoMarginLeftRight">
                            <img alt="sfs1.jpg" class="width80 maroonBorder smallShadow" src="_Photos/News2Know/SFS1.jpg" />
                            <p class="bold italic maroonText aLeft" style="font-size:1em;">
                                Tech. Sgt. Scott Buske, a spectral analysis section chief with the 21st Surveillance Squadron, Air Force Technical Applications Center, Patrick AFB, Fla., takes aim at a virtual active shooter using VirTra, a 300-degree wrap-around simulator used by members of the 45th Security Forces Squadron.  Buske and 17 members of his squadron spent a day with the law enforcement agents to learn more about how they protect the base. (U.S. Air Force photo by Susan A. Romano)
                            </p>
                        </div>
                        <div class="clear"></div>
                        <div>
                            <div class="width40 inlineBlock" style="margin-top:-2em;">
                                <img alt="sfs2.jpg" class="width100 block autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/SFS2.jpg" />
                                <span class="bold width100 topMargin1em autoMarginLeftRight block italic maroonText aLeft" style="font-size:1em;">
                                    Senior Airman Nam Tran, a deployed analysis system technician with the 21st Surveillance Squadron, reacts to voltage from a conducted electrical weapon delivered by James “Chewy” Chenoweth, a security forces trainer with the 45th Security Forces Squadron.  Tran and 17 other members of his squadron based at Patrick AFB, Fla., spent a day with Airmen of the 45th SFS to learn more about the law enforcement officers who patrol and protect the installation and its people.  (U.S. Air Force photo by Susan A. Romano)
                                </span>
                                <div class="clear"></div>
                            </div>

                            <div class="width40 topMargin1em leftMargin2em inlineBlock">
                                <img alt="sfs3.jpg" class="width100 block autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/SFS3.jpg" />
                                <span class="bold width100 topMargin1em autoMarginLeftRight block italic maroonText aLeft" style="font-size:1em;">
                                    Senior Airman Jenna Bruzual, a spectral analyst with the 21st Surveillance Squadron at Patrick AFB, Fla., is spotted by Tech. Sgt. Thomas Angelini, 45th Security Forces Squadron noncommissioned officer in charge of training, and Senior Airman Steven Morales, 45th SFS unit schedule and training specialist, as trainer James “Chewy” Chenoweth delivers a high voltage jolt with a Taser.  Bruzual was one of 18 Airmen from the Air Force Technical Applications Center who visited the base law enforcement squadron to learn more about their role in personnel and installation protection.  (U.S. Air Force photo by Susan A. Romano)
                                </span>
                                <div class="clear"></div>
                            </div>
                        </div>

                        <div class="clear"></div>

                        <p id="SFSArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            Members of the Air Force Technical Applications Center here spent a day with Airmen of the 45th Security Forces Squadron to learn more about the law enforcement officers who patrol and protect the installation and its most critical resource:  the people.
                            <br /><br />
                            Eighteen military and civilian personnel of AFTAC’s 21st Surveillance Squadron teamed up with cops July 30 to get an up-close-and-personal look into how base law enforcement trains in shoot/no-shoot scenarios and to experience what it feels like to be stunned by a Taser.
                            <br /><br />
                            Staff Sgt. Adam Edwards, non-commissioned officer-in-charge of deployed analysis system (DAS) logistics, suggested to his squadron commander that pairing up with the 45th SFS would be a great way to spend their Comprehensive Airman Fitness Day.  His commander concurred, and Edwards coordinated the visit with the unit scheduler at the 45th SFS.
                            <br /><br />
                            Once the coordination efforts were complete, the team of AFTAC scientists, engineers, technicians and analysts made the trip to the base defense operations center where they were met by Tech. Sgt. Thomas Angelini, noncommissioned officer in charge of training, and Senior Airman Steven Morales, unit schedule and training specialist.  The group was led into a large room that houses the SFS’ VirTra System, a state-of-the-art training simulator security forces experts use to train for the most difficult real-world situations.
                            <br /><br />
                            “VirTra is a 300-degree wrap-around simulator that’s configured to employ an M4 (rifle) and an M9 (handgun) with realistic visual scenarios to give our guys an understanding of what it looks like downrange under extremely stressful situations,” said Angelini.  “We’ve been using the system for about two years now, and it’s been extremely beneficial.  We’re able to train using dozens of scenarios, like an active shooter, a suicidal ideation, use of force, or even urban combat conditions.  It’s an incredibly realistic system.”
                            <br /><br />
                            Each member of the 21st had a chance to get a feel of what the VirTra training platform had to offer using either type of weapon available.
                            <br /><br />
                            “It was very realistic training,” said Tech. Sgt. Scott Buske, 21st SURS spectral analysis section chief.  “We go through active shooter exercises and they’re helpful and all, but being able to use simulation equipment like this really brings it to a totally different level.  I definitely walked away with a lot of respect for the guys who face these threats in real life.  Big thanks to the 45th for giving us the chance to experience it.”
                            <br /><br />
                            After the virtual firing range action was complete, the Airmen were introduced to James “Chewy” Chenoweth, a security forces trainer and retired Air Force senior noncommissioned officer.
                            <br /><br />
                            Chewy demonstrated techniques used when employing a Conducted Electrical Weapon, more commonly known as a Taser.  The gun uses compressed gas to fire two small darts that are attached to copper wires.  When the darts pierce the skin, an electric current flows through the body, immediately subduing the suspect. 
                            <br /><br />
                            He explained why law enforcement agencies use stun gun technology as a tool in their arsenal.
                            <br /><br />
                            “Generally speaking, it’s a safe and effective means to controlling a subject without having to resort to deadly force,” said Chewy.  “It delivers a high voltage, low amperage jolt to the human body that temporarily causes the suspect to lose voluntary muscle control.  More often than not, the ‘damage’ a recipient experiences is during the fall when the Taser makes contact, not from the voltage itself.”
                            <br /><br />
                            Since injury from falling is a factor, the Security Forces Squadron requires trainees to be in a prone position on floor mats with two spotters on each side of the recipient to ensure his or her safety.
                            <br /><br />
                            Six brave AFTACers took on the challenge to allow themselves to receive up to 50,000 volts from Chewy’s Taser.
                            <br /><br />
                            “As soon as I heard the buzzing sound, I felt my body seize up and stiffen like a plank,” said Senior Airman Nam Tran, a DAS operations technician.  “I didn’t black out or anything – I was completely aware of what was going on around me – but I couldn’t move a muscle.  What felt like several minutes was only a few seconds.  It was rough!”
                            <br /><br />
                            Edwards was pleased with the outcome of his squadron’s CAF Day, and walked away with an even greater appreciation of the work Patrick AFB’s law enforcement sentinels perform every day.
                            <br /><br />
                            “This was extremely beneficial for all of us,” said Edwards.  “I walked away with a lot of admiration and respect for the cops who are on guard 24/7 to keep us safe, and a much greater understanding of the role they play as defenders of the base and its people.  I hope we can reciprocate by having them come over to our building to learn more about how we monitor nuclear treaties around the world.”
                            <br /><br />
                            Lt. Col. Matt Morello, commander of the 21st SURS, praised his Airmen for putting teamwork at the forefront of his squadron’s CAF Day efforts.
                            <br /><br />
                            “This was a very effective way for us to build our internal team as well as build a partnership with our Security Forces counterparts here at Patrick,” said Morello.  “The level of courage and professionalism required of the SFS Airmen is difficult to grasp.  Running through the simulator gave us a glimpse into what is required of them daily.”
                            <br /><br />
                            Angelini added, “I’m really proud of the men and women of the 45th Security Forces Squadron, and it was a pleasure to have AFTAC Airmen come over to learn more about what we do.  It’s a job that has hours of boredom with moments of terror, so it’s critical for us to make sure we’re trained for those moments.  It’s great to be able to illustrate that to our fellow Team Patrick-Cape members.”
                        </p>
                    </div>
                </article>
            </section>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Not just a buzzword; AFTAC showcases innovation to ISR community - 7/9/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkbuzz" class="n2KPara noDisplay">
                        <div class="floatLeft width60">
                            <div class="width95 autoMarginLeftRight">
                                <img id="buzzPic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/Buzz1.jpg" />
                                <p id="buzzMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Capt. Corey Buran, an assistant director of operations at the 363rd Intelligence, Surveillance and Reconnaissance Wing, Langley AFB, Va., examines some projects produced by members of the Air Force Technical Applications Center's Innovation Lab during a visit June 1, 2018.  Buran was one of 35 Airmen within the ISR community to visit the nuclear treaty monitoring center at Patrick AFB, Fla., to learn more about how AFTAC employs innovation to improve its processes.   (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                    <div class="floatLeft width35 topMargin10em leftMargin1em">
                        <div class="autoMarginLeftRight width95">
                            <input id="butbuzzPrevious" class="myBut width40" type="button" value=" Previous " />
                            <input id="butbuzzNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                        </div>

                        <div class="topMargin2em">
                            <input id="butbuzzSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                        </div>
                    </div>

                    <div class="clear"></div>
                    
                    
                    <div>
                        <p id="buzzArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            Thirty-five Airmen from across the Intelligence, Surveillance and Reconnaissance enterprise converged at the Air Force Technical Applications Center here recently to get a first-hand view of how the nuclear treaty monitoring center applies innovation techniques to its worldwide mission.
                            <br /><br />
                            Chief Master Sgt. Michael Joseph, AFTAC’s Command Chief, thought it would be beneficial to have Air Force ISR counterparts meet with members of AFTAC’s Innovation Lab to learn how Airmen have capitalized on the vast amount of knowledge, expertise, skill and talent within the center to find non-traditional ways to solve problems using innovation.  So he invited three dozen people from ISR units across the U.S., including Airmen from the 9th Reconnaissance Wing at Beale AFB, Calif.; the 319th Air Base Wing at Grand Forks AFB, N.D.; the 480th ISR Wing and 363rd Wing at Langley AFB, Va.; the 70th ISR Wing at Ft. Meade, Md.; and the 655th ISR Group and National Air and Space Intelligence Center at Wright-Patterson AFB, Ohio.
                            <br /><br />
                            AFTAC, a surveillance wing of 25th Air Force’s ISR structure, created its Innovation Lab in 2014 as a way to encourage the workforce to figure out ways to develop and streamline technologies and processes at a cheaper cost while simultaneously addressing mission gaps.
                            <br /><br />
                            According to Joseph, innovation has been part of the AFTAC culture and is nothing new for the nuclear surveillance organization.
                            <br /><br />
                            “The men and women of AFTAC have been doing innovation for 70 years,” he said.  “The purpose of this visit was to see how we can collaborate better and highlight issues to remove barriers our Airmen face.  We have smart, innovative Airmen across the Air Force and in the 25th, and each wing has programs and initiatives that can make our Air Force better and more effective in accomplishing our mission.”
                            <br /><br />
                            During their visit, the group toured various places within DoD’s sole nuclear treaty monitoring center.  Some stops on the itinerary included AFTAC’s machine shop, Ciambrone Radiochemistry Lab, Heritage Room, Logistics Warehouse, Innovation Lab and Operations Center.
                            <br /><br />
                            On the last day of the visit, Joseph ensured time was carved out to break the teams into groups for brainstorming and collaboration sessions, as well as to capture takeaways for both the visitors and the hosts.
                            <br /><br />
                            Chief Master Sgt. Jessica L. Bender, Command Chief for the 9th RW, took note of the Airmen she met during her visit.
                            <br /><br />
                            “I was very impressed with the skills and expertise of even the youngest Airmen here,” Bender said.  “Everyone seems proud to be part of AFTAC and it was a very positive environment.”
                            <br /><br />
                            She added that this was a great opportunity to network with other Airmen from different bases to help develop innovative programs at their respective organizations.
                            <br /><br />
                            “We gained a greater perspective on the capabilities of other units, what projects they are working on, and how to reach out to ask for assistance if needed.  Our Airmen were already floating ideas prior to the last day (of our visit).  They were thinking outside the box, and that’s good for any career field or specialty.”
                            <br /><br />
                            David Paynter, Logistics Flight Chief in the 709th Support Squadron, was glad host the group that visited his warehouse to showcase some of the innovative ways his section has improved logistic processes and procedures.
                            <br /><br />
                            “I have been pushing innovation and thinking outside the box in terms of logistics support to AFTAC for some time now,” said Paynter.   “Tom Lehnerz, our materiel management lead, and his team of experts took that to heart.  During this recent visit, we were able to showcase some of the projects we’ve been working on, including a prototype diagram of a crate that houses precision seismic components related to our worldwide mission to ensure the equipment can be safely and securely shipped.  This prototype is expected to decrease maintenance preparation and annual inventory time in half, improve our inventory accuracy, and save nearly $20,000 in commercial fabrication costs.”
                            <br /><br />
                            He added, “The visitors seemed to be very impressed with our creativity and innovative approach to logistics, and I’m extremely proud of a job well done!”
                        </p>
                    </div>
                </article>
            </section>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Officials announce 2018 ACC STEM Award winners - 6/26/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkstemaward" class="n2KPara noDisplay">
                    <div>
                        <p id="stemawardArt" class="block">
                            <span class="italic darkRedText">Air Combat Command Public Affairs, Joint Base Langley-Eustis, Va.</span> <br />  
                            Air Combat Command officials have announced the ACC Science, Technology, Engineering and Math Award winners for 2018.
                            <br /><br />
                            The awards fall into two categories: science and technology and annual acquisition.
                            <br /><br />
                            
                        </p>

                        <p class="pTitle centerText topMargin1em">The 2018 ACC Science and Technology Award winners are:</p>

                        <div class="autoMarginLeftRight width90 redBorder showShadow padding5">
                            <ul>
                                <li class="maroonText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Science and Engineering Award for Research and Development: 2nd Lt. Joseph Conrad, 7th Intelligence Squadron, Fort George G. Meade, Maryland</li>
                                <li class="maroonText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Science and Engineering Award for Research Management: Maj. Bobby Birrer, 7th IS, Fort George G. Meade</li>
                                <li class="maroonText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Science and Engineering Award for Advanced Technology Development - Individual:  Staff Sgt. Rogelio Reyes IV, 7th IS, Fort George G. Meade</li>
                                <li class="redText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Science and Engineering Team Award for Advanced Technology Development:  Technology Coordination Office’s Cape Canaveral Team, AFTAC, Patrick Air Force Base, Florida</li>
                                <li class="maroonText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Science and Engineering Award for Engineering Achievement: Capt. Benjamin Bruckman, 7th IS, Fort George G. Meade</li>
                                <li class="maroonText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Science and Engineering Award for Manufacturing Technology: Capt. William Sinkey, 7th IS, Fort George G. Meade</li>
                                <li class="redText left bold bottomMargin1em" style="font-size:1.5em;">Harold Brown Award:  Dr. Glenn E. Sjoden, AFTAC/ST, Patrick Air Force Base</li>
                            </ul>
                            <div class="autoMarginLeftRight width70 redBorder showShadow padding5 bottomMargin1em" style="margin-top:-1em;">
                                <p class="left italic redText" style="font-size:1em;">The Harold Brown Award is the highest award given by the United States Air Force to a scientist or engineer who applies scientific research to solve a problem critical to the needs of the Air Force.</p>
                            </div>
                        </div>

                        <p class="pTitle centerText topMargin1em">The 2018 ACC Annual Acquisition Award winners are:</p>

                        <div class="autoMarginLeftRight width90 redBorder showShadow padding5">
                            <ul>
                                <li class="redText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Outstanding Scientist/Engineer Award for Junior Military: 1st Lt. Brittany A. Graham, AFTAC, Patrick Air Force Base</li>
                                <li class="redText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Outstanding Scientist/Engineer Award for Mid-Career Military: Capt. Jeffrey B. Archer, AFTAC, Patrick Air Force Base</li>
                                <li class="maroonText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Outstanding Scientist/Engineer Award for Senior Military: Col. William E. Young, Jr. 53rd Electronic Warfare Group, Eglin Air Force Base, Florida</li>
                                <li class="redText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Outstanding Scientist/Engineer Award for Junior Civilian:  Dr. Theresa E. Hofstetter, AFTAC, Patrick Air Force Base</li>
                                <li class="maroonText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Outstanding Scientist/Engineer Award for Mid-Career Civilian:  Mr. Christopher M. Hereford, 68th Electronic Warfare Squadron, Eglin Air Force Base</li>
                                <li class="maroonText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Outstanding Scientist/Engineer Award for Senior Civilian:  Mr. Steve A. Ordonia, 16th Electronic Warfare Squadron, Eglin Air Force Base</li>
                                <li class="maroonText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Outstanding Scientist/Engineer Team Award:  28th Test and Evaluation Squadron Operational Test Team, 28th Test and Evaluation Squadron, Eglin Air Force Base</li>
                                <li class="redText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Outstanding STEM Outreach Champion Award Individual Award:  Maj. Mandi Fuller, AFTAC, Patrick Air Force Base</li>
                                <li class="redText left bold bottomMargin1em" style="font-size:1.5em;">Air Force Outstanding STEM Outreach Champion Team Award: AFTAC STEM Outreach Team, AFTAC, Patrick Air Force Base</li>
                                <li class="maroonText left bold bottomMargin1em" style="font-size:1.5em;">General Lester Lyles Developmental Engineer of the Year: Mr. Brian J. Cook, 25th Air Force, Joint Base San Antonio-Lackland, Texas</li>
                                <li class="maroonText left bold bottomMargin1em" style="font-size:1.5em;">Dr. Paul G. Kaminski Most Promising Systems Engineer of the Year: Capt. Jared C. Biindl, 25th Space Range Squadron, Schriever Air Force Base, Colorado</li>
                            </ul>
                        </div>

                    </div>
                </article>
            </section>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">When the storms of life arise, how do you survive the onslaught? - 6/25/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkstorms" class="n2KPara noDisplay">
                    <img class="autoMarginLeftRight width40" alt="Hope.jpg" src="_Photos/News2Know/Hope.jpg" />

                    <div>
                        <p id="stormsArt" class="block">
                            <span class="italic darkRedText">Commentary by Senior Master Sgt. Eric V. Reynolds </span> <br />  
                            The storms of life appear in many forms.  Some are small and arise as unexpected showers to rain on your parade, while others last so long they leave you exhausted -- mentally, physically, emotionally or even spiritually. 
                            <br /><br />
                            Small storms can make their metaphoric appearance in the form of a bad day at work, annoying car troubles, locking yourself out of your house, or the many everyday challenges of parenting young children.  Sometimes, these small storms linger overhead longer than anticipated and test your resolve and patience.  Worse yet and unbeknownst to you, your car becomes home to a group of mice that make a nest in your glove compartment, perish, and leave their malodorous essence behind no matter how much you clean, scrub, sanitize and deodorize.  Compound those challenges with the necessity to work a very demanding job, and those small storms can make it seem like the sun will never shine again.
                            <br /><br />
                            Larger storms, however, have a far deeper and long-lasting impact.  They linger over you for weeks, months, or even years and can be so overwhelming that you feel you may not survive the onslaught: a wife’s post-partum depression; a hurricane destroying your home and your possessions; a suffocating cancer diagnosis, or even a cataclysmic event like the death of a child.
                            <br /><br />
                            Depending on the circumstances, dealing with any one of those storms – large or small – can seem like a monumental hurdle.  Dealing with all of them one after another is enough to scare you right off the track.  
                            <br /><br />
                            This is my story of how I’ve jumped, many times blindly crashing, through each and every heartbreaking hurdle (including the mice) and found a way to get back on track.
                            <br /><br />
                            I thought I was resilient.  I’d gone through countless training sessions about the importance of resilience.  I thought I could handle anything.  I had already overcome other obstacles in my life, including an emotionally-challenging childhood, attending ten schools prior to graduating high school, a chronic auto-immune disease with serious digestive side effects that was misdiagnosed for three years, marital hardships, deployments and constant relocations that come with military service.
                            <br /><br />
                            I didn’t have much confidence as a young man, but in 2001, the Air Force, my newfound faith, and the love of a good woman changed my life.  I thrived, and after 15 years in the Air Force I still had that same beautiful wife by my side and a rapidly-growing family.  I was six months into my dream job as the Commandant of an Airman Leadership School.  I was widely respected as a leader in my church and served as the children’s ministries pastor.  I thought I had all four pillars of Comprehensive Airman Fitness covered.
                            <br /><br />
                            None of those things, past or present – NONE – prepared me for what was about to happen.
                            <br /><br />
                            In June 2016, my son Marshall was born via emergency cesarean section.  Just a few hours after he came into the world, he passed away.  I occasionally flash back to that day, picturing myself mentally locked in the Neonatal Intensive Care Unit, helplessly watching his tiny legs convulse from seizures, desperately wishing he could reflexively grasp my finger the way my other children had, and dreading the decision I was ultimately forced to make.
                            <br /><br />
                            After the death of my son, I hid from myself.  Right or wrong, I blamed myself for what had happened and struggled with depression.  I started to question the paths I had previously chosen and began to ignore my God-given gifts and passions.  Despite my demeanor, my leadership team took care of and looked out for me.  They asked all the right questions and I knew they cared.  I was returned to my former career field and asked to help stand up a new squadron as part of a massive wing re-organization.  I was excited about the opportunities, but at this juncture I still hadn’t fully dealt with my pain. And sadly, there was so much more coming.  
                            <br /><br />
                            Shortly after starting the new job, we evacuated to avoid the brunt of Hurricane Matthew. A couple months later we found out that my wife was pregnant again, leading to seven months of sheer terror for both of us, because we still hadn’t gotten a good answer on what went wrong and caused Marshall’s death.  Three months before the baby was due, I found a mass on my left cheek. After having it removed, I was told I had a form of Non-Hodgkin’s Lymphoma – a cancer.  
                            <br /><br />
                            Around the same time, I received an assignment that would have moved us closer than we had ever been to family and it was a tremendous career opportunity.  We were thrilled!  But our excitement was short-lived.  The assignment was canceled due to the cancer and the treatment I would need.  I tried to smile and carry on, but inside I was a wreck, and I doubt I hid it very well.
                            <br /><br />
                            Thankfully and by the grace of God, my wife gave birth to a beautiful baby girl without complications.  Just two days later, she was rapidly released from the hospital because Hurricane Irma was bearing down on Florida and they had to shut down.   Here we were again -- forced to evacuate our home due to a Category 3 storm. 
                            <br /><br />
                            We made the best of the situation, just happy to have our little girl after everything we went through with my son, but returned to a flooded house, rank with the smell of mold, and thousands of dollars in personal property damage which was not covered by insurance.  We were told our home wouldn’t be repaired for at least 12 weeks.  Now a family of seven, we gratefully took up residence in a two-bedroom temporary lodging facility until we found a new home.  We tried to keep perspective on our situation by recognizing that one of our lodging neighbors was a recruiter with his large family from Puerto Rico. 
                            <br /><br />
                            I got a second opinion on the cancer, and ended up hopeful, yet frustrated.  They walked back the diagnosis of lymphoma, calling it ‘suspicious’ and suggested it was an ‘evolving’ lymphoma. It certainly wasn’t normal and they didn’t know what to call it.  The updated diagnosis didn’t bring the assignment back that got canceled, however.  Every day I walked a fine line, hoping to contain the anger, hide the depression, and push back the fear that was growing.  Then I found another mass in my neck.  
                            <br /><br />
                            As the tsunami of despair built around me and my pillars crumbled, I slipped into the mentality that I was a victim of bad circumstances.  I let myself believe I couldn't be who I wanted to be because of the things that were happening outside of my control.  I just wanted to feel better, so I began to self-medicate with lots of sugar, sex, video games, and Amazon Prime’s free two-day shipping.  
                            <br /><br />
                            Instead of simply passing over, the storms became more numerous and impactful on my life. Each new storm took on an outsized effect as it joined in with the greater tempest. The anxiety and stress of all these events kicked my digestive disorder into overdrive. In the midst of these storms, I sought help privately through the base Mental Health clinic, attended various support groups in the local community, and even asked if I could go to an in-patient clinic to help resolve my anxiety and resulting behavioral issues.  I desperately wanted someone to fix me so I could get back to being the man I used to be.
                            <br /><br />
                            I found myself waiting for two things: a biopsy of the new mass with hopefully clearer results on my “evolving” lymphoma, and results from a medical malpractice investigation into the cause of my son’s death.  I thought if only they could rule out the cancer and I had someone else to blame, then I could go back to work and be normal again.
                            <br /><br />
                            My catalyst to recovery was a simple question asked by one of my doctors at the base Mental Health clinic.  I was asked, “What if the results you’re waiting for don't come back the way you want?”  Pretty heady stuff to ponder.  Then I realized they didn't matter.  I wouldn't expect myself to be any different.  If I had waited and gotten bad results, they may have influenced me negatively and kept me in a depressive cycle.  
                            <br /><br />
                            But, proactively reflecting on who I was rather than what I was facing led to a revelation.  When I focused on who I was -- my foundations, my support, and my goals -- the storms didn't matter at all. They didn't change a single thing of substance.  The storm may rage, but my foundation is firm.  My visibility might decrease, but my support system -- my family, friends, and mentors -- will keep me moving in the right direction.  The path may change, but the goal remains constant.
                            <br /><br />
                            The only thing holding me back was me.  In reality, I had not changed, I was just exhausted because I allowed my attention to be whipped around like a littered candy wrapper in a West Texas dust devil.  I discovered that while each storm affected my path and forced me to recalibrate, they didn’t require me to abandon my passions, goals, or overall sense of who I was.  I began to focus on who I was and where I wanted to go, rather than how the storms should be affecting me.  Once the storms were no longer the primary focus of my attention, they got smaller, less significant, and much easier to overcome.  
                            <br /><br />
                            My family, friends and leadership team were all very supportive, extending what seemed like an inexhaustible supply of grace.  They told me to take my time and focus on my family and getting well, that I had been through enough and deserved a break, and not to hurry back to work.  So I took my time, did less, and was ultimately miserable.  But, I rediscovered who I was meant to be in the midst of that misery.  I was still the 104-pound high-school freshman dragging three football dummies across the field because no one else stayed to clean up after practice.  I did the dirty work, but I also was the dreamer.  I needed to be challenged.  I needed big goals.  I needed to use my talents to translate impossible visions into reality. So, I started dreaming big again, and got started doing the dirty work that would help me realize those goals.
                            <br /><br />
                            Today, I stand on an unshakeable foundation, conjoined in support of, and with, others; focused on a set of radical-yet healthy goals; and committed to being the best husband, father, son, and Airman possible.  I may struggle constantly with the idea that I’m not good enough, strong enough, or smart enough, but what I don’t doubt is the love of my God and family, my ability to get better, and my understanding that persistent hustle gets you closer to your goals than waiting for others to recognize how wonderfully talented we might be and how badly the world has treated us. 
                            <br /><br />
                            I encourage you to take some time and look at your life.  What is going to keep you going, or pull you out of the storms when they come?  For me, my spiritual pillar kept me alive and my family tightly bound together during our extended season of extreme weather.  I’m still rebuilding my other pillars and grateful for the opportunity to share this story.  
                            <br /><br />
                            If you are in the middle of a tempest today, get real about your situation and get help as soon as you can.  You are not alone, and we very much need you - even if you can’t see it right now.  One team, one fight!   
                            <br /><br />
                            P.S.  I sought mental health assistance and I kept my security clearance.  But even if I had lost it, it would have been worth it to get the help I needed.  I love the Air Force, but I love my wife and kids more.  They deserve the best me I can give them
                        </p>
                    </div>
                </article>
            </section>
   
            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">New commander inherits newly-structured Air Force organization - 6/20/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkchange" class="n2KPara noDisplay">
                        <div class="floatLeft width60">
                            <div class="width95 autoMarginLeftRight">
                                <img id="changePic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/Change1.jpg" />
                                <p id="changeMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Col. Steven M. Gorski (left) shares a laugh with Col. Chad J. Hartman during their Change of Command ceremony at Patrick AFB, Fla.  Hartman assumed command of the Air Force Technical Applications Center from Gorski who served as the nuclear treaty monitoring center's commander since July 2016.  (U.S. Air Force photo by Phillip C. Sunkel IV)
                                </p>
                            </div>
                        </div>

                    <div class="floatLeft width35 topMargin10em leftMargin1em">
                        <div class="autoMarginLeftRight width95">
                            <input id="butchangePrevious" class="myBut width40" type="button" value=" Previous " />
                            <input id="butchangeNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                        </div>

                        <div class="topMargin2em">
                            <input id="butchangeSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                        </div>
                    </div>

                    <div class="clear"></div>
                    
                    
                    <div>
                        <p id="changeArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            Through the tradition of military pomp and circumstance, members of the Air Force Technical Applications Center here witnessed the change of command between the center's outgoing and incoming commander today.
                            <br /><br />
                            Col. Chad J. Hartman assumed command from Col. Steven M. Gorski under the authority of the presiding official, Maj. Gen. Mary F. O'Brien, commander of 25th Air Force.
                            <br /><br />
                            With two formations of 48 Airmen serving as the formidable backdrop of the ceremony, more than 300 family members, base personnel and distinguished guests from the local community attended the event that took place at the nuclear treaty monitoring center's outdoor pavilion.
                            <br /><br />
                            The early morning warm temperatures and high Florida humidity didn't appear to dampen the spirits of the members of the Department of Defense's sole nuclear treaty monitoring center as the unit's guidon was ceremoniously passed from one leader to the next.
                            <br /><br />
                            An Air Force change of command ceremony is steeped in tradition and represents the formal transfer of authority and responsibility.  It is also a way to recognize the achievements of an outgoing commander as well as welcome and introduce the new commander to the people he or she will be leading.
                            <br /><br />
                            O'Brien, whose Numbered Air Force directly oversees the AFTAC mission, traveled from San Antonio to officiate the transfer and provide insight into Gorski's accomplishments since he took command of the center in July 2016.
                            <br /><br />
                            "Colonel Gorski was destined to lead this organization," said O'Brien.  "His academic credentials combined with his multiple operational assignments resulted in his ability to hit the ground running, directly impacting national policy.  Even Secretary of the Air Force Heather Wilson noticed his leadership and AFTAC's culture of innovation at the 2018 Air Force Association conference in Orlando. She said, 'Here at Patrick Air Force Base, where Airmen do nuclear detection and treaty verification, the commander gives his Airmen 10 percent of their time to develop new things - sensors, software and other tools of their trade.'"
                            <br /><br />
                            She added, "Steve oversaw a 'no-fail mission' and I congratulate him on flawlessly leading this enterprise."
                            <br /><br />
                            As the attendees stood at attention, O'Brien presented Gorski with the prestigious Legion of Merit for exceptionally meritorious service.
                            <br /><br />
                            During his tenure, Gorski led a $3 billion, 1,000+ member enterprise tasked to operate the Air Force's largest multi-domain sensor network on every continent.  At the helm, Gorski supervised the detection and reporting of two North Korean-declared nuclear tests, one in September 2016, and the second in September 2017, which ultimately shaped the U.S. government's strategic response and the issuance of United Nations sanctions against the North Korean regime.
                            <br /><br />
                            Gorski's shining achievement was the implementation of the center's organizational restructure, which established two groups, two executive directorates and eight new squadrons, shaping more than $400 million in acquisition strategy oversight, weapons of mass destruction threat monitoring capabilities, and interagency investments across the Department of Energy and civilian laboratory networks.
                            <br /><br />
                            Following the medal presentation, Gorski expressed his gratitude to the men and women who worked for him for the past 24 months.
                            <br /><br />
                            "To the squadron commanders, directors, superintendents, technical advisors, and senior civilians, the Air Force Chief of Staff says you lead at the level that is the beating heart of the Air Force, and you certainly hold the heart of AFTAC in your hands.  Lead well, lead boldly, and set the example for our next generation of leaders by working together.  To the center staff, thank you for entertaining all my wild ideas and humoring me - you are all true professionals."
                            <br /><br />
                            Once the guidon was passed, AFTAC's new commander received his first salute from the Airmen in formation, led by AFTAC Vice Commander Col. Michael G. Sawyer.
                            <br /><br />
                            Hartman, a career intelligence officer, is coming from Washington, D.C., where he recently served as the Chief of Strategic Studies for the Vice Chief of Staff of the Air Force.  He is an Army War College distinguished graduate with extensive combat experience in multiple overseas campaigns including Operations Iraqi Freedom, New Dawn, Inherent Resolve, Enduring Freedom, Allied Force and Deliberate Guard.
                            <br /><br />
                            "Thank you for the opportunity to lead this outfit," Hartman said to O'Brien.  "It is an honor to join this team - a team that started with an explosion way back in 1945 and brought about the dawn of a new age.  From the development of the long range detection system grew this exceptional array of people and global sensors made up of fascinating technologies and intriguing capabilities. It is an incredible time of transition for AFTAC and I'm honored to join this team and become an AFTACer."
                            <br /><br />
                            This will be Hartman's fourth command tour, but his first as a wing commander.  Gorski is moving to the Pentagon to become the military assistant to the Undersecretary of Defense for Intelligence.
                        </p>
                    </div>
                </article>
            </section>

            <section class="currentNews block">
                <div class="aLeft">
                    <h2 class="news2KnowH1">24/7 treaty monitoring center ready for contingency ops - 6/15/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkmonitoring" class="n2KPara noDisplay">
                        <div class="floatLeft width60">
                            <div class="width95 autoMarginLeftRight">
                                <img id="monitorPic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/monitoring1.jpg" />
                                <p id="monitorMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Contractors from Chief Electric Company connect a 750-kilowatt generator that will be used to power the contingency operations location for the Air Force Technical Applications Center in Millington, Tenn.  (U.S. Air Force photo by Master Sgt. Chris Gaskill)
                                </p>
                            </div>
                        </div>

                    <div class="floatLeft width35 topMargin10em leftMargin1em">
                        <div class="autoMarginLeftRight width95">
                            <input id="butmonitorPrevious" class="myBut width40" type="button" value=" Previous " />
                            <input id="butmonitorNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                        </div>

                        <div class="topMargin2em">
                            <input id="butmonitorSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                        </div>
                    </div>

                    <div class="clear"></div>
                    
                    
                    <div>
                        <p id="monitoringArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            Much like the famous words inscribed of the exterior of the New York City Post Office, neither rain nor snow nor heat nor gloom of night will keep the Air Force Technical Applications Center from the swift completion of its appointed rounds.
                            <br /><br />
                            Recently, the nuclear treaty monitoring center here transferred its Contingency of Operations (COOP) and the Alternate U.S. National Data Center location from San Antonio, Texas to Millington, Tenn.  For the past five years, AFTAC’s alternate site was located at Joint Base San Antonio-Lackland, in close proximity to 25th Air Force, AFTAC’s Numbered Air Force.  In December 2015, the space occupied by the COOP team was reclaimed by 25th AF, so AFTAC needed to find another place for its alternate operations site.
                            <br /><br />
                            Over the course of the project, AFTAC assembled a team of subject matter experts specializing in security, mission operations, facility management, information technology, civil engineering, communications, and planning to execute the AFTAC commander’s intent: find and establish a new site for contingency operations.  
                            <br /><br />
                            The team developed criteria that addressed 17 key factors based on current mission needs and potential for future growth.  After visiting potential bases and locations throughout the U.S. to determine which site presented itself with the best and most viable options, AFTAC leadership decided to partner with Naval Support Activity Mid-South in Millington, Tenn.  NSA Mid-South serves as the U.S. Navy’s Human Resources Center of Excellence, and is home to Navy Personnel Command, Navy Recruiting Command, the Navy Manpower Analysis Center and the U.S. Army Corps of Engineers Finance and Logistics national centers
                            <br /><br />
                            NSA Mid-South is also home to the Joint Reserve Intelligence Center-Memphis, which provides training and facility support to all branches of the U.S. Armed Forces in various fields including cryptology, information operations, networks, signals intelligence and space operations to meet Total Force Information Warfare Community requirements.  Nestled in the small farming town of Millington with a civilian population of just over 10,000, NSA Mid-South is home to a secure, 24-7 facility with a full complement of network and information technology connectivity, and employs more than 6,500 officers, enlisted, civilian and full-time contract personnel.
                            <br /><br />
                            AFTAC, the Department of Defense’s sole nuclear treaty monitoring center, is tasked with providing uninterrupted access to nuclear event detection data to provide to national decision-makers at the highest level in the U.S. government.  The center also operates the U.S. NDC, the nation’s arm of the International Monitoring System that supports the Comprehensive Test Ban Treaty Organization to limit nuclear testing and proliferation worldwide.  Some of the monitoring center’s work falls into the classified realm and requires additional protection that a standard office building cannot provide.
                            <br /><br />
                            “The facility in Tennessee presented the best long-term solution to our COOP relocation,” said Mark Smith, program analyst and relocation project manager assigned to AFTAC’s Plans and Programs Directorate.  “The center offers more than 31,000 square feet of dedicated space in a secure facility, and the Navy has been exceedingly accommodating to our unique needs and requirements.”
                            <br /><br />
                            Smith said the space also provides AFTAC with the ability to expand its operations in the future if needed.
                            <br /><br />
                            “Millington offers our leadership the unique opportunity to create a fully operational alternate operations center if needed in the event Patrick AFB should become inhabitable due to a natural or man-made disaster,” said Smith.  “Our new location, which we’ve dubbed as ‘AFTAC Mid-South,’ presents possibilities never before available to AFTAC, and our leadership is already exploring several future operational capability options for our squadrons.”
                            <br /><br />
                            On March 1, 2017, the two services signed a 25-year host-tenant real estate agreement giving AFTAC a stable and secure location for its contingency operations through 2042, and on April 11, 2017, contractors broke ground to renovate more than 8,500 square feet of the available 31,000 square foot workspace.
                            <br /><br />
                            “Ours is a 24/7/365 no-fail mission,” said Col. Greg Sawyer, AFTAC vice commander, “and as such, we need to ensure we are prepared for any contingency that may alter how we do business. We are the only organization whose mission is to operate and maintain the Air Force’s largest sensor network to detect disturbances underground, underwater, in the atmosphere or in space and determine if the event is nuclear in nature.”
                            <br /><br />
                            Anytime an organization is forced to relocate, it poses significant logistical hurdles that place heavy demands its employees.  In 2017, AFTAC was forced to deploy to its alternate facility in Texas when Hurricane Irma threatened Florida’s Space Coast.  It was doubly challenging for AFTAC’s 1,000+ member workforce – not only did center personnel have to juggle the prospect of a Category 3 storm heading its way, they were also in the middle of analyzing a confirmed North Korean nuclear test four days earlier.
                            <br /><br />
                            Navy Capt. Michael S. Wathen, commanding officer of NSA Mid-South, expressed his thoughts about the new tenant on his installation.
                            <br /><br />
                            “We are happy to add the Air Force and AFTAC to our Mid-South team,” said Wathen.  “We are looking forward to providing the support they needs as a COOP location and a lasting Air Force partnership on the installation.
                            <br /><br />
                            The treaty monitoring center’s senior leader also expressed his gratitude for the amount of work that went into such a complex project.
                            <br /><br />
                            “The COOP team accomplished this transfer two years ahead of schedule and right at budget,” said Col. Steven M. Gorski, AFTAC commander.  “It is a rare event that we have the chance to open a new operating location, and I am exceptionally proud of the effort everyone put forth to make this happen.  The project took significant planning, and AFTAC personnel rose to the occasion.”
                            <br /><br />
                            Gorski added, “I want to reassure our customers that regardless of what obstacles or conditions are thrown at us, a team of experts here at AFTAC will be on watch for what the National Security Strategy has declared the greatest threat to our nation – the use of weapons of mass destruction against the United States or our allies.  This project should serve as an example of what we can accomplish when we work together as a team.”
                            <br /><br />
                            The move cost approximately $3.9 million, which included facility/infrastructure modifications, IT/communications installation, equipment procurement, security upgrades and various TDY expenses. 
                            <br /><br />
                            “There were countless moving parts and dozens of people who made this concept come to fruition,” said Smith.  “As the project manager for this undertaking, we are grateful to 25th Air Force, especially the men and women of the 625th Air Communications Squadron, for assisting with sustaining the alternate national data center since 2013.  They were not only integral in sustaining our COOP location, but they also played a key role in helping AFTAC Mid-South secure the necessary authorities to make this a reality.  Kudos to all the folks at NSA Mid-South for their partnership and willingness to go above and beyond every step of the way.  I also want to extend my personal thanks to my AFTAC co-workers who put in innumerable hours of hard work on this project.  It’s great to be a part of such a phenomenal team of dedicated professionals.”
                        </p>
                    </div>
                </article>
            </section>


           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Florida Airmen Skype with Georgia middle school students - 5/12/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkskype" class="n2KPara noDisplay">
                        <div class="floatLeft leftMargin1em width45">
                            <img class="width95 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/skype1.jpg" />
                            <p class="italic autoMarginLeftRight width90 topMargin2em centerText maroonText bold maroonBorder smallShadow" style="font-size:1em;">
                                Staff Sgt. Jordan Peterson, a web developer for the 709th Cyberspace Squadron, Air Force Technical Applications Center, Patrick AFB, Fla., Skypes with Daniell Middle School student Collin Fairey April 25, 2018.  Peterson discussed his military service with Fairey and his fellow Advance Reading classmates about life in the military and the importance of a STEM education.  (U.S. Air Force photo by Susan A. Romano)
                            </p>
                        </div>

                        <div class="floatLeft leftMargin1em width45">
                            <img class="width95 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/skype2.jpg" />
                            <p class="italic autoMarginLeftRight width90 topMargin2em centerText maroonText bold maroonBorder smallShadow" style="font-size:1em;">
                                Tech. Sgt. BreAnne Groth, a  satellite operations system analyst with the 23rd Analysis Squadron, Air Force Technical Applications Center, Patrick AFB, Fla., answers a question via Skype from Haley Hargrove, a 6th grader from Daniell Middle School in Marietta, Ga.  The school requested to have Airmen speak with students April 25, 2018 about how science, technology, engineering and math are used by members of the military. (U.S. Air Force photo by Susan A. Romano)
                            </p>
                        </div>

                        <div class="clear"></div>
                    
                        <div>
                            <p id="skypeArt" class="block">
                                <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                                Two Airmen from the Air Force Technical Applications Center here chatted with students from a Georgia middle school via Skype April 25 to discuss how science, technology, engineering and math are used by members of the military.
                                <br /><br />
                                Tech. Sgt. BreAnne Groth, a satellite operations system analyst, and Staff Sgt. Jordan Peterson, an AFTAC web developer, video conferenced with 6th graders from Daniell Middle School in Marietta, Ga., and took questions from the inquisitive teens on a wide range of topics.
                                <br /><br />
                                The request for Air Force support came through the Defense Visual Information Distribution Service.  DVIDS is a visual imagery distribution hub operated by the Defense Media Activity that gives customers the opportunity to connect with servicemembers across the globe.
                                <br /><br />
                                Peterson was first to connect with Ms. Leigh Anna Engkaninan’s advanced reading class, and the students jumped right in with their well-developed questions.
                                <br /><br />
                                “What does a web developer do for the Air Force?”  “Have you read any books that have really helped you with your job?”  “Have you developed any games?”  “Has it always been your dream to be in the Air Force?”  “Do you like your career?”
                                <br /><br />
                                Peterson answered as many questions as time would allow, providing succinct, easy-to-understand responses, while simultaneously relaying the Air Force story to the impressionable young adults.
                                <br /><br />
                                “When I was asked to participate in this event, I couldn’t pass it up,” said Peterson.  “Over the last few years, I’ve found that I take tremendous pride and enjoyment in cultivating the minds of the next generation. But I was a bit saddened to hear that some of them are experiencing a bit of negativity directed at them at such a crucial point in their development.  So to reassure them, I explained that those who succeed in the daunting task of overcoming negativity and pushing through their frustrations will likely become their generation’s most adaptive leaders.” 
                                <br /><br />
                                Groth was next in the line-up to field well-thought-out questions from a new team of advanced readers.
                                <br /><br />
                                “What is the process of detecting nuclear explosions?”  “Have you ever found anything nuclear in space?”  “What obstacles have you faced as a woman in the Air Force?”  “Has becoming a technical sergeant always been a dream of yours?”  “Have you ever had a moment when you just wanted to quit because it was too hard?”
                                <br /><br />
                                Groth eagerly responded.
                                <br /><br />
                                “I’ve used online video chat to keep in touch with family and friends who live far away, but this was my first time using it to connect with school kids,” said Groth.  “The most intriguing question I got was, ‘If you could go back and talk to your old self, what would you say?’  It thought that was an incredibly profound question!  Being involved in programs like this gives us the chance to illustrate the fact that there is a real person behind every uniform – one who can smile and laugh while also working hard to get the Air Force mission accomplished.”
                                <br /><br />
                                Establishing a video chat connection is no easy feat in a facility that goes to great lengths to protect its national security interests.  AFTAC is the Department of Defense’s sole nuclear treaty monitoring center and much of its mission takes place within the walls of its sensitive compartmented information facility, or SCIF.
                                <br /><br />
                                Despite those hurdles, two skilled Airmen from AFTAC’s 709th Cyberspace Squadron worked diligently to set up a signal between the center and the school.  James Griffieth and Staff Sgt. Dali Ramos spent several hours wiring, audio checking and testing the connectivity to ensure a strong signal was established, while also ensuring all operations security measures were in place.
                                <br /><br />
                                “AFTAC has a robust video teleconference system within our building, but those are typically used for secure communications,” said Ramos.  “Due to the nature of our mission, the center doesn’t permit external electronic devices like tablets, cell phones or personal hot spots.  So for this event, we needed to come up with a workable solution to connect our Airmen with the students.  Griff and I were able to do that using existing equipment and the approval of our physical security experts.”
                                <br /><br />
                                Griffieth added, “It took a lot of work and ingenuity, but after seeing the looks on the kids’ faces when they connected with Sergeant Groth and Sergeant Peterson, it was definitely worth the effort!”
                                <br /><br />
                                Daniell Middle School’s teacher seemed quite pleased with how her advanced readers conducted themselves during the video chat.
                                <br /><br />
                                “As an educator, I think this is an invaluable learning opportunity,” Engkaninan said.  “The students were intrigued at how (the Airmen) use STEM in their jobs.  They still had many questions they didn’t have time to ask like ‘Do you have wear your uniform all the time, and are there different uniforms for different occasions?’  They really had fun speaking with the troops and I already have 11 students interested in learning more about joining the Air Force.  I hope we can do this again in the future.”
                                <br /><br />
                                Engkaninan said the students were also very surprised at how much they seemed to love their jobs.  It’s a message that resonated with AFTAC’s web developer.
                                <br /><br />
                                “These kids are leaps-and-bounds ahead of where I was in middle school,” said Peterson.  “I could have never asked the level of questions these students asked me.  They’re intelligent, have a strong understanding of web development and information technology, and also have a grasp on how important education can be to succeed in a national defense of cyber security field.”
                                <br /><br />
                                He continued, “This generation is built around the concept of ever-advancing technology, and they’re adaptive to the effects it has on the way society works.  They move forward while accepting, integrating and innovating the advancements around them. I think we should all lend an experienced hand to the future leaders of our country.”
                            </p>
                        </div>
                    </article>
               </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Reorganization brings structure, leadership to treaty monitoring center - 5/9/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkcomm" class="n2KPara noDisplay">
                        <div class="floatLeft width60">
                            <div class="width95 autoMarginLeftRight">
                                <img id="commPic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/comm1.jpg" />
                                <p id="commMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Lt. Col. Jeremy Goodwin (right), 23rd Analysis Squadron commander, accepts his unit’s guidon from Col. Jonathan VanNoord, 709th Surveillance and Analysis Group commander during a ceremony in the Doyle M. Northrup Auditorium at the Air Force Technical Applications Center, Patrick AFB, Fla., April 4, 2018.  Goodwin assumed command of the newly formed squadron after the nuclear treaty monitoring center reorganized to improve mission effectiveness.  (U.S. Air Force photo by Matthew S. Jurgens)
                                </p>
                            </div>
                        </div>

                    <div class="floatLeft width35 topMargin10em leftMargin1em">
                        <div class="autoMarginLeftRight width95">
                            <input id="butcommPrevious" class="myBut width40" type="button" value=" Previous " />
                            <input id="butcommNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                        </div>

                        <div class="topMargin2em">
                            <input id="butcommSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                        </div>
                    </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p id="commArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            In a week that saw 13 formal ceremonies including 11 activations, five inactivations, and 10 assumptions of command, the Air Force Technical Applications Center here successfully completed its reorganization April 9-13 after more than five years of planning.
                            <br /><br />
                            The organization change request, better known as “AFTAC 2.0” to the center’s 1,000+ workforce, became reality April 1 and sees the addition of nine new squadrons, two new groups, one new detachment and two new directorates.  
                            <br /><br />
                            “Historically, AFTAC has been structured around mission areas – techniques to gather information with mission area managers who were experts in their respective disciplines,” said Col. Steven M. Gorski, AFTAC commander.  “While this type of organizational structure works well in a resource-rich environment, it has inherent mission-effectiveness flaws.  Our new organizational flow establishes clear responsibilities with common skills that allow us to develop our workforce more effectively.”
                            <br /><br />
                            To commemorate this historic event, ceremonies were held in AFTAC’s Doyle M. Northrup Auditorium where members of the center witnessed the transfer of authority to the incoming commanders.
                            <br /><br />
                            The Groups<br />
                            The wing is divided into two groups – the 709th Surveillance and Analysis Group and the 709th Support Group.  Each group, led by an Air Force O-6, has roughly 400 personnel assigned, military and civilian, and fall under Gorski’s command.
                            <br /><br />
                            The 709th SAG monitors all suspected and confirmed nuclear detonations underground, above ground or in space and reports their findings to senior decision makers.  This vital mission is achieved through five of the nine new squadrons.
                            <br /><br />
                            “The work we perform reaches all levels of government, to include President of the United States,” said Col. Jonathan VanNoord, 709th SAG commander.  “We hear about the giants of long range detection who went before us to forge our vital mission into what it is today; and now before me, I’m looking into the eyes of future giants – Airmen who continue to carry on the important legacy of providing quality technical measurements to command authorities.  It’s a historic day for AFTAC.”
                            <br /><br />
                            The 709th SPTG is AFTAC’s premier support team, providing enterprise information dominance, superior engineering and maintenance, and life-cycle management using innovative and creative processes to enable mission success.  Col. Richard Mendez was handed the group’s guidon and will be responsible for ensuring his team establishes and executes logistical and IT requirements.
                            <br /><br />
                            “It is an honor and a privilege to carry on the historic roots of our group’s designation that dates back to World War II,” said Mendez.  “Our 24/7 global support team stands ready to serve.  I appreciate the trust and confidence placed in me to lead the men and women of the 709th Support Group.”
                            <br /><br />
                            The Squadrons<br />
                            Prior to the reorg, AFTAC had stood up five squadrons in 2014 after the center became an Air Force wing equivalent.  Those five (Technical Surveillance Squadron, Technical Operations Squadron, Technical Support Squadron, Technical Sustainment Squadron and Cyber Capabilities Squadron) were officially inactivated, and their mission responsibilities transferred to the newly-activated squadrons.
                            <br /><br />
                            The 21st Surveillance Squadron, led by Lt. Col. Ty Miller, executes the Nuclear Debris Collection and Analysis and National Technical Nuclear Forensics missions.  Miller and his team will conduct worldwide surveillance via aerial and ground collection.  “I’m excited about the direction we’re headed in,” Miller said during his activation ceremony.  “We have a huge responsibility to the overall success of this organization, and our role in long range detection is rich and invaluable.”
                            <br /><br />
                            The 22nd Surveillance Squadron, commanded by Lt. Col. Ed Ferguson, operates AFTAC’s 24/7/365 operations center, providing front-line, persistent and state-of-the-art surveillance to detect, identify and locate nuclear and seismic events worldwide.  The squadron’s ballistic missile technical collection mission provides data on foreign ballistic missile tests and supports the Missile Defense Agency.  
                            <br /><br />
                            “In the 22nd, AFTAC has combined its maritime radar assets, two constellations of atmospheric and space sensors, three 24/7 operations facilities, and the cornerstone of our historic mission, alert management,” said Ferguson.  “This alignment allows us to optimize our focal point for command and control of our around-the-clock surveillance mission.”
                            <br /><br />
                            The 23rd Analysis Squadron is headed up by Lt. Col. Jeremy Goodwin.  The 23rd ANS is tasked with detecting, identifying and classifying events recorded by a worldwide network of seismic, infrasonic and hydroacoustic sensors used in nuclear treaty monitoring.  
                            <br /><br />
                            “I am very excited to take command of this great group of highly talented men and women,” said Goodwin.  “We’ve been preparing for this for the last year, and now we are officially plank owners.  I promise that no one will work harder than I will to achieve mission accomplishment.”
                            <br /><br />
                            The 24th Analysis Squadron sees AFTAC’s first civilian leader at the helm.  Thomas Buist, a chemical engineer by trade, worked in the center’s Materials Technology Directorate before being tapped to take over the 24th.  The OCR creates opportunity for civilian scientists to serve in significant leadership positions within the center.  Buist’s unit provides technical reporting on foreign weapons of mass destruction activities through forensic science.  The 24th ANS also supports International Atomic Energy Agency missions and provides meteorological modeling and weather support to all AFTAC mission areas. 
                            <br /><br />
                            “I am thankful for the opportunity to serve the wonderful men and women of the 24th,” said Buist.  “It is humbling to know that we now carry the torch held by many great AFTAC Airmen.  In their honor, we will proudly and confidently execute the mission and continue to influence the future of our country.”
                            <br /><br />
                            The 709th Support Squadron is overseen by Lt. Col. Christopher Hall, who commanded the now-inactivated Technical Sustainment Squadron.  Hall’s workforce provides deployment readiness oversight, manages warehousing, transportation, life-cycle logistics and enterprise asset management support.  He is also oversees all military and civilian personnel actions through human resource management and workforce development efforts.  Additionally, the 709th SPTS commander manages AFTAC’s facility and infrastructure operations and service contracts – no small feat for a single squadron.  
                            <br /><br />
                            “George Bernard Shaw once said, ‘Progress is impossible without change, and those who cannot change their minds cannot change anything,’” Hall said during his activation ceremony.  “Our squadron’s scope of responsibility has expanded immensely, and I’m grateful for the faith and trust that’s been placed in me on this day of major transition.  This squadron will always be aces!”
                            <br /><br />
                            The 709th Cyberspace Squadron, another one of the original five squadrons that was inactivated, is under the command of Lt. Col. Nathan Loyd.  This squadron generates and sustains full-spectrum cyberspace capabilities by providing mission assurance for the center’s global information enterprise.  Loyd’s staff exercises operational management control over cyberspace terrain to ensure national decision makers receive quality technical measurements to monitor nuclear treaty compliance.  
                            <br /><br />
                            “Despite two major hurricanes – one during a real-world nuclear alert, the full migration to Windows 10 (the first organization to do so in 25th Air Force), relocating our contingency operations location from Texas to Tennessee, and transitioning the squadron from CYCS to the 709th, the men and women of my squadron were still able to maintain a 99 percent data availability rating,” said Loyd.  “That is a testament to their incredible dedication and work ethic.  This mission could not happen without cyber support.  Our long-term vision is bright, and we’re making it happen.”
                            <br /><br />
                            The inactivated Technical Support Squadron is now the 709th Technical Maintenance Squadron, led by Lt. Col. Paul Hendrickson.  This unit boasts the largest number of enlisted members of all the squadrons in AFTAC, and is responsible for maintaining and sustaining the center’s 3,600 network sensors across the globe.  The Airmen of the 709th TMXS conduct depot and in-field maintenance, track sensor network performance, and provides technical assistance to the Systems Development Directorate.
                            <br /><br />
                            “The men and women of the 709th Technical Maintenance Squadron are phenomenal technicians, maintainers, operators and liaisons,” said Hendrickson.  “Together, we will take the best that Air Force maintenance has to offer and merge that with what we do best – and we will be a force to be reckoned with. You have the spirit and the talent to accomplish anything, anywhere, anytime.”
                            <br /><br />
                            While the facility itself is still called the Ciambrone Radiochemistry Laboratory, the official squadron designation is now the USAF Radiochemistry Laboratory, with Lt. Col. James Thomas as its commander.  The “Lab Rats” conduct nuclear measurements and radiochemistry operations to detect, isolate, quantify and analyze nuclear materials in support of AFTAC’s nuclear treaty monitoring mission.  Thomas also manages the Harkins Laboratory located at Cheyenne Mountain Air Force Station, Colo., which supports AFTAC’s low-level radiation detection research.
                            <br /><br />
                            “Our job is to look beyond the battlefield – to look into the scientific shadows seeking trace amounts of particles and debris to discriminate non-weapons sources of radionuclides from potential nuclear weapons test debris,” said Thomas.  “The Lab Rats work day in and day out to support our nation and its allies, and I’m incredibly proud to command such a professional group of Airmen.”
                            <br /><br />
                            The Detachments<br />
                            AFTAC operates more than two dozen detachments and operating locations worldwide.  Adding to the list of stateside and overseas locations is Detachment, 709th SPTG.  Det 1 will provide support the application and execution of scarce research and development resources to the warfighter and national customers.  Det 1 personnel will also provide various government agencies with demonstration and testing capabilities and will coordinate execution of new initiatives at national laboratories.
                            <br /><br />
                            “This is the finest team I have ever worked with in my career,” said Lt. Col. David Laird, Det 1 commander.  “It is truly an honor to be selected as their commander and I’m very excited as I look forward to the innovative ways we’ll be solving technological hurdles for the Department of Defense.”
                            <br /><br />
                            Gorski showered his leadership team with praise and offered each commander a piece of sage advice.
                            <br /><br />
                            “The leaders who have taken command of their respective groups and squadrons were selected because they are the best of the best,” said Gorski.  “They have demonstrated the will to succeed, the need for excellence in all they do, and the drive to ensure the mission is accomplished.  I urge each of them to remember that they’ll have daily challenges that may seem insurmountable as they face them, but some of the most successful leaders in history are the ones who lead through adversity.  As the saying goes, ‘The secret of change is to focus all of your energy, not on fighting the old, but on building the new.’  This is a new and excitng chapter in AFTAC’s history, and I have the greatest amount of trust in each and every one of them.”
                        </p>
                    </div>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Reserve Citizen Airman sets sail as first reserve mission commander - 5/1/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkcitizen" class="n2KPara noDisplay">
                        <div class="floatLeft leftMargin1em width45">
                            <img class="width95 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/citizen1.jpg" />
                            <p class="italic autoMarginLeftRight width90 topMargin2em centerText maroonText bold maroonBorder smallShadow" style="font-size:1em;">
                                Maj. Christina Light, the Technical Operations Squadron Director of Operations with the Air Force Technical Applications Center, Patrick AFB, Fla., stands in front of the USNS Howard O. Lorenzen, a U.S. naval ship that hosts the $1.7 billion Cobra King radar platform. Light is a certified mission commander responsible for the overall operation and maintenance of the ship and its radar systems. (Courtesy photo)
                            </p>
                        </div>

                        <div class="floatLeft leftMargin1em width45">
                            <img class="width95 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/citizen2.jpg" />
                            <p class="italic autoMarginLeftRight width90 topMargin2em centerText maroonText bold maroonBorder smallShadow" style="font-size:1em;">
                                Maj. Christina Light (in red), Technical Operations Squadron Director of Operations with the Air Force Technical Applications Center, Patrick AFB, Fla., receives a briefing from Sean Kelly, the Ship's Operations Manager, for an upcoming balloon calibration sphere launch. Light is a trained and certified mission commander aboard USNS Howard O. Lorenzen, one of two naval ships that conduct ballistic missile surveillance operations for the Department of Defense's sole nuclear treaty monitoring center. (Courtesy photo)
                            </p>
                        </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p id="citizenArt" class="block">
                            <span class="italic darkRedText">By Senior Master Sgt. Timm Huffman, Headquarters Individual Reservist Readiness and Integration Organization BUCKLEY AIR FORCE BASE, Colo.</span> <br />  
                            While many Airmen take to the skies, Reserve Citizen Airman Maj. Christina Light sets sail.
                            <br /><br />
                            The space and missile operations officer, assigned to the Air Force Technical Applications Center (AFTAC) Technical Operations Squadron (TOPS) as an Individual Mobilization Augmentee, is the first Air Force Reservist certified to serve as a mission commander on one of the organization’s radar ships, the USNS Howard O. Lorenzen.
                            <br /><br />
                            AFTAC, based at Patrick Air Force Base, Florida, performs nuclear treaty monitoring and nuclear event detection. AFTAC provides national authorities quality technical measurements to monitor treaty compliance.  It also performs research and development of new proliferation detection technologies to enhance or assist treaty verification to limit the proliferation of weapons of mass destruction.
                            <br /><br />
                            Maj. Light first came to AFTAC as a contractor after 10 years on active duty. She left the active-duty Air Force in 2014 to be on the same continent as her husband and joined the Air Force’s traditional reserve program to continue serving in uniform. However, her reserve unit was a nine-hour commute, one way, and she didn’t feel like she could really be part of the unit. AFTAC indicated they wanted her support in both military and civilian status, so she transitioned into a vacant IMA billet in 2015.
                            <br /><br />
                            IMAs are part of the Air Force Reserve’s Individual Reserve program and are assigned to augment active-component organizations and government agencies. Unlike traditional reservists, who drill one weekend a month and have two weeks of annual tour to complete, IRs work with their unit supervisors to create a custom duty schedule; they often complete their 24 to 36 days of requirements in one or two blocks of time.
                            <br /><br />
                            Wanting to get more familiar with her new role, Maj. Light asked for active-duty orders so she could work in uniformed status full-time. After her request was granted, she realized she might have something to contribute to the ship mission.
                            <br /><br />
                            According to Lt. Col. Don Wittenberg, the TOPS commander, his squadron didn’t have as many active-duty mission commanders as they would like, so when Maj. Light petitioned to become the first reserve mission commander, he welcomed the idea.
                            <br /><br />
                            As a field grade officer, Maj. Light brought a maturity of leadership and expertise to the active-duty mission commanders, who are more junior, said Lt. Col. Wittenberg. Her augmentation also reduced the burden on the new officers coming into the program, allowing them time to focus on their spin-up training and qualifications rather than putting out to sea.
                            <br /><br />
                            The USNS Lorenzen is operated by U.S. Navy’s Military Sealift Command to carry AFTAC’s state-of-the-art Cobra King mobile radar system wherever it’s needed. The radar is employed to provide worldwide, high quality, high resolution, multi-wavelength radar data to the Department of Defense's strategic community, the Missile Defense Agency and other government agencies.
                            <br /><br />
                            The radar and ship are the sea component of DoD's Cobra program that monitors ballistic missile launches. Other Cobra platforms include the Cobra Ball (airborne tracker) and Cobra Dane (stationary array).
                            <br /><br />
                            The ship operates with a crew of civilian mariners who are responsible for operating and navigating the ship, as well as and civilian contractors who operate and maintain the radar and communications equipment.
                            <br /><br />
                            Maj. Light’s first sea tour started in the spring of 2017 when the Lorenzen headed into U.S. Pacific Command. As the only Airman aboard, she was one-deep in her leadership role. It was her responsibility to ensure the platform team members were able to successfully collect mission data. In addition to daily mission taskings, she also worked closely with experts from MSC to develop a prioritized listing of necessary ship-related items to address whenever the vessel is in port or at the shipyard.
                            <br /><br />
                            Even with all her certifications, Maj. Light said once in place, there was still a steep learning curve to the job. However, with a high operational tempo and a highly experienced team of contractors, it didn’t take long to learn the ropes. Maj. Light was particularly impressed with the dedication and proficiency of the contractors.
                            <br /><br />
                            “They go to sea for months on end, year after year, by choice. They have decades of experience,” she said.
                            <br /><br />
                            Life on the ship was a new experience for the Reserve Citizen Airman. She said the rhythm of the days was set by meals at the galley. Her state room--living quarters and bath--were attached to her office, which meant work was never far away. She also learned the importance of building a network of connections with the Navy officers around the fleet.
                            <br /><br />
                            According to Lt. Col. Wittenberg, the first time an Airman goes out on the ship they are like an outsider on an island. But, as a field grade officer, her leadership and experience enabled her to get right in there and get the mission done.
                            <br /><br />
                            After returning from her first tour at sea, Maj. Light split her time between her contractor position and military orders. In mid-August 2017, she decided to leave her contractor job to focus on the military mission full-time and prepare for her next sea deployment on the USNS Invincible later this year.
                            <br /><br />
                            “I love my career field, wearing the uniform and everything that goes along with it,” she said.
                            <br /><br />
                            According to Lt. Col. Wittenberg, his reservist was recently selected to attend Intermediate Developmental Education (IDE) in-residence via the CSAF’s Blue Horizons Program and will begin the next phase of her career, following her ship deployment.
                            <br /><br />
                            “I am proud of what she has done. She has brought a lot to our squadron,” he said.
                        </p>
                    </div>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">DoD’s sole nuclear surveillance unit undergoes organizational change - 4/25/2018</h2>
                </div>

                <article id="ntknuclear" class="n2KPara noDisplay">
                        <div class="floatLeft leftMargin1em width30">
                            <div class="width95 autoMarginLeftRight">
                                <img class="width95 maroonBorder smallShadow" src="_Photos/News2Know/nuclear1.jpg" />
                                <p class="italic autoMarginLeftRight width90 topMargin2em centerText maroonText bold maroonBorder smallShadow" style="font-size:1em;">
                                    Photo of the Air Force Technical Applications Center, Patrick AFB, Fla., headquarters of the Department of Defense’s sole nuclear treaty monitoring center.  (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                        <div class="floatLeft leftMargin1em width30">
                            <div class="width95 autoMarginLeftRight">
                                <img class="width95 maroonBorder smallShadow" src="_Photos/News2Know/nuclear2.jpg" />
                                <p class="italic autoMarginLeftRight width90 topMargin2em centerText maroonText bold maroonBorder smallShadow" style="font-size:1em;">
                                    Col. Jonathan VanNoord (right), commander of the newly-activated 709th Surveillance and Analysis Group, slowly unfurls his group’s new guidon flag with the help of Col. Steven M. Gorski (left), commander of the Air Force Technical Applications Center, Patrick AFB, Fla.  VanNoord took command of the 709th SAG April 1, 2018.  Holding the guidon is Senior Master Sgt. Robert Christman, a squadron superintendent under VanNoord’s command.  (U.S. Air Force photo by Phillip C. Sunkel IV)
                                </p>
                            </div>
                        </div>

                        <div class="floatLeft leftMargin1em width30">
                            <div class="width95 autoMarginLeftRight">
                                <img class="width95 maroonBorder smallShadow" src="_Photos/News2Know/nuclear3.jpg" />
                                <p class="italic autoMarginLeftRight width90 topMargin2em centerText maroonText bold maroonBorder smallShadow" style="font-size:1em;">
                                    Col. Richard Mendez (right), commander of the newly-activated 709th Support Group, salutes and accepts command from Col. Steven M. Gorski (left), commander of the Air Force Technical Applications, Patrick AFB, Fla.  Holding the guidon is Senior Master Sgt. Braderick Adams, group first sergeant under Mendez’ command.  (U.S. Air Force photo by Phillip C. Sunkel IV)
                                </p>
                            </div>
                        </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p id="nuclearArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            The Air Force Technical Applications Center, the sole agency in the Department of Defense that conducts global nuclear surveillance, underwent a full-scale organizational change April 1 to better align the center’s vital capabilities to improve mission effectiveness.
                            <br /><br />
                            The reorganization, which was approved by the Air Force Vice Chief of Staff Feb. 21, 2018, completes an effort that began in 2013 to unitize AFTAC.  Charged with nuclear event detonation detection, weapons of mass destruction material collection and forensic analysis, as well as operating and maintaining the largest sensor network in the U.S. Air Force, AFTAC senior leadership analyzed every aspect of the center’s structure to optimize its performance in line with the vision of the Air Force Chief of Staff and commander of Air Combat Command.
                            <br /><br />
                            Much like other wings throughout the Air Force, AFTAC has functional roles that include surveillance operations, maintenance, cyber operations and logistics.  Unlike other Air Force wings, AFTAC has inherently scientific mission areas that are unique in nature, including the Air Force’s only radiochemistry laboratory.  Leadership recognized the similarities and differences from Air Force standards and incorporated them into the new organizational design.
                            <br /><br />
                            “Historically, AFTAC did not resemble any other agency in the Air Force, which oftentimes presented challenges to mission accomplishment – both internally and externally,” said Col. Steven M. Gorski, AFTAC commander.  “Our goal of this reorganization was to optimize the unit to fit the missions assigned to us.  We focused on improving readiness, enhancing opportunities to grow our civilian, enlisted and officer leaders, and streamlining our research and acquisition processes.  As the CSAF said, squadrons are the basic building block of the Air Force that provide specific operational and support capabilities.  Establishing squadrons here at AFTAC will allow us to push authorities down to the lowest level possible, while forming a leadership team charged with taking care of our military and civilian Airmen and their families.”
                            <br /><br />
                            The reorganization establishes two new groups, eight new squadrons and a detachment, allowing for greater unity of command and cohesion.  The 709th Surveillance and Analysis Group will be responsible for executing AFTAC’s 24/7 monitoring mission in every physical domain:  land, sea, air and space. This group will oversee the 21st and 22nd Surveillance Squadrons; the 23rd and 24th Analysis Squadrons; and the Air Force Radiochemistry Laboratory.  The 24th will be led by an Air Force civil servant, with the same authorities and responsibilities as their military squadron commander counterparts (minus specific Uniform Code of Military Justice authorities) – a first for AFTAC.
                            <br /><br />
                            In addition to the groups and squadrons, the center developed two new directorates as well. David Merker will be responsible for the Strategic Development Directorate, which is comparable to a system program office, and will focus on AFTAC’s operational requirements.  
                            <br /><br />
                            “Mr. Merker will lead his team to provide acquisition expertise, full spectrum program management, resource planning and strategic planning development,” Gorski said.  “Having an embedded program office within the center, working side-by-side with our operators and maintainers, is a critical component and enables the agile acquisition processes called for by the Secretary of the Air Force.”
                            <br /><br />
                            Dr. Dan DeForest will lead the Strategic Integration Directorate, which will perform mission analysis, research and development, and partner outreach.  “The SI Directorate postures AFTAC to drive innovation in our mission areas by having a dedicated team focused on developing a strategic plan, engaging our industry and academic partner base, and executing our R&D portfolio,” said Gorski.  “This will ensure we maintain a technological edge against our competitors.” 
                            <br /><br />
                            AFTAC’s Chief Scientist, Dr. Glenn Sjoden, is anxious to see how his team of highly skilled scientists, engineers and analysts will succeed under the new organizational structure.
                            <br /><br />
                            “The advent of unitization brings added efficiency to mission execution as well as technical cohesion in the new R&D acquisitions,” said Sjoden.  “It also opens up new opportunities for civilian leadership and I’m looking forward to our next chapter in nuclear surveillance for the United States.  There is no doubt this organizational structure will facilitate the application of the highest quality scientific work to ensure AFTAC remains a respected authority in both the U.S. and global scientific communities.”
                            <br /><br />
                            For the past 70 years, the center’s lineage has rich history of innovation and agility to meet whatever challenges the U.S. has faced.
                            <br /><br />
                            “This reorganization pushes authorities down to the appropriate levels,” said Chief Master Sgt. Michael Joseph, AFTAC command chief.  “This will allow our organization to adapt and make decisions quicker, and will empower our highly-skilled workforce to get after our biggest challenges without redundant or conflicting lines of effort.  I know our professional workforce will continue to innovate and prepare for the future, which will ultimately give our national decision makers the best data available to help shape national policy.”
                            <br /><br />
                            Gorski added, “I am extremely proud of how the men and women of the Air Force Technical Applications Center executed the center’s unitization, and I expect our organization will work together seamlessly to deliver a decision advantage to both warfighters and national decision makers.”
                        </p>
                    </div>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">With help from Airmen, Boy Scouts earn prestigious merit badge - 4/15/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkstem" class="n2KPara noDisplay">
                        <div class="floatLeft width60">
                            <div class="width95 autoMarginLeftRight">
                                <img id="stemPic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/st1.jpg" />
                                <p id="stemMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Capt. Sky Thai (left), a physicist at the Air Force Technical Applications Center, Patrick AFB, Fla., briefs a group of Boy Scouts about his job at the center’s Ciambrone Radiochemistry Lab March 31, 2018.  Thai spearheaded the effort to help 98 scouts from across Central Florida earn their Nuclear Science Merit Badge.  (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>
                        </div>

                    <div class="floatLeft width35 topMargin10em leftMargin1em">
                        <div class="autoMarginLeftRight width95">
                            <input id="butstemPrevious" class="myBut width40" type="button" value=" Previous " />
                            <input id="butstemNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                        </div>

                        <div class="topMargin2em">
                            <input id="butstemSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                        </div>
                    </div>

                    <div class="clear"></div>
                    
                    <div>
                        <p id="stemArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            Nearly 100 Boy Scouts from 25 troops across Central Florida traveled to Patrick AFB March 31 to earn the much-sought-after Nuclear Science Merit Badge with the help of Airmen from the Air Force Technical Applications Center here.
                            <br /><br />
                            AFTAC, the Department of Defense’s sole nuclear treaty monitoring center, is filled with highly skilled and educated scientists, analysts, engineers and technicians with academic degrees and backgrounds in nuclear physics, chemistry, biology, geophysics and mathematics, just to name a few.  The center is also filled with highly motivated Airmen who consistently volunteer their time to help the local community.
                            <br /><br />
                            Capt. Sky Thai, this year’s project officer and physicist at AFTAC’s radiochemistry laboratory, coordinated a full day of events for the scouts that included classroom instruction, hands-on projects, and visual experiments and displays.
                            <br /><br />
                            The boys’ Saturday morning started early, with an introduction by Lt. Col. James Thomas, commander of the Air Force Radiochemistry Laboratory.  The next several speakers briefed the scouts on radioisotopes, particle accelerators, nuclear medicine and its industrial applications, and what happens to when the forces that hold atoms together are broken, while boys took copious notes into their handbooks to ensure they captured all the pertinent information required to earn the badge.
                            <br /><br />
                            Once the briefings were complete, attendees were broken up into smaller groups where they conducted hands-on experiments that included building a 3-D model of an element and its isotopes, drawing the nuclear fission process, and creating a cloud chamber.
                            <br /><br />
                            After breaking for an outdoor lunch prepared at AFTAC’s pavilion, the scouts were taken to the radiochemistry lab to get an even closer look at nuclear science in action.
                            <br /><br />
                            One group visited AFTAC’s Count Room, where briefers discussed how AFTAC employs alpha, beta, and gamma detectors to measure samples of radioactivity.  A second group toured the lab’s Sample Receipt Room, where they were shown the process of how real-world radioactive samples are brought into the facility.  Group three saw a demonstration of a Thermal Ionization Mass Spectrometer and learned how it worked, while a fourth group was taken to the AFTAC Warehouse where Airmen demonstrated the properties of liquid nitrogen and the power of radioactivity in everyday common items.
                            <br /><br />
                            Luke Seilger, an 8th grader at Milwee Middle School in Longwood, Fla., came with his fellow scouts from Troop #773 to participate in the day’s events.
                            <br /><br />
                            “This is so much fun!” Luke exclaimed.  “When our Scoutmaster told us about it, I was the first one from my troop to jump on the chance to participate.  I’ve been so excited waiting for this day to come.  When I grow up I want to be an engineer, and now after seeing all this today, I’m pretty sure I want to be a nuclear engineer!”
                            <br /><br />
                            In addition to the scouts and their leaders coming to the base, many parents accompanied their children to watch and observe.
                            <br /><br />
                            Sherry Suarez came with her sons Joshua, 13, and Jacob, 12, who both attend St. Cloud Middle School.  From all accounts, Suarez was very impressed with the program.
                            <br /><br />
                            “Our boys have been counting down the days to come to the base, and quite frankly, so have my husband and I!” she said.  “Unfortunately, he wasn’t able to make it, so I’m trying to absorb everything so I can tell him all about it.  Earlier today, the lab commander said something about how he hopes he can light the spark in just one boy to consider a career in science or the military.  That’s exactly what we want for our boys – we love the military atmosphere!”
                            <br /><br />
                            Throughout the day, the Scoutmasters observed their troops interact with boys from other regions in Florida and work together on the hands-on projects.  Norman Payson, Assistant Scoutmaster from Troop #192 in Osceola, enjoyed the day’s events.
                            <br /><br />
                            “This is the best kind of opportunity for the boys to earn such a technical badge,” he said.  “When you are learning about the subject from the people who actually do the job, you’re getting it right from the source, which makes the badge even more worthwhile.  I’m excited for them, especially since it’s not an easy badge to get.  Big thanks to the Air Force and AFTAC!”
                            <br /><br />
                            Assistant Scoutmaster Shelle Pendergrast from Troop #330 in Ormond Beach said she was amazed at the skill level displayed by the AFTAC Airmen.
                            <br /><br />
                            “It’s very difficult to find places for the boys to earn merit badges from real subject matter experts,” she said.  “So when an opportunity like this arises, we seize the moment so our scouts can learn from those experts.  I can’t thank the men and women of AFTAC enough for putting this on for us, and I’m just so thrilled with the level of professionalism everyone had shown.  It’s so important for the boys to witness these successful leaders who run our Air Force – they’re making a difference to our kids, and that’s what Scouting is all about.”
                            <br /><br />
                            For many of the Airmen who volunteered, this wasn’t their first time assisting with the merit badge event, and both military and civilian personnel signed up to help coordinate the day’s agenda.
                            <br /><br />
                            “This is such an enjoyable event,” said Tammie Anglin, secretary at the radiochemistry lab.  “I love seeing their faces light up and see our officers show off what they know and how smart they are—it makes me proud to be a part of AFTAC.  I hope my little grandson gets involved in scouting someday because I can see him really enjoying a program like this.  And I love being involved because it’s my small way of giving back to the community.  It’s really a lot of fun!” 
                            <br /><br />
                            In 2012, AFTAC invited local scouts to the base to earn what was formally known as the Atomic Energy Merit Badge.  That year saw 32 boys ranging in age from 11 to 16, and since that first year, the number of attendees has tripled.
                            <br /><br />
                            “When we first started hosting the troops, we wanted to give the boys the best possible experience,” said Troy Porter, AFTAC’s equipment maintenance technician and Scoutmaster for Troop #314 in W. Melbourne.  “We’ve continued to improve the program – from better, more interactive briefings to increased access to our lab and its equipment.  It’s been exciting to see how far we’ve come since the first year, and I’m always impressed with the level of dedication our Airmen put forth to make this worthwhile for the boys.  I appreciate the effort by the boys, the support from the parents, the collaboration with the Troop Leaders, and the volunteer spirit from the men and women of AFTAC.  I can’t thank everyone enough, especially Capt. Thai, for making this a first-class event.”
                            <br /><br />
                            Thomas echoed Porter’s comments, and added a few thoughts of his own.
                            <br /><br />
                            “If we can spark an interest in one boy – one family – towards a career in STEM, then my job is done,” he said.  “When I look back, I never pictured myself becoming an Air Force scientist, yet here I am.  I hope the boys had as much fun as we did, and I’m very proud of all the AFTAC volunteers who came out on their day off to make this a first-class event.  Capt. Thai and his team did an outstanding job and set the bar high for next year’s team.  We had a great time.”
                            <br /><br />
                            According to the Boy Scouts of America web page, the Nuclear Science Merit Badge is earned by less than one percent of Boys Scouts worldwide.  Porter said he hopes the tradition of hosting the event continues well into the future.
                        </p>
                    </div>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Treaty Monitoring Center inducts three to its Wall of Honor - 4/4/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntktreaty" class="n2KPara noDisplay">
                    <div class="width45 floatLeft leftMargin1em autoMarginLeftRight thinMaroonBorder smallShadow">
                        <img class="width90 autoMarginLeftRight topMargin1em bottomMargin1em" alt="WOH1.jpg" src="_Photos/News2Know/WOH1.jpg" />
                        <p class="italic width90 autoMarginLeftRight darkRedText" style="font-size:1em;">
                            Twelve medallions were presented to the initial cadre of the Air Force Technical Applications Center's Wall of Honor at a ceremony May 30, 2015.  The medallion, which was created by 1st Lt. Adam Satterfield and Master Sgt. Chad Taguba, both members of AFTAC, symbolizes the 12 inductees' contributions to long range detection and nuclear treaty monitoring, AFTAC's primary mission.  The back of the medallion has a personalized inscription that reads, “Let this medallion signify its recipient is a member of an elite and noble group of Airmen who stand in silent vigil for the good of all humankind.”  (U.S. Air Force photo by Master Sgt. Chad Taguba)
                        </p>
                    </div>
                    <div class="width45 floatLeft leftMargin1em autoMarginLeftRight thinMaroonBorder smallShadow">
                        <img class="width90 autoMarginLeftRight topMargin1em bottomMargin1em" alt="WOH2.jpg" src="_Photos/News2Know/WOH2.jpg" />
                        <p class="italic width90 autoMarginLeftRight darkRedText" style="font-size:1em;">
                            The Air Force Technical Applications Center at Patrick AFB, Fla., inducted three members to its historic Wall of Honor at a ceremony held March 27, 2018 in the center’s Doyle Northrup Auditorium.  The inductees were Lt. Col. (ret.) Robert E. Wiley, Chief Master Sgt. (ret.) William J. McClelland, and Chief Master Sgt. (ret.) Susan J. Spencer.  Pictured here in front of the newly-engraved plaques are Chief Master Sgt. Wesley A. Schuler, AFTAC superintendent; McClelland; Doris Bruner, proxy for Spencer; Wiley; and Col. Greg Sawyer, AFTAC vice commander.  (U.S. Air Force photo by Phillip C. Sunkel IV)
                        </p>
                    </div>

                    <div class="clear"></div>

                    <div>
                        <p id="treatyArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            The Air Force Technical Applications Center here inducted three new members to its Wall of Honor at a ceremony held in the center’s Doyle Northrup Auditorium March 27, 2018.
                            <br /><br />
                            Lt. Col. Robert Wiley, Chief Master Sgt. Bill McClelland and Chief Master Sgt. Sue Spencer, all former members of the nuclear treaty monitoring center, were recognized for their contributions to AFTAC’s long range detection mission by having their names engraved on the wall in the center’s main lobby.
                            <br /><br />
                            The tradition began four years ago after AFTAC moved in to its newly constructed headquarters in 2014.  The center’s Heritage Committee was formed and its first order of business was to develop the criteria to establish a way to recognize individuals who profoundly contributed to AFTAC’s global mission, while personifying the Air Force Core Values: integrity, service, excellence.
                            <br /><br />
                            This year’s selectees bring more than 75 years of experience and service to the Department of Defense’s sole nuclear treaty monitoring center.
                            <br /><br />
                            Wiley, a career physicist and nuclear explosion detection expert, spent a good deal of his time at AFTAC working in the Space Operations Division, managing the center’s multi-million dollar acquisition support contracts for the U.S. Atomic Energy Detection System.  Many of the techniques he implemented during his tenure with AFTAC are still used today.
                            <br /><br />
                            “I hadn’t really expected to receive this recognition,” Wiley said, who is also very active in the AFTAC Alumni Association.  “I’ve attended every ceremony since the wall was initiated, but never thought I’d be eligible for induction, especially when you think of some of the other fantastic people who have had their name put on the wall.  I’m always impressed how the men and women of AFTAC do everything ‘first-class’ and today was no exception.”
                            <br /><br />
                            McClelland joined the AFTAC’s long range detection team in 1964.  During his career, he served at various overseas detachments in New Zealand, Ascension Island and Korea, as well as at the 1155th Technical Operations Squadron at the now-defunct McClellan Air Force Base in California.  While the chief retired in 1984, he continued his tenure with the treaty monitoring center as a contractor, where he still serves today.
                            <br /><br />
                            The chief’s daughter was overcome with emotion after witnessing her father’s induction.
                            <br /><br />
                            “This is so impressive,” said Cheryl McClelland, choking back tears of pride.  “My father has always been the best dad a girl could ever ask for, and seeing him recognized for a lifetime of achievement is incredibly overwhelming.  I’m so thrilled for all of today’s inductees, and can’t thank the men and women of AFTAC enough for being like family to us.  It’s such an honor!”
                            <br /><br />
                            The third inductee served 26 years on active duty.  Spencer began her Air Force career as a pharmacy technician, but ultimately cross-trained to become an applied physics lab specialist.  She was a gifted microscopist and oversaw AFTAC’s trace particle program throughout the years.  Prior to her retirement in 1999 and because of her vast knowledge and skills, she was selected to support the closure of the McClellan Central Laboratory and AFTAC’s Technical Operations Division.
                            <br /><br />
                            While Wiley and McClelland were able to attend the ceremony in person, Spencer was unable to make it to Florida’s Space Coast.  Instead, she asked to have former co-worker and friend Doris Bruner accept the award on her behalf.  Bruner is the technical advisor for AFTAC’s Director of Operations and said it was a privilege to serve as Spencer’s proxy.
                            <br /><br />
                            “When Chief Spencer found out she was being inducted, she told me it was an honor and greatly appreciated,” said Bruner.  “She was disappointed she couldn’t attend the ceremony, and hopes to arrange a visit one day in person to see her name on the wall.  She also wanted me to express her thanks and gratitude to all those who made this happen – she knows what a huge effort and time commitment it takes.”
                            <br /><br />
                            Bruner added, “Chief said the best part is she’s now back in touch with everyone from the Alumni Association, and is thrilled to be in contact with so many from her AFTAC family, past and present.”
                            <br /><br />
                            Each inductee received a hefty medallion with an inscription that reads, “Let this medallion signify its recipient is a member of an elite and noble group of Airmen who stand in silent vigil for the good of all humankind.”
                            <br /><br />
                            Pictured on the medallion is an American Bald Eagle clutching a scroll in one talon and a sword in the other.  The scroll symbolizes the Limited Test Ban Treaty and the sword illustrates military strength and might.  Above the eagle are the words “Sapientia Potentia Est,” Latin for “Wisdom is Power.”
                            <br /><br />
                            Col. Greg Sawyer, AFTAC’s vice commander, officiated the ceremony.
                            <br /><br />
                            “Today, we honor our collective history and the legacy of three fellow Airmen whose distinguished service provides innumerable examples of innovation that outpaced and countered our adversaries,” Sawyer said.  “We honor their service and contributions, and we honor them for the inheritance they have provided this generation of AFTAC personnel.  On this day, you join the ranks of our AFTAC forefathers and luminaries, and we are better for having shared its spaces and responsibilities with you.  A significant portion of your lives and talents have been freely given to this organization, and for that we are eternally grateful.”
                            <br /><br />
                            Immediately following the medallion presentation, the inductees and their family members were invited to pose for photos in front of their newly-engraved plaques.  
                            <br /><br />
                            Dr. Mike Young, AFTAC’s Historian, spearheaded the effort to induct this year’s honorees.
                            <br /><br />
                            “Selection to the Wall of Honor is no easy feat,” Young explained.  “The Heritage Committee meticulously reviews dozens of nomination packages of former scientists, analysts, engineers and technicians, and only three per year are considered for induction.  The committee looks for nominees who demonstrated great character and whose actions truly discriminated them from thousands of other center employees, both military and civilian. The 2018 inductees absolutely exceed those standards, and it was a privilege to be a part of this process.”
                        </p>
                    </div>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Grass does not grow under this octogenarian’s feet - 3/31/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkgrass" class="n2KPara noDisplay">
                    <div class="clear"></div>
                    <input id="btngrassShowSS" class="myBut autoMarginLeftRight" type="button" value=" Show Slide Show " />
                    <section id='grassSlides' class="noDisplay" style="margin-top:-1em;">
                        <div class="floatLeft width60 leftMargin1em">
                            <div class="width95 autoMarginLeftRight leftMargin1em topMargin4em block">
                                <img id="grassPic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/grass1.jpg" />
                                <p id="grassMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Dr. Bob Kemerait, senior scientist and Defense Intelligence Senior Level executive at the Air Force Technical Applications Center, Patrick AFB, Fla., poses for a picture prior to the start of the Plenary Session of the Comprehensive Nuclear Test Ban Treaty Organization’s  Preparatory Commission at its headquarters in Vienna March 19, 2018.  Kemerait was recognized by CTBTO Executive Secretary Dr. Lassina Zerbo as the only person from any nation in the world to attend every Working Group B meeting since its inception in 1997.  (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>

                        </div>

                        <div class="floatLeft width35 topMargin7em leftMargin1em">
                            <div class="autoMarginLeftRight width95">
                                <input id="butgrassPrevious" class="myBut width40" type="button" value=" Previous " />
                                <input id="butgrassNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                            </div>

                            <div class="topMargin2em">
                                <input id="butgrassSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                            </div>
                        </div>

                        <div class="clear"></div>
                    
                    </section>

                    <p id="grassArt" class="block">
                            <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            With 82-plus years under his belt, a long and storied career with the federal government, and elbows that have rubbed with the likes of astronauts, diplomats, presidential appointees and renowned international scientists alike, one would think he’d have slowed down by now.
                            <br /><br />
                            One would think. But that’s not the case for Dr. Bob Kemerait, a senior scientist and Defense Intelligence Senior Level executive at the Air Force Technical Applications Center here.  On the contrary, Kemerait shows no signs of seeking out retirement community living or hanging up his proverbial lab coat – at least, not just yet.
                            <br /><br />
                            For the past 44 years, Kemerait has been associated with the Department of Defense’s sole nuclear treaty monitoring center specializing in seismic systems development, data processing and collection, and supporting the U.S. National Data Center.
                            <br /><br />
                            Born in 1935, Kemerait grew up in a small town 50 miles east of Cleveland, Ohio, and recalls an event from his childhood that proved pivotal to his lifelong pursuit and love of science.
                            <br /><br />
                            “It was four days before my 10th birthday,” he explained.  “I woke up and found my parents huddled around the radio listening to the news about the A-bomb the United States had just dropped on Hiroshima.  I remember thinking to myself, ‘Maybe President Truman’s decision to bomb Japan would be the step needed to finally end the war.’  Little did I know my future career would be spent seeking out the comprehensive ban on nuclear testing.”
                            <br /><br />
                            In 1996, the Preparatory Commission for the Comprehensive Nuclear-Test Ban Treaty Organization was founded and is currently based in Vienna.  Its main focus is the promotion, negotiation and ultimate ratification of the CTBT.  Led by Dr. Lassina Zerbo, CTBTO’s executive secretary, the organization conducts recurring working groups with representatives from more than 80 countries across the globe.
                            <br /><br />
                            Recently, the CTBTO held its 50th Working Group B session at its Austrian headquarters, where member-states delivered their respective statuses on signatory monitoring, compliance and verification.  The commission also took the time to recognize Kemerait for being the only representative of any nation to have attended all 50 Working Group B sessions since its inception.
                            <br /><br />
                            “When I was selected for this job, I wasn’t the ‘usual suspect’ people had become accustomed to seeing as the executive secretary,” said Zerbo.  “I wasn’t part of the long-standing ‘inner group’ of participants, and many people were heard saying, ‘Who is this guy, and what does he know?’  But not Bob Kemerait.  He was one of the few people at the very start of my tenure who gave me hope.  He looked me in my eyes and gave me advice on very technical issues.  He listened to what my vision was, and I learned from him.  He also made me believe that all things are possible, even a treaty as complicated as the CTBT.”
                            <br /><br />
                            For the past 14 years, Zerbo and Kemerait have developed a long-standing professional relationship as well as a deep friendship.  That was evident in the gift Zerbo presented to AFTAC’s senior scientist at a ceremony to honor his 50th WGB perfect attendance.
                            <br /><br />
                            “I come from a very small country in Africa (Burkina Faso), so I wanted to present something from my homeland to honor Bob and recognize the support he has given to this very noble cause,” Zerbo explained.  “I present to him a statue of a man carrying heavy pails of water on each shoulder, which represents what Bob has done for more than two decades – carry water for his country to get this treaty ratified.  He has made it his life’s work, much like this water carrier in the statue.”
                            <br /><br />
                            In addition to accolades from Zerbo, Nicole Shampaine, Chargé d’Affaires for the U.S. Mission to International Organizations in Vienna, also delivered words of praise to Kemerait’s dedicated service. 
                            <br /><br />
                            “Dr. Kemerait’s involvement with the mission dates back to 1997 when we held the first Working Group B session,” Shampaine said.  “He has been a champion of data authentication requirements and his contributions have proven invaluable.  We have the utmost confidence in his skills and knowledge and we can’t thank him enough for his continued involvement with the CTBTO.”
                            <br /><br />
                            During the Cold War, many attempts were made to negotiate a comprehensive nuclear test ban, but it wasn’t until the mid-1990s that the treaty became a reality.  Between 1994 and 1996, the CTBT was negotiated in Geneva.  One hundred and eighty three countries have signed the treaty; 166 have ratified it, including three nuclear weapons States (France, the United Kingdom, and the Russian Federation).  President Bill Clinton signed the treaty, but the U.S. Senate has not yet ratified it.  
                            <br /><br />
                            AFTAC’s support to the CTBTO comes in the shape of its data-sharing capabilities through the International Monitoring System.  The center provides collaborative software subject matter expertise and systems engineering expertise to the International Data Centre as well as sustainment and logistics support to the IMS.  Additionally, AFTAC develops sparing requirements, manning requirements and special support equipment for IMS contributors.  
                            <br /><br />
                            As the nation’s caretaker of the U.S. Atomic Energy Detection System (the largest sensor network in the Air Force), AFTAC operates and maintains more than 3,600 nuclear event detection sensors worldwide.  
                            <br /><br />
                            Kemerait’s primary focus as a senior scientist has been on waveforms – seismic, hydroacoustic and infrasound.
                            <br /><br />
                            “My work energizes me,” Kemerait said.  “I still feel I have things to contribute to this incredible mission.  I truly enjoy what I’m doing, and I feel I can run with the best of them, so why would I want to retire?  It’s even more rewarding when I get to work with people like our chief scientist, Dr. Glenn Sjoden, who’s been a great influence on me.  He’s just one of the many people I’ve been blessed to work with over the years.”
                            <br /><br />
                            AFTAC’s chief scientist had some of his own words to describe Kemerait’s work ethic.
                            <br /><br />
                            “Don’t let Bob’s age fool you,” said Sjoden.  “He has more energy and ‘joie-de-vivre’ than people half his age, and it shows.  He has been a mainstay and significant presence for us with our counterparts in Vienna, and we rely on him to serve as our primary advisor and conduit between the various countries who attend WGB sessions as well as the senior executives with the Preparatory Commission.  He is been a stalwart participant of the commission’s plenary body and Provisional Technical Secretariat, and I’m extremely proud of the role he’s played.  He’s a true ambassador for AFTAC.”
                            <br /><br />
                            When asked what the most memorable part of his involvement with WGB and the CTBTO has been, Kemerait paused and gave it great thought.
                            <br /><br />
                            “At times, WGB can be very political, and I try to avoid that stuff,” he explained.  “I’m not here for the politics; I’m here to get the job done and see about getting this treaty ratified.  It’s been my life work, and I wouldn’t change a thing about this journey I’ve been on.  Some of my best friends are right here in Vienna – either those who live and work here, or those who travel to the sessions from other countries – and like Dr. Zerbo said, I won’t retire until I see the CTBTO entered into force.”  
                            <br /><br />
                            He added, “What amazes me most is that I’ve worked with giants from all nations, and while most move on to other positions, the ones who come in their place are equal giants – the best in the field.  It motivates me to be able to work with such intelligent men and women from all over the world, and it rejuvenates me to continue on this path towards a safer planet and safer society free of nuclear testing.  I pray I can see that in my lifetime.”
                        </p>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">AFTAC Hockey Team receives special Congressional recognition - 3/31/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkhockey" class="n2KPara noDisplay">
                    <div class="clear"></div>
                    <input id="btnhockeyShowSS" class="myBut autoMarginLeftRight" type="button" value=" Show Slide Show " />

                    <section id='hockeySlides' class="noDisplay" style="margin-top:-1em;">
                        <div class="floatLeft width60 leftMargin1em">
                            <div class="width95 autoMarginLeftRight leftMargin1em topMargin4em block">
                                <img id="hockeyPic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:24em;" src="_Photos/News2Know/Hockey1.jpg" />
                                <p id="hockeyMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                        Master Sgt. Michael Nolan, a member of the Athletes for Teamwork and Charity hockey team at Patrick AFB, Fla., takes a face-off against a player from Florida Institute of Technology during a charity game March 24, 2018 in Rockledge, Fla.  Nolan and his teammates were recognized by Rep. Bill Posey (FL-15) for outstanding contributions to the community.  (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>

                        </div>

                        <div class="floatLeft width35 topMargin7em leftMargin1em">
                            <div class="autoMarginLeftRight width95">
                                <input id="buthockeyPrevious" class="myBut width40" type="button" value=" Previous " />
                                <input id="buthockeyNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                            </div>

                            <div class="topMargin2em">
                                <input id="buthockeySlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                            </div>
                        </div>

                        <div class="clear"></div>

                    </section>
                    <p id="hockeyArt" class="block">
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        Before the anthem was sung and the puck dropped at center ice, Airmen from the Air Force Technical Applications Center hockey team were recognized by a member of Congress for their charitable fundraising efforts at a game versus Florida Institute of Technology March 24.
                        <br /><br />
                        Rob Medina, Director of Community Relations for Rep. Bill Posey (FL-15), presented a Certificate of Special Recognition to team captain Bill Hungate before a charity game with FlT at the Space Coast IcePlex in Rockledge, Fla.  Medina also presented a signed Letter of Commendation from Posey to each player thanking them for their service, devotion to duty, loyalty and outstanding achievements.
                        <br /><br />
                        “”We’re here to honor these players and commend them for the money they’ve raised for some really great causes,” said Medina.  “Here these folks put on a military uniform every day, are on call 24/7, deploy all over the world, yet they still find time to practice, play games and raise money for charities.  And today I have the distinct honor to present these certificates and letters to them on behalf of Congressman Posey.  I’m really proud of these dedicated athletes and Airmen—they truly walk the walk!”
                        <br /><br />
                        Since the team formed in 2015, the players have raised more than $50,000 for various charities and causes in Central Florida.  This match raised $1,500 for Nemours Children’s Hospital in Orlando.
                        <br /><br />
                        AFTAC leadership was in attendance for the game, and the center’s command chief expressed why events like this matter.
                        <br /><br />
                        “This fundraiser gives us the opportunity to give back to the community and enjoy a great hockey game,” said Chief Master Sgt. Michael Joseph.  “It fills me with a lot of pride when I see our Airmen out there giving it their all in the name of charity.  It’s something we as a force do well – we care about those around us who may need assistance.  It’s also a great morale-builder!”
                        <br /><br />
                        While one might think the AFTAC logo on their jerseys represents the organization most of the players work for, it actually stands for “Athletes for Teamwork and Charity.”  The team formed as an official non-profit enterprise in 2016 as a means to raise money for people and charities in need, while also having fun on the ice, networking with other teams in the region, and working up a good sweat.
                        <br /><br />
                        “For me, it’s really all about camaraderie,” said Hungate.  “The sense of pride I get when I see my co-workers and teammates come together to raise funds for others is indescribable.  Hockey has always been a passion for me, and forming this team with my mate Aaron Trudel has been one of the most rewarding experiences of my life.”
                        <br /><br />
                        For more information about AFTAC hockey including upcoming games, visit the team’s Facebook page at www.facebook.com/AFTAChockey/
                    </p>

                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">25th AF commander immerses into treaty monitoring mission - 3/1/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkcommand" class="n2KPara noDisplay">
                    <div class="clear"></div>
                    <input id="btncommandShowSS" class="myBut autoMarginLeftRight" type="button" value=" Show Slide Show " />

                    <section id='commandSlides' class="noDisplay" style="margin-top:-1em;">
                        <div class="floatLeft width60 leftMargin1em">
                            <div class="width95 autoMarginLeftRight leftMargin1em topMargin4em block">
                                <img id="commandPic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:20em;" src="_Photos/News2Know/Command1.jpg" />
                                <p id="commandMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Staff Sgt. Justin A. Baldwin (left) a radiochemistry noncommissioned officer at the Air Force Technical Applications Center, Patrick AFB, Fla., explains to Maj. Gen. Mary F. O’Brien, 25th Air Force commander and Chief Master Sgt. Stanley Cadell, 25th AF command chief, how he prepares reagents and small equipment prior to conducting chemistry operations in the Ciambrone Radiochemistry Laboratory.  O’Brien and Cadell toured the facility Feb. 21, 2018 during a visit to the nuclear treaty monitoring center. (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>

                        </div>

                        <div class="floatLeft width35 topMargin7em leftMargin1em">
                            <div class="autoMarginLeftRight width95">
                                <input id="butcommandPrevious" class="myBut width40" type="button" value=" Previous " />
                                <input id="butcommandNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                            </div>

                            <div class="topMargin2em">
                                <input id="butcommandSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                            </div>
                        </div>

                        <div class="clear"></div>

                    </section>
                    <p id="commandArt" class="block">
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        The commander of 25th Air Force visited the Air Force Technical Applications Center here to meet with senior leadership, learn more about the AFTAC mission, and discuss her priorities with center personnel.
                        <br /><br />
                        Maj. Gen. Mary F. O’Brien paid her first visit to the nuclear treaty monitoring center Feb. 20-21, and traveled with her command chief, Chief Master Sgt. Stanley Cadell, to ensure enlisted areas of concern were also addressed during the visit.
                        <br /><br />
                        After a courtesy call with Patrick AFB’s installation commander, Brig. Gen. Wayne Monteith and his command chief, Chief Master Sgt. Kimberly Vinson, the 25th AF leadership team arrived at AFTAC’s headquarters building to begin their immersion into the AFTAC mission.
                        <br /><br />
                        The first stop on their agenda was to AFTAC’s Clean Room, where they learned more about how scientists prepare and split environmental samples for further analysis by AFTAC’s network of laboratories that support the International Atomic Energy Agency.  Clean Room operators demonstrated how technicians handle samples and the method in which radioactive particles are identified, isolated and processed for further analysis and reporting.
                        <br /><br />
                        O’Brien and Cadell were briefed on various aspects of AFTAC global responsibilities, such as the Nuclear Debris Collection and Analysis program, the National Data Center, Directed Energy Weapons, Reactor Product and Nuclear Plant Programs, and Environmental Modeling and Simulation.
                        <br /><br />
                        "I've been looking forward to this opportunity to get out and visit our Airmen in the field who are doing great things for our Air Force," said O’Brien.  “What impressed me about the Airmen here at AFTAC was their ability to take very technical information and make it understandable for those who might not have a background in science.  While I have a degree in chemistry, I haven’t applied much of that degree throughout my career, and Chief Cadell, who is a maintainer by trade, commented about how well the people here at AFTAC are able to explain the significance of their respective jobs coherently and concisely.” 
                        <br /><br />
                        The pair also spent the afternoon touring AFTAC’s Innovation Lab to get a first-hand look at some ongoing projects and innovations.  Tech. Sgt. Collin J. Pesicka, noncommissioned officer in charge of rapid development, briefed the general and the chief on current operations the lab is undertaking.
                        <br /><br />
                        “We highlighted to General O’Brien and Chief Cadell an ongoing project to improve one of AFTAC’s legacy monitoring systems using commercial off-the-shelf technology,” Pesicka said.  “We also explained how the Innovation Lab is expediting the research and development process, while reducing overall funding requirements.  The concept of rapid development not only gives AFTAC members the opportunity to fail; it also helps them apply those lessons learned to further their ideas.  I hope our NAF commander and command chief walked away with a better sense of the great work our Innovation Lab is conducting each and every day.”
                        <br /><br />
                        The tour wrapped up with a visit to the Ciambrone Radiochemistry Lab, the only one of its kind in the Department of Defense.  CRL personnel analyze radioactive debris to determine if effluents from a potential nuclear explosion are present in the atmosphere.
                        <br /><br />
                        During her visit, O’Brien presented her coin to five outstanding performers:  Master Sgt. Matthew Wilkens, Senior Airman Christian Hagen, Capt. Rhonda Jones, Mr. Kevin Jensen, and Staff Sgt. Nathan Korytko.  Traditionally, a commander presents a challenge coin to an individual for a job well done or for going above-and-beyond normal duty requirements.  It’s also a way to build a personal bond between recipient and presenter.
                        <br /><br />
                        “I was really honored to receive General O’Brien’s coin,” said Korytko, noncommissioned officer in charge of Count Room Operations.  “It was already an honor to be asked to brief her on my role here at AFTAC, but to have her hand me her coin is really the best highlight of my time in the Air Force so far.  I really appreciate her taking the time to acknowledge my work.”
                        <br /><br />
                        At the conclusion of their visit, O’Brien took a few minutes to reflect on what she learned from the immersion.
                        <br /><br />
                        “These Airmen are impressive!” she said.  “I already had a good idea of ‘what’ was being done here at AFTAC; now I have a much better picture of the ‘who’ and the ‘how.’  Everyone we met – officer, enlisted and civilian alike – had an acute operational mindset and it’s obvious the commander is providing them with the tools they need to meet challenges and solve hard problems that impact us as a nation.  There is a good mix of experience, background and leadership here.”
                        <br /><br />
                        AFTAC’s commander, Col. Steven M. Gorski, realizes the impact an “in-person” visit from a general officer visit within the chain of command has on a workforce.
                        <br /><br />
                        “General O’Brien and Chief Cadell’s visit to AFTAC was very much appreciated. They are extremely busy running an expansive mission providing multi-domain ISR to warfighters across the globe,” said Gorski.  “We are glad they took the time to meet the Airmen executing the mission. We discussed recent successes and ideas to continuously improve on our mission to ultimately provide persistent strategic deterrence for our nation. The 25th senior leadership team observed what we already knew: the men and women of AFTAC are dedicated professionals who get the mission with done unmatched passion and innovation.”
                        <br /><br />
                        O’Brien added, “I want to say thanks for a great visit, and I look forward to coming back to see more of the great things the Airmen are doing here.
                    </p>

                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Industry Day brings high-tech companies to AFTAC - 2/28/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkindust" class="n2KPara noDisplay">

                    <div class="floatLeft width40 leftMargin2em">
                        <img class="width90 autoMarginLeftRight" alt="Industry1.jpg" src="_Photos/News2Know/Industry1.jpg" />
                        <p class="width90 autoMarginLeftRight italic darkRedText" style="font-size:.8em;">
                            Maj. Kelly Greiner, program manager for Nuclear ISR Field Systems and Industry Day’s event coordinator, discusses network opportunities with Seni Aguiar (left), and Michael Ballard at Industry Day Feb. 9, 2018, hosted by the Air Force Technical Applications Center, Patrick AFB, Fla.  Ballard, president and founder of TechRev, brought Aguiar, his operations manager, to the event to learn more about partnerships with the Department of Defense’s sole nuclear treaty monitoring center.  (U.S. Air Force photo by Susan A. Romano)
                        </p>
                    </div>

                    <div class="floatLeft width40 leftMargin2em">
                        <img class="width90 autoMarginLeftRight" alt="Industry2.jpg" src="_Photos/News2Know/Industry2.jpg" />
                        <p class="width90 autoMarginLeftRight italic darkRedText" style="font-size:.8em;">
                            More than three dozen companies from across the United States attended Industry Day, an annual event hosted by the Air Force Technical Applications Center, Patrick AFB, Fla., Feb. 9, 2018.  The event gave attendees the opportunity to learn more about the nuclear treaty monitoring center’s global mission and how companies can partner with the center. (U.S. Air Force photo by Susan A. Romano)
                        </p>
                    </div>

                    <div class="clear"></div>

                    <p id="industArt" class="block">
                    <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                    The Air Force Technical Applications Center hosted a Nuclear Treaty Monitoring Industry Day Feb. 9 to give high-tech companies an opportunity to network with center scientists, engineers and technicians and share ideas about the capabilities contractors can offer that affect AFTAC’s mission areas.
                    <br /><br />
                    Held at Patrick AFB’s Shark Center, more than three dozen agencies attended to discuss topic areas ranging from geophysics and seismology to directed energy weapons and air and space operations.
                    <br /><br />
                    AFTAC is the sole organization in the Department of Defense responsible for monitoring nuclear treaties, and operates the largest sensor network in the U.S. Air Force.  The center also maintains the U.S. Atomic Energy Detection System – a global network of precision nuclear event detection equipment that can detect disturbances underground, underwater, in space, or in the atmosphere.
                    <br /><br />
                    Industry Day was held in conjunction with the release of AFTAC’s first Broad Agency Announcement contract vehicle used to efficiently award research and development contracts.  The BAA also includes Other Transaction Agreement language, which allows for contracts with companies the government does not traditionally seek partnerships with.  
                    <br /><br />
                    Maj. Kelly Greiner, program manager for Nuclear ISR Field Systems and Industry Day’s event coordinator, was impressed with this year’s turn out and the degree of expertise each attendee brought to the table. 
                    <br /><br />
                    “I was thrilled to see the varied and diverse turnout we had,” said Greiner.  “The 38 companies represented large and small businesses, both local and national, as well as from academia.  Most haven’t worked with AFTAC in the past, so I’m hoping we can broaden our industry base and allow for an influx of innovative solutions to AFTAC’s most pressing needs.”
                    <br /><br />
                    Chief Executive Officer of The Morris Analysis Group LLC, John Morris, represented one of the companies that attended Industry Day.  His organization focuses on engineering, research and management industries, and has been associated with the DoD for more than 30 years in various capacities.
                    <br /><br />
                    “The reason I wanted to attend this event was to try and help improve AFTAC’s tech sensor program,” Morris said.  “From a business perspective, my company looks for opportunities to integrate cyber into all mission areas, and bring new capabilities and quality platforms to the forefront in order to move the mission space forward.  It seemed like a perfect fit to attend.”
                    <br /><br />
                    After lunch, companies with security clearances were invited to attend a classified session at AFTAC’s headquarters building.  Many of the topics discussed pertained to directed energy weapons, materials technology, and air and space operations – significant mission sets that help AFTAC accomplish its nuclear event detection role.
                    <br /><br />
                    “My company was drawn to this event to see how we can form a partnership with AFTAC and help them find the right IT solution while also mitigating any potential risks,” said Alexandria Faulkner, account executive for Gartner.  “We are the largest IT research and advisory firm in the world, equipping businesses with cross-domain solutions to achieve their organizational goals.  Participating in events like this is a great opportunity for us.”
                    <br /><br />
                    While most of the companies that attended Industry Day were from out of town, one owner calls Melbourne, Fla., home, and was excited about attending the event and networking with other professionals from various industries.
                    <br /><br />
                    “This has been a very informative program,” said Michael Ballard, president and founder of TechRev.  “As a systems and software engineering firm and a veteran-owned small business in Brevard County, I am always looking for ways my company can tailor proposals to suit the customer’s needs.  Our goal is to introduce solid business practices like cloud applications to older legacy systems while delivering exceptional quality to our clients.  I’m glad we had the chance to attend and meet with the AFTAC staff.  It was highly beneficial.”
                    </p>

                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">AFTAC hosts annual WiSE Symposium - 2/15/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkwise" class="n2KPara noDisplay">
                    <div class="clear"></div>
                    <input id="btnwiseShowSS" class="myBut autoMarginLeftRight" type="button" value=" Show Slide Show " />

                    <section id='wiseSlides' class="noDisplay" style="margin-top:-1em;">
                        <div class="floatLeft width60 leftMargin1em">
                            <div class="width95 autoMarginLeftRight leftMargin1em topMargin4em block">
                                <img id="wisePic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:20em;" src="_Photos/News2Know/Wise1.jpg" />
                                <p id="wiseMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Secretary of the Air Force Heather Wilson gives the keynote address at the 2018 Women in Science and Engineering Symposium, hosted by the Air Force Technical Applications Center, Patrick AFB, Fla., Feb. 8, 2018.  Wilson was one of many high profile women who spoke to symposium attendees about the value that gender diversity brings to the science, technology, engineering and mathematics workforce.  (U.S. Air Force photo by Phillip C. Sunkel IV)
                                </p>
                            </div>

                        </div>

                        <div class="floatLeft width35 topMargin7em leftMargin1em">
                            <div class="autoMarginLeftRight width95">
                                <input id="#btnwise" class="myBut width40" type="button" value=" Previous " />
                                <input id="butwiseNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                            </div>

                            <div class="topMargin2em">
                                <input id="butwiseSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                            </div>
                        </div>

                        <div class="clear"></div>

                    </section>
                    <p id="wiseArt" class="block">
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        For the fourth time in as many years, the Air Force Technical Applications Center hosted its annual Women in Science and Engineering (WiSE) Symposium Feb. 7-8, with Secretary of the Air Force Heather Wilson as the featured keynote speaker.
                        <br /><br />                                               
                        The symposium was established in 2013 to bring attention to and highlight the value that gender diversity brings to the science, technology, engineering and mathematics workforce.  It also focuses on encouraging mentorship and networking opportunities for those interested in pursuing and excelling in STEM careers.
                        <br /><br />                                               
                        “The idea of the conference is to bring the brightest women who have achieved enormous success together with young minds interested in STEM,” said Col. Steven M. Gorski, AFTAC commander.  “We invite the best speakers from various industries – academia, defense, corporate, and commercial – to share best practices in promoting STEM, resources available to both employers and potential candidates, and most important to inspire the leaders of tomorrow.”
                        <br /><br />                                               
                        During her presentation, Wilson touched on many of those concepts Gorski listed, with a heavy emphasis on the importance of adding proverbial tools to your tool box.
                        <br /><br />                                               
                        “We all must find what we’re passionate about,” Wilson explained, “and once you find your passion, whatever you’re doing really doesn’t feel like work.  Continue to develop your skills, surround yourself with smart, enthusiastic people, and seek out opportunities to find better ways to do business.  Keep adding those tools to your tool box, and one day you’ll put them to good use.  You may not realize it at the time, but ultimately you’ll be glad you did.”
                        <br /><br />                                               
                        Other keynote speakers included Gen. (ret.) Janet Wolfenbarger, first Air Force female 4-star general; Lt. Gen. Stayce Harris, first Air Force African American female 3-star general; and Lt. Gen. Veralinn “Dash” Jamieson, Deputy Chief of Staff for Intelligence, Surveillance and Reconnaissance, Headquarters U.S. Air Force.
                        <br /><br />                                               
                        Harris, the current Inspector General of the Air Force, discussed the need for senior leaders to “develop our STEM successors” and gave tips on how to recruit the next generation of STEM professionals.
                        <br /><br />                                               
                        “Discipline, teamwork and leadership are absolutely critical characteristics for those just entering today’s workforce,” she said.  “As leaders, we must pay attention and embrace opportunities that present themselves to us, teach the up-and-comers the need to persevere, and ensure we as senior decision makers widen our aperture to ensure we’re fully developing future STEM candidates.  Our nation needs sharp, smart scientists, and events like this give those in the local community the chance to be exposed to great minds and great mentors.”
                        <br /><br />                                               
                        Attendees also had the opportunity to meet Mae Krier, one of the original “Rosie the Riveters,” who conducted a break-out session to discuss her experiences constructing B-17s and B-29s during World War II.
                        <br /><br />                                               
                        “It was so very nice to be asked to be a part of this wonderful event,” Krier said.  “When someone asks me to give advice on how to make a difference in the world, I always say, ‘You’ve been given a brain, now you’ve got to use it!’ That’s how we made it through the Great Depression. The things you value most in your life are the things you have to work hard for.  We were poor back then, with not much opportunities, but we were happy, and we shared what we had.  I think that’s an important lesson.”
                        <br /><br />                                               
                        Wolfenbarger praised Krier and other women in the service whose footsteps the general has followed.
                        <br /><br />                                               
                        “We owe a huge debt of gratitude to women like Mae and those who have served our nation, going all the way back to America’s Revolutionary War,” she said.  “Some have called me a pioneer of sorts, and it’s humbling, but I never really wanted to be known as the ‘first woman’ at something; I wanted to be recognized for the mission I was accomplishing the best way I knew how.  I’ve seen great change and progress over the span of my military career, and I’m proud of the gender diversity our service has seen throughout the course of my 35+ years as an Air Force Airman.  But we’re not done yet!”
                        <br /><br />                                               
                        For the first time, AFTAC invited students from various Brevard County schools to showcase their winning Science Fair projects, all which received words of praise from WiSE attendee Matt Susin, Brevard School Board District 4 member.
                        <br /><br />                                               
                        AFTAC’s WiSE program coordinator Maj. Mandi Fuller, was proud of the work her team accomplished to make the event a continued success, and was touched that the program is achieving its goal.
                        <br /><br />                                               
                        “On day two of the conference, I had a young girl, probably about 12 years old or so, approach me to say thanks for putting on the conference.  She said she’s always had a passion for flying, and now she is doubly inspired to become a pilot.  I thanked her right back, winked, and told her she better be looking at becoming an Air Force pilot!”
                        <br /><br />                                               
                        The program has grown from 14 speakers and panelists in 2014 to 25 in 2018.  For more information about this year’s event, including speaker biographies, break out session topics, photos of past presenters, and the symposium agenda, visit www.wiseusaf.com
                        </p>

                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">SecAF briefed on AFTAC role in nuclear explosions - 2/15/2018</h2>
                </div>
                        
                <div class="clear"></div>

                <article id="ntksecAf" class="n2KPara noDisplay">

                    <input id="btnsecAFShowSS" class="myBut autoMarginLeftRight" type="button" value=" Show Slide Show " />

                    <section id='secAfSlides' class="noDisplay" style="margin-top:-1em;">
                        <div class="floatLeft width60 leftMargin1em">
                            <div class="width95 autoMarginLeftRight leftMargin1em topMargin4em block">
                                <img id="secAFPic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:20em;" src="_Photos/News2Know/secAf1.jpg" />
                                <p id="secAFMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Col. Steven M. Gorski (right), commander of the Air Force Technical Applications Center, Patrick AFB, Fla., briefs Secretary of the Air Force Heather Wilson on AFTAC’s role in nuclear event detection.  Wilson visited the treaty monitoring center Feb. 8, 2018 to gain perspective into the Air Force’s largest sensor network and organization responsible for the U.S. Atomic Energy Detection System.  (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>

                        </div>

                        <div class="floatLeft width35 topMargin7em leftMargin1em">
                            <div class="autoMarginLeftRight width95">
                                <input id="butsecAFPrevious" class="myBut width40" type="button" value=" Previous " />
                                <input id="butsecAFNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                            </div>

                            <div class="topMargin2em">
                                <input id="butsecAFSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                            </div>
                        </div>

                        <div class="clear"></div>

                    </section>
                    <p id="secAFArt" class="block">
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        Secretary of the Air Force Heather Wilson visited the Department of Defense’s sole nuclear treaty monitoring center Feb. 8, 2018 to get a first-hand glimpse into the role the center plays in worldwide nuclear event detection.
                        <br /><br />                                               
                        The Air Force Technical Applications Center hosted Wilson while she was in town for AFTAC’s annual Women in Science and Engineering (WiSE) Symposium.  AFTAC commander, Col. Steven M. Gorski, briefed Wilson on current operations and ongoing analysis of recent nuclear events in the Korean peninsula.  A robust question-and-answer session ensued, which provided Wilson a greater understanding of precisely how AFTAC operates the U.S. Atomic Energy Detection System and ensures signatory compliance to established global treaties.
                        <br /><br />                                               
                        After the briefing, Wilson toured the center’s operations floor, Clean Room and Innovation Lab, and met many Airmen who oversee the Air Force’s largest sensor network.
                        <br /><br />                                               
                        “I’ve been trying to get down here to see AFTAC for a long time,” Wilson said.  “It was a pleasure to spend part of my day with these exceptional Airmen.  I definitely could have spent several more hours here, especially in your Innovation Lab!”
                        <br /><br />                                               
                        This is the second time the sitting Air Force Secretary has visited the nuclear treaty monitoring center while in town for WiSE.  In 2016, former Secretary of the Air Force Deborah Lee James was the keynote speaker for the symposium and also received a timely mission briefing in the wake of a purported North Korean nuclear detonation.
                        </p>

                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Holmes, Batten pay first visit to nuclear treaty monitoring center - 1/26/2018</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkholmes" class="n2KPara noDisplay">

                    <input id="btnholmesShowSS" class="myBut autoMarginLeftRight" type="button" value=" Show Slide Show " />

                    <section id='holmesSlides' class="noDisplay" style="margin-top:-1em;">
                        <div class="floatLeft width60 leftMargin1em">
                            <div class="width95 autoMarginLeftRight leftMargin1em topMargin4em block">
                                <img id="holmesPic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:20em;" src="_Photos/News2Know/Holmes1.jpg" />
                                <p id="holmesMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Senior Airman Dylan B. Melone (right), a clean room technician with the Air Force Technical Applications Center, shows Gen. Mike Holmes, commander of Air Combat Command, a transmission electron microscope grid he uses to accomplish AFTAC's trace particle analysis mission.  Holmes visited the nuclear treaty monitoring center, Patrick AFB, Fla., Jan. 24, 2018.  (U.S. Air Force photo by Susan A. Romano)
                                </p>
                            </div>

                        </div>

                        <div class="floatLeft width35 topMargin7em leftMargin1em">
                            <div class="autoMarginLeftRight width95">
                                <input id="butholmesPrevious" class="myBut width40" type="button" value=" Previous " />
                                <input id="butholmesNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                            </div>

                            <div class="topMargin2em">
                                <input id="butholmesSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                            </div>
                        </div>

                        <div class="clear"></div>

                    </section>
                    <p id="holmesArt" class="block">
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        The commander of Air Combat Command paid his first visit to the Department of Defense’s sole nuclear treaty monitoring center recently to meet the Airmen responsible for providing forensic-level scientific data to support ACC and national decision makers.
                        <br /><br />
                        Gen. Mike Holmes, accompanied by his command chief, Chief Master Sgt. Frank Batten, flew in to Patrick AFB and spent the day learning more about the organization that falls under their command.  Col. Steven M. Gorski, commander of the Air Force Technical Applications Center, Dr. Glenn E. Sjoden, AFTAC chief scientist, and Chief Master Sgt. Michael Joseph, AFTAC’s command chief, accompanied the ACC leadership team throughout the visit to introduce them to the scientists, engineers, analysts, operators and support technicians who execute the AFTAC mission.
                        <br /><br />
                        “I was told early in my tenure as COMACC about AFTAC and how I needed to see for myself what this organization was all about,” said Holmes.  “It was everything I expected it to be, and more.” 
                        <br /><br />
                        The itinerary took the general and chief on tours of AFTAC’s clean room, its 24/7 operations center, radiochemistry lab, heritage room, help desk, maintenance warehouse, innovation lab and data center.  At each location, AFTAC Airmen briefed Holmes and Batten on how they execute the mission of nuclear event detection, technical nuclear forensics, nuclear debris collection and analysis, and countering weapons of mass destruction.
                        <br /><br />
                        Holmes was particularly interested in seeing AFTAC’s Innovation Lab, which he had heard a lot about before his arrival.
                        <br /><br />
                        “The Secretary of the Air Force (Heather Wilson) has a keen interest in innovation,” said Holmes. “I was aware of the innovative work being accomplished here at AFTAC, but I didn’t know the exact projects your innovation lab was specifically working on.  I did know they were important enough to be showcased at the AFA (Air Force Association) symposium in Orlando, and it was great to be able to see these Airmen in action and the important mission they perform.  Very impressive!”
                        <br /><br />
                        ACC’s senior enlisted leader was equally impressed with the center’s work force.
                        <br /><br />
                        “The AFTAC Airmen’s innovative spirit and mission focus impressed me,” said Batten.  “I enjoyed sharing time with Airmen who were not apprehensive to try something and fail.  Mistakes can make us better and teach lessons, and they built upon that to overcome many challenges.”
                        <br /><br />
                        He added, “I didn’t realize prior to the visit just what (these Airmen) fully did, and I left just blown away.”
                        <br /><br />
                        In 2015, AFTAC became a subordinate unit under ACC as one of the command’s premier surveillance organizations under 25th Air Force.  While AFTAC personnel have had significant interaction with their counterparts at ACC’s headquarters at Langley AFB, Va., this was the first time Holmes and Batten had the opportunity to visit the nuclear treaty monitoring center since Holmes took command of ACC in 2017.
                        <br /><br />
                        With the eyes of the world focused on the emerging nuclear threat, the general received briefings on AFTAC’s first-hand role in recent global events, including how scientific data are collected and analyzed, how the information is reported to senior leaders, and how it shapes national policy and international response – all keys to the U.S. nuclear deterrence strategy.
                        <br /><br />
                        “The world is a different place than it was 25 years ago,” Holmes said.  “Our challenges are different – the enemy operates in an asymmetrical fashion and they square off against us in unconventional, irregular ways.  That’s why it’s so important for us to operate across our multi-domain platforms within the whole government strategy, which is where AFTAC plays a significant role in what they bring to the fight.  You guys are key in that regard.”   
                        <br /><br />
                        After meeting scores of Airmen who call AFTAC home, including three of AFTAC’s overseas detachment chiefs via video teleconference, Batten wasn’t able to meet them all, so he offered a few key pieces of advice for the center’s junior enlisted force.
                        <br /><br />
                        “While timing and luck play a part in getting through life, I think it’s a pretty easy formula to set yourself up for great opportunities,” he explained.  “My three steps are simple: learn your job and do it well; take care of those Airmen entrusted to you; and you won’t always get it right, but try every day to make yourself a little better.”
                        <br /><br />
                        The command chief has upcoming travel in the near future and hopes to be able to connect with Airmen at AFTAC’s overseas detachments.
                        <br /><br />
                        “I think getting out to those locations is important, especially to thank these great Airmen for their hard work and dedication to such a vital mission.  I look forward to seeing the detachments in these areas.”
                        <br /><br />
                        The visit also included the opportunity for Holmes to recognize several outstanding performers.  Capt. Joshua Ford, Hugh Brown, Senior Airman Andrew Pouncy, Christopher Lockridge, Staff Sgt. BreAnne Groth, and Senior Airman Samuel Carmichael all received coins from Holmes for their hard work.
                        <br /><br />
                        “It was very satisfying to be acknowledged for the work our whole team has done in standing up the AFTAC mission defense team, which will be part of the larger Air Force transition from a traditional communications squadron construct to the new active cyber defense concept,” said Hugh Brown, AFTAC’s MDT threat emulation lead.  “The efforts the ACC/A6 has provided have been invaluable, and they have been pivotal in their help to get us where we need to be.  It was an honor to be recognized.”
                        <br /><br />
                        Gorski reflected on the importance of their visit.
                        <br /><br />
                        “This was an outstanding opportunity to showcase the men and women of AFTAC to COMACC and the ACC Command Chief,” said Gorski.  “While they knew our mission well, they were able to connect with our folks on a personal level – to see their passion, professionalism and deep expertise first-hand.  Gen. Holmes and Chief Batten got a ‘behind-the-scenes’ look at how we produce timely and relevant information for our senior officials as well as to the warfighter, and to personally meet the people who are the backbone of this great organization. It was a pleasure to host them.”
                        </p>

                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Airmen travel to Earth’s southernmost point for annual maintenance 1/16/2018</h2>
                </div>

                <div class="clear"></div>

               <article id="ntkantarctic" class="n2KPara noDisplay">

                    <input id="btnAntShowSS" class="myBut autoMarginLeftRight" type="button" value=" Show Slide Show " />

                    <section id='antSlides' class="noDisplay" style="margin-top:-1em;">
                        <div class="floatLeft width60 leftMargin1em">
                            <div class="width95 autoMarginLeftRight leftMargin1em topMargin4em block">
                                <img id="antPic" class="autoMarginLeftRight maroonBorder smallShadow" style="height:20em;" src="_Photos/News2Know/Antarctic1.jpg" />
                                <p id="antMess" class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                                    Airman from the Air Force Technical Applications Center, Patrick AFB, Fla., walk on a frozen lake in Antarctica after a full day of performing maintenance on the center’s seismic equipment near Bull Pass.  The photo, taken at about 10 p.m., illustrates the 24-hour daylight cycle at Earth’s southernmost point.  Pictured from left to right:  Staff. Sgt. Jeremy Hannah, Senior Airman Andrew Pouncy and Staff Sgt. Justin Sherman.  (U.S. Air Force photo by Senior Airman Richard Westra)
                                </p>
                            </div>

                        </div>

                        <div class="floatLeft width35 topMargin7em leftMargin1em">
                            <div class="autoMarginLeftRight width95">
                                <input id="butAntPrevious" class="myBut width40" type="button" value=" Previous " />
                                <input id="butAntNext" class="myBut leftMargin1em width40" type="button" value=" Next " />
                            </div>

                            <div class="topMargin2em">
                                <input id="butAntSlide" class="myBut autoMarginLeftRight" type="button" value=" Start Slide Show " />
                            </div>
                        </div>

                        <div class="clear"></div>

    <%--                        <input id="btnAntHideSS" class="myBut autoMarginLeftRight" type="button" value=" Hide Slide Show " />--%>

                    </section>
                    <p id="antarcticArt" class="block">
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        With 24 hours of daily sunlight in their favor, a team of seismic technicians traveled to the southernmost point on Earth to conduct annual maintenance of the equipment they use to monitor global nuclear treaties.
                        <br /><br />
                        Six members of the Air Force Technical Applications Center made the trek from their home base at Patrick AFB, Fla., to Antarctica to troubleshoot and replace seismometers that contribute to the International Monitoring System.
                        <br /><br />
                        The team also conducted full inventories at the sites and replaced generator starter batteries used to power the stations.  The seismic equipment is used to detect activity caused by naturally-occurring events such as earthquakes, volcanic eruptions or lightning strikes, as well as man-made events such as mining activity or nuclear explosions.
                        <br /><br />
                        Staff Sgt. Jeremy Hannah, a geophysical maintenance supervisor, served as the team lead during the five weeks the team was deployed.  He and his fellow seismic maintainers flew from the United States to New Zealand, then on to McMurdo Station in Antarctica, a 14+hour trek from one hemisphere to another, including flights aboard an Air Force C-17 and a Bell 212 helicopter.
                        <br /><br />
                        McMurdo Station is the logistics and research hub of the U.S. Antarctic Program and is managed by the National Science Foundation.  As part of its global nuclear treaty monitoring mission, AFTAC analyzes seismic data collected from the station and provides it to the U.S. National Data Center.  
                        <br /><br />
                        The Antarctica site, located 1,200 miles north of the South Pole in the McMurdo Dry Valleys near Lake Vanda, supports the International Monitoring System as part of the Comprehensive Test Ban Treaty Organization, and is one of thousands of sensors within AFTAC’s global network, the largest in the U.S. Air Force.
                        <br /><br />
                        A typical duty day for the team consisted of an early rise, breakfast, field work, lunch, preventive maintenance requirements, dinner, then a few hours of enjoying the beauty of the landscape.  When the team is at the station, they sleep in hardened facilities; in the field, they’re in sleeping bags on the floor of the hybrid power station at Bull Pass or Mt. Newall.
                        <br /><br />
                        Staying properly nourished in sub-zero temperatures is critical to team safety and wellness.  When they’re at McMurdo, they enjoy their meals at the station’s cafeteria.  When they’re in the field, however, they cook their meals using a camping stove and crockpot.  And while most would think the frigid temperatures and austere conditions are the most challenging aspect of their mission, one team member said his biggest hurdle was sunlight.
                        <br /><br />
                        “Personally for me, having no real track or sense of time was difficult to get used to,” Senior Airman Richard Westra, a geophysical maintenance supervisor.  “Twenty-four hours of sunlight was a blessing because we could accomplish so much work without worrying about darkness, but it was also somewhat disconcerting not knowing if it was 10 a.m. or 10 p.m.!”
                        <br /><br />
                        He added, “After a full day of work though, it’s great to be able to take a hike or walk around to see a place very few people in the world get to experience,” Westra said.  “Every morning I’d get up and just look outside for several minutes, taking it all in. It’s absolutely breathtaking and the views blow your mind each day.”
                        <br /><br />
                        Of the six Airmen who made the journey, four had never visited the site before.  Travel to AFTAC’s site, located 1,200 miles north of the South Pole, requires airlift via helicopter, which was one team member’s favorite part of the journey.
                        <br /><br />
                        “It was so cool to fly over a partially-frozen sea, see penguins and orcas and witness the scenery below in a helicopter no less,” said Senior Airman Andrew Pouncy, one of the first-time visitors.  “It was an opportunity of a lifetime, and I hope I’ll be able to make the trip again.”
                        <br /><br />
                        In addition to providing seismic information to senior U.S. decision makers, the data from these sensors also help scientific and academic communities-at-large.
                        <br /><br />
                        “We closely coordinate with the NSF and the U.S. Antarctic Program not only when we are deployed to the southern hemisphere, but also when we are back home in Florida,” said Hannah.  “This trip, we also worked with the Berg Field Center, the place that outfits both ground and helo teams that work near and around McMurdo.  They are an invaluable resource for us.”
                        <br /><br />
                        The team also serviced AFTAC’s solar generators and wind turbines, better known as hybrid power stations.
                        <br /><br />
                        “Maintaining our seismic equipment at Vanda is critical to our treaty monitoring mission,” said Hannah.  “Because of the weather and rugged terrain, we have a small window of opportunity to perform the necessary troubleshooting to ensure the data is transmitted to the NDC in support of the International Monitoring System as part of the Comprehensive Test Ban Treaty Organization.  I’m really proud of the team and what they were able to accomplish on this trip.” 
                        <br /><br />
                        The Airmen are now authorized to wear the Antarctica Service Medal on their uniform.
                        </p>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">AFTAC civilian, Army Reservist selected for promotion to brigadier general 12/5/2017</h2>
                </div>

                <div class="clear"></div>

               <article id="ntkgeneral" class="n2KPara noDisplay">
                    <p id="generalArt" class="block">
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        <img class="width20 rightMarginHalfem floatLeft maroonBorder" src="_Photos/News2Know/general.jpg" />
                        Brig. Gen. Donald B. Absher, a civilian physical scientist for AFTAC’s Materials Technology Directorate, was selected for promotion in the Army Reserve, where he has served for almost 30 years.  Absher graduated from Officer Candidate School in 1988 after earning a bachelor’s degree in cell biology from California State University, and over the course of his three decades in uniform, he divided his time between active duty, the Army National Guard and the U.S. Army Reserve. 
                        <br /><br />
                        As a civilian physical scientist for the Department of Defense’s sole nuclear treaty monitoring center, Absher is responsible for leading an interdisciplinary scientific technical team that coordinates the materials collection, analysis and data reporting functions supporting the National Technical Nuclear Forensics program.
                        <br /><br />
                        The newly-minted general officer has held a number of prestigious titles throughout his military career, including operations officer for the Defense Intelligence Agency’s Chemical and Biological Intelligence Support Team, U.S. Transportation Command’s chief of deployment and distribution operations center, and most recently as deputy commander of the 143rd Expeditionary Sustainment Command – the largest sustainment command in the U.S. Army.
                        <br /><br />
                        A Bronze Star recipient, Absher has deployed numerous times to Iraq, Kuwait and Saudi Arabia.  During Operation Desert Shield/Desert Storm, he served as a platoon leader during for the 24th Infantry Division.  From 2007 to 2008, he deployed to Camp Arifjan, Kuwait as the 595th Transportation Brigade’s chief resource management officer.  And in 2011, he was the commander of the 1182nd Deployment and Distribution Battalion in Southwest Asia. 
                        <br /><br />
                        With the promotion comes a change of title and increased responsibility.  The 1-star is now the vice commander of the Joint Enabling Capabilities Command under U.S. Transportation Command located in Norfolk, Va.  JECC is responsible for providing decisive joint communications, planning and public affairs support to joint forces to meet the emerging requirements of Combatant Commands and Joint Task Force-capable headquarters.
                        <br /><br />
                        The Santa Rosa, Calif., native joined AFTAC in 1994 and has deftly balanced his busy civilian occupation with his demanding military career.
                        <br /><br />
                        “With family being my first priority, I believe it’s a unique and continuous challenge for many Reserve personnel to appropriately balance civilian career responsibilities with their military obligations,” Absher said.  “I’ve been extremely fortunate to have very supportive management here at AFTAC, and that has significantly lowered the associated stresses on my family and myself throughout multiple overseas deployments and extended exercises.”
                        <br /><br />
                        While he’s humbled at the amount of faith his Army leadership has placed in him as evidenced by his promotion selection, his pride comes tumbling to the forefront when he talks about the military success of his children.
                        <br /><br />
                        “My son is an Air Force F-16 pilot, and my daughter is married to a Navy nuclear reactor operator,” said Absher.  “Taylor is a first lieutenant in Japan and has already participated in several Pacific Air Force-led exercises, including Red Flag in Alaska this past summer.  Elizabeth lives in San Diego, and her husband is assigned to the USS Pasadena, a nuclear submarine.  She juggles her full time ‘mom’ responsibilities with two young children while she serves as the Family Readiness Coordinator for the USS Pasadena families.  Understandably, these responsibilities are both compounded when her husband is out to sea.”
                        <br /><br />
                        Lt. Col. Ty Miller, chief of AFTAC’s Verification Science Division, is Absher’s civilian supervisor and had nothing but praise for his leadership capabilities.
                        <br /><br />
                        “It comes as no surprise to me that Don was selected to serve in the general officer ranks,” said Miller. “He is a supremely gifted leader and an extremely dedicated employee.  His leadership skills come shining through with every project he works on, and I oftentimes look to him for mentorship on situations that arise in our division.”
                        <br /><br />
                        Miller joked, “I don’t know many Air Force lieutenant colonels who have the privilege of having an Army brigadier general in their unit, so I’m going to milk that as much as I can!”
                        </p>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">AFTAC civilian returns to duty after Hurricane Maria relief efforts 11/30/2017</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkmaria" class="n2KPara noDisplay">
                    <div class="clear"></div>

                    <div class="floatLeft width30 leftMargin1em topMargin4em">
                        <img class="width80 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/Maria1.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Claudette Wells, an acquisition program manager for the Air Force Technical Applications Center, Patrick AFB, Fla., stands near the dock at Frederiksted, St. Croix as she prepares to head out to work as a Federal Emergency Management Agency disaster relief volunteer.  Wells was part of FEMA's Surge Capacity Force that helped those affected by Hurricane Maria, a Category 5 storm that barreled through the Caribbean in September 2017.  (Courtesy photo)
                        </p>
                    </div>

                    <div class="floatLeft width30 leftMargin1em topMargin4em">
                        <img class="width100 autoMarginLeftRight topMargin1em maroonBorder smallShadow" src="_Photos/News2Know/Maria2.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Fallen power lines and uprooted trees litter the streets of St. Croix where Claudette Wells, an acquisition program manager for the Air Force Technical Applications Center, Patrick AFB, Fla., volunteered to serve as a disaster relief worker for the Federal Emergency Management Agency after Hurricane Maria impacted the island.  "The damage was unimaginable," said Wells.  (U.S. Air Force photo by M. Claudette Wells)
                        </p>
                    </div>

                    <div class="floatLeft width30 leftMargin1em topMargin4em">
                        <img class="width100 autoMarginLeftRight topMargin1em maroonBorder smallShadow" src="_Photos/News2Know/Maria3.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            The sun slowly rises over the Lesser Antilles as Carnival Cruise Lines' ship, Fascination, can be seen moored at Frederiksted, St. Croix.  The docked ship was used to feed and house Federal Emergency Management Agency personnel who volunteered to help with disaster relief efforts after Hurricane Maria impacted the region in October 2017.  (U.S. Air Force photo by M. Claudette Wells)
                        </p>
                    </div>

                    <div class="clear"></div>

                    <p id="mariaArt" class="block">
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        “They have no power, no running water, limited transportation, little food, and the damage is unimaginable.”
                        <br /><br />
                        Those are the words of Claudette Wells, an acquisition program manager for the Air Force Technical Applications Center here, speaking about the citizens of St. Croix, a U.S. territory.  Wells recently returned from the island nation after volunteering to help with Hurricane Maria disaster relief efforts and spent six weeks on the Federal Emergency Management Agency’s Surge Capacity Force.
                        <br /><br />
                        Shortly after the Category 5 storm barreled through the Caribbean, Greater and Lesser Antilles, the Department of Homeland Security sent a message to all civilian federal employees seeking volunteers to help those affected by Hurricanes Harvey, Irma and Maria.  Wells jumped at the chance to assist in any way she could.
                        <br /><br />
                        “I was lucky enough to have an employer who was willing to let me go for 45 days, a desire to help those in need, and a wife who knows what I find rewarding,” said Wells.  “After seeing the devastation in Houston after Hurricane Harvey, I knew I had to do something to contribute to the relief efforts that hit so close to home here in Florida.”
                        <br /><br />
                        Once Wells got the go-ahead from her local chain of command, she flew to Anniston, Ala., where she received what’s called “just-in-time” emergency response training – a condensed course that provided basic information on how to handle the needs of those affected by the catastrophe. She was also issued a laptop and cell phone she would need for the duration of her temporary duty.
                        <br /><br />
                        From Anniston, Wells flew to St. Croix and landed at Henry E. Rohlsen Airport in Frederiksted on the western tip of the island, where she was met by other FEMA disaster relief personnel.  Once on the ground, she was initially tasked with conducting Disability Integration operations – work that involved following up on referrals for citizens with functional disabilities or unmet needs.
                        <br /><br />
                        “I worked with folks who had vision, hearing, mobility or cognitive disabilities,” she said.  “We helped connect them with local agencies that provide a specialized service to those with a particular disability, and we helped identify and distribute the durable medical equipment they needed like canes, walker and wheelchairs.”
                        <br /><br />
                        After several days of work on the DI team, Wells was transferred to the Individual Assistance group.  There, she worked with a small cadre of surge personnel and made more than 1,000 calls to victims who had already filed paperwork with FEMA and needed additional medical assistance.  “We usually had to make multiple calls to the same number because of the poor cellular network, and some we just were never able to reach,” she lamented.
                        <br /><br />
                        Wells also spent time with the Disaster Support Assistance team, which was responsible for canvassing certain geographical areas to make contact with those most impacted by the storm.
                        <br /><br />
                        “We’d go door-to-door – always in the buddy system – to determine if residents had registered for assistance or not,” she explained.  “If they hadn’t, we’d offer to register them right there on the spot.  That is, if we had connectivity.  If cell service was down, we’d fill out a form and upload it to FEMA’s database when we returned to the ship.”
                        <br /><br />
                        The ship to which Wells referred was an aging Carnival Cruise Liner, the Fascination.   Carnival docked the 2,056 passenger ship in St. Croix after receiving a partnership request from FEMA, and the vessel’s certified crew members provided housing and meals to relief workers.
                        <br /><br />
                        “It was a bit surreal to spend my days under extremely austere conditions, witnessing the abject conditions the people of St. Croix had to endure, then turn around and return to a luxury cruise liner with great food, air conditioning, running water and electricity.  It was very humbling and made me realize just how fortunate I am,” Wells stated.
                        <br /><br />
                        Wells, a retired U.S. Navy officer who has been with AFTAC since 2003, rates this event as one she will never forget.
                        <br /><br />
                        “What struck me the most about this entire experience was the patience of the disaster survivors,” she said.  “When I arrived at St. Croix, they had already been without power for more than three weeks.  Things like clean drinking water and fuel were scarce, but they weren’t out there looting or complaining or rioting.  They seemed genuinely grateful for the presence of FEMA and its volunteers, and just about everyone I came in contact with thanked us for being there.”
                        <br /><br />
                        She added, “I was just a small cog helping a very large machine help people in need.  And if my wife Helen hadn’t been willing to make the sacrifice to maintain our household by herself, I’m not sure I would have been able to make the trip.  She was totally supportive from the start, and I’m glad I was able to be a part of the effort.”
                        <br /><br />
                        According to the National Hurricane Center, Maria was the 10th most intense Atlantic hurricane on record and caused catastrophic damage to the islands of Dominica, Guadeloupe, Puerto Rico and the U.S. Virgin Islands, and recovery efforts are still ongoing.
                        </p>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">AFTAC names lab after ‘giant’ of nuclear forensics 11/24/2017</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkharkins" class="n2KPara noDisplay">
                    <div class="clear"></div>

                    <div class="floatLeft width30 leftMargin1em topMargin4em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/Harkins1.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Col. Steven M. Gorski (right), commander of the Air Force Technical Applications Center, and Chief Master Sgt. Michael Joseph, AFTAC’s command chief, pose next to the plaque that officially dedicates the center’s research laboratory after former AFTAC senior scientist, Michael Harkins, at a ceremony at Cheyenne Mountain Air Force Station, Colo.  Harkins’ official portrait is on the right.  (U.S. Air Force photo by Susan A. Romano)
                        </p>
                    </div>

                    <div class="floatLeft width30 leftMargin1em topMargin4em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/Harkins2.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Mr. Jeff Moore, director of the Harkins Laboratory Complex at Cheyenne Mountain Air Force Station, Colo., reads remarks from Michael Harkins after the research lab was named after Harkins Oct. 24, 2017.  (U.S. Air Force photo by Susan A. Romano)
                        </p>
                    </div>

                    <div class="floatLeft width30 leftMargin1em topMargin4em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/Harkins3.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Members of the Harkins Laboratory Complex at Cheyenne Mountain Air Force Station, Colo., listen to remarks from Col. Steven M. Gorski, commander of the Air Force Technical Applications Center, during the dedication ceremony that named the lab after Michael Harkins, a former AFTAC senior scientist.  Harkins’ official portrait is seen in the center of photo.  (U.S. Air Force photo by Susan A. Romano)
                        </p>
                    </div>

                    <div class="clear"></div>

                    <div class="width50 autoMarginLeftRight">
                        <input id="butHark1" class="myBut" type="button" value=" See Reply from Michael Harkins " />
                    </div>

                    <p id="harkArt" class="block">
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        The Air Force Technical Applications Center dedicated its research laboratory in Colorado after a pioneer of gas analysis techniques at a ceremony held Oct. 24, 2017.
                        <br /><br />
                        Formerly known as Operating Location GT, the Harkins Laboratory Complex was officially named after Michael Harkins, a nuclear engineer who served as the senior scientist of AFTAC’s Technical Operations Division, Gas Analysis Laboratory, from April 1975 to July 1999.
                        <br /><br />
                        Harkins pioneered lab methods and technologies that were critical to AFTAC’s global nuclear treaty monitoring mission.  Over the course of his distinguished career, he developed ground-breaking approaches to gas analysis and oversaw the design of advanced lab equipment that exponentially increased the lab’s analysis capabilities.
                        <br /><br />
                        “Mr. Harkins was a giant in the field of nuclear forensics,” said Jeff Moore, director of the Harkins Lab Complex.  “I first met him when I was assigned to AFTAC’s gas analysis laboratory in 1989.  Mike was the sole civilian in the lab, and over the course of the next six years he taught me so much about gas analysis and AFTAC’s reactor products program.  The knowledge he shared with me and the guidance he provided became the foundation for my future, and has had a continued influence to this day.”
                        <br /><br />
                        The complex operates two research lab facilities to conduct research and development in ultra-low background radiological analysis methods.  The nuclear measurements facility is located deep underground in the famed Cheyenne Mountain AFS complex, also home to NORAD and U.S. Northern Command’s hardened alternate command center.
                        <br /><br />
                        AFTAC scientists capitalize on the 2,000 feet of mountainous granite that provides natural shielding from cosmic radiation, which enables lab personnel to house and operate unique lab equipment and perform low-level radiation detection research that cannot be duplicated at any other lab in the world.
                        <br /><br />
                        Col. Steven M. Gorski, AFTAC commander, and Chief Master Sgt. Michael Joseph, AFTAC command chief, officiated the ceremony at Cheyenne Mountain.  Harkins was unable to attend the dedication, but sent a statement to Moore to share with those in attendance.
                        <br /><br />
                        “Words hardly seem adequate to express my deep gratitude for this honor,” his letter read.  “All I can do is sincerely thank all the people who made this recognition of my service possible. I am very appreciative for this honor, and by association I hope so many others realize they can share in this with me as I have never lacked for support.”
                        <br /><br />
                        After receiving Air Force approval to name the facility after Harkins, Gorski and his leadership team got the ball rolling to turn the concept into reality.
                        <br /><br />
                        “Mike Harkins had an incredible impact on how AFTAC conducts business to this day,” said Gorski.  “Countries across the globe attempt to avoid or circumvent established international treaties and it’s our job to capitalize on the critical capability of nuclear debris analysis.  The Airmen at the Harkins lab do just that, and much of that capability is due to the foundation established by Mike Harkins.  It’s a testament to him that is well deserved.”
                        <br /><br />
                        Moore added, “Mike’s legacy to nuclear science continues today.  I was honored to work for him, and I can’t think of anyone more deserving of this prestigious recognition.”
                        </p>

                    <div id="harkResponse" class="noDisplay">
                        <p class="pTitle centerText">
                            Renaming Ceremony<br />
                            Acceptance Remarks<br />
                            For Michael Harkins In Absentia<br />
                            Oct 24, 2017<br />
                        </p>

                        <p>
                            Words hardly seem adequate to express my deep gratitude for this honor. All I can do is sincerely thank Colonel Gorski, his staff, and all of the people who made this recognition of my service possible including the much appreciated efforts of Jeff Moore. Given my unavoidable absence I asked for this opportunity to acknowledge those to whom I owe so much. I suppose I should start with the U. S. Air Force as it was their policies that allowed me to acquire the two degrees which, when combined with my initial degree, gave me the tools to accomplish the milestones for which I am being honored. Of course, my contributions would not have been possible without the mentoring I received from such pioneers as Dr. Tony Turkevich, Bob and Helen Bench, Wes Nicholson, and especially Carl Schubauer who was always so generous with his assistance. As both a fellow scientist and a valued friend Carl was always there for me as I nurtured our West Coast facility to technical maturity. I would also like to acknowledge the many bosses I have had (much too many to name) who for the most part kept me free of administrative concerns so that I could apply my full attention to the science; and then trusted my judgement when I pressed for changes in laboratory procedures or equipment design. While they gave me the freedom to do what I thought was necessary none of our advancements would have happened without a great crew of lab personnel. And for that I must give tribute to the personnel system that provided me with some outstanding young troops and talented cross-trainees whose tireless hours produced the highest quality data which in time became the hallmark of our facility. Some came and went in short measure while others like my dearly departed colleague Steve Ellingson had AFTAC in their blood to the very end. Even after my Air Force retirement in 1999 I had the greatest challenge of all when the TBE lab was established from scratch thanks to the dedicated work of a few handpicked lab techs under the leadership of my old lab leadership team of Mike Howard and Brian Kelly. I think that covers just about everyone and yet there were so many more on the fringes who were invaluable to my efforts. In closing let me state once again how very appreciative I am for this honor, and by association I hope so many others realize they can share in this with me as I have never lacked for support. Thank you so much.
                        </p>
                    </div>

                    <div class="width50 autoMarginLeftRight">
                        <input id="butHark2" class="myBut" type="button" value=" See Reply from Michael Harkins " />
                    </div>

                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Ions and betas and treaties, oh my! 11/8/2017</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkions" class="n2KPara noDisplay">
                    <div class="clear"></div>

                    <div class="floatLeft width30 leftMargin1em topMargin4em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/ions1.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Claudia Granger, a mass spectrometry operator at the Ciambrone Radiochemistry Lab at Patrick AFB, Fla., loads a filament wheel into a thermal ionization spectrometer, which is used to analyze trace amounts of uranium or plutonium extracted from environmental samples.  Granger is one of 60 CRL scientists headquartered at the Air Force Technical Applications Center who executes the Nuclear Debris Collection and Analysis program.  (U.S. Air Force photo by Susan A. Romano)
                        </p>
                    </div>

                    <div class="floatLeft width30 leftMargin1em topMargin4em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/ions2.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Melissa Dawkins (right), a chemist at the Ciambrone Radiochemistry Laboratory, Patrick AFB, Fla., explains to newly-assigned chemists 2nd Lts. Kaleb Mitchell (left) and Jessica Lewer (center) how samples that undergo radiochemical separations are inspected.  Scientists from CRL, which is headquartered at the Air Force Technical Applications Center, use analytical chemistry methods to determine if trace levels of radioactive debris are present in environmental samples as part of AFTAC’s nuclear treaty monitoring mission.  (U.S. Air Force photo by Susan A. Romano)
                        </p>
                    </div>

                    <div class="floatLeft width30 leftMargin1em topMargin4em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/ions3.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Airman 1st Class  Mitchell Kirkpatrick, a measurements technician at the Ciambrone Radiochemistry Laboratory, Patrick AFB, Fla., carefully places a sample onto a gamma ray detector to check for radioactive debris from an environmental sample.  The detector is made up of a 4-inch thick outer shell with a copper lining, which shields the sample and limits natural radioactivity and x-rays emitted from outside sources to prevent interference with low-level analysis.  (U.S. Air Force photo by Susan A. Romano)
                        </p>
                    </div>

                    <div class="clear"></div>

                    <p>
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        In a world filled with uncertainty and growing concerns about the global proliferation of nuclear weaponry, there is one organization in the Department of Defense dedicated to identifying debris from possible atomic explosions and analyzing the findings for national decision makers.
                        <br /><br />
                        The Ciambrone Radiochemistry Laboratory, which opened its doors at Patrick Air Force Base in March 2014, is the sole DoD laboratory dedicated to the analysis of radioactive debris.  The 38,000 square foot facility is manned by scientists of varying backgrounds – chemists, physicists, nuclear engineers, radiation safety – and their primary focus is simple:  determine if effluents from a potential nuclear explosion are present in environmental samples collected globally by AFTAC personnel. 
                        <br /><br />
                        Simple, yes, but not always easy.  It takes a team of highly skilled, technically adept experts to operate high purity germanium, x-ray and gamma-ray detectors, alpha and beta radiation monitoring systems, mass spectrometers and precision analytical chemistry equipment.
                        <br /><br />
                        Lt. Col. James J. Thomas, director of lab operations for the Air Force Technical Applications Center and trained physicist himself, leads nearly 60 CRL personnel who support the nation’s critical nuclear treaty monitoring mission.  
                        <br /><br />
                        “Our senior leaders rely on our network of labs to assess compliance with nuclear weapons testing in support of the U.S. Atomic Energy Detections System, as well as AFTAC’s Nuclear Debris Collection and Analysis Program,” said Thomas.  “Our lab professionals identify radiological or nuclear debris collected from air or ground samples to ensure signatories are complying with established treaties like the Limited Test Ban Treaty.”
                        <br /><br />
                        The lab was named after Col. Thomas Ciambrone, a career Air Force officer who spent 20 of his 30 active duty years with the nuclear treaty monitoring center. The lab became operational in March 2014 when AFTAC moved into its new $158 million facility.  Establishing the Ciambrone Lab at Patrick AFB filled a void created when the center’s central laboratory at McClellan AFB, Calif., closed after the 1995 Base Realignment and Closure actions.
                        <br /><br />
                        “From 1995 until 2014, AFTAC had to rely solely on another contracted lab to conduct the NDC&A mission,” said Thomas.  “Most, if not all, military leaders don’t relish the idea of a single point of failure.  In 2011, one of our contracted labs had to evacuate due to a major natural disaster, and that lab’s operations had to be temporarily suspended.  Time becomes an issue, especially when we’re dealing with radioactive decay and the importance of preserving perishable evidence. That’s why it was so important for us to have this redundancy.”
                        <br /><br />
                        The lab has stringent rules, regulations and safety precautions it must take to ensure its environment is free of impurities. It’s vital to their mission.
                        <br /><br />
                        “Much like a court trial, nations require definitive evidence before accusing another nation of violating a provision of a treaty,” said Thomas. “In some circumstances, the only unambiguous evidence of a treaty violation may be trace amounts of radioactive debris.  In these cases, laboratory analysis is required to confirm the presence of nuclear materials from an explosion and distinguish them from naturally-occurring radioactive materials, or releases from peaceful uses of nuclear materials such as medical facilities or nuclear power plants.”
                        <br /><br />
                        He added, “Because of this critical need and role, our laboratory must be ready at any given time.  It is extremely important that samples are rigorously processed and protected from contamination with the environment after being collected. CRL’s environment needs to be free of impurities and pollutants such as dust, particles and vapors that may contain natural radioactivity.  Lab personnel take several steps and precautions to ensure the laboratory maintains its pristine atmosphere.”
                        <br /><br />
                        Thomas, a 2001 Air Force Officer Training School graduate, credits his success and the success of the lab directly to the men and women he works with each and every day.
                        <br /><br />
                        “I brag on my folks as often as I can because they’re that good,” Thomas said.  “We affectionately call each other The Lab Rats, and we’re very proud of the brand we’ve created for ourselves.  Morale in our work center is extremely high and everyone goes the extra mile for one another – not just on the job, but also off duty.  People look out for each other, and a leader can’t ask for much more than that.  It’s like the old saying, ‘Take care of the people, and the people will take care of the mission.’  It certainly is the case here at Ciambrone.”
                        <br /><br />
                        When asked what his leadership philosophy is, Thomas took no time answering. “It’s so important to lead from the front – always.  I will do anything that I ask the men and women of the lab to do.  I’ve learned that if you are too big for the small jobs, then you’re probably too small for the big jobs.”
                        <br /><br />
                        While the Ciambrone Lab is not a squadron, per se, its structure mirrors that of a typical squadron found throughout the Air Force.  Gen. David L. Goldfein, Air Force Chief of Staff, referred to squadrons as the “beating heart of the Air Force” and the “engines of innovation and esprit de corps” where standards are set, excellence is fostered and healthy work environments are cultivated.
                        <br /><br />
                        “We have five branches within the lab that are very similar to flights found in a squadron,” explained Thomas.  “Our radiochemistry branch and mass spectrometry branches isolate specific elements brought to the lab.  This allows them to remove the relatively large amount of radioactivity from the samples and identify the tiniest amount of nuclear debris. The measurements branch uses high purity germanium detectors and other alpha/beta detectors to capture the radioactivity levels in each sample.  Our operations branch analyzes the data and produces a report to NDC&A customers to provide germane information to senior leaders and our higher headquarters.  And the support branch makes up the ‘unsung heroes’ of the lab – the folks who keep operations flowing smoothly from personnel issues to computer networks.”
                        <br /><br />
                        A squadron is also considered to be the USAF’s most basic unit that’s responsible for vital, day-to-day operations.  The Ciambrone Radiochemistry Lab certainly meets those criteria.  And CRL’s contributions to AFTAC’s nuclear treaty monitoring mission continue to impress the center’s commander.
                        <br /><br />
                        “The technical analysis performed by the men and women of the Ciambrone lab provides the evidence used and scrutinized at the highest levels of government, often with great urgency,” said Col. Steven M. Gorski, AFTAC commander.  “I am continually impressed with the level of expertise and degree of proficiency these scientists and technicians display on a daily basis.  We recruit the best of the best in the field of radiochemistry, and that shows in the superior work they perform for our national decision makers.”
                        </p>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">AFTAC Airman honored with Valor Award for life-saving actions 9/27/2017</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkValor" class="n2KPara noDisplay">

                    <div class="floatLeft width45 leftMargin2em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/Valor1.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Official photo of U.S. Air Force Senior Airman Jennifer Engblom, a nuclear debris collection and analysis ground systems technician with the Air Force Technical Applications Center, Patrick AFB, Fla.  (U.S. Air Force photo by Phil Sunkel)
                        </p>
                    </div>

                    <div class="floatLeft width45 leftMargin2em topMargin4em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/valor2.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            The Melbourne Regional Chamber of East Central Florida’s Medal of Valor.  The award was presented to Senior Airman Jennifer Engblom, a nuclear debris collection and analysis ground systems technician with the Air Force Technical Applications Center, Patrick AFB, Fla.   (U.S. Air Force photo by Susan A. Romano)
                        </p>
                    </div>

                    <div class="clear"></div>

                    <p>
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        An act of courage and bravery led to an Airman from the Air Force Technical Applications Center here earning the 2017 Valor Award and Life Saving Medal from the Melbourne Regional Chamber of East Central Florida.
                        <br /><br />
                        Senior Airman Jennifer Engblom, a nuclear debris collection and analysis ground systems technician with AFTAC’s Technical Surveillance Squadron, received the award for her actions in November 2016 when she responded to an automobile accident that involved three vehicles and five severely injured occupants.
                        <br /><br />
                        Engblom and a co-worker were traveling on the Florida Turnpike on a Sunday evening last fall when they came upon the multi-car wreck.  Engblom saw one of the vehicles had caught fire, yet she didn’t see any first responders on scene, so she urged her co-worker to pull over so they could render assistance.
                        <br /><br />
                        Acting quickly, Engblom took charge of the scene.  She treated one occupant for shock while guiding other bystanders in emergency lifesaving procedures.  She calmed and reassured the victims and examined each injured person to ensure their immediate medical needs were being met.
                        <br /><br />
                        As one vehicle became engulfed in raging flames, Engblom realized the injured passengers as well as those rendering assistance were in grave danger of a potential explosion.  With a clear head, she directed a bystander to move her SUV between an immobile victim and the flaming car, creating a blast shield between the fiery automobile and the injured passenger on the ground.
                        <br /><br />
                        After about 30 minutes, paramedics arrived, but Engblom wasn’t done rendering aid.  She assisted the medics with placing the injured on stretchers and provided as much vital information as possible to help the EMTs with their initial response efforts.
                        <br /><br />
                        “I had the honor of representing Jennifer at the Melbourne Chamber’s award ceremony,” said Lt. Col. Edward G. Ferguson, TESS commander.  “I sat among some amazing people at this event – firemen, police officers, emergency medical technicians – people who perform life-saving measures nearly every day.  And while I was in awe of their actions, I realized Jen was the only person being recognized who was not a fully certified and trained first responder.  That spoke volumes to me.”
                        <br /><br />
                        Every year, the chamber presents three categories of valor awards to eligible Brevard County citizens:  a medal of valor, a life-saving medal, and an award of merit.  Each is presented for some form of extraordinary or unprecedented behavior or action.
                        <br /><br />
                        Ferguson said, “The evening was a memorable tribute to members of our community whose selfless acts set them apart.  I know Jen would have liked to attend, but her wedding plans needed attention.  When I spoke to her before the event, she considered her feat of heroism as ‘no big deal’ and said it was something anyone else would have done under the circumstances.  It was a great evening, and I’m incredibly proud to have Airmen like Jen in my squadron.”
                        </p>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Nuclear Treaty Monitoring unit cleans up after Hurricane Irma 9/16/2017</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkHurricane" class="n2KPara noDisplay">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-3 aRight">
                                <input id="hurrPrevious" class="smallBut topMargin5em width40" type="button" value=" Previous " />
                            </div>
                            <div class="col-md-6">
                                <div id="hurrFig1" class="hurrFigs block">
                                    <figure class="width100">
                                        <img alt="Hurricane1.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane1.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Airmen from the Air Force Technical Applications Center, Patrick AFB, Fla., pack up equipment in preparation for Hurricane Irma Sept. 7, 2017. Pictured from left to right: Airman 1st Class David Orcasitas, Airman 1st Class Justin McEwen, Airman 1st Class Alexander Lang and Tech. Sgt. Pete Olivieri. (U.S. Air Force photo by Susan A. Romano)
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig2" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane2.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane2.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Master Sgt. Christopher Gaskill, critical power systems manager, and Randy Pomeroy, facilities manager, both members of the Air Force Technical Applications Center, Patrick AFB, Fla., verify the status of the center’s high voltage distribution breakers in the wake of Hurricane Irma Sept. 13, 2017. (U.S. Air Force photo by Susan A. Romano)
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig3" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane3.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane3.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Tech. Sgt. Matthew Lamb, a member of the Air Force Technical Applications Center’s Cyber Capabilities Squadron, starts up network servers at the nuclear treaty monitoring center after Hurricane Irma impacted Patrick AFB, Fla., Sept. 10, 2017. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig4" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane4.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane4.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Col. Steven M. Gorski, commander of the Air Force Technical Applications Center, along with his command chief, Chief Master Sgt. Michael Joseph, conduct a Facebook Live session for spouses of AFTAC personnel as the center prepared to evacuate for Hurricane Irma. This was the first time AFTAC senior leaders used the social media platform to communicate real-time information to family members of the nuclear treaty monitoring center at Patrick AFB, Fla. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig5" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane5.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane5.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Prior to the arrival of Hurricane Irma, senior leadership from the Air Force Technical Applications Center, Patrick AFB, Fla., meet to discuss steps necessary to safely evacuate the nuclear treaty monitoring center while ensuring the 24/7 mission continues uninterrupted. Pictured at the table from left to right: Col. Steven M. Gorski, AFTAC commander; Chief Master Sgt. Michael Joseph, AFTAC command chief; and Lt. Col. Joseph Shupert. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig6" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane6.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane6.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Members of the Air Force Technical Applications Center at Patrick AFB, Fla., confer with base civil engineers and local contractors in the aftermath of Hurricane Irma that impacted the base Sept. 10, 2017. Pictured left to right: Master Sgt. Michael Sheetz, AFTAC’s HVAC technician; M. Scott Duffy, a contractor with DE HVAC Associates; Raymond Vigil, 45th Civil Engineer Squadron HVAC technician; and Tony Morris, AFTAC’s facility program manager. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig7" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane7.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane7.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            After Hurricane Irma hit Central Florida, Randy Pomeroy, facilities manager for the Air Force Technical Applications Center, Patrick AFB, Fla., examines the generators that provide back-up power to the nuclear treaty monitoring center. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig8" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane8.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane8.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Airman 1st Class Brian Klemfuss, a member of the Air Force Technical Applications Center, Patrick AFB, Fla., prepares boxes for early shipment in preparation for Hurricane Irma. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig9" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane9.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane9.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Airman 1st Class Christopher Boylston, a member of the Air Force Technical Applications Center, Patrick AFB, Fla., removes wires from a pole in preparation for Hurricane Irma Sept. 7, 2017. (U.S. Air Force photo by Susan A. Romano)
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig10" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane10.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane10.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            James “Griff” Griffieth and Senior Airman Jimmie Wilson II, both members of the Air Force Technical Applications Center, Patrick AFB, Fla., wrap and secure information technology equipment in preparation for Hurricane Irma Sept. 7, 2017. (U.S. Air Force photo by Susan A. Romano)
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig11" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane11.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane11.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Senior Airman Donelle Gibson, a member of the Air Force Technical Applications Center, Patrick AFB, Fla., processes packages before the nuclear treaty monitoring center evacuated for Hurricane Irma Sept. 7, 2017. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig12" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane12.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane12.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Staff Sgt. Steven Milliman, a member of the Air Force Technical Applications Center, Patrick AFB, Fla., covers valuable nuclear treaty monitoring equipment in preparation for Hurricane Irma’s arrival to Florida’s Space Coast. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig13" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane13.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane13.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Lynne Traylor, a member of the Air Force Technical Applications Center, holds the door open for Michael McCabe, an engineer with the 45th Civil Engineer Squadron, Patrick AFB, Fla. McCabe worked on the door after the center was hit by Hurricane Irma Sept. 10, 2017. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig14" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane14.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane14.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Members of the Air Force Technical Applications Center take steps to cover and protect documents in the center’s technical library in preparation for Hurricane Irma Sept. 7, 2017. Pictured from left to right: Danielle Turlington, Sabrina Miller, Tech. Sgt. Judy Mehaffy. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig15" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane15.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane15.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Downdraft tables are securely wrapped as a precautionary measure in preparation for Hurricane Irma. The Clean Room tables are used in support of the Air Force Technical Applications Center’s nuclear treaty monitoring mission at Patrick AFB, Fla. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig16" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane16.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane16.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            As a precautionary measure, James Barnett, a contractor with Eaton Electric, inspects the inner workings of an uninterruptable power supply unit in the wake of Hurricane Irma. Barnett was one of several post-storm team members who worked to ensure the Air Force Technical Applications Center at Patrick AFB, Fla., returned to 100 percent capacity. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig17" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane17.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane17.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Master Sgt. Michael Scheetz, an HVAC technician for the Air Force Technical Applications Center, Patrick AFB, Fla., examines heating and cooling panels after Hurricane Irma impacted the base Sept. 10, 2017. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="hurrFig18" class="hurrFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="Hurricane18.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/Hurricane18.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Staff Sgt. Frederick Scarber and Senior Airman Shayne Herndon, both members of the Air Force Technical Applications Center’s Cyber Capabilities Squadron at Patrick AFB, Fla., conduct tests to bring the nuclear treaty monitoring organization back to 100 percent connectivity after the center evacuated for Hurricane Irma. (U.S. Air Force photo by Susan A. Romano)                
                                        </figcaption>        
                                    </figure>
                                </div>

                            </div>
                            <div class="col-md-3 aLeft">
                                <input id="hurrNext" class="smallBut topMargin5em width50" type="button" value=" Next " />
                            </div>
                        </div>
                    </div>

                    <div class="clear"></div>

                    <p>
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        In the wake of a confirmed nuclear test in North Korea Sept. 3, members of the Air Force Technical Applications Center balanced the requirement for its 24/7 no-fail nuclear detection mission to continue with the need to evacuate as Hurricane Irma barreled up Florida’s peninsula.
                        <br /><br />
                        Four days before the massive Category 3 storm made landfall in south Florida Sept. 10, AFTAC leadership made the decision to relocate its critical operations to its alternate location. Once Airmen were in place and all systems were set up to accept the mission, the headquarters here took the necessary steps to evacuate more than 385 Airmen and nearly 2,000 family members from the area.
                        <br /><br />
                        Travel experts secured scarce airline tickets for a team of 50+ personnel to make the trip to from Orlando to Texas Sept. 6, and the relocation team had AFTAC’s monitoring system up-and-running within hours.
                        <br /><br />
                        “The most challenging part of contingency management operations is maintaining the mission with no end in sight,” said Senior Master Sgt. David Maurice, superintendent of AFTAC’s Continuity of Operations. “On most deployments, you know how long you have to perform the mission. Here, we started with uncertainty and have to keep going until they stay stop. But as challenging as it is to transfer the mission from one location to another, it’s even more taxing when we have to leave our families behind to deal with a major hurricane.”
                        <br /><br />
                        That obstacle was something AFTAC’s commander took very seriously.
                        <br /><br />
                        “My number one concern is the safety and well-being of AFTAC Airmen and their families,” said Col. Steven M. Gorski. “While our national decision-makers rely on us to provide uninterrupted access to nuclear event detection data, we also must ensure our personnel have all the resources and assistance they need to weather a major storm or evacuate the area. It’s doubly hard on those Airmen who have to relocate prior to the storm – their focus is on the mission, but their hearts are back at home. Thankfully we’ve got an incredible network of people here who consistently look out for each other and come together, even under the most austere and challenging of circumstances.”
                        <br /><br />
                        One of those Airmen is Senior Airman David Richardson, a defensive cyber operations technician who deployed to Texas, but had to leave his wife Elizabeth behind.
                        <br /><br />
                        “My wife hunkered down with my co-worker Staff Sgt. (Jonathan) North’s wife in their home, along with two other AFTAC NCOs who didn’t fall under the mandatory evacuation order,” said Richardson. “So with four adults, five dogs and a lot of prayers, everyone came together and combined their resources to include fuel, water and an assortment of canned foods to make it through the storm. Late Sunday they lost power, but luckily they had a generator to keep the refrigerators going so all the food would not spoil.”
                        <br /><br />
                        Once Irma whipped through Central Florida and the base commander granted permission for first responders to make their initial rounds across the installation, members of AFTAC’s reconstitution team reported to the $158 million facility to assess any damage and determine when additional personnel could return to get the center’s critical networks and systems running again.
                        <br /><br />
                        Tech. Sgt. Desiree Penn, AFTAC’s hurricane recovery team lead, was one of the first people to arrive at the center to report the status of the building to Gorski.
                        <br /><br />
                        “The first thing the HRT does is look for any extensive damage that may have occurred,” said Penn. “Once we do a full walk-around of the entire facility, we report any safety hazards or significant problems like downed power lines or major flooding. We also make sure the overall security of the building hasn’t been degraded. I was very relieved that most of the damage we incurred was minor since several tornadoes touched down in the area, and that we had very little water damage considering how close we are to the Atlantic Ocean.”
                        <br /><br />
                        When the majority of AFTAC personnel returned to work, they had full internet and email connectivity, cooled offices and an undamaged interior work center.
                        <br /><br />
                        “Returning to a highly-technical, fully-functional facility does not happen by accident,” said Gorski. “It happens as a result of an extremely dedicated work force that goes above and beyond what’s asked of them.”
                        <br /><br />
                        He added, “We lost a few trees, experienced some damage to our outdoor pavilion and had an HVAC system ripped from one of our warehouses, but overall I’d say the storm had a modest impact on our headquarters building. Through it all, our Airmen continued to analyze the recent North Korea nuclear text while juggling a major weather event. Their performance in the face of the toughest challenges speaks to their professionalism and dedication to the mission. They personify the definition of resilience.”
                        <br /><br />
                        Gorski took family members into high consideration as storm preparations were underway. He and his command chief, Chief Master Sgt. Michael Joseph, conducted a Facebook Live session for spouses to relay pertinent details to AFTAC families and take questions from viewers who may have had concerns about what plans they should make or actions they should take to prepare for an inbound hurricane.
                        <br /><br />
                        “From what I understand, this was the first time AFTAC has ever done something like this,” said Louise Goodwin, an AFTAC Key Spouse and wife of Lt. Col. Jeremy Goodwin. “I was so pleased when Colonel Gorski asked me to be a part of it, and I’ve received great feedback from so many spouses about how incredible the communication has been. We have some families who have never been through a hurricane before, so having access to the commander and the command chief was so valued and appreciated.”
                        <br /><br />
                        Col. Jonathan VanNoord, AFTAC’s Director of Operations and officer-in-charge of the relocation team, stressed the importance of wingmanship and how teamwork played a significant role in transferring the mission.
                        <br /><br />
                        “In the past year alone, we have twice exercised our ability to move our treaty monitoring mission from our main location to our alternate location,” he said. “Both times, we have been fully successful. That is a testament to the skills and abilities of the Airmen assigned to the center. If North Korea decided to set off another nuclear detonation in the middle of a hurricane coming toward the United States, especially one aimed at Florida, we’d be ready to detect and analyze it. That’s how good this team of experts really is. I couldn’t be more proud of the men and women of AFTAC – they truly made it look easy and seamless.”

                    </p>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Air Force team monitors North Korean nuclear threat 9/16/2017</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkNok" class="n2KPara noDisplay">

                    <p>
                        <span class="italic darkRedText">USA TODAY NETWORKJames Dean, Florida Today Published 9:13 p.m. ET Sept. 6, 2017 | Updated 9:13 p.m. ET Sept. 6, 2017</span> <br />  
                        <img alt="NOK3.jpg" class="width25 floatLeft thinMaroonBorder rightMarginHalfem topMargin1em" src="_Photos/News2Know/NOK3.JPG" />
                        A seismic jolt on the other side of the planet had a team of experts huddled at Patrick Air Force Base before dawn Sunday, alerting U.S. and international leaders of their alarming findings.
                        <br /><br />
                        A global network of 3,600 sensors monitored around the clock by the Air Force Technical Applications Center, headquartered at Patrick, had picked up North Korea’s underground test of a nuclear bomb.
                        <br /><br />
                        The center helped confirm that the blast registering 6.3 on the Richter scale was 10 times more powerful than North Korea’s previous nuclear test a year ago, and one of the most powerful nuclear tests detected since a ban took effect more than 20 years ago, Air Force officials told Florida Today.
                        <br /><br />
                        “It lit up the international network, for sure,” said Glenn Sjoden, the center’s chief scientist. “There’s no mistaking the fact that there was a very large event in North Korea at their nuclear test site.”
                        <br /><br />
                        As Hurricane Irma approaches Florida, AFTAC, as the center is known, continues to analyze last weekend's test while watching out for any new activity.
                        <br /><br />
                        A team may soon be dispatched to Texas — to a location unaffected by Hurricane Harvey — to take over the surveillance if Irma forces local personnel to ride out the storm with reduced staffing.
                        <br /><br />
                        “It doesn’t matter if the hurricane hits us or not, we will have that 24-7 coverage,” said Chief Master Sgt. Michael Joseph. “Wherever we go, we will make sure the mission’s getting done.”
                        <br /><br />
                        Patrick AFB is best known for the 45th Space Wing, which on Thursday will support SpaceX’s attempt to launch a rocket from Kennedy Space Center. Patrick’s 920th Rescue Wing recently helped rescue more than 230 Harvey victims in Houston.
                        <br /><br />
                        AFTAC is perhaps a less visible tenant at the base, but its electronic eyes on the ground, under water, in the air and in space play a critical role in reporting nuclear explosions to the Department of Defense and the Comprehensive Nuclear Test Ban Treaty Organization.
                    </p>

                    <figure>
                        <img alt="Nok1.jpg" class="width35 autoMarginLeftRight thinMaroonBorder" src="_Photos/News2Know/NOK1.jpg" />
                        <figcaption class="width35 italic maroonText italic autoMarginLeftRight">
                            Logo embedded in terrazzo entranceway at the Air Force Technical Applications Center at Patrick Air Force Base. (Photo: MALCOLM DENEMARK/FLORIDA TODAY)
                        </figcaption>
                    </figure>

                    <p>
                        The team often detects seismic events that don’t rate as national security concerns, such as earthquakes and mine explosions. One exception was the 2011 the Fukushima Daiichi nuclear reactor meltdown in Japan, which prompted a major response.
                        <br /><br />
                        But after Saturday night’s blast in a mountainous region of northeastern North Korea, an AFTAC team briefed leaders on preliminary findings by 2:15 a.m. ET Sunday at Patrick.
                        <br /><br />
                        “It’s safe to say that we knew very quickly and could characterize that signal very rapidly in order to have a very good idea of what likely occurred,” said Col. Steven Gorski, the AFTAC commander.
                        <br /><br />
                        Analysis of the test continues, with a WC-135 aircraft sampling international airspace for any radioactive debris released.
                    </p>

                    <figure>
                        <img alt="Nok2.jpg" class="width35 autoMarginLeftRight thinMaroonBorder" src="_Photos/News2Know/NOK2.jpg" />
                        <figcaption class="width35 italic maroonText italic autoMarginLeftRight">
                            The Air Force Technical Applications Center headquarters at Patrick Air Force Base. (Photo: MALCOLM DENEMARK/FLORIDA TODAY)
                        </figcaption>
                    </figure>

                    <p>
                        The test by itself doesn't prove an ability to weaponize such a bomb. But it came on the heels of missile tests that have heightened fears that North Korean missiles might now be able to reach the U.S.
                        <br /><br />
                        “Everybody should be concerned about North Korea and the threat that they pose to their neighbors and to the United States,” Gorski said.
                        <br /><br />
                        Now AFTAC, like the rest of the
                        Florida coast, must also contend with a major hurricane's potential arrival in the coming days.
                        <br /><br />
                        “A hurricane and a North Korean nuclear test in the same week is a significant test, and they’re doing extremely well,” Gorski said of his team.
                    </p>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Sixth generation Sailor, first generation Airman 8/29/2017</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkSailor" class="n2KPara noDisplay">

                    <div class="floatLeft topMargin4em width45 leftMargin2em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/Sailor1.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            U.S Navy Capt. Anthony Aversano (center), renders his final salute on active duty at his retirement from the U.S. Navy.  Aversano is the father of U.S. Air Force Capt. Lee Aversano, a certified mission commander aboard the USNS Invincible, a radar system platform operated by the Air Force Technical Applications Center, Patrick AFB, Fla.   (Courtesy photo)                        
                        </p>
                    </div>

                    <div class="floatLeft width45 leftMargin2em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/Sailor2.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Official photo of U.S. Air Force Capt. Lee Aversano.  Aversano is a certified mission commander aboard the USNS Invincible, a radar system platform operated by the Air Force Technical Applications Center, Patrick AFB, Fla.  (U.S. Air Force photo)
                        </p>
                    </div>

                    <div class="clear"></div>

                    <p>
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        World-renowned oceanographer Jacques Cousteau once said, “The sea, once it casts its spell, holds one in its net of wonder forever.”
                        <br /><br />
                        For the members of one family in particular, there are no truer words.
                        <br /><br />
                        Capt. Lee Aversano, an Air Force missile operator assigned to the Air Force Technical Applications Center here, comes from a long line of seafarers.  Three generations of great grandfathers before him were 19th Century mariners on the Tyrrhenian Sea.  His grandfather, Liberato Aversano, was a commercial fisherman who began his maritime career on the small fishing island of Ponza off Italy’s west coast.  Liberato immigrated to the United States and worked as a coal miner until he could save enough money to move his family from Italy to California.  It was there where Grandpa Aversano bought a fishing vessel and forged a prominent longshoreman presence in San Pedro Harbor, which still exists today.
                        <br /><br />
                        Aversano’s father, Anthony Aversano, spent many years working on his father’s fishing boats and fell in love with the sea. His father instilled a powerful love of country and appreciation for all America had offered his family, which ultimately propelled Tony to a 23-year career in the U.S. Navy.  And when Tony had a son of his own, it seemed like a foregone conclusion that young Lee would ultimately follow in his paternal lineage’s footsteps.
                        <br /><br />
                        Alas, Lee chose a different route.  He applied to the Air Force Officer Training School and earned his commission in 2010.  Yet despite the words “U.S. Air Force” emblazoned on his uniform, Lee is, in fact, a naval commander on the high seas.
                        <br /><br />
                        As a certified mission commander aboard the USNS Invincible and USNS Howard O. Lorenzen, Capt. Aversano is responsible for the overall operation and maintenance of the ship and its radar systems.  The MC interacts with the crew to ensure they have the tools and resources available to accomplish their assigned tasks, which may include equipment calibration tests, safety drills, and contingency planning scenarios.  The MC must also be keenly aware of his crew’s morale, as it is a big part of the mission’s success.
                        <br /><br />
                        The USNS Invincible hosts the $400 million Gray Star radar system; the Lorenzen hosts the $1.7 billion Cobra King radar platform.  Aversano commands a crew of 80 operators, technicians and engineers from various backgrounds and skill levels who are charged with delivering quality technical data to national decision makers.
                        <br /><br />
                        “Most people don’t know the Air Force operates two naval ships equipped with radar system platforms that conduct ballistic missile surveillance operations,” said Lee.  “Right now I’m immersed in mission commander dual certification training so I’ll have a full toolkit to be able to coordinate with Unified Commands, U.S. Naval Fleets, and other external agencies to ensure our operators, engineers and technicians are fulfilling our collection tasks.”
                        <br /><br />
                        The ships fall under the direction of the Joint Chiefs of Staff Olympic Titan mission, the Defense Department’s mobile maritime platform foreign missile and space activity operation.  The vessels conduct surveillance missions using state-of-the-art radar systems that provide technical measurements to national decision makers.
                        <br /><br />
                        “When I joined the Air Force, I pictured myself waking up to the smell of jet fuel in the morning,” Lee joked.  “My primary career field hasn’t offered me much interaction with airplanes at this point, so when I learned I was selected to broaden my career as a mission commander, I was very intrigued and knew it was definitely a path I’d fully enjoy, given my family history.  Now I’ll be waking up to the smell of ocean air every day!”
                        <br /><br />
                        That family history seems to keep Lee grounded as well as filled with pride.
                        <br /><br />
                        “My grandfather was a tremendously hard worker,” he said.  “He had hands that were so calloused from working the seas, he couldn’t completely make them into a fist.  But he had the kindest, most loving nature. Before he began his longshoreman career, he was conscripted into World War I and served as an infantryman.  Although my grandpa passed away before I was born, he and I have a lot in common and I feel a connection to him, especially when out to sea.”
                        <br /><br />
                        He continued, “My father began his naval career on submarines.  He actually had the honor of serving aboard the very first Los Angeles class fast-attack submarine to ever be deployed.  Throughout his 23-plus years of service, he held a number of exciting roles and positions:  nuclear safety engineer, captain of a submarine tender, even a judge advocate general.  He was a steely-eyed Cold War warrior and he loved the Navy with all his heart.  In many ways, I take after him, and if I can have half the success in my career as he did in his, then I’ll be in great shape.”
                        <br /><br />
                        The youngest Aversano sailor hopes to make the Air Force a career, but according to him, that goal is not without its own set of challenges.
                        <br /><br />
                        “I was a bit older than most when I received my commission, and I’ll be in my mid-50s when I reach the 20-year mark,” Lee reflected, “but I’m still young at heart!  Fitness demands, stress management and bolstered resilience from adversity continue to serve me well, so as of right now, I hope to make it to full retirement.  My squadron commander, Lt. Col. Don Wittenberg, said it best: ‘If you love what you do, why do something else?’ I think that’s a great perspective.”
                        <br /><br />
                        AFTAC’s newest mission commander also has the responsibility of balancing his demanding work schedule with his family schedule.
                        <br /><br />
                        “On average, we deploy about 120 days a year on 60-day rotations,” Lee explained.  “I have an amazing support network at the center, and we’ve built relationships that make me hopeful that when I go out to sea, my family is in a good place – happy and safe.  I have a very strong wife and two resilient children who do a great job of handling the household in my absence.  If life gets too overwhelming for them, I know I’ve got my AFTAC brothers and sisters I can rely upon to check on them when I’m at sea.”
                        </p>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">Cyberspace domain critical to Nuclear Treaty Monitoring 8/29/2017</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkCyber" class="n2KPara noDisplay">

                    <div class="floatLeft width45 leftMargin2em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/cyberspace1.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Logan Keith, a storage administrator with the Cyber Capabilities Squadron, Air Force Technical Applications Center, Patrick AFB, Fla., verifies the inventory of tapes and replenishes the tape silo as needed to conduct the center’s nuclear treaty monitoring mission.   (U.S. Air Force photo by Susan A. Romano)
                        </p>
                    </div>

                    <div class="floatLeft width45 leftMargin2em">
                        <img class="width70 autoMarginLeftRight maroonBorder smallShadow" src="_Photos/News2Know/cyberspace2.jpg" />
                        <p class="italic autoMarginLeftRight width90 topMargin1em centerText maroonText bold maroonBorder" style="font-size:1em;">
                            Hector Velez, a Linux systems administrator with the Cyber Capabilities Squadron, Air Force Technical Applications Center, Patrick AFB, Fla., troubleshoots a lost connection to a server that keeps AFTAC’s nuclear treaty monitoring mission going strong.  (U.S. Air Force photo by Susan A. Romano)
                        </p>
                    </div>

                    <div class="clear"></div>

                    <p>
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        The Air Force Technical Applications Center here is charged with ensuring each and every nation across the globe complies with the ban on nuclear weapons testing, 24 hours a day, seven days a week.  Members of AFTAC answer that call without fail – monitoring nuclear treaty compliance is their business.
                        <br /><br />
                        To accomplish this herculean task, the center uses a network of 3,600 worldwide sensors across multiple domains to collect a variety of data critical to revealing magnitude, yield and location of nuclear explosions. Regardless of what corner of the earth the data comes from or how the data are collected, the information must transmitted back to the United States so analysts can transform the information into usable data that our national decision makers can rely on.  
                        <br /><br />
                        While Airmen performing the data analysis are the best in the business, they could not execute their job without the skill and expertise of members of AFTAC’s Cyber Capabilities Squadron.  The primary mission of CYCS is to generate, project and sustain cyberspace capabilities by providing mission assurance for AFTAC’s global enterprise.  In other words, AFTAC’s treaty monitoring mission cannot be effectively accomplished without unfettered access to cyberspace.
                        <br /><br />
                        “My squadron supports all information technology services that AFTAC needs to achieve operational success,” said Maj. Nathan Loyd, CYCS commander.  “We support the mission through our oversight and sustainment of our servers, long haul communications systems, databases, and hardware/software.  AFTAC is responsible for the largest sensor network in the Air Force, and we take that responsibility very seriously.”
                        <br /><br />
                        Loyd is a career cyberspace operations officer who took command of CYCS in July.  Prior to joining the AFTAC team, he was assigned to various roles in the fields of cyber, electronic warfare, information systems and automations.  His leadership philosophy is based on the foundation of trust.
                        <br /><br />
                        “Trust is the single most important key to effective leadership-followership,” Loyd said.  “Our cyber mission is too large for any one person to handle alone, so I believe in trusting and empowering our Airmen down to the lowest possible level.  That allows for more flexibility across the board.”
                        <br /><br />
                        In August 2016, Air Force Chief of Staff Gen. David L. Goldfein outlined his number one focus area – squadron revitalization.  He informed personnel Air Force wide that he considers squadrons to be the basic building block of the force and our most essential team, and squadron commanders have the most profound and lasting impact on Airmen and families.
                        It’s a charge Loyd has taken to heart.
                        <br /><br />
                        “The Air Force is focusing heavily on reinvigorating the role of squadrons based on feedback received from various climate surveys and strategic planning meetings,” said Loyd.  “The Chief of Staff wants to empower squadrons to have more authority to make decisions at the lowest possible level.  As a relatively new member of the AFTAC team, my goal is to take General Goldfein’s vision and incorporate it into every decision I make and every action I take.”
                        <br /><br />
                        A majority of CYCS’s efforts is tied to the DOD Information Network (DoDIN) to ensure data confidentiality, integrity and availability.  Loyd’s 150-person squadron is made up of a cross-section of talent – officers, enlisted, civilians and contractors – each filling critical roles as system and network administrators, help desk technicians, project managers and troubleshooters.  
                        <br /><br />
                        “Like many organizations throughout the Air Force, our people-to-mission ratio is not quite right,” he said.  “I’m working with my officers, civilian and senior enlisted leaders within the squadron to define where our limitations are, figure out what we can do to eliminate extraneous workloads, and determine how we can operate more efficiently with scarce resources.”
                        <br /><br />
                        Today’s cyber landscape is ever-evolving and one that sees increasing threats from those who want to disrupt it, whether that disruption comes from simple non-malicious, attention-seeking hackers or from combative nation-states with the purposeful intent to interfere with military operations and their IT systems. Government entities, to include Air Force organizations, are wholly dependent on computer networks and systems, and rely on those information systems to successfully execute their global missions. 
                        <br /><br />
                        As with any complex IT operation, however, the systems are vulnerable, and Loyd’s team addresses this concern every day.
                        <br /><br />
                        “Our biggest obstacle is balancing cybersecurity postures with the needs of a high operations tempo,” he explained.  “AFTAC is a high-speed, enormously innovative organization that uses technology in its drive for change and evolution.  So to balance that demand, it’s critical we ensure our CYCS Airmen are trained and certified to continually be on the cutting edge of technology.”
                        <br /><br />
                        He added, “Here in CYCS, we are working towards standardizing our enterprise to increase efficiencies in system maintenance.  Additionally, we are posturing the squadron to establish a Mission Defense Team, focusing on cyberspace defensive operations to our mission critical systems.  This pathfinder initiative takes aim at protecting the mission’s crown jewels.  It is an important shift in posture to ensure AFTAC is able to execute its treaty monitoring mission across air, sea, space and cyberspace.”
                        <br /><br />
                        Col. Steven M. Gorski, commander of AFTAC, emphasized Loyd’s comment on the need to focus on cyberspace defense.
                        <br /><br />
                        “In today’s world, cyber threats pose serious challenges to AFTAC,” he said.  “Here at AFTAC, access to networks play a powerfully role in our daily responsibilities.  Lack of access can significantly impact the effectiveness of our organization, and that’s why having the best people on board – leaders like Major Loyd and his incredibly talented Airmen who form his cyber team – is crucial to our worldwide mission.  Countering cyber threats is all about risk management, and Major Loyd’s squadron fully understands that threat and takes every step possible to keep our systems and networks safe.”
                        <br /><br />
                        When asked what he sees as the Cyber Capabilities Squadron’s strongest asset, Loyd said, “Our squadron has done tremendous work in providing continuous, secure communications for AFTAC.  CYCS’s shining moments are defined each time mission data is available on demand for our customers and delivered securely and without degradation.  That’s the bottom line.”
                        </p>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                    <h2 class="news2KnowH1">AFTACers thrill young STEM minds, get surprise visit from HAF 3-star 8/23/2017</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkStem" class="n2KPara noDisplay">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-3 aRight">
                                <input id="stemPrevious" class="smallBut topMargin5em width40" type="button" value=" Previous " />
                            </div>
                            <div class="col-md-6">
                                <div id="stemFig1" class="stemFigs block">
                                    <figure class="width100">
                                        <img alt="stem1.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/stem1.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Maj. Jeremiah Betz, deputy director of lab operations for the Air Force Technical Applications Center, Patrick AFB, Fla., oozes some Oobleck into the hands of Brian Owens, a 12-year old student from West Oaks Elementary School in Orlando during the 41st Annual Organization of Black Aerospace Professionals Convention and Career Exposition Aug. 10, 2017, which was held at Disney’s Coronado Springs Resort, Lake Buena Vista, Fla.  Betz and a team of Airmen from AFTAC volunteered to showcase science experiments to Central Florida Youth to encourage them towards STEM-related fields.  (U.S. Air Force photo by Susan A. Romano)
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="stemFig2" class="stemFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="stem2.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/stem2.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Capt. Henry L. Sims Jr. (right), director of Wing Inspections for the Air Force Technical Applications Center, Patrick AFB, Fla., demonstrations quantum levitation to a group of students from the Central Florida area during the 41st Annual Organization of Black Aerospace Professionals Convention and Career Exposition Aug. 10, 2017, at Disney’s Coronado Springs Resort, Lake Buena Vista, Fla.  Sims and a team of AFTAC Airmen volunteered to showcase science experiments to Central Florida Youth to encourage them towards STEM-related fields.  (U.S. Air Force photo by Susan A. Romano)
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="stemFig3" class="stemFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="stem3.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/stem3.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            – Capt. Henry L. Sims Jr. (left), director of Wing Inspections for the Air Force Technical Applications Center, Patrick AFB, Fla., demonstrations quantum levitation to Lt. Gen. Stayce D. Harris, Air Force Assistant Vice Chief of Staff during the 41st Annual Organization of Black Aerospace Professionals Convention and Career Exposition Aug. 10, 2017, at Disney’s Coronado Springs Resort, Lake Buena Vista, Fla.  Sims, along with Staff Sgt. Nathan Korytko, Maj. Scott Belton and a team of five other AFTAC Airmen volunteered to showcase science experiments to Central Florida Youth to encourage them towards STEM-related fields.  (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="stemFig4" class="stemFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="stem4.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/stem4.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Maj. Jeremiah Betz (right), deputy director of lab operations for the Air Force Technical Applications Center, Patrick AFB, Fla., conducts science experiments with a group of students from the Central Florida area during the 41st Annual Organization of Black Aerospace Professionals Convention and Career Exposition Aug. 10, 2017, at Disney’s Coronado Springs Resort, Lake Buena Vista, Fla.  Betz was one of eight members from AFTAC who volunteered to showcase science experiments to students from the area to encourage them towards STEM-related fields.  (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="stemFig5" class="stemFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="stem5.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/stem5.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Staff Sgt. Nathan Korytko, a gamma measurements technician with the Air Force Technical Applications Center, Patrick AFB, Fla., explains the properties of liquid nitrogen to Lt. Gen. Stayce D. Harris, Air Force Assistant Vice Chief of Staff, during the 41st Annual Organization of Black Aerospace Professionals Convention and Career Exposition Aug. 10, 2017, at Disney’s Coronado Springs Resort, Lake Buena Vista, Fla.  Harris was the senior Air Force representative at the convention, as well as an OBAP Hall of Fame inductee; Korytko was one of eight members from AFTAC who volunteered to showcase science experiments to students from the area to encourage them towards STEM-related fields.  (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="stemFig6" class="stemFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="stem6.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/stem6.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            James C. “Griff” Griffieth (right), an equipment control officer from the Air Force Technical Applications Center, explains to Lt. Gen. Stayce D. Harris, Air Force Assistant Vice Chief of Staff how electricity from a Tesla coil is able to transmit a wireless signal to a child’s “light-up” shoe.  Harris visited members of AFTAC who were volunteering at the Organization of Black Aerospace Professionals 41st Annual Convention and Career Expostion Aug. 10, 2017 in Orlando.  Griff and seven fellow AFTAC Airmen showcased several science experiments during OBAP’s Youth Day. (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="stemFig7" class="stemFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="stem7.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/stem7.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Rose Day, civilian Human Resources program manager for the Air Force Technical Applications Center, explains the concept of non-Newtonian fluid to Savannah Shortte, 7, and her brother Rasul, 5, of New Carrollton, Md., during the 41st Annual Organization of Black Aerospace Professionals Convention and Career Exposition Aug. 10, 2017, at Disney’s Coronado Springs Resort, Lake Buena Vista, Fla.  Day was one of eight members from AFTAC who volunteered to showcase science experiments to students to encourage them towards STEM-related fields.  (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                                <div id="stemFig8" class="stemFigs noDisplay">
                                    <figure class="width100">
                                        <img alt="stem8.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/stem8.JPG" />
                                        <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                            Capt. Henry L. Sims Jr., director of Wing Inspections for the Air Force Technical Applications Center, Patrick AFB, Fla., discusses career options with Tyler Rice, a senior at West Broward High School during a youth mentor luncheon at the 41st Annual Organization of Black Aerospace Professionals Convention and Career Exposition Aug. 10, 2017, at Disney’s Coronado Springs Resort.  Sims was one of eight AFTAC Airmen who volunteered to mentor students from the Central Florida area about STEM-related opportunities.  (U.S. Air Force photo by Susan A. Romano)                                        
                                        </figcaption>        
                                    </figure>
                                </div>

                            </div>
                            <div class="col-md-3 aLeft">
                                <input id="stemNext" class="smallBut topMargin5em width50" type="button" value=" Next " />
                            </div>
                        </div>
                    </div>

                    <div class="clear"></div>

                    <p>
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                        The group of eight Airmen were joined by members of the U.S. Air Force Academy to interact with Central Florida children at OBAP’s Youth Day to offer hands-on activities for experiential learning.
                        <br /><br />
                        OBAP’s three-day aerospace conference was designed to unify, engage and empower aviation professionals from diverse backgrounds.  Youth Day was dedicated to students between the ages of 12 to 18 to give them an opportunity to interact with members of the Air Force and other STEM-related agencies.
                        <br /><br />
                        Maj. Jeremiah Betz, AFTAC’s STEM outreach coordinator and deputy director of radiochemistry lab operations, oversaw his team’s displays, which included seismometer equipment, liquid nitrogen experiments, a quantum levitation demo, a musical Tesla coil and a table full of Oobleck.
                        <br /><br />
                        Oobleck, a term taken from a Dr. Seuss book, is a non-Newtonian fluid – a concoction of corn starch and water that, when mixed together, forms a substance that acts differently from a normal liquid and normal solid.
                        <br /><br />
                        “The kids were mesmerized by the Oobleck display,” said Betz.  “They were fascinated when they could take a hammer to the mixture and it would feel hard like a solid, but when the hammer was gently placed on top of the surface of the mixture, it would slowly sink to the bottom of the container.  It’s a great way to teach them about the differing properties of liquids and solids.”
                        <br /><br />
                        AFTAC, the Department of Defense’s sole organization responsible for nuclear treaty monitoring, has more than 1,000 personnel who have vast scientific experience and educations:  chemists, physicists, nuclear engineers, biologists, mathematicians, geologists and seismologists, just to name a few.  They are highly sought after by schools, companies and organizations to assist with STEM-related events.  OBAP was no exception.
                        <br /><br />
                        More than 80 teens who attended the convention cycled through AFTAC’s demonstrations, and all seemed delighted by what they experienced.
                        <br /><br />
                        Brian Owens, a 12-year old from West Oaks Elementary School in Orlando, could barely contain his excitement.  
                        <br /><br />
                        “This was the most fun I’ve ever had!” he exclaimed.  “I love doing stuff like this because it’s so exciting and we get to actually touch the experiments.  I really liked seeing the liquid nitrogen freeze the racquetball and then the Air Force guy who busted it to pieces with a hammer.  That was so cool!”
                        <br /><br />
                        Audra Saldaña, founder of TechPays Foundation, accompanied her two sons, Xen and Xeric, to the science demos and was impressed by what she saw.
                        <br /><br />
                        “I go out of my way to expose my boys to events like this,” she said.  “Any opportunity that gives them the chance to broaden their knowledge is exactly what they need to succeed.  This convention in particular allows them to see things first-hand and learn from experts in their fields—real people who are actually doing the jobs they’re talking about.  I tell my boys the world is a big place and they can do anything and be anything they want, and I appreciate the Air Force guys coming out to be with our kids.”
                        <br /><br />
                        The center civilian Human Resources Program Manager, Rose Day, is also AFTAC’s spearhead on cooperative outreach programs that involve socio-economically challenged youth in the area.  She works closely with senior Air Force officials in the Pentagon’s Diversity and Inclusion Office (A1V), who let her know about OBAP’s annual convention and encouraged her to get involved.
                        <br /><br />
                        “We had some really special children come into our event room to interact with our Airmen,” she said.  “You know you’ve made a huge impact when you see teens breaking out their cell phones to post videos of our demos and selfies with our Airmen to their social media pages!  We also had the opportunity to interact with the students at the Youth Luncheon.  I sat with a sophomore from Spruce Creek High School in Port Orange, Fla., who humbly told me about his 3.5 grade point average and how he wants to play basketball in college.  When I showed him photos of the Air Force Academy’s Division I basketball team, he was floored and had no idea that opportunity was available to him.  That’s when you know you’ve made a difference.”
                        <br /><br />
                        The AFTAC team was treated to a special unexpected guest when Air Force Assistant Vice Chief of Staff Lt. Gen. Stayce D. Harris visited the STEM demo ballroom.  Harris, the first black woman to become an Air Force lieutenant general, attended the OBAP convention, not just as the Air Force senior representative, but also as an OBAP Hall of Fame inductee.
                        <br /><br />
                        Harris spent time with each AFTAC Airman to observe their demos and find out more about their role in nuclear treaty monitoring.
                        <br /><br />
                        “Before I met them today, I had already heard so much about AFTAC’s 9S100s (the Air Force specialty code for AFTAC’s enlisted Airmen) and their amazing accomplishments and skill levels,” said Harris.  “It was a delight for me to spend time with each of them and learn more about their respective jobs at AFTAC.  It’s obvious we are in extremely capable hands with our treaty monitoring responsibilities, and I’m proud of the important work they are performing each and every day.  I really enjoyed smashing a frozen racquetball with a hammer, too!”
                        <br /><br />
                        Capt. Henry L. Sims Jr., AFTAC’s Director of Wing Inspections, showcased the quantum levitation demo for the visiting students.  He was also one of the first people to step up and volunteer to participate at the convention because it is an issue that is very close to his heart.
                        <br /><br />
                        “We need to take a proactive role to ensure people of all colors are prepared to fairly compete for roles within science, technology, engineering and math,” said Sims.  “I grew up in a town that was named the poorest in the entire state of Georgia, and exposure to opportunities like the one OBAP provided was pretty much non-existent.  With the help of many mentors, however, I was blessed enough to find a way to make it where I am today, and I have dedicated my life to make the path to success a little less bumpy for our youth.”
                        <br /><br />
                        Sims added, “Never in a million years would I have thought that someone like me who grew up with basically nothing would go from abject poverty to being an Assistant Professor of Aerospace Studies at the University of North Carolina-Chapel Hill to demonstrating quantum levitation to a group of minority students to meeting General Harris.  I will continue to pay it forward.”

                    </p>
                </article>
            </section>

           <section class="archivedNews noDisplay">
                <div class="aLeft">
                <h2 class="news2KnowH1">Tech Ops Squadron is heartbeat of nuke treaty monitoring from air, sea, space 5/23/2017</h2>
                </div>

                <div class="clear"></div>

                <article id="ntkTops" class="n2KPara noDisplay">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3 aRight">
                            <input id="topsPrevious" class="smallBut topMargin5em width40" type="button" value=" Previous " />
                        </div>
                        <div class="col-md-6">
                            <div id="topsFig1" class="topsFigs block">
                                <figure class="width100">
                                    <img alt="tops1.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/tops1.JPG" />
                                    <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                        Military Sealift Command missile range instrumentation ship USNS Invincible makes way during sea trials following a regularly scheduled yard period. The platform is designed to augment the U.S. Ballistic Missile Defense sensor network by providing target discrimination information to U.S. Strategic Command. (U.S. Navy photo by Tommy Chia)
                                    </figcaption>        
                                </figure>
                            </div>

                            <div id="topsFig2" class="topsFigs noDisplay">
                                <figure class="width100">
                                    <img alt="tops2.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/tops2.JPG" />
                                    <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                        The USNS Howard O. Lorenzen (T-AGM-25) passes Astoria, Ore., as it departs the Columbia River into the Pacific Ocean, May 16, 2014. The USNS Howard O. Lorenzen is named for the late Naval Research Laboratory electrical engineer who was instrumental in the creation of the electronic intelligence capabilities of the United States. (U.S. Coast Guard photo by Petty Officer 1st Class David Mosley                                        
                                    </figcaption>        
                                </figure>
                            </div>

                            <div id="topsFig3" class="topsFigs noDisplay">
                                <figure class="width100">
                                    <img alt="tops3.JPG" class="smallShadow maroonBorder width75" src="_Photos/News2Know/tops3.JPG" />
                                    <figcaption class="italic maroonText topMarginHalfem  width100 autoMarginLeftRight">
                                        The WC-135 Constant Phoenix sits on the runway at Patrick AFB, Fla., during a visit to the base where its main mission headquarters, the Air Force Technical Applications Center, is located. The specially-configured aircraft is equipped with external flow devices that allow special equipment operators to collect airborne particulates in support of the U.S. Atomic Energy Detection System in the event of a nuclear detonation. (U.S. Air Force photo by Susan A. Romano)                                        
                                    </figcaption>        
                                </figure>
                            </div>

                        </div>

                        <div class="col-md-3 aLeft">
                            <input id="topsNext" class="smallBut topMargin5em width50" type="button" value=" Next " />
                        </div>
                    </div>

                    </div>

                    <div class="clear"></div>

                    <p>
                        <span class="italic darkRedText">By Susan A. Romano, AFTAC Public Affairs PATRICK AIR FORCE BASE, Fla.</span> <br />  
                            When the Department of Defense needs bombs on target or fighters in the air, they reach out to any number of flying wings within the Air Force to task their squadrons to accomplish that mission. Yet when they need near-real time data of potential nuclear detonations, to include ballistic missile detection, radioactive plume debris collection, seismic activity or gamma ray emissions, there is only one wing within DoD that can meet that need.
                        <br /><br />
                        The Air Force Technical Applications Center is the sole organization in the Defense Department whose mission is to detect and report technical data from foreign nuclear explosions. One of the ways that mission is accomplished is through the efforts of Airmen assigned to AFTAC’s Technical Operations Squadron.
                        <br /><br />
                        TOPS, under the command of Lt. Col. Donald W. Wittenberg, is responsible for conducting worldwide surveillance and reconnaissance missions using its maritime and airborne assets in order to provide national authorities with quality technical measurements that may involve nuclear weapons of mass destruction.
                        <br /><br />
                        “My squadron of 11 officers, 14 enlisted and nine civilians directs and coordinates nuclear treaty monitoring efforts through the employment of the WC-135 Constant Phoenix aircraft as well as our two ship-borne radar platforms, Gray Star and Cobra King valued at more than $2.2 billion,” said Wittenberg. “These assets allow us to accurately monitor space, missile or weapons tests that may pose potential threats or hazards to our nation or our allies.”
                        <br /><br />
                        Cobra King and Gray Star are state-of-the-art mobile radar systems that consists of S- and X-band radars that AFTAC relies on to provide global, high resolution, multi-wavelength radar data to the Missile Defense Agency and DoD’s strategic community.
                        <br /><br />
                        “Essentially, each ship’s main job is to monitor any tests of rockets using her S-band and X-band radars. The S-band sensor sweeps vast expanses of sky for possible missiles in flight, while the X-band radar zeroes in to closely track a target,” Wittenberg explained.
                        <br /><br />
                        According to the TOPS commander, both are capable of collecting radar data on orbiting satellites and tactical ballistic missiles. Each vessel consists of two radar systems and numerous support systems including automatic data processing equipment, navigation and a full communications suite.
                        <br /><br />
                        “Their mobile instrumentation platforms are one-of-a-kind systems with extremely critical performance characteristics,” Wittenberg said. “The radar systems aboard USNS Invincible (Gray Star) and USNS Howard O. Lorenzen (Cobra King) allow us to execute our treaty monitoring responsibilities. But what makes it unique is the mission commander aboard these U.S. Navy ships is an Air Force company grade officer – an Airman assigned right here in TOPS. Traditionally, the MCs are captains from the space and missile career field and the combination of those skill sets really complement each other and enhance the understanding of foreign tests and capabilities.”
                        <br /><br />
                        Typically, MCs will be at sea for 60 to 90 days at a time, with most officers going out to sea twice a year. During the last 12 months, TOPS has included nuclear missile officers with a 13N Air Force Specialty Code into the mix for leadership opportunities. 
                        <br /><br />
                        The mission commander’s ultimate responsibility is to ensure the platform team members are able to successfully collect mission data. In addition to daily mission taskings, the MC works closely with experts from Military Sealift Command to schedule port visits and develop a prioritized listing of necessary ship-related maintenance whenever the vessel is in port or at the shipyard.
                        <br /><br />
                        From sea to air, Wittenberg’s Airmen are involved in nearly all aspects of AFTAC’s treaty monitoring responsibilities. The center’s airborne platform is an integral part of TOPS’ mission execution.
                        <br /><br />
                        Commonly referred to by the media as a ‘sniffer plane,’ the WC-135 has been in the Air Force inventory since 1965 and currently supports the Limited Test Ban Treaty of 1963, which prohibits any nation from testing nuclear weapons above ground. The Constant Phoenix is the only aircraft in the USAF that conducts air sampling operations. The cockpit crews are from the 45th Reconnaissance Squadron at Offutt AFB, Neb., while the special equipment operators are from AFTAC’s Detachment 1, also at Offutt.
                        <br /><br />
                        “The WC-135 flies in direct support of the U.S. Atomic Energy Detection System and maintains the most advanced atmospheric research equipment in the Air Force,” said Wittenberg. “The SEOs are highly proficient and well-trained to perform this complex mission. While we don’t discuss specific ongoing operational taskings as a matter of policy, my team has averaged more than 160 days of temporary duty or deployment over the past year flying background sorties to establish baseline levels of atmospheric debris. These Airmen are incredibly motivated to get the job done, no matter where in the world that job may be.”
                        <br /><br />
                        He added, “We conduct these airborne sampling missions to help us understand what already exists in the atmosphere. We typically fly over the Indian Ocean, Mediterranean Sea, Bay of Bengal, the Polar Regions, the Far East, and off the coasts of South America and Africa to ensure signatories are adhering to established nuclear treaties. It’s a busy mission, and an incredibly invaluable one as well.”
                        <br /><br />
                        TOPS is one of five squadrons within AFTAC’s wing structure, and the center’s commander had nothing but the highest of praise for Wittenberg and his Airmen.
                        <br /><br />
                        “The Airmen of TOPS are truly just that – the tops at what they do,” said Col. Steven M. Gorski, AFTAC commander. “They are responsible for a critical link of information that has the potential to be up-channeled as high as the desk of the President of the United States, and that is a huge responsibility. They continuously demonstrate their expertise, sometimes under austere and exhausting conditions, and I couldn’t be more proud of them.”
                        <br /><br />
                        Wittenberg matched his commander’s accolades.
                        <br /><br />
                        “I am humbled to be a part of such a tight-knit team that takes pride in performing the mission,” he said. “From the youngest Airmen to the most senior civilian, I see an organization that cares for each other and epitomizes the Wingman ideals. Their professionalism and teamwork inspire me every day!”                    
                    </p>
                </article>
            </section>
        </article>

        <article id="pomoArt" class="myArts noDisplay">

            <div class="clear"></div>

            <section id="sectPomoCurrent" class="noDisplay topMargin1em">
                <div class="centerDiv maroonBorder topMargin2em smallShadow">
                <p class="centerText">
                    CURRENT POST MONITORS
                </p>

                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <div id="pomo2" class="noDisplay">
                        <p class="centerText">Click on the Pomo of your choice.</p>
                        <div id="decemberPomo" class="floatLeft width25 leftMargin8em">
                            <img alt="december2018.png" class="myPomo width75" src="_Images/december2018.png" />
                            <p class="centerText">December 2018</p>
                        </div>
                        <div id="augustPomo" class="floatLeft width25 leftMargin1em">
                            <img alt="August2018.png" class="myPomo width75" src="_Images/August2018.png" />
                            <p class="centerText">August 2018</p>
                        </div>
                        <div id="aprilPomo" class="floatLeft width25 leftMargin1em">
                            <img alt="april2018.png" class="myPomo width75" src="_Images/April2018.png" />
                            <p class="centerText">April 2018</p>
                        </div>
<%--                        <div id="decemberPomo" class="floatLeft width25 leftMargin1em">
                            <img alt="december2017.png" class="myPomo width75" src="_Images/december2017.png" />
                            <p class="centerText">December 2017</p>
                        </div>--%>
                    </div>

                    <div id="pomo1" class="block autoMarginLeftRight width50">
                        <p class="redText centerText italic">
                            Only "Current Members" can open the "Recent Pomos."<br />
                            Enter your Email Address and click the "OK" Button.
                        </p>
                        <p class="centerText">Enter Your Email Address</p>
                        <input id="txtEmail" class="block autoMarginLeftRight topMarginHalfem maroonText padding5 width60 bold" type="text" value="" onkeydown="search()" />
                        <input id="btnEmail" class="myBut topMarginHalfem block autoMarginLeftRight" type="button" value=" OK ">
                        <p class="centerText italic redText topMarginQuarterem" style="font-size:1em;">Make sure your Popup Blocker is turned off.</p>
                        <div id="pnlPomoError" class="width60 backYellow noDisplay padding5 autoMarginLeftRight maroonBorder smallShadow">
                            <%--Placeholder for Error Message--%>
                        </div>
                    </div>

                    <div class="clear bottomMargin1em"></div>
                    </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="clear bottomMargin2em"></div>
            </section>

            <div class="clear"></div>

            <section id="sectPomoArchived" class="maroonBorder smallShadow topMargin1em">
                <p class="centerText">
                    ARCHIVED POST MONITORS
                </p>

                <p class="redText centerText italic" style="margin-top:-1em;">
                    Both "Current Members" and "Nonmembers" <br />
                    Can see any of the Pomos listed below.<br />
                    Simply click on the one you would like to see.
                </p>

               <div class="floatLeft leftMargin3em aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2017</p>
                    <ul class="archList">
                        <li><a class="maroonText" href="_Pomos/PoMo2017_12.pdf" target="_blank">December</a></li>
                        <li><a class="maroonText" href="_Pomos/PoMo2017_08.pdf" target="_blank">August</a></li>
                        <li><a class="maroonText" href="_Pomos/PoMo2017_04.pdf" target="_blank">April</a></li>
                    </ul>
                </div>

                <div class="clear"></div>

               <div class="floatLeft leftMargin3em aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2016</p>
                    <ul class="archList">
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo2016_12.pdf" target="_blank">December</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo2016_09.pdf" target="_blank">August</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo2016_04.pdf" target="_blank">April</a></li>
                    </ul>
                </div>

               <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2015</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6MmUyOGExZDIxMWM0NTU4NA' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6MTQwOGVkN2NiNjM1NzYyNQ' target="_blank">August</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6MjY0NDRhYjA3NDM5ZDFjYg' target="_blank">April</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2014</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6ZGNmNTNlOWQxNDEwZTcz' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6MzI3OWE4NWI3ZmI3OWMzYg' target="_blank">August</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6NjcwNzhmZGMyNmI0NDJjYg' target="_blank">April</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2013</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6NDQ3NmQ0ZGU2OTJhNjJlZA' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6NGRkYzFiOTMyNWE1YmJjYw' target="_blank">August</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6MjU2YjE4NmZiZTFkNDAwNg' target="_blank">April</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2012</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6NjBmZjM2NmZiZjVlZDMzMA' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6NWU0N2NmMGZmYzQ0YWM1OQ' target="_blank">August</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6NTUyZjFjNDM4OWY2MTMzYg' target="_blank">April</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2011</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6NzliNmZiZGZkNDJkNmMyMA' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6M2U0ZWI5ZThmNGMyZTI4Nw' target="_blank">August</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6NzFkMzExZmM0ODVjOTRkMQ' target="_blank">April Part 1</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yczIwMTF8Z3g6N2Q0OGQ2ZDkxMjc2MTA0YQ' target="_blank">April Part 2</a></li>
                    </ul>
                </div>

                <div class="clear"></div>

                <hr class="myHR autoMarginLeftRight" />

                <div class="clear"></div>

                <div class="floatLeft aLeft leftMargin3em width15" style="margin-top:-1em;">
                    <p class="underLine">2010</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDo0MDMzN2JhZmE4ZDNlNjdl' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDo3NjI1NDM0NzdkZjRhNzdm' target="_blank">August Part 1</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDoyZGU5MTU5ODk0MGMyMDU4' target="_blank">August Part 2</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDoxZGU4NDg0OTQwMDk3Nzdi' target="_blank">April</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2009</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDo0ZmU2MmUyN2VlNjI1YmJk' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDo0ODY3M2RmZGQ4MGVjNjcy' target="_blank">August</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDo1MjhlNzM4MDcxOTI5NDc2' target="_blank">April</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2008</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDoyMmNkNWZjNjllODEwMjMz' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDoyMmNkNWZjNjllODEwMjMz' target="_blank">September</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDozNjA2ZWU2N2RhZTRmYmRi' target="_blank">June</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDozYjcyMWVmNGQ4NzgxMGRm' target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2007</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDoxZWE2MWRiNDJmYWQ4ZGE' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDozNWM2NmQ2NjUzZTBlMjNk' target="_blank">September</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDoxMDcxZTZiODNiNmNlZjVl' target="_blank">June</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxhcmNoaXZlZHBvc3Rtb25pdG9yYXxneDo0N2NiZWVjNWM3OWNlOWUy' target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2006</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo3MWQzOWEzYTczOTEyOWIw' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo1ZDE5NDQ1MzFjZTRkOTgy' target="_blank">September</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDoxOTZjOWZlOTBmZGI2ZjIz' target="_blank">June</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo1N2I2ZTU3NTdmM2MxZDhj' target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2005</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDoxOTcyZmQ1YjVmODdmMTFk' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDozYzMyMjMzNjM0YzYwMjlm' target="_blank">September</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo1ZThkODQyM2NlZjA3MjY' target="_blank">June</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDpkZDYxNzg5YWU3MTU4MDQ' target="_blank">March</a></li>
                    </ul>
                </div>


                <div class="clear"></div>

                <hr class="myHR autoMarginLeftRight" />

                <div class="floatLeft aLeft leftMargin3em width15" style="margin-top:-1em;"">
                    <p class="underLine">2004</p>
                    <ul class="archList">
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo2004-12.pdf" target="_blank">December</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo2004-09.pdf" target="_blank">September</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo2004-06.pdf" target="_blank">June</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo2004-03.pdf" target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;"">
                    <p class="underLine">2003</p>
                    <ul class="archList">
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo2003-12.pdf" target="_blank">December</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo2003-09.pdf" target="_blank">September</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo2003-06.pdf" target="_blank">June</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo2003-03.pdf" target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;"">
                    <p class="underLine">2002</p>
                    <ul class="archList">
                        <li><a class="maroonText" href="_Pomos/PoMo2002-12.pdf" target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo1NTM3MTk2YTA2OTQ3NGY0' target="_blank">September</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDoxMDcwN2YzODEyYmRhMDVm' target="_blank">June</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo0Yzk0YTYyYmI1NWZkZDU5' target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2001</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo1ZTE0OTIzODhiMWU3MDU4' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDoxMjk1ZWM5ZTVkMjdkZmIz' target="_blank">September</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo1NzM1ODM1YjdkYmY0MGQ3' target="_blank">June</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDozYmU2MGFkNzNkMzEwMzM3' target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">2000</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDozNjcyZmZjZGU4OGY3MmNh' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDoyNWI2NDE4MGVmZGI5NDdj' target="_blank">September</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDozMmRkNGJkZjdhNTc0NzFl' target="_blank">June</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo2ZWQwZjlmNTFlZjMxOGE' target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">1999</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDoyNTE1OTg3YTZjNDIzMzEy' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo3NTJkZjIxMTY3YWRkNjc3' target="_blank">September</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo1MWIzZjBkMGExY2M3NmVi' target="_blank">June</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDoyOTRhYmZlODBjZTg1N2Ux' target="_blank">March</a></li>
                    </ul>
                </div>

                <hr class="myHR autoMarginLeftRight" />

                <div class="floatLeft aLeft leftMargin3em width15" style="margin-top:-1em;"">
                    <p class="underLine">1998</p>
                    <ul class="archList">
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1998-12.pdf" target="_blank">December</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1998-09.pdf" target="_blank">September</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1998-05.pdf" target="_blank">June</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1998-03.pdf" target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">1997</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo1MTllOTI3YzZkYmM2ZmZm' target="_blank">December</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1997-09.pdf" target="_blank">September</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1997-06.pdf" target="_blank">June</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1997-03.pdf" target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;"">
                    <p class="underLine">1996</p>
                    <ul class="archList">
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1996-12.pdf" target="_blank">December</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1996-09.pdf" target="_blank">September</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1996-06.pdf" target="_blank">June</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1996-04.pdf" target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;"">
                    <p class="underLine">1995</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo2ZDQ2ZWU3MGYzN2M5Mzg2' target="_blank">March</a></li>
                        <li><a class="maroonText" href="http://aftacaa.us/_Pomos/PoMo1995-07.pdf" target="_blank">July</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;"">
                    <p class="underLine">1994</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo2MTlhZWFmYTYwMjlmYjQx' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo0MWRkMGEwNjVjYWUzNzMx' target="_blank">September</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo0ZmVkOTcwYmE5ODg3YjA3' target="_blank">June</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo3YzRmMzJjZGZlODc3Zjhm' target="_blank">March</a></li>
                    </ul>
                </div>

                <div class="floatLeft aLeft width15" style="margin-top:-1em;">
                    <p class="underLine">1993</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDoyY2NhMzI3ZDExMzMzYzgz' target="_blank">December</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDozZTZhMzQzNDQ4ZjRiOGQy' target="_blank">September</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDpmYzhjYjJjZjk3ZDI4NTQ' target="_blank">June</a></li>
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo0NzJlNTFjMjNjZDU3OGI0' target="_blank">March</a></li>
                    </ul>
                </div>

               <div class="clear"></div>

                <hr class="myHR autoMarginLeftRight" />

                <div class="floatLeft aLeft leftMargin3em width15" style="margin-top:-1em;">
                    <p class="underLine">1985</p>
                    <ul class="archList">
                        <li><a class="maroonText" href='https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxlcG9tb2RvY3VtZW50c3xneDo3MTQ5Y2RlYTE5MmI1NGQ5' target="_blank">June<br />First Issue</a></li>
                    </ul>
                </div>

               <div class="clear"></div>

            </section>
        </article>

        <article id="obituariesArt" class="myArts noDisplay">
            <asp:Label ID="Label10" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2.5em" runat="server" Text="Obituaries"></asp:Label>
            <section id="currentObits" class="obitSec aLeft centerDiv width80 padding5 autoMarginLeftRight topMargin1em block">

                <h1 class="maroonText centerText bold underLine">Recent Obituaries</h1>

                <div class="clear"></div>

<%--                <p class="pTitle centerText block padding5 maroonBorder showShadow">Currently at this time there are no Recent Obituaries</p>--%>
                
                <article>
                    <div>
                        <h2 id="LubinH2" class="obitH1">Mary Luella (Kellogg) Lubin - 3/6/2019</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="LubinPara" class="obitPara noDisplay">
                        <p>
                            <img alt="Lubin.png" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Lubin.png" />
                            Mary Lubin RN, MA, beloved wife of Michael, died on March 6, 2019 at age 86. Mary, daughter of Robert Harley Kellogg Jr. and Luella (Sampson) Kellogg, grew up in Glastonbury Connecticut, and earned a Bachelor of Science degree in Nursing, with a specialty in Public Health, from Simmons College in Boston. While in college Mary met her future husband, whom she wed in1955. As an Air Force wife Mary lived in many communities, including two three-year tours in Japan. She worked in public health agencies of New Haven CT, Sacramento CA, and Brevard County, Florida; in Boston on the faculty of Boston College, and as a volunteer in DOD overseas schools. While in Sacramento she earned an MA in Health Science from Sacramento State University. Mary was an important contributor to morale of military families, particularly when  placed in the role of commander’s wife. Upon her husband’s retirement from the USAF in 1980, the couple settled in San Leandro CA where Mary resumed her professional career, specializing in Geriatric Nursing. She held positions as Staff Developer, Director of Nursing, and Administrator in Skilled Nursing Facilities in San Leandro, Alameda and Berkeley. Mary retired as an executive of a company operating Skilled Nursing Facilities. She then became a Legal Nurse Consultant, with clients in California and the Mid-West. Mary authored chapters in several compendia dealing with legal and management aspects of Nursing Homes. Post retirement in 2003 Mary and her husband served as volunteers at the San Leandro Boys and Girls Club and participated in local duplicate bridge tournaments.  In 2015, the couple relocated from San Leandro to Piedmont Gardens, a Retirement Community in Oakland, California.
                            <br /><br />
                            Mary is predeceased by her two siblings and survived by her husband, daughter Elizabeth Lubin Hughes, son James Lubin; grandchildren Joan and Samuel Lubin, Conor and Kevin Hughes; brother-in-law Frank Mastropasqua and five nephews and nieces. 
                            <br /><br />
                            All miss Mary, and cherish memories of her. Mary’s cremains will remain with her husband, both eventually to be inurned in a military cemetery in California.
                        </p>
                        <p class="pTitle autoMarginLeftRight centerText">Celebration of Life</p>
                        <p class="width60 autoMarginLeftRight blackBorder showShadow" style="margin-top:-.5em;">
                            April 6, 2019 2-4PM<br />
                            Sky Room, Piedmont Gardens<br />
                            110 - 41st Street, Oakland, CA 94611
                            <br /><br />
                            If attending the Celebration of Life please respond to: <a href="MailTo:mikelubin@sbcglobal.net">mikelubin@sbcglobal.net</a> 
                            <br /><br />
                            Be aware that parking near Piedmont Gardens is usually very difficult.
                        </p>
                    </div>
                </article>

                <article>
                    <div>
                        <h2 id="PriceH2" class="obitH1">Willis Glenn Price - 12/20/2018</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="PricePara" class="obitPara noDisplay">
                        <p>
                            <img alt="Price.png" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Price.png" />
                            Willis Glenn Price - 83 of Valdosta passed away Thursday, December 20, 2018 at South Georgia Medical Center. He was born on August 26, 1935 in Husk, NC to the late Willard Glenn and Hattie Mae Hart Price. Mr. Price served in the United States Air Force for 20 years and was a lifelong member of the US Sergeants Association, the Retired Enlisted Association and was also a member of the alumni of the Air Force Technical Application Center. After his retirement from the Air Force, he sold real estate with The Herndon Company for 19 years. He was a member of Morningside Baptist Church. Along with his parents he was preceded in death by the mother of his children and wife of 39 years, Jean Roberts Price.
                            <br /><br />
                            Survivors include: Wife, Christine Price of Valdosta, GA; Sons and Daughters-in-law; David Glen and Lisa Price of Hahira, GA and Michael R. and Jana Price of Cookeville, TN; Sister; Norma Jean Blevins of Whitetop, VA; Brother & Sister-in-Law Billy E. and Clarsie Price of Lansing, NC; Nephew, Kenny Blevins; Nieces, Debbie Huffman and Ginger Canovai.
                            <br /><br />
                            A celebration of life was on Wednesday, December 26, 2018 at Morningside Baptist Church in Valdosta, GA. Messages of sympathy may be expressed online at <a href="www.musicfuneralservices.com" target="_blank">www.musicfuneralservices.com</a>. The compassionate and caring staff of Music Funeral Services, Azalea Crematory of Valdosta is serving Mr. Prices family.                        </p>
                    </div>
                </article>

                <article>
                    <div>
                        <h2 id="McCuneH2" class="obitH1">William J. McCune - 2/17/2019</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="McCunePara" class="obitPara noDisplay">
                        <p>
                            <img alt="McCune.jpg" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/McCune.jpg" />
                            William J. McCune passed away unexpectedly Sunday, February 17, 2019, at his home in Melbourne, Florida.  He was born May 18, 1946 in Bradford, Pennsylvania.
                            <br /><br />
                            Bill proudly served in the United States Air Force for over 22 years and went on to a second career in government contract work.  In retirement, he enjoyed golfing, bowling, bocce, attending sporting events, and having a great cup of coffee.
                            <br /><br />
                            He is survived by his wife, Gail, his daughters, Kathy (Paul) Bailey and Brenda (Joel Gonzalez) McCune, stepson Chris (Kelly) Graber, brother Butch (Berniece) McCune, six grandchildren, and several nieces and nephews.
                            <br /><br />
                            Bill never liked being the center of attention and per his wishes there will be no services.  If you wish to celebrate Bill’s life, please do so by donating to the charity of your choice or to the American Heart Association.
                            <br /><br />
                            For Condolences or flowers click <a href="https://afcfcare.com/obituaries/william-j-mccune/)" target="_blank">here.</a>
                        </p>
                    </div>
                </article>

                <article>
                    <div>
                        <h2 id="FaulconerH2" class="obitH1">William Faulconer - 2/12/2019</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="FaulconerPara" class="obitPara noDisplay">
                        <p>
                            <img alt="Faulconer.jpg" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Faulconer.jpg" />
                            William Faulconer, age 90 of Melbourne, FL entered into rest on Tuesday, February 12, 2019. He was retired 27 years from the Air Force. Born in Hinton, KY, he came to Brevard County in 1997. William was a member of Rockledge Church of Christ.
                            <br /><br />
                            He is survived by his wife, Mary N. Faulconer; daughter, Karen Faulconer Duke ; step daughter, Virginia (Ginny) Scavone; cousin, Sue Janet Williams; nephew, Donald Ray Scott; grandchildren, Tanya Clark, Jason Adams and Caitlin Duke Souzza; great grandchildren, Larry L. Clark, Bailey C. Clark, and Katelyn Davis.
                            <br /><br />
                            There will be a visitation on Tuesday, Feb 19th from 10-11am at the Life Event Center at Florida Memorial 5950 S US Hwy 1 Rockledge, FL 32955. A Funeral Service will follow at 11am, with a reception immediately after.
                            <br /><br />
                            To see the complete obituary or send flowers or condolences click <a href="https://www.dignitymemorial.com/obituaries/rockledge-fl/william-faulconer-8160236" target="_blank">here.</a>
                        </p>
                    </div>
                </article>

                <article>
                    <div>
                        <h2 id="BradfordH2" class="obitH1">Pamela J. (Pam) Bradford - 5/25/2018</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="BradfordPara" class="obitPara noDisplay">
                        <p>
                            <img alt="Bradford.jpg" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Bradford.jpg" />
                            Pamela J. (Pam) Bradford, 59, passed away Friday, May 25, 2018 at home surrounded by her family.  Pamela was born January 11, 1960 in Orlando, Florida to Doris and Robert Taylor.
                            <br /><br />
                            Pamela leaves her husband, John and daughters Cassandra Whitty and Jennifer Bradford; mother, Doris Taylor; siblings Jimmy Taylor, Patricia Marshall, Kevin Taylor, and Sharon Archer.
                            <br /><br />
                            Pamela married John Bradford on March 10, 1978 at the age of 18.  Pamela served as the wife of John who was a member of the United States Air Force.  She was very committed to her family and was instrumental in Jennifer's overcoming many health problems that resulted from being born 10 weeks prematurely.  She was a faithful member of the church of Christ and was always ready to help others in any way she was able. 
                            <br /><br />
                            A memorial service will be held at the College Avenue church of Christ in DeFuniak Springs, Florida at 7 pm on May 30th, 2018.  The family asks that donations be made to the church in lew of flowers.  You may leave condolences <a href="http://www.trahanfamilyfuneralhome.com/book-of-memories/3513675/Bradford-Pamela/service-details.php" target="_blank">by clicking here.</a>
                        </p>
                    </div>
                </article>

                <article>
                    <div>
                        <h2 id="AndersonH2" class="obitH1">Daniel Sidney Anderson Jr. - 2/9/2019</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="AndersonPara" class="obitPara noDisplay">
                        <p>
                            <img alt="Anderson_Daniel.JPG" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Anderson_Daniel.JPG" />
                            Daniel S. (Andy) Anderson, Jr., 74, passed away Saturday, February 9, 2019. Daniel was born April 15, 1944 in Charleston, South Carolina to Emily Aleene (Nettles) and Daniel Sidney Anderson, Sr. who preceded him in death.
                            <br /><br />
                            Daniel leaves his wife, Nancy; son, Daniel Scott Anderson and his wife Marlene; siblings, Erma Taylor, Charles (Rita) Anderson, Darryl (Betty) Anderson , Deleen (Donnie) Rigdon, Michael Anderson, Karen (Richard) Stevens, Terry (Theressa) Anderson; grandchildren, Taylor Alexis and Daniel Cody.
                            <br /><br />
                            Daniel entered the United States Air Force at the age of 18. He met his beloved wife, Nancy Hager Anderson, in 1968, getting married on December 27, 1969. During his 22 years in the military, Daniel obtained his Bachelor’s Degree in Finance from Rollins College and his Master’s Degree in Business Administration from Florida Institute of Technology. Daniel spent 15 of his 22 years in the military stationed at Patrick Air Force Base through 3 different tours. Other assignments included Korea, Keesler AFB MS, Reese AFB TX, and Patch Barracks, Stuttgart Germany. Choosing not to relocate his family again, Daniel retired from the United States Air Force as a Senior Master Sergeant in 1984. Upon retirement from the United States Air Force, Daniel moved into a second career working with government contractor Harris Corporation before embarking on a second retirement with Boeing Corporation at Kennedy Space Center. In retirement, Daniel liked to spend his time enjoying the company of his grandkids, fishing with his son, getting together with his military comrades, doing yard work, researching his family genealogy, golfing and going out to dinner and a movie with his wife of 49 years.
                            <br /><br />
                            Services will be 10:30 am Wednesday, February 20 at Holy Apostles Episcopal Church, 505 Grant Ave, Satellite Beach, Florida 32937. Interment will be at Cape Canaveral National Cemetery Wednesday, February 20 at 3:00 pm with full military honors.
                            <br /><br />
                            Arrangements by Beach Funeral Home East. <a href="http://beachfuneralhome.frontrunnerpro.com/book-of-memories/3730224/Anderson-Daniel/service-details.php" target="_blank">You may leave condolences here</a> 
                            <br /><br />
                            In lieu of flowers donations may be sent to Holy Apostles Episcopal Church, 505 Grant Ave, Satellite Beach FL 32937
                            To send flowers to the family of Daniel Sidney Anderson Jr., please visit our Heartfelt Sympathies Store.
                        </p>
                    </div>
                </article>

                <article>
                    <div>
                        <h2 id="HummelH2" class="obitH1">Emma Jay Hummel - 11/7/2018</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="HummelPara" class="obitPara noDisplay">
                        <p>
                            <img alt="Hummel.jpg" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Hummel.jpg" />
                            On Wednesday November 7, 2018, Emma Jay Hummel, loving wife and mother of 3 children, passed away peacefully at the age of 72 from natural causes. Jay, as she went by, was born July 9, 1946 in Evansville, Indiana to Vernon and Mary Bays.
                            <br /><br />
                            She worked as a Financial Office Manager during her working years. On June 18, 1971 she married Robert (Bob) E. Hummel. They raised 2 sons, a son from a previous marriage Wayne A. Brewer Jr. and Nathan E Hummel, and a daughter, Andrea E. (Mortonson) Hummel. Jay enjoyed traveling and the adventure of living in Japan for 8 years when Bob was stationed there for two tours while in the military. She was an Elvis Presley fan and loved listening to his recordings. Jay was also an avid Bingo player and enjoyed the friendship of the many friends she made while playing.
                            <br /><br />
                            Jay was preceded in death by her mother, Mary, her father, Vernon and a brother, Rudy. She is survived by her husband, Bob, and 3 children, Wayne, Nathan and Andrea, her brother Larry, her sister Mary Lou, several nieces and nephews, and numerous grandchildren. Jay cherished the time she was able to spend with family, especially doting on her grandchildren.
                            <br /><br />
                            A private service will be held on Sunday, November 12 for immediate family and a few close friends. There will be no visitation hours. Jay’s family asks that a donation be made to your favorite Children’s Charity in lieu of sending flowers. Jay we will miss you terribly but will always carry your memory in our hearts.                        </p>
                    </div>
                </article>

                <article>
                    <div>
                        <h2 id="RidensH2" class="obitH1">Donna J. Ridens - 1/28/2019</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="RidensPara" class="obitPara noDisplay">
                        <p>
                            Donna J. Ridens, 76, born in Stamford, Texas passed away on Monday, January 28, 2019 in Palm Bay. She was a mortgage company Vice President. Donna will now join her husband of 54 years Hubert "Rusty" Ridens, Jr. She is survived by her son and daughter in law, Kevin and Michelle Ridens and grandchildren, Stephanie and Stevie. A private service will be held at Cape Canaveral National Cemetery. 
                            Donations may be made to the <a href="https://brownliemaxwell.com/" target="_blank">Brownlie-Maxwell Funeral Home </a>
                            <br /><br />
                            Published in FLORIDA TODAY on Feb. 3, 2019
                        </p>
                    </div>
                </article>

                <article>
                    <div>
                        <h2 id="LeathersH2" class="obitH1">David Carroll Leathers - 1/19/2019</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="LeathersPara" class="obitPara noDisplay">
                        <p>
                            <img alt="Leathers.png" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Leathers.png" />
                            David Carroll Leathers passed away in his sleep at his home in Melbourne, FL on Saturday, January 19, 2019 at the age of 65.
                            David is predeceased by his parents, Carroll L and Esther M Leathers, and his brother, Allen L Leathers.
                            David is survived by his loving son Shawn Leathers.
                            David is lovingly remembered by his son Shawn Leathers of Somersworth, NH; Shawn’s mother Barbara Bayliss, and Shawn’s sister Cara Bayliss, granddaughters Victoria Leathers, Makayla Leathers, Katelynn Leathers and Arebella Leathers; David’s sister, Diana (Leathers) Seroski and husband Ronald Seroski of Palm Bay, FL, sister Beverly Leathers of Dover, NH, sister Nancy (Leathers) Forzese and husband Joseph Forzese of Lawrence, MA; Brother Charles K Leathers and wife Jane M Leathers of Palm Bay, FL; and many loving nieces, nephews and other relatives.
                            David was born in Portsmouth, New Hampshire in 1953. He graduated from Portsmouth Senior High School in 1971 and went on to serve the US Navy and US Air Force and retired from active duty on June 1994. David enjoyed painting, watching sports, especially baseball, as well as movies, music, reading and spending time with his family and friends.
                            <br /><br />
                            A Celebration of Life will be planned this Spring so as to allow David’s many family and friends to attend.  Date of this event will be forthcoming. 
                            <br /><br />
                            In lieu of flowers, memorial donations may be made to the <a href="https://www.copdfoundation.org/Take-Action/Donate/Make-a-Donation.aspx" target="_blank">Chronic Obstructive Pulmonary Disease (COPD)</a>  
                            <br /><br />
                            Condolences for the family may be offered <a href="https://afcfcare.com/obituaries/david-carroll-leathers/" target="_blank">by clicking here.</a> 
                        </p>
                    </div>
                </article>

                <article>
                    <div>
                        <h2 id="BennettH2" class="obitH1">Edmund C. Bennett - 5/21/2018</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="BennettPara" class="obitPara noDisplay">
                        <p>
                            <img alt="Bennett.png" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Bennett.png" />
                            Msgt. USAF Edmund C. Bennett, retired, 75, of Shiloh, Illinois, born Thursday, July 2, 1942, in East St. Louis, Illinous passed away Monday, May 21, 2018 at Cedarhust of Shiloh in Shiloh Illinois.
                            <br /><br />
                            <strong>He was preceded in death by his:</strong><br />
                            &nbsp;&nbsp;Wife; Sandra "Sandi" Sue Bennett nee Pitzer<br />
                            &nbsp;&nbsp;Parents; Edmund C. and Doris nee Wodochek Bennett
                            <br /><br />
                            <strong>Surviving are his children:</strong><br />
                            &nbsp;&nbsp;Kristina Menn of Sun City, AZ<br />
                            &nbsp;&nbsp;CPO OSN Retired Mark E. (Dawn) Nennett of York, PA<br />
                            &nbsp;&nbsp;Eric Bennett of Shiloh, IL<br />
                            &nbsp;&nbsp;Son-in-Law: Frank Menn of Fairview Heights, IL<br />
                            &nbsp;&nbsp;Brother: Ronald Bennett of Westminster, CO<br />
                            &nbsp;&nbsp;5 Grandchildren<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;Nicholas Menn<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;Matthew Menn<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;Jonathan Bennett<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;Kerri Bennett<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;Melanie Bennett
                            <br /><br />
                            <strong>Memorials:</strong> Memorials may be made to The Michael J. Fox Foundation for Parkinson's Research.
                        </p>
                    </div>
                </article>


                <article>
                    <div>
                        <h2 id="CrouseH2" class="obitH1">Steven Edward Crouse - 1/15/2019</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="CrousePara" class="obitPara noDisplay">
                        <p>
                            <img alt="Crouse.png" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Crouse.png" />
                            Steven Edward Crouse, age 57, of 13181 Ladybank Lane, Herndon, Virginia, passed away suddenly on Tuesday, January 15th, 2019. Steve was born in June 1961, to Harold and Beverly Crouse. Steve graduated from St. Mary’s Ryken High School in 1979, where he ran track and played soccer.  Steve went on to proudly serve in our United States Air Force for 20 years. While Steve was enlisted, he also attained a Bachelor’s Degree in Accounting from Rollins College and received many awards, including the Air Force Achievement Medal, the Joint Service Commendation Medal, the Meritorious Service Medal and the Humanitarian Service Medal. Once retiring from the Air Force, he spent his career dedicated to ensuring our country’s safety and security through employment on the civilian side. Along the way, Steve met the love of his life, Robyn, who he then married and started a family with. Steve will be remembered for his infectious personality, incredible laugh, bright smile, dedication to service, love of the Indianapolis Colts and the Washington Capitals, and ultimately, his kindness and compassion for others. He is survived by his wife, Robyn; daughter, Brittany; mother, Beverly; brother, David; sister, Susan; four nieces, Kim, Trina, Madison, and Riley; four nephews, Tony, Sam, Jake, and Trevor; in-laws, John, Deanna, Karri, Brian, and Paula; as well as countless amounts of friends. Family, friends, and others whose lives Steve touched are invited to the Adams-Green Funeral Home, 721 Elden Street, Herndon, Virginia, Saturday, February 2nd, 2019, to reminisce, grieve, and support each other. The viewing will be from 1:00 P.M. – 2:00 P.M, and the memorial service from 2:00 P.M – 3:00 P.M. After the service, please join us from 3:30 P.M. - 6:30 P.M. for a celebration of life ceremony at The Bungalow (13891 Metrotech Dr, Chantilly, VA 20151).
                            <br /><br />
                            Steve's final resting place will be inurnment at Arlington National Cemetery at a later date yet to be determined.
                            <br /><br />
                            In lieu of flowers, the family kindly requests that donations be made in Steve’s name to any of the following charities: 
                        </p>
                            <ul class="width50 autoMarginLeftRight maroonBorder padding5">
                                <li><a href="https://www2.heart.org/site/SPageNavigator/donatenow_heart.html" target="_blank">The American Heart Association</a></li>
                                <li><a href="https://garysinisefoundation.org/" target="_blank">The Gary Sinise Foundation</a></li>
                                <li><a href="https://hart90.org//" target="_blank">The Homeless Animals Rescue Team (HART)</a></li>
                            </ul>
                        <p>
                            All of which are charities that were important to Steve.
                            <br /><br />
                            <a class="centerText" style="font-size:1.3em;" href="https://adamsgreen.com/tribute/details/10458/Steven-Crouse/obituary.html#tribute-start" target="_blank">Click here to sent condolances, flowers, etc</a>
                            <br /><br />
                            If you are traveling out of town, nearby hotels include the Hyatt House (467 Herndon Pkwy, Herndon, VA 20170), Residence Inn Marriott (315 Elden St, Herndon, VA 20170), and Hampton Inn and Suites (435 Herndon Pkwy, Herndon, VA 20170).
                        </p>
                    </div>
                </article>


                <article>
                    <div>
                        <h2 id="WilladsenH2" class="obitH1">Cary Willadsen - 1/3/2019</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="WilladsenPara" class="obitPara noDisplay">
                        <p>
                            <img alt="Willadsen.png" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Willadsen.png" />
                            Cary Willadsen, of Mt Pleasant passed away Thursday, January 3, 2019 in Tyler, Texas at the age of 79.
                            <br /><br />
                            Cary was born Oct 7, 1939 in Sheboygan, Wisconsin. He graduated from Sheboygan Falls high school in 1957.
                            <br /><br />
                            He married Mildred Miner, Jan 14, 1962 at Nevill’s Chapel Baptist Church, Mt. Pleasant, Texas. He retired as a Tech Sergeant in the USAF after serving 20 years and 15 years with Texas Utilities.
                            <br /><br />
                            He is survived by his loving wife Mildred Willadsen of Mt Pleasant, daughter Robin Willadsen-Lancien and spouse Patrice of Richardson, son Eric Willadsen and wife Michelle of Richardson; 6 grandchildren; Cameron Lancien, Caitlan Lancien, Mia Boye, Aidan Boye, Garrett Willadsen, and Kaleb Willadsen. Sisters Mary Ellen and spouse Dennis Reineking, and Diane Willadsen. Brothers David Willadsen, Allan & Sharon Willadsen, Scott & Karen Willadsen as well as 8 nieces and nephews and 4 great nieces and nephews.
                            <br /><br />
                            In lieu of flowers, please make a donation in his name to the Disabled American Veterans (DAV). A military graveside service will take place at Nevill’s Chapel Cemetery on January 20, 2018 at 1:00 p.m.                        </p>
                     </div>
                </article>



                <article>
                    <div>
                        <h2 id="GriffinH2" class="obitH1">Richard E. Griffin - 12/5/2018</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="GriffinPara" class="obitPara noDisplay">
                        <p>
                            <img alt="Griffin.jpg" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Griffin.jpg" />
                            Richard E. "Grif" Griffin, born November 17, 1944 in Concordia, KS, died December 5, 2018 in Sacramento, CA at age 74. Grif enlisted in the U.S. Air Force in 1962 launching a lifelong career in electronics. He attained the rank of Master Sergeant while serving in the 1155th Technical Operations Squadron of the Air Force Technical Applications Center responsible for nuclear treaty monitoring and nuclear event detection. Grif retired in 1982 after 20 years' service. From 1968 - 1982 while with AFTAC, he traveled the world installing and maintaining seismic equipment. These travels included three years spent in Alice Springs, Australia. Following retirement, Grif embarked on a 31-year secondary career in bio-medical engineering with Sutter Health in Sacramento. He was extremely proud to be involved in the opening of five new hospitals including Sutter Roseville Medical Center and Sutter Medical Center/Anderson Lucchetti Women's and Children's Center in Sacramento. Grif is survived by his wife of 52 years, Sue, children Sean and Robyn, and siblings Roy and Bernice. A celebration of Grif's life will take place Saturday January 26, 2018 from 1:00 - 3:00 PM at the Lakeview Village Mobile Home Park Clubhouse, 6211 Summerset Lane, Citrus Heights, CA. To honor his love for animals, donations may be made in his memory to the Dogwood Animal Project, 1415 Fulton Road, Suite 205, PO Box 432, Santa Rosa, CA or via DogwoodAnimalRescueProject.org (Nonprofit tax ID: 81-1178819)
                            <br /><br />
                            Published in The Sacramento Bee on Jan. 20, 2019
                        </p>
                        
                     </div>
                </article>



                <article>
                    <div>
                        <h2 id="BaumanH2" class="obitH1">Larry Bauman - 1/1/2019</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="BaumanPara" class="obitPara noDisplay">
                        <p>
                            <img alt="Bauman.png" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Bauman.png" />
                            Obituary for Larry Bauman Information provided by Gary Hamm
                            <br /><br />
                            L.G. Bauman Born Nov. 7, 1943 Died Jan. 1, 2019
                            Complications from cancer<br />
                            Time of service: 1962- 1968<br />
                            MCL 1963-1964  Other locations 1964 - 1968<br /><br />
                            He was never married. Traveled extensively. An avid, hiker for many years... full of enthusiasm and energy.
                            Larry worked at the Rocky Flats Nuclear Weapons Plant for 28 years as a chemical technician - routinely 
                            working with plutonium and uranium in a glovebox environment. My family will miss him greatly.
                            I met Larry at Lowry in 1962... and have been good friends ever since.
                            <br /><br />
                            I believe some folks that may remember him are:  Bart Bias, Donald Paisely, Tom Osborne and Norman Stoldt (for sure). 
                            <br /><br />
                            Please visit this site for sending condolences: <a href="https://www.heritagefuneralcremation.com/notices/Lawrence-Bauman" target="_blank">Heritage Funeral and Cremation Services</a>
                        </p>
                        
                     </div>
                </article>

                <article>
                    <div>
                        <h2 id="BiddleH2" class="obitH1">Timothy J. Biddle - 12/9/2018</h2>
                    </div>

                    <div class="clear"></div>

                    <div id="BiddlePara" class="obitPara noDisplay">
                        <p>
                            <img alt="Biddle.png" class="floatLeft width30 rightMarginHalfem" src="_Photos/obitpics/Biddle.png" />
                            Timothy J. Biddle, 63, of Melbourne passed away on Sunday December 9, 2018.
                            <br />
                            He was a retired Master Sgt. USAF at Air Force Technical Application Center PAFB after 24 years and later a Field Project Manager/Administrator at Italian Terrazzo and Tile in Melbourne. He also was a member of the Jeep Club.
                            <br /><br />
                            Survivors include his wife, Marie, daughter Mieko (Brian) Barker, granddaughter Jordan, mother Retta Biddle, sister Cathy (Steve) Diehl
                            nephew, Chris Diehl, niece, Emily Felty and brothers in law, Mike, Jonathan and Mitchell Dochterman.
                            A celebration of his life with USAF Honors will be held on Saturday January 19th at 4pm in the Brownlie-Maxwell Funeral Chapel.
                            You will be forever missed and forever loved.
                            <br /><br />
                            Condolences can be sent bt clicking <a href="http://brownliemaxwell.com/obituaries/timothy-j-biddle/" target="_blank">here</a>.
                        </p>
                        
                     </div>
                </article>

            </section>

            <section id="archivedObits" class="obitSec centerDiv width80 noDisplay padding5 autoMarginLeftRight smallShadow topMargin1em maroonBorder">
                
                <h1 class="maroonText centerText bold underLine">Archived Obituaries</h1>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="pnlObit" CssClass="floatLeft leftMargin1em width25" Visible="true" runat="server">
                            <asp:ListBox ID="lstObits" runat="server" CssClass="maroonBorder floatLeft smallShadow padding5" Font-Size=".8em" 
                                Font-Bold="true" ForeColor="DarkBlue" OnSelectedIndexChanged="lstObits_SelectedIndexChanged" 
                                AutoPostBack="True" Rows="25" BackColor="SandyBrown">
                            </asp:ListBox>

                            <div class="floatLeft">
                                <div class="clear topMargin1em"></div>
                                <asp:Label ID="Label14" runat="server" Font-Bold="true" ForeColor="Maroon" Text="Find an Obituary"></asp:Label>
                                <div class="clear topMarginHalfem"></div>
                                <asp:TextBox ID="txtObitName" Font-Size="1em" CssClass="padding5" Font-Bold="true" ForeColor="Maroon" Width="75%" runat="server"></asp:TextBox>
                                <div class="clear topMarginHalfem"></div>
                                <asp:Button ID="btnFindObit" CssClass="myBut" Font-Size="1em" runat="server" Text=" Find " OnClick="btnFindObit_Click" />
                                <div class="clear topMarginHalfem"></div>
                                <asp:Label ID="lblObitMess" runat="server" Visible="false" CssClass="maroonBorder padding5" Font-Size=".75em" Font-Bold="true" Font-Italic="true" BackColor="Yellow" ForeColor="Red" Text=""></asp:Label>
                                <p class="centerText italic maroonText" style="font-size:1.2em;">Only Names that are followed by an "*" have obituaries.<br />We are working very hard to get the others into the program.</p>
                                <asp:Label ID="lblObitID" runat="server" Font-Bold="true" ForeColor="Maroon" Text=""></asp:Label>
                            </div>
                        </asp:Panel>

                        <article id="myObitArt" class="floatLeft leftMargin5em width60" runat="server">
<%--                            <asp:TextBox ID="txtmyObit" CssClass="maroonBorder smallShadow topMargin1em" runat="server" Width="95%" Height="45em" Visible="false" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>--%>
                            <asp:Image ID="imgMemory"  ImageUrl="~/_Images/lovingmemory.jpg" CssClass="autoMarginLeftRight width60 topMargin1em maroonBorder smallShadow bottomMargin2em" Visible="true" runat="server" />
                        </article>


                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="clear"></div>

            </section>

            <section id="noObit" class="obitSec centerDiv width80 noDisplay padding5 autoMarginLeftRight smallShadow topMargin1em maroonBorder">
                
            </section>

            <input id="btnTaps" class="autoMarginLeftRight block myBut topMargin1em bottomMargin1em" type="button" value=" Stop Taps " />

            <div id="tapsControls" class="block">
                <div id="divVolume" class="width40 autoMarginLeftRight">
                    <p class="centerText" style="font-size:2em;">Taps Volume</p>
                    <div class="clear"  style="margin-top:-2em;"></div>
                    <input id="btnTapsDown" class="myBut" type="button" value="&lt;&lt; Down" />
                    <span id="spanVolume" class="maroonText bold leftMargin1em" style="font-size:2em;">0.1</span>
                    <input id="btnTapsUp" class="myBut leftMargin1em" type="button" value="Up &gt;&gt;"/>
                </div>
            </div>
            
            <audio id="audioTaps" preload="auto" loop="loop" class="noDisplay" controls="controls" >
                <source src="_Audio/taps.ogg" type="audio/ogg"/>
                <source src="_Audio/taps.mp3" type="audio/mpeg"/>
                Your browser does not support the audio element.
            </audio>

        </article>

        <article id="sageShopArt" class="myArts noDisplay bottomMargin7em">
            <asp:Label ID="Label16" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2.5em" runat="server" Text="SAGE SHOP"></asp:Label>

            <asp:HyperLink ID="HyperLink5" CssClass="myBut butA" Font-Underline="false" NavigateUrl="~/_PDFs/SageStore.pdf" Target="_blank" runat="server"> Enter Sage Shop </asp:HyperLink>

            <p class="centerText">
                The ordering information has been updated as follows:<br />
                Mail orders, unless otherwise instructed, to:  <br /><br />AFTAC Alumni Assn, <br />ATTN: Sage Shop, MSgt Travis Goll <br />Box 254892, Patrick AFB FL, 32925-0892 <br /><br />
                Phone 321-494-3739 <br />Email: <a class="redText underLine" href="MailTo:john.goll@us.af.mil">john.goll@us.af.mil</a><br /><br />
                <span class="italic underLine darkRedText">Add $5.00 for shipping/handling of 1 Item & $1.50 for each additional. (no shipping cost for Logo pins)</span>
            </p>
        </article>

        <article id="calendarArt" class="myArts noDisplay">
            <asp:Label ID="Label9" CssClass="block" ForeColor="DarkRed" Font-Bold="true" Font-Size="2.5em" runat="server" Text="CALENDAR OF EVENTS"></asp:Label>
            <img alt="Calendar"class="floatLeft leftMargin2em topMargin1em width10 smallShadow" src="_Images/calendar.jpg" />
            <div class="floatLeft leftMargin7em width60">
                <p class="centerText pTitle">
                    Active Duty / AFTAC Alumni Association <br />
                    Current Calendar of Events
                </p>

                <div class="topMargin1em"></div>

                <asp:HyperLink ID="HyperLink1" CssClass="myBut butA" Font-Underline="false" NavigateUrl="_PDFs/Calendar.pdf" Target="_blank" runat="server"> Show Calendar </asp:HyperLink>

            </div>
            
            <div class="clear"></div>

            <p class="pTitle centerText topMargin1em">
                Review these events periodically.  Many are designed for you. Plan to attend them if you can.
            </p>

            <p class="italic centerText darkRedText" style="font-size:2em;">
                If there are any questions please email our Publicity Chairman, <a class='redText underLine' href="MailTo:oceanblueview@yahoo.com" style="font-size:1em;">Sean Ryan</a>
            </p>
        </article>

        <article id="electedBoardArt" class="myArts width45 noDisplay autoMarginLeftRight floatLeft topMargin1em maroonBorder padding10 smallShadow">
            <h2 class="centerText maroonText bold">Elected Board</h2>
            <ul class="officersList">
                <li>
                    <img alt="Ed Linsey" class="width25 topMargin1em maroonBorder smallShadow" src="_Photos/Board Members/Linsey.png" />
                    <div class="maroonText inlineBlock topMargin2em leftMargin1em">
                        Ed Lindsay<br />(President)
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img alt="Jim Whidden" class="width25 topMargin1em maroonBorder smallShadow" src="_Photos/Board Members/whidden.png" />
                    <div class="maroonText inlineBlock topMargin2em leftMargin1em">
                        Jim Whidden<br />(Vice President)
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img alt="Arlin Massey" class="width25 topMargin1em maroonBorder smallShadow" src="_Photos/Board Members/massey.png" />
                    <div class="maroonText inlineBlock topMargin2em leftMargin1em">
                        Arlin Massey<br />(Secretary)
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img alt="Head Outline" class="width25 topMargin1em maroonBorder smallShadow" src="_Photos/Board Members/Ryan.png" />
                    <div class="maroonText inlineBlock topMargin2em leftMargin1em">
                        Sean Ryan<br />(Treasurer)
                    </div>
                    <div class="clear"></div>
                </li>
            </ul>
        </article>

        <article id="selectedBoardArt" class="myArts noDisplay width90 noDisplay floatLeft autoMarginLeftRight maroonBorder smallShadow">
            <h2 class="centerText maroonText bold">Appointed Board</h2>
            <ul class="aLeft width45 floatLeft appOfficersList">
                <li>
                    <img alt="Chief Joseph" class="width30 floatLeft topMargin1em maroonBorder smallShadow" src="_Photos/Board Members/Joseph.png" />
                    <div class="maroonText floatLeft topMargin2em leftMargin1em">
                        CMSgt Michael Joseph<br />(Activities)
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img alt="John Horsch" class="width30 floatLeft topMargin1em maroonBorder smallShadow" src="_Photos/Board Members/horsch.jpg" />
                    <div class="floatLeft maroonText topMargin1em leftMargin1em">
                        John Horsch<br />(AOY Coordinator and<br />Post Monitor/Web)
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img alt="Head Outline" class="width30 floatLeft topMargin1em maroonBorder smallShadow" src="_Photos/Outline of Head.png" />
                    <div class="floatLeft maroonText topMargin2em leftMargin1em">
                        Mike Young<br />(Hall of Heritage)
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img alt="Bob Wiley" class="width30 floatLeft topMargin1em maroonBorder smallShadow" src="_Photos/Board Members/Wiley.png" />
                    <div class="floatLeft maroonText topMargin2em leftMargin1em">
                        Bob Wiley<br />(Hall of Heritage)
                    </div>
                    <div class="clear"></div>
                </li>
                <li>
                    <img alt="Judy Henderson" class="width30 floatLeft topMargin1em maroonBorder smallShadow" src="_Photos/Board Members/Judy-June2016.jpg" />
                    <div class="floatLeft maroonText topMargin2em leftMargin1em">
                        Judy Henderson<br />(Hospitality)
                    </div>
                    <div class="clear"></div>
                </li>

            </ul>

            <ul class="aLeft width45 leftMargin2em floatLeft appOfficersList">

                <li>
                    <img alt="Frank Calenda" class="width30 floatLeft topMargin1em maroonBorder smallShadow" src="_Photos/AOY/calenda.png" />
                    <div class="floatLeft maroonText topMargin2em leftMargin1em">
                        Frank Calenda<br />(Webpage Services)
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img alt="Michael Steskal" class="width30 floatLeft topMargin1em maroonBorder smallShadow" src="_Photos/Board Members/Steskal-2016.png"/>
                    <div class="floatLeft maroonText topMargin2em leftMargin1em">
                        Michael Steskal<br />(Membership)
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img alt="Sean Ryan" class="width30 floatLeft topMargin1em maroonBorder smallShadow" src="_Photos/AOY/ryan.png" />
                    <div class="floatLeft maroonText topMargin2em leftMargin1em">
                        Sean Ryan<br />(Publicity/Social<br />Functions)
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img alt="OutlineofHead.png" class="width30 floatLeft topMargin1em maroonBorder smallShadow" src="_Photos/Outline of Head.png" />
                    <div class="floatLeft maroonText topMargin2em leftMargin1em">
                        MSgt Travis Goll<br />(Sage Shop)
                    </div>
                    <div class="clear"></div>
                </li>


            </ul>

            <div class="clear"></div>
        </article>

        <article id="deploymentArt" class="myArts noDisplay">
            <div class="leftMargin2em">
                <div class="floatLeft width20">
                    <img alt="AFTAC Symbol" class="width80 inlineBlock thinMaroonBorder smallShadow" src="_Images/AFTAC Smybol.png" />
                </div>
                <div class="floatLeft topMargin1em width50">
                    <asp:Label ID="Label18" CssClass="block autoMarginLeftRight" ForeColor="DarkRed" Font-Bold="true" Font-Size="1.7em" runat="server" Text="'AFTAC Cares' for Deployed"></asp:Label>
                    <asp:Label ID="Label19" CssClass="block autoMarginLeftRight" ForeColor="DarkRed" Font-Bold="true" Font-Size="1.2em" runat="server" Text="3/15/2017 Posting. We have five deployed."></asp:Label>
                </div>
                <div class="floatLeft width25">
                    <img alt="AFTAC Symbol" class="width100 inlineBlock" src="_Images/AFTACares.png" />
                </div>
            </div>

            <div class="clear"></div>

            <div class="maroonBorder topMargin1em paddingHalfem aLeft smallShadow">
                <p class="centerText underLine">CURRENT UPDATES:</p>

                <p>
                    Recent 'Thank You's' (NOTE: date(s) below are posting date(s), not the date of the original email/letter):
                    <br /><br />
                    07.14 Posting. Please tell the powers that be that I received my AFTAC Spouses care package and am very appreciative.  Thanks, V/r Mike Myers, Capt, USAF
                    <br /><br />
                    05.06 Posting. It’s already been three months!! I hope the next three fly by just as fast. Work is about the same, samples come in, we test them, instruments break down, I look tbaround for something to break, nothing is available, I eat chocolate, call another lab to get help, my lab techs take the instrument apart, everything magically starts working again, then we repeat the process. It’s lovely. So I might be exaggerating a little. We’ve really only had a couple of problems with instruments and to be honest it makes the day much more exciting when they break down. Being in Al Udeid is great, I basically get to experience all the advantages of being deployed without any of the disadvantages. Granted, I am excited to see plants again and have an air conditioning unit that doesn't blow clouds of dust everywhere but there are some definite bonuses. For example, last week we received several boxes of Girl Scout cookies and a cute note from the troops. The cookies were delicious! A couple of weeks ago I was off base with some of the other CGOs and discovered an amazing cupcake shop (which is actually called Amazing Cupcakes) and yes they taste just as good as they look. I wish I could fit the entire store in my suitcase. Last week I also had a chance to tour a B-1 with some other poor CGOs who (like me) hardly ever get to work with or even see planes. Hope everyone is doing well! --Jennie Wood       
                </p>
            </div>

            <div class="maroonBorder topMargin1em paddingHalfem aLeft smallShadow">
                <p class="centerText underLine">HISTORY:</p>
                <p>
                    <a class="redText underLine" href="https://www.facebook.com/rebecca.barron.7773/about?lst=1291431854%3A100009280439772%3A1489682246" target="_blank">Contact AFTAC Spouses</a>
                </p>
                <p>
                    In 2007 The AFTAC Spouses started 'AFTAC CARES,' a program to send 'care' packages to deployed AFTACers and family members/friends. Contact AFTAC Spouses for information. 
                </p>

                <p>
                    <span class="mySpan">Website Editor's Note:</span>
                    The Alumni Association actively supports 'AFTAC Cares' and asks that all Sages be involved. "Thank You's" are encouraged and can be sent to AFTAC Spouses. 
                </p>

                <p>
                    <span class="mySpan">AFTAC Spouses Notice:</span> 
                    Help with the packing is appreciated. To contact the The AFTAC Spouses  or the <a class="redText underLine" href="/_PDFs/Calendar.pdf" target="_blank">'Calendar of Events'</a>, for date and location information. Feel free to send a 'Friend Request' or join the AFTAC Spouses Group by contacting AFTAC Spouses.

                </p>
            </div>

            <div class="maroonBorder topMargin1em paddingHalfem aLeft smallShadow">
                <p class="centerText underLine">PROGRAM DETAILS:</p>

                <p>
                    On February 2017, five care packages were sent to our deployed personnel containing many items suggested by those recently returning.  Many packages have been sent since that time.
                </p>

                <p class="centerText">
                    Some suggested items are, but not limited to:
                </p>

                <div class="centerDiv">
                    <ul id="ulSuggestedItems" class="darkBlueText width50 autoMarginLeftRight maroonBorder">
                        <li>Socks</li>
                        <li>Baby wipes</li>
                        <li>Gold Bond powder</li>
                        <li>Individual microwaveable brownies</li>
                        <li>Drink mixes</li>
                    </ul>
                </div>

                <p>
                    Magazines should be sent in a flat rate priority mail box. This ensures that the packages would proceed directly to the military member and not be held up in a processing center.
                </p>

                <p>
                    Other items should be small to keep the mailing costs down and should be items that are useful in a remote location and not frivolous (i.e. a minion doll)
                </p>

            </div>

            <div class="maroonBorder topMargin1em paddingHalfem aLeft smallShadow">
                <p class="centerText underLine">CONTACT US IF IN DOUBT:</p>

                <p>
                    We are continually in the process of preparing care packages and collecting the names and addresses of our deployed family members. Volunteer help is greatly appreciated.                
                </p>

                <p>
                    Monetary donations, both mailed and in person, have been received and are very much appreciated. If mailing, please send them to the following:
                </p>

                <p class="centerText width50 maroonBorder autoMarginLeftRight">
                    AFTAC Alumni Association <br />
                    P.O. Box 254892 <br />
                    Patrick AFB, FL 32925-0892
                </p>

                <p>
                    Mark them, 'AFTAC Cares Program,' and direct their use, if you desire. That PO Box is checked on a regular basis. If writing a check, please make out to Diane Widden since the spouses are not an official organization in any way. She will make sure the funds are used as you direct.
                </p>
            </div>
        </article>

        <article id="adminMenuArt" class="myArts noDisplay">
            <p class="pTitle centerText">Administrative Menu</p>

            <div class="width60 autoMarginLeftRight bottomMargin2em maroonBorder smallShadow">
                <asp:Button ID="btnMemAdmin" CssClass="smallBut autoMarginLeftRight block topMargin1em bottomMargin1em" runat="server" Text=" Membership Administration " onclick="btnMemAdmin_Click"/>
                <asp:Button ID="btnPickWinner" CssClass="smallBut topMargin1em autoMarginLeftRight block fontSize1em" Visible="false" runat="server" Text=" Pick a Winner " OnClick="btnPickWinner_Click" />
                <hr class="myHR" />
                <div class="clear bottomMargin1em"></div>
                <p id="myReports" class="centerText underLine" style="margin-top:-1.2em;">Reports</p>
                <div class="clear bottomMargin1em"></div>
                <asp:Button ID="btnModLog" CssClass="smallBut autoMarginLeftRight block bottomMargin1em fontSize1em" style="margin-top:-1.5em;" runat="server" Text=" Modification Log " OnClick="btnModLog_Click" />
                <div class="width50 autoMarginLeftRight">
                    <asp:Button ID="elladdresses" CssClass="smallBut floatLeft fontSize1em" runat="server" Text=" E-all Addresses " OnClick="elladdresses_Click" />
                    <asp:Button ID="allemail" CssClass="smallBut floatLeft leftMargin2em bottomMargin1em fontSize1em" runat="server" Text=" All Addresses " OnClick="allemail_Click" />
                    <div class="clear bottomMargin1em"></div>
                </div>

                <div class="bottomMargin1em" style="margin-top:-1em;">
                    <asp:Button ID="localelladdresses" CssClass="smallBut autoMarginLeftRight fontSize1em" runat="server" Text=" Local E-All Addresses " OnClick="localelladdresses_Click" />
                </div>
            </div>
        </article>

        <asp:Panel ID="winnerPnl" Visible="false" runat="server">
            <div class="width60 leftMargin20em">
                 <p class="pTitle centerText">The Winner Is....</p>

                <div>
                    <asp:Label ID="lblWinId" runat="server" ForeColor="DarkRed" Font-Bold="true" Font-Size="1.5em" Text="ID#: "></asp:Label>
                    <asp:Label ID="lblWinName" runat="server" CssClass="leftMargin2em" ForeColor="DarkRed" Font-Bold="true" Font-Size="1.5em" Text="Name: "></asp:Label>
                </div>

                <div>
                    <asp:Label ID="lblWinAddress" runat="server" ForeColor="DarkRed" Font-Bold="true" Font-Size="1.5em" Text="Address: "></asp:Label>
                </div>

                <div>
                    <asp:Label ID="lblWinCity" runat="server" ForeColor="DarkRed" Font-Bold="true" Font-Size="1.5em" Text="City: "></asp:Label>
                    <asp:Label ID="lblWinState" runat="server" CssClass="leftMargin2em" ForeColor="DarkRed" Font-Bold="true" Font-Size="1.5em" Text="State: "></asp:Label>
                    <asp:Label ID="lblWinZip" runat="server" CssClass="leftMargin2em" ForeColor="DarkRed" Font-Bold="true" Font-Size="1.5em" Text="Zip Code: "></asp:Label>
                </div>

                <div>
                    <asp:Label ID="lblWinEmail" runat="server" ForeColor="DarkRed" Font-Bold="true" Font-Size="1.5em" Text="Email: "></asp:Label>
                    <asp:Label ID="lblWinPhone" runat="server" CssClass="leftMargin2em" ForeColor="DarkRed" Font-Bold="true" Font-Size="1.5em" Text="Phone: "></asp:Label>
                </div>

                <asp:Button ID="btnPickAnother" CssClass="smallBut autoMarginLeftRight block" runat="server" Text=" Pick Another " OnClick="btnPickAnother_Click" />
                <asp:Button ID="btnWinReturnMenu" runat="server" CssClass="smallBut bottomMarginHalfem topMargin1em autoMarginLeftRight block" Text=" Return to Admin Menu " OnClick="btnWinReturnMenu_Click"/>
            </div>
        </asp:Panel>

        <article id="passwordArt" class="myArts noDisplay">
            <div class="width60 autoMarginLeftRight bottomMargin2em">
                <p class="pTitle centerText underLine">ENTER USER NAME AND PASSWORD</p>
            
                <div class="maroonBorder showShadow">
                    <p>
                        <asp:Label ID="Label33" CssClass="leftMargin4em inline" ForeColor="Maroon" Font-Bold="true" runat="server" Text=" User Name: "></asp:Label>
                        <asp:TextBox ID="txtPWUserName"  CssClass="padding5 inline" Width="10em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server"></asp:TextBox>
                    </p>

                    <p>
                        <asp:Label ID="Label35" CssClass="leftMargin4em inline" ForeColor="Maroon" Font-Bold="true" runat="server" Text="Password: "></asp:Label>
                        <asp:TextBox ID="txtPWPassword" CssClass="padding5" Width="10em" Font-Size="1em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server" TextMode="Password"></asp:TextBox>
                    </p>

                    <asp:Label ID="lblPWError" BackColor="Yellow" Font-Size="1em" Font-Bold="true" CssClass="autoMarginLeftRight padding5 maroonBorder smallShadow" ForeColor="Red" Visible="false" runat="server" Text="Label"></asp:Label>
                    
                    <div id="pwErrBox" class="pwErrs noDisplay width90 autoMarginLeftRight backYellow maroonBorder showShadow topMargin1em">
                        <%--Placeholder to show error message--%>
                    </div>

                    <p class="centerText block">
                        <asp:Button ID="btnPWSubmit" CssClass="smallBut inline" runat="server" Text=" Submit " OnClick="btnPWSubmit_Click" />
                        <asp:Button ID="btnChangePW" CssClass="smallBut inline leftMargin1em" runat="server" Text="  Change Password  " OnClick="btnChangePW_Click" />
                    </p>
                    <asp:Button ID="btnPWReturn" runat="server" CssClass="myBut bottomMarginHalfem topMargin1em autoMarginLeftRight" Text=" Return " OnClick="btnPWReturn_Click" />
                </div>
            </div>
        </article>  
              
        <article id="changepasswordArt" class="myArts noDisplay">
            <div class="width70 autoMarginLeftRight">
                <p class="pTitle centerText underLine">CHANGE PASSWORD</p>
                <div id="PWbody" class="maroonBorder showShadow block">
                    <div class="topMargin1em width70 autoMarginLeftRight">
                        <asp:Label ID="Label37" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Old Password:"></asp:Label>
                        <asp:TextBox ID="txtOldPassword" CssClass="padding5" Width="10em" Font-Size="1.5em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server" TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="topMargin1em width70 autoMarginLeftRight">
                        <asp:Label ID="Label38" ForeColor="Maroon" Font-Bold="true" Font-Size="1.5em" runat="server" Text="New Password:"></asp:Label>
                        <asp:TextBox ID="txtNewPassword" CssClass="padding5" Width="10em" Font-Size="1.5em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server" TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="topMargin1em width80 autoMarginLeftRight">
                        <asp:Label ID="Label39" ForeColor="Maroon" Width="10em" Font-Bold="true" Font-Size="1.5em" runat="server" Text="Reenter Password:"></asp:Label>
                        <asp:TextBox ID="txtReenter" CssClass="padding5" Width="10em" Font-Size="1.5em" ForeColor="Maroon" Font-Bold="true" BackColor="#ff9900" runat="server" TextMode="Password"></asp:TextBox>
                    </div>

                    <div id="pwNotEntered" class="pwerrors noDisplay backYellow redText bold fontSize1em width85 autoMarginLeftRight maroonBorder">
                        <p class="pTitle centerText">Old Password was not entered.</p>
                    </div>

                    <div id="pwtooShort" class="pwerrors noDisplay backYellow redText bold fontSize1em width85 autoMarginLeftRight maroonBorder">
                        <p class="pTitle centerText">Password has to be at least 5 characters long.</p>
                    </div>

                    <div id="pwNotAgree" class="pwerrors noDisplay backYellow redText bold fontSize1em width85 autoMarginLeftRight maroonBorder">
                        <p class="pTitle centerText">New Passwords do not agree.</p>
                    </div>

                    <div id="pwNotChanged" class="pwerrors noDisplay backYellow redText bold fontSize1em width85 autoMarginLeftRight maroonBorder">
                        <p class="pTitle centerText">Password was not changed.</p>
                    </div>

                    <div id="pwNotCorrect" class="pwerrors noDisplay backYellow redText bold fontSize1em width85 autoMarginLeftRight maroonBorder">
                        <p class="pTitle centerText">Your Old Password is not correct.</p>
                    </div>

                    <div class="centerText block">
                        <asp:Button ID="btnSubmitChangePW" CssClass="myBut inline" runat="server" Text=" Submit " OnClick="btnSubmitChangePW_Click" />
                        <input id="btnCancelChange" class="myBut inline leftMargin2em" type="button" value=" Cancel Change " />
                    </div>

                    <div class="clear bottomMargin2em"></div>

                </div>

                <div id="pwAccepted" class="pwerrors noDisplay maroonText bold fontSize1em width85 autoMarginLeftRight maroonBorder">
                    <p class="pTitle centerText">Password was Changed.</p>
                    <asp:Button ID="btnEnterSite" CssClass="autoMarginLeftRight smallBut bottomMargin1em" runat="server" Text=" Click to go to Admin Menu " OnClick="btnEnterSite_Click" />
                </div>

            </div>
        </article>

        <article class="myFooter centerDiv block">
            <hr class="myHR" />
            <p class="centerText" style="font-size:1.5em;">
                Click on the link below to get an application to join the<br /> <asp:HyperLink ID="HyperLink6" ForeColor="DarkRed" Font-Underline="true" Font-Size="1em" NavigateUrl="~/_PDFs/Florida Membership Application.pdf" Target="_blank" runat="server"> Florida Association Membership Application. </asp:HyperLink>
            </p>

        </article>

        <div class="clear bottomMargin2em"></div>

    </div>

    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" Interval="60000" runat="server" OnTick="Timer1_Tick"></asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>

    <script src="_Scripts/myScript.js"></script>

    </form>
</body>
</html>
