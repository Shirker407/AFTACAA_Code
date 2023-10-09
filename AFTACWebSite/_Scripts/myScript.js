var action = 'default'
var MainPageIndex = 'mainHeader';
var glbGalPath = 'Gal2018SB';

$(document).ready(function () {
    var SlideShowInt;
    var SBSlideShowInt;
    var holmesSlideShowInt;
    var secAFSlideShowInt;
    var myText;
    var ssCurrentPic = 1;
    var ssLastPic;
    var ssMaxPic = 77;
    var sbCurrentPic = 1;
    var sbMaxPic = 36;
    var vid;
    var missionCurrentPic = 1;
    var rotcCurrentPic = 1;
    var soccerCurrentPic = 1;
    var rslCurrentPic = 1;
    var stemCurrentPic = 1;
    var hurrCurrentPic = 1;
    var topsCurrentPic = 1;
    var antCurrentPic = 1;
    var holmesCurrentPic = 1;
    var aftacHisCurentPic = 1;
    var aftacHisCurentPic = 1;
    var coloradoCurrentPic = 1;
    var aftacDiningCurrentPic = 1;
    var aftacHisSlideShowInt;
    var aftacDiningSlideShowInt;
    var coloradoSlideShowInt;
    var Wise2SlideShowInt;
    var wise2CurrentPic = 1;
    var oldBack;

    clearInterval(SlideShowInt)
    clearInterval(SBSlideShowInt)
    clearInterval(aftacHisSlideShowInt)
    clearInterval(coloradoSlideShowInt)


    //pingInt = setInterval(function () { Ping() }, 4000);
    //picInt = setInterval(function () { ChangePic() }, 5000);

    //**********************************************************************
    //Main Page

    //$('#myViera').click(function () {
    //    $('.myArts').removeClass('block').addClass('noDisplay');
    //    $('#VieraArt').removeClass('noDisplay').addClass('block');
    //    $([document.documentElement, document.body]).animate({
    //        scrollTop: $("#pViera").offset().top
    //    }, 500);
    //});

    var theList1 = document.getElementById("WallList1").getElementsByTagName("li");
    var theList2 = document.getElementById("WallList2").getElementsByTagName("li");
    var theList3 = document.getElementById("WallList3").getElementsByTagName("li");
    var theList4 = document.getElementById("WallList4").getElementsByTagName("li");
    var theList5 = document.getElementById("WallList5").getElementsByTagName("li");
    var theList6 = document.getElementById("WallList6").getElementsByTagName("li");
    var theList7 = document.getElementById("WallList7").getElementsByTagName("li");
    var theList8 = document.getElementById("WallList8").getElementsByTagName("li");

    var numberOfItems = theList1.length + theList2.length + theList3.length + theList4.length + theList5.length + theList6.length + theList7.length + theList8.length;
    $('#WallCount').html('Number Wall Entries: ' + numberOfItems)

    $('#btnPage1').click(function () {
        $('#myPageNum').html("Showing A - L");
        $('#Page2').removeClass('block').addClass('noDisplay');
        $('#Page1').removeClass('noDisplay').addClass('block');
        $('#btnPage2').addClass('myPageOriginal').removeClass('myPageSelected');
        $('#btnPage1').addClass('myPageSelected').removeClass('myPageOriginal');
    });

    $('#myFun').click(function () {
        window.open("https://www.youtube.com/embed/u_Qoo6qoY_I", "")
    });

    $('#WCCPicAttendees').click(function () {
        window.open("http://www.aftacwcc.org/Forms/20210918_PicnicAttendees.pdf", "")
    });

    $('#myCovidKit').click(function () {
        window.open("https://www.airforcetimes.com/veterans/2022/01/12/va-wont-mail-out-covid-kits-but-veterans-can-get-free-tests-at-clinics/", "")
    });

    $('#myHomeDepot').click(function () {
        window.open("https://www.militarytimes.com/pay-benefits/mil-money/2022/01/05/another-16-million-veterans-can-get-home-depots-new-military-discount-year-round/?utm_medium=social&utm_source=facebook.com&utm_campaign=Socialflow%20MAR", "")
    });

    $('#myTaxFree').click(function () {
        window.open("https://www.military.com/daily-news/2022/01/10/five-more-states-make-military-retirement-tax-free.html", "")
    });

    $('#btnPage2').click(function () {
        $('#myPageNum').html("Showing M - Z");
        $('#Page1').removeClass('block').addClass('noDisplay');
        $('#Page2').removeClass('noDisplay').addClass('block');
        $('#btnPage1').addClass('myPageOriginal').removeClass('myPageSelected');
        $('#btnPage2').addClass('myPageSelected').removeClass('myPageOriginal');
    });

    $('#my9s').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#9sArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("9sArt").offset().top
        }, 500);
    });


    $('#myBreakfast').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#BreakfastArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#breakfastPara").offset().top
        }, 500);
    });

    $('#myNasa').click(function () {
        OpenNTK('Nasa')
    });

    $('#myPence').click(function () {
        window.open('https://www.floridatoday.com/story/tech/science/space/2020/12/09/vice-president-pence-announces-official-name-change-patrick-space-force-base/6506564002/', '');
    });

    $('.trAnnouncementsEntry').mouseover(function () {
        oldBack = $(this).children('td').css("background-color");
        $(this).children('td').css("background-color", "mediumspringgreen");
    });

    $('.trAnnouncementsEntry').mouseout(function () {
        $(this).children('td').css("background-color", oldBack);
    });

    $('#coloBreakfast').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#coloBreakfastArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#coloBreakfastArt").offset().top
        }, 500);
    });

    $('#butmemReturn').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#MemorialArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#memTitle").offset().top
        }, 500);
    });

    $('#butmemReturn1').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#MemorialArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#memTitle").offset().top
        }, 500);
    });

    $('#FloridaTodayArticle').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#FloridaTodayArt').removeClass('noDisplay').addClass('block');
    });

    $('#myFun').click(function () {
        //window.open('https://rumble.com/vff98d-room-with-a-view-by-frank.html', '');
        //window.open('https://rumble.com/vcs90t-incredible-dust-pan-artist.html', '');
        window.open('https://www.youtube.com/watch?v=up36KS0X6zI', '');
        //    $('.myArts').removeClass('block').addClass('noDisplay');
        //    $('#millerArt').removeClass('noDisplay').addClass('block');
        //    $([document.documentElement, document.body]).animate({
        //        scrollTop: $("#millerPara").offset().top
        //    }, 500);
    });

    $('#myCooley').click(function () {
        MainPageIndex = 'recentTitle'
        Open20Year('Cooley');
    });

    $('#butWallNames').mouseover(function () {
        $('#butWallNames').css('background-color', 'red');
        $('#butWallNames span').css('background-color', 'red').css('color', 'yellow');
    });

    $('#butWallNames').mouseout(function () {
        $('#butWallNames').css('background-color', 'yellow');
        $('#butWallNames span').css('background-color', 'yellow').css('color', 'black');
    });

    $('#butWallNames').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#MemorialArt').removeClass('noDisplay').addClass('block');
    });

    $('#butCoronaInfo').mouseover(function () {
        $('#butCoronaInfo').css('background-color', 'lightblue').css('border - color', 'darkblue');
        $('#butCoronaInfo span').css('background-color', 'lightblue').css('color', 'darkblue');
    });

    $('#butCoronaInfo').mouseout(function () {
        $('#butCoronaInfo').css('border - color', 'lightblue').css('background-color', 'darkblue');
        $('#butCoronaInfo span').css('background-color', 'darkblue').css('color', 'lightblue');
    });

    $('#butCoronaInfo').click(function () {
        window.open('https://www.patrick.af.mil/Coronavirus/Installation-Information/fbclid/IwAR0gepvIXjtb5IEpvGtn8L136_axT7AKDyLhG1CMkuNIQcbxyBWRyPDe3uo/', '')
    });

    $('#memWall').mouseover(function () {
        $('#memWall').css('background-color', 'lightblue').css('border - color', 'darkblue');
        $('#memWall span').css('background-color', 'lightblue').css('color', 'darkblue');
    });

    $('#memWall').mouseout(function () {
        $('#memWall').css('border - color', 'lightblue').css('background-color', 'darkblue');
        $('#memWall span').css('background-color', 'darkblue').css('color', 'lightblue');
    });

    $('#memWall').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wallMemArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#memWallPara").offset().top
        }, 500);
    });

    $('#butCOE').mouseover(function () {
        $('#butCOE').css('background-color', 'lightblue').css('border - color', 'darkblue');
        $('#butCOE span').css('background-color', 'lightblue').css('color', 'darkblue');
    });

    $('#butCOE').mouseout(function () {
        $('#butCOE').css('border - color', 'lightblue').css('background-color', 'darkblue');
        $('#butCOE span').css('background-color', 'darkblue').css('color', 'lightblue');
    });

    $('#butCOE').click(function () {
        window.open('_pdfs/Calendar_2_Oct_2023.pdf', '');
    });

    $('#myCorona').click(function () {
        MainPageIndex = 'recentTitle'
        OpenNTK('corona');
    });

    $('#myWright').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#WrightArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $('#WrightArt').offset().top
        }, 500);
    });



    $('.dpPic').click(function () {
        $('#doMainPic').attr('src', $(this).attr('src'))
    });

    $('#aftacDO').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#aftacDOArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#doPara").offset().top
        }, 500);
    });

    $('#btnMemWallDonation').click(function () {
        window.open('_pdfs/MemorialWallJune2023.pdf', '')
    });
    $('#btnMemWallDonation2').click(function () {
        window.open('_pdfs/MemorialWallJune2023.pdf', '')
    });

    $('#btnMemWallLetter').click(function () {
        window.open('_pdfs/MemorialWallLetter.pdf', '')
    });

    $('#btnMemWallDesign').click(function () {
        window.open('_pdfs/MemorialWallDesign.pdf', '')
    });

    $('#btnSnowballRSVP').click(function () {
        window.open('_pdfs/Snowball2020_RSVP.pdf', '')
    });

    $('#btnInvite').click(function () {
        window.open('https://einvitations.afit.edu/inv/anim.cfm?i=476640&k=0666440F7F57', '')
    })

    $('#triCare').click(function () {
        window.open('https://www.militarytimes.com/pay-benefits/2019/11/22/technical-problem-shuts-down-tricare-online-enrollment-in-the-midst-of-open-season/?utm_source=Sailthru&utm_medium=email&utm_campaign=EBB%2011.25.19&utm_term=Editorial%20-%20Early%20Bird%20Brief', '')
    });


    $('#btnExpress').click(function () {
        if ($(this).attr('value') == ' Show Poster ') {
            $(this).attr('value', ' Hide Poster ');
            $('#expressPoster').removeClass('noDisplay').addClass('block')
        }

        else {
            $(this).attr('value', ' Show Poster ')
            $('#expressPoster').removeClass('block').addClass('noDisplay')
        }
    });

    $('#btnDining').click(function () {
        if ($(this).attr('value') == ' Show Poster ') {
            $(this).attr('value', ' Hide Poster ');
            $('#diningPoster').removeClass('noDisplay').addClass('block')
        }

        else {
            $(this).attr('value', ' Show Poster ')
            $('#diningPoster').removeClass('block').addClass('noDisplay')
        }
    });

    $('#myPicnic').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#picnicArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#picnicPara").offset().top
        }, 500);
    });

    $('#vcsaf').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#newsToKnowArt').removeClass('noDisplay').addClass('block');
        $('.n2KPara').removeClass('block').addClass('noDisplay');
        $('#vcsafPara').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#vcsafH2").offset().top
        }, 500);
    });
//Displays 20 Year photo from Recent Additions Table 
    $('#myLoftis').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wallArt').removeClass('noDisplay').addClass('block');
        $('#wallListings').removeClass('block').addClass('noDisplay');
        $('#hideListings').removeClass('noDisplay').addClass('block');
        $('#wallImg').removeClass('noDisplay').addClass('block');
        $('#wallImg').attr('src', '_photos/20yearwall/Loftis.jpg')
        $('#showPic').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#hideListings").offset().top
        }, 500);
    });
    $('#myTaxes').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#myTracy').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#taxPara").offset().top
        }, 500);
    });

    $('#johnsonLink').click(function () {
        Open20YearPic('Johnson')
    });

    $('#borowskiLink').click(function () {
        Open20YearPic('Borowski')
    });

    $('#myHolmes').click(function () {
        window.open('https://www.16af.af.mil/News/Article/2111942/gen-mike-holmes-video-statement-on-covid-19/', '');
    });

    $('#myTax').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#taxArt').removeClass('noDisplay').addClass('block');
    });

    $('#newBoard').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#electedBoardArt').removeClass('noDisplay').addClass('block');
        $('#ntkDorianPara').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#ntkDorianH2").offset().top
        }, 500);
    });

    $('#nextMeeting').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#meetingArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $(".meetingTitle").offset().top
        }, 500);
    });

    $('#coBreakfast').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#coBreakfastArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#coBreakPara").offset().top
        }, 500);
    });

    $('#btnWallRules').click(function () {
        if ($(this).attr('value') == ' Show Rules and Regulations ') {
            $('#wallRulesDiv').removeClass('noDisplay').addClass('block');
            $('#btnHideWallRules').removeClass('noDisplay').addClass('block');
            $(this).attr('value', ' Hide Rules and Regulations ');
        }
        else {
            $('#wallRulesDiv').removeClass('block').addClass('noDisplay');
            $('#btnHideWallRules').removeClass('block').addClass('noDisplay');
            $(this).attr('value', ' Show Rules and Regulations ')
        }
    });

    $('#btnHideWallRules').click(function () {
        $('#wallRulesDiv').removeClass('block').addClass('noDisplay');
        $(this).removeClass('block').addClass('noDisplay');
        $('#btnWallRules').attr('value', ' Show Rules and Regulations ')
    });

    $('#btnwohReturn').click(function () {
        $('#wohMainImg').removeClass('noDisplay').addClass('block');
        $('#wohDiv').removeClass('block').addClass('noDisplay');
        $('#wohName').html('');
        $('#wohImg').attr('src', 'xxx');
        $('#wohVerbage').attr('text', '');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#pWOH_Honorees").offset().top
        }, 500);
    });

    $('.announcement').mouseover(function () {
        $(this).css('cursor', 'pointer');
    });

    $('.announcement').mouseout(function () {
        $(this).css('cursor', 'default');
    });

    $('#btnMemAdmin').click(function () {
        $('#adminMenu').removeClass('block').addClass('noDisplay');
        $('#mainMenu').removeClass('block').addClass('noDisplay');
        $('#membershipadminArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#btnReturnToAdminMenu').click(function () {
        $('#adminMenu').removeClass('noDisplay').addClass('block');
        $('#mainMenu').removeClass('noDisplay').addClass('block');
        $('#membershipadminArt').removeClass('block').addClass('noDisplay');
    })

    $('#boardMeeting').click(function () {
        resetpage();
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#meetingArt').removeClass('noDisplay').addClass('block')
    })

    $('#wohCeremony').click(function () {
        resetpage();
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wohArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#btnwohReturn').click(function () {
        $('#wohMainImg').removeClass('noDisplay').addClass('block');
        $('#wohDiv').removeClass('block').addClass('noDisplay');
        $('#wohImg').attr('src', pic);
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#pWOH_Honorees").offset().top
        }, 500);
    });

    $('.wohBut').click(function () {
        switch ($(this).attr('id')) {
            case 'btnHall':
                pre = 'Colonel'
                first = 'Frank'
                last = 'Hall'
                pic = "_Photos/WOH/Hall.png"
                break
            case 'btnMacInnes':
                pre = 'Lt Colonel'
                first = 'Michael '
                last = 'MacInnes'
                pic = "_Photos/WOH/MacInnes.png"
                break
            case 'btnRothe':
                pre = 'Dr.'
                first = 'George H. '
                last = 'Rothe'
                pic = "_Photos/WOH/Rothe.png"
                break
            case 'btnMcClelland':
                pre = 'CMSgt'
                first = 'Bill'
                last = 'McClelland'
                pic = "_Photos/WOH/McClelland.png"
                break
            case 'btnSpencer':
                pre = 'CMSgt'
                first = 'Sue'
                last = 'Spencer'
                pic = "_Photos/WOH/Spencer.png"
                break
            case 'btnWiley':
                pre = 'Lt Colonel'
                first = 'Bob'
                last = 'Wiley'
                pic = "_Photos/WOH/Wiley.png"
                break
            case 'btnDavis':
                pre = 'CMSgt'
                first = 'James C.'
                last = 'Davis'
                pic = "_Photos/WOH/Davis.png"
                break
            case 'btnMarshall':
                pre = 'Mr.'
                first = 'Joseph D.'
                last = 'Marshall'
                pic = "_Photos/WOH/Marshall.png"
                break
            case 'btnPavik':
                pre = 'Colonel'
                first = 'Alvin L.'
                last = 'Pavik'
                pic = "_Photos/WOH/Pavik.png"
                break
            case 'btnButler':
                pre = 'CMSgt'
                first = 'Charles A.'
                last = 'Butler'
                pic = "_Photos/WOH/Butler.png"
                break
            case 'btnHarkins':
                pre = 'Mr.'
                first = 'Michael L.'
                last = 'Harkins'
                pic = "_Photos/WOH/Harkins.png"
                break
            case 'btnLeies':
                pre = 'Dr.'
                first = 'Gerard M.'
                last = 'Leies'
                pic = "_Photos/WOH/Leies.png"
                break
            case 'btnCiambrone':
                pre = 'Colonel'
                first = 'Thomas'
                last = 'Ciambrone'
                pic = "_Photos/WOH/Ciambrone.png"
                break
            case 'btnHayden':
                pre = 'Lt Colonel'
                first = 'Thomas'
                last = 'Hayden'
                pic = "_Photos/WOH/Hayden.png"
                break
            case 'btnKniedler':
                pre = 'Dr.'
                first = 'Marc'
                last = 'Kniedler'
                pic = "_Photos/WOH/Kniedler.png"
                break
            case 'btnLeggett':
                pre = 'CMSgt'
                first = 'Kathy'
                last = 'Leggett'
                pic = "_Photos/WOH/Leggett.png"
                break
            case 'btnMcBrearty':
                pre = 'Colonel'
                first = 'Charles'
                last = 'McBrearty'
                pic = "_Photos/WOH/McBrearty.png"
                break
            case 'btnNiquette':
                pre = 'Colonel'
                first = 'Thomas'
                last = 'Niquette'
                pic = "_Photos/WOH/Niquette.png"
                break
            case 'btnNorthrup':
                pre = 'Mr.'
                first = 'Doyle'
                last = 'Northrup'
                pic = "_Photos/WOH/Northrup.png"
                break
            case 'btnOwen':
                pre = 'SMSgt'
                first = 'Marvin'
                last = 'Owen'
                pic = "_Photos/WOH/Owen.png"
                break
            case 'btnPilotte':
                pre = 'Dr.'
                first = 'Frank F.'
                last = 'Pilotte'
                pic = "_Photos/WOH/Pilotte.png"
                break
            case 'btnRomney':
                pre = 'Dr.'
                first = 'Carl'
                last = 'Romney'
                pic = "_Photos/WOH/Romney.png"
                break
            case 'btnSinglevich':
                pre = 'Mr.'
                first = 'Walter'
                last = 'Singlevich'
                pic = "_Photos/WOH/Singlevich.png"
                break
            case 'btnSolari':
                pre = 'SMSgt'
                first = 'Delbe'
                last = 'Solari'
                pic = "_Photos/WOH/Solari.png"
                break
        };

        myTitle = pre + " " + first + " " + last

        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#honorArt').removeClass('noDisplay').addClass('block');
        $('#wohMainImg').removeClass('block').addClass('noDisplay');
        $('#wohDiv').removeClass('noDisplay').addClass('block');
        $('#wohName').html(myTitle);
        $('#wohImg').attr('src', pic);
        //$('#wohVerbage').attr('text',verb);
        $([document.documentElement, document.body]).animate({ scrollTop: $('#wohName').offset().top }, 500);
        action = "woh";
    });

    $('#btnChangePW').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#changepasswordArt').removeClass('noDisplay').addClass('block');
    });

    $('#btnCancelChange').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#passwordArt').removeClass('noDisplay').addClass('block');
    });

    $('#monthlyStats').click(function () {
        window.open('_Statistics/awstats(1).html', '');
    });

    $('#liMeeting').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divMinutes').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divMinutes').removeClass('noDisplay').addClass('block');
                scrollTo(0, 0);
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divMinutes').removeClass('block').addClass('noDisplay');
            };
        };
        subclicked = false;
    });

    $('#Seismic').click(function () {
        window.open('https://kegmaninc.applytojob.com/apply/62lylpn781/Seismic-Field-Technician', '');
    });

    $('#Solis').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#solisArt').removeClass('noDisplay').addClass('block');
    });

    $('#myJobs').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#jobsArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#Label57").offset().top
        }, 500);
    });

    $('#liDeployment').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#deploymentArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liAlumni').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('.myAlumni').removeClass('block').addClass('noDisplay');
        $('#alumniArt').removeClass('noDisplay').addClass('block');
        $('#AOYList').removeClass('noDisplay').addClass('block');
        $('#AOYCarousel').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({ scrollTop: $(".myAlumni").offset().top }, 500);
    });

    $('#liOfficers').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divBoard').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divBoard').removeClass('noDisplay').addClass('block');
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divBoard').removeClass('block').addClass('noDisplay');
            };
        };
        subclicked = false;
    });

    $('#coin').click(function () {
        resetpage()
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wonArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liConstitution').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divConstitution').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divConstitution').removeClass('noDisplay').addClass('block');
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divConstitution').removeClass('block').addClass('noDisplay');
            };
        };
        subclicked = false;
    });

    $('#eventH2').click(function () {
        if ($('#eventSect').hasClass('noDisplay')) {
            $('.jobSect').removeClass('block').addClass('noDisplay');
            $('#eventSect').removeClass('noDisplay').addClass('block');
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#mainHeader").offset().top
            }, 500);
        }
        else {
            $('#eventSect').removeClass('block').addClass('noDisplay');
        }
    });

    $('#limemLookup').click(function () {
        window.open('memlookup.aspx', '0');
    });

    $('#btnShowArticles').click(function () {

        $('.n2KPara').removeClass('block').addClass('noDisplay');

        if ($(this).attr('value') == ' Show Archived Articles ') {
            ($(this).attr('value', ' Show Current Articles '));
            $('#newsTitle').html('Archived News Articles');
            $('.archivedNews').removeClass('noDisplay').addClass('block');
            $('.currentNews').removeClass('block').addClass('noDisplay');
        }
        else {
            ($(this).attr('value', ' Show Archived Articles '));
            $('#newsTitle').html('Current News Articles');
            $('.archivedNews').removeClass('block').addClass('noDisplay');
            $('.currentNews').removeClass('noDisplay').addClass('block');
        };
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#newsTitle").offset().top
        }, 500);
    });

    $('#eventsGolfGet').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#golfGetArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#golfGetArt").offset().top
        }, 500);
    });

    $('#eventsGolf').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#golfOutingArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#golfOutingArt").offset().top
        }, 500);
    });

    $('#eventsBreakfast').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#coBreakfastArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#coBreakfastArt").offset().top
        }, 500);
    });

    $('#WallofHonor').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wohArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#wohArt").offset().top
        }, 500);
    });

    $('#aftacVSaftac').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#aftacVSaftacArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#aftacVSaftacArt").offset().top
        }, 500);
    });

    $('#crShowPhotos').click(function () {
        if ($(this).attr('value') == " Show Reunion Photos ") {
            $(this).attr('value', " Hide Reunion Photos ");
            $('#crPhotoDiv').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).attr('value', " Show Reunion Photos ");
            $('#crPhotoDiv').removeClass('block').addClass('noDisplay');
        };
    });

    $('#crShowAttendees').click(function () {
        if ($(this).attr('value') == ' Show Reunion Attendees ') {
            $(this).attr('value', " Hide Reunion Attendees ");
            $('#crAttendeeDiv').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).attr('value', ' Show Reunion Attendees ');
            $('#crAttendeeDiv').removeClass('block').addClass('noDisplay');
        };
    });


    //*************************************************************************************
    //AFTAC History
    $('#hisButNext').click(function () {
        aftacHisCurentPic = aftacHisCurentPic + 1
        if (aftacHisCurentPic > 55) { aftacHisCurentPic = 1 }
        $('#hisPic').attr('alt', 'DO' + aftacHisCurentPic + '.png').attr('src', '_Photos/aftacHistory/DO' + aftacHisCurentPic + '.png')
    });

    $('#hisButPrevious').click(function () {
        aftacHisCurentPic = aftacHisCurentPic - 1
        if (aftacHisCurentPic < 1) { aftacHisCurentPic = 55 }
        $('#hisPic').attr('alt', 'DO' + aftacHisCurentPic + '.png').attr('src', '_Photos/aftacHistory/DO' + aftacHisCurentPic + '.png')
    });

    $('#hisButSS').click(function () {
        if ($(this).attr('value') == ' Start Slide Show ') {
            ($(this).attr('value', ' Stop Slide Show '))
            $('#hisButNext').removeClass('myBut').addClass('myGrayBut');
            $('#hisButPrevious').removeClass('myBut').addClass('myGrayBut');
            aftacHisSlideShowInt = setInterval(function () { aftacHisSlideShow() }, 4000);
        }
        else {
            $('#hisButNext').removeClass('myGrayBut').addClass('myBut');
            $('#hisButPrevious').removeClass('myGrayBut').addClass('myBut');
            ($(this).attr('value', ' Start Slide Show '))
            clearInterval(aftacHisSlideShowInt)
        }
    });
    //*************************************************************************************

    //*************************************************************************************
    //AFTAC Dining Out
    $('#btnDoNext').click(function () {
        aftacDiningCurrentPic = aftacDiningCurrentPic + 1
        if (aftacDiningCurrentPic > 11) { aftacDiningCurrentPic = 1 }
        $('.dpPic').removeClass('block').addClass('noDisplay')
        $('#doPic' + aftacDiningCurrentPic).removeClass('noDisplay').addClass('block')
    });

    $('#btnDoPrevious').click(function () {
        aftacDiningCurrentPic = aftacDiningCurrentPic - 1
        if (aftacDiningCurrentPic < 1) { aftacDiningCurrentPic = 11 }
        $('.dpPic').removeClass('block').addClass('noDisplay')
        $('#doPic' + aftacDiningCurrentPic).removeClass('noDisplay').addClass('block')
    });

    $('#btnDoSlide').click(function () {
        if ($(this).attr('value') == ' Start Slide Show ') {
            ($(this).attr('value', ' Stop Slide Show '))
            //$("#btnDoSlide").prop("disabled", true)
            //$("#btnDoNext").prop("disabled", true)
            $('#btnDoPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#btnDoNext').removeClass('myBut').addClass('myGrayBut');
            $('.dpPic').removeClass('block').addClass('noDisplay')
            $('#doPic' + aftacDiningCurrentPic).removeClass('noDisplay').addClass('block')
            aftacDiningSlideShowInt = setInterval(function () { aftacDOSlideShow() }, 4000);
        }
        else {
            //$("#btnDoSlide").prop("disabled", false)
            //$("#btnDoNext").prop("disabled", false)
            $('#btnDoPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#btnDoNext').removeClass('myGrayBut').addClass('myBut');
            ($(this).attr('value', ' Start Slide Show '))
            clearInterval(aftacDiningSlideShowInt)
        }
    });
    //*************************************************************************************

    //*************************************************************************************
    //Colorado Reunion
    $('#btncrNext').click(function () {
        coloradoCurrentPic = coloradoCurrentPic + 1
        if (coloradoCurrentPic > 105) { coloradoCurrentPic = 1 }
        $('#coPic').attr('src', '_Photos/CoReunion/cr' + coloradoCurrentPic + '.jpg').attr('alt', 'cr' + coloradoCurrentPic + '.jpg')
    });

    $('#btncrPrev').click(function () {
        coloradoCurrentPic = coloradoCurrentPic - 1
        if (coloradoCurrentPic < 1) { coloradoCurrentPic = 105 }
        $('#coPic').attr('src', '_Photos/CoReunion/cr' + coloradoCurrentPic + '.jpg').attr('alt', 'cr' + coloradoCurrentPic + '.jpg')
    });

    $('#btncrSlideShow').click(function () {
        if ($(this).attr('value') == 'Start Slide Show') {
            ($(this).attr('value', 'Stop Slide Show'))
            $('#btncrNext').removeClass('myBut').addClass('myGrayBut');
            $('#btncrPrev').removeClass('myBut').addClass('myGrayBut');
            coloradoSlideShowInt = setInterval(function () { coReunionSlideShow() }, 4000);
        }
        else {
            $('#btncrNext').removeClass('myGrayBut').addClass('myBut');
            $('#btncrPrev').removeClass('myGrayBut').addClass('myBut');
            ($(this).attr('value', 'Start Slide Show'))
            clearInterval(coloradoSlideShowInt)
        }
    });
    //*************************************************************************************

    //*************************************************************************************
    //Hot Topics

    $('#btnRules').click(function () {
        if ($('#contestSec').is(':hidden')) {
            $('#btnRules').attr('value', ' Return to Contest ')
            $('#contestSec').addClass('noDisplay').removeClass('block')
            $('#rulesSec').addClass('block').removeClass('noDisplay')
        }
        else {
            $('#btnRules').attr('value', ' Click to read Rules and Regs ')
            $('#rulesSec').addClass('noDisplay').removeClass('block')
            $('#contestSec').addClass('block').removeClass('noDisplay')
        }
    });


    $('#btnRules1').click(function () {
        $('#btnRules').attr('value', ' Click to read Rules and Regs ')
        $('#rulesSec').addClass('noDisplay').removeClass('block')
        $('#contestSec').addClass('block').removeClass('noDisplay')
    });

    $('#context').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#contestArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#wccElection').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wccElectionResults').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#election').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#electionArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#wallhonor').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wallhonorArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#oconner').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#oconnerArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    //*************************************************************************************


    //Upcomming Events
    //*************************************************************************************

    $('#annualmeeting').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#annualmeetingArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#cobreakfast').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#cobreakfastArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#diningout').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#diningoutArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    //*************************************************************************************
    $('#liAlbums').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divAlbums').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divAlbums').removeClass('noDisplay').addClass('block');
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divAlbums').removeClass('block').addClass('noDisplay');
            };
        };
        subclicked = false;
    });

    $('#historyAlumniArt a').mouseover(function () {
        $(this).css('color', 'red')
    });

    $('#calInfo').click(function () {
        window.open('http://www.aftacwcc.org/index.htm', '');
    });

    $('#colInfo').click(function () {
        window.open('http://www.aftacco.org/', '');
    });

    //**********************************************************************

    //20 Year Wall
    //**********************************************************************
    $('#butShowListings').click(function () {
        if ($(this).attr('value') == 'Return to Listings') {
            $('#wallListings').removeClass('noDisplay').addClass('block');
            $('#hideListings').removeClass('block').addClass('noDisplay');
            $('#wallPic').removeClass('block').addClass('noDisplay');
            $('#wallImg').attr("src", "/_Images/Blank.bmp")
            //$('#wallImg').css('width', '0px')
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#wallPara").offset().top
            }, 500);
        };

        if ($(this).attr('value') == 'Return to Obituaries') {
            $('.liMainMenu').css('color', 'yellow');
            $('#obitsRecent').css('color', 'lightgreen');
            $('.myArts').removeClass('block').addClass('noDisplay');
        }
    });

    //**********************************************************************

    //Minutes Page
    //**********************************************************************
    $('#butMeeting').click(function () {
        if ($(this).attr('value') === ' View Agenda for Next Meeting Meeting ') {
            $(this).attr('value', ' View Minutes of Last Meeting ');
            $('#minutes').removeClass('block').addClass('noDisplay');
            $('#agenda').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).attr('value', ' View Agenda for Next Meeting Meeting ');
            $('#minutes').removeClass('noDisplay').addClass('block');
            $('#agenda').removeClass('block').addClass('noDisplay');
        };
    });

    //**********************************************************************

    //**********************************************************************
    //Alumni of Year 

    $('.alumniList li').css('color', 'yellow');

    $('#aoyPicture').click(function () {
        $('.alumArt').removeClass('block').addClass('noDisplay');
        $('#defaultAlum').removeClass('noDisplay').addClass('block');
        $('.alumniList li').css('color', 'yellow');
        $(this).removeClass('block').addClass('noDisplay');
    });

    $('.alumniList li').click(function () {
        $('.alumniList li').css('color', 'yellow');
        $(this).css('color', 'lightgreen');

        //image = '_Photos/Wall/' + $(this).attr('id') + '.jpg';

        switch ($(this).attr('id')) {
           case 'youngSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#young').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'seilerSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#seiler').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'lindsaySel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#lindsay').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'dunnSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#dunn').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'gilbertSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#gilbert').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'kemnaSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#kemna').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'snyderSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#snyder').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'calendaSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#calenda').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'ryanSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#ryan').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'gibbonsSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#gibbons').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'melchiorSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#melchior').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'klugSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#klug').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'smithSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#smith').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'jacksonSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#jackson').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'wileySel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#wiley').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'schmiedSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#schmied').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'carsonSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#carson').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'blackSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#black').removeClass('noDisplay').addClass('block');
                $('#AOYCarouse').removeClass('block').addClass('noDisplay');
                break;
            case 'goldianSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#goldian').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'payneSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#payne').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'snyderpSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#SnyderP').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'milampSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#MilamP').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'johnsonpSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#JohnsonP').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'hallpSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#HallP').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'horschpSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#HorschP').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'vlassickpSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#VlassickP').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            case 'gaileypSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#GaileyP').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
                break;
            default:
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#notIncluded').removeClass('noDisplay').addClass('block');
                $('#AOYCarousel').removeClass('block').addClass('noDisplay');
        }

        $('#btnShowSlides').removeClass('noDisplay').addClass('block');
        $('#aoyDirections').removeClass('block').addClass('noDisplay');

        $('#butAOYTop').removeClass('noDisplay').addClass('block');

        $([document.documentElement, document.body]).animate({
            scrollTop: $("#ScrollTarget").offset().top
        }, 500);

    });

    $('#butAOYTop').click(function () {
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#lblAOY").offset().top
        }, 500)
    });

    $('#btnShowSlides').click(function () {
        $('#aoyDirections').removeClass('noDisplay').addClass('block');
        $('#AOYCarousel').removeClass('noDisplay').addClass('block');
        $('#btnShowSlides').removeClass('block').addClass('noDisplay');
        $('#butAOYTop').removeClass('block').addClass('noDisplay');
        $('.alumArt').removeClass('block').addClass('noDisplay');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#lblAOY").offset().top
        }, 500);
    });
    //**********************************************************************

    //**********************************************************************
    //Independent Orgs Page

    $('#anchCalifornia').click(function () {
        $('#iFrameContent').attr('src', 'http://www.aftacwcc.org/');
        $('#iFrameContaner').css('width', '700px');
    });

    $('#anchColorado').click(function () {
        $('#iFrameContent').attr('src', 'http://www.aftacco.org/');
        $('#iFrameContaner').css('width', '900px');
    });


    //**********************************************************************

    //**********************************************************************
    //Obituary Page

    //$('#btnTaps').click(function () {
    //    if ($(this).attr('value') == ' Stop Taps ') {
    //        $(this).attr('value', ' Play Taps ')
    //        $('#audioTaps').trigger('pause');
    //        $('#tapsControls').removeClass('block').addClass('noDisplay')
    //    }
    //    else {
    //        $(this).attr('value', ' Stop Taps ')
    //        $('#audioTaps').trigger('play');
    //        $('#tapsControls').removeClass('noDisplay').addClass('block')
    //    };
    //});

    //$('#btnTapsDown').click(function () {
    //    var volume = $('#audioTaps').prop('volume');
    //    volume = volume - 0.1;
    //    if (volume < 0.1) {
    //        volume = 0.1;
    //    }
    //    $('#spanVolume').html(volume.toFixed(1));
    //    $("#audioTaps").prop('volume', volume);
    //});

    //$('#btnTapsUp').click(function () {
    //    var volume = $('#audioTaps').prop('volume');
    //    volume = volume + 0.1;
    //    if (volume > 1) {
    //        volume = 1;
    //    }
    //    $('#spanVolume').html(volume.toFixed(1));
    //    $("#audioTaps").prop('volume', volume);
    //});

    //$('#myOpenHouse').click(function () {
    //    $('.myArts').removeClass('block').addClass('noDisplay');
    //    $('#OpenHouseArt').removeClass('noDisplay').addClass('block');
    //    $([document.documentElement, document.body]).animate({
    //        scrollTop: $("#OpenHouseArt").offset().top
    //    }, 500);
    //});

    $('#myWinterSocial').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#WinterSocialArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#WinterSocialArt").offset().top
        }, 500);
    });

    $('#myWallmartOut').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#WallmartOutArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#WallmartOutArt").offset().top
        }, 500);
    });

    $('#my91Years').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#AFTAC91Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#91Para").offset().top
        }, 500);
    });

    $('.my20YearLi').click(function () {
        resetpage()
        /*This will put the selected individuals picture in the image. The image will then be shown*/
        $('#wallListings').removeClass('block').addClass('noDisplay');
        $('#wallImg').attr('src', '_Photos/20YearWall/' + $(this).attr('id') + '.jpg');
        $('#wallImg').css('width', '100%')
        $('#showPic').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#showPic").offset().top
        }, 500);
    });

    $('#but20ShowListings').click(function () {
        $('#wallListings').removeClass('noDisplay').addClass('block');
        $('#showPic').removeClass('block').addClass('noDisplay');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#wallListings").offset().top
        }, 500);
    });

    $('#myWOH').click(function () {
        $('#myArts').removeClass('noDisplay').addClass('block');
        $('#honorArt').removeClass('block').addClass('noDisplay');
    });

    $('#btnMore').click(function () {
        window.open('https://www.offutt.af.mil/News/Article/3090736/team-offutt-welcomes-first-wc-135r-to-its-fleet/fbclid/team-offutt-welcomes-first-wc-135r-to-its-fleet/', '');
    });

    $('#myPomo').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#pomoArt').removeClass('block').addClass('block');
        $('#sectPomoCurrent').removeClass('noDisplay').addClass('block');
        $('#sectPomoArchived').removeClass('block').addClass('noDisplay');
        $('#pomo1').removeClass('noDisplay').addClass('block');
        $('#pomo2').removeClass('block').addClass('noDisplay');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("pomoArt").offset().top
        }, 500);
    });

  /*  $('#myCommPage').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#myCommandArt').removeClass('block').addClass('block');
        $('.CommandArt').removeClass('block').addClass('noDisplay');
        $('#CommInitial').removeClass('block').addClass('block');
    });
    */
    $('#myShanahan').click(function () {
        OpenObit('Shanahan');
    });


    
     $('.obitH1').click(function () {
        myText = $(this).attr('id');
         switch (myText) {  
             case 'ShanahanH2':
                 ShowMyObit('Shanahan')
                  break;
             case 'SweetH2':
                 ShowMyObit('Sweet')
                 break;
             case 'MosleyH2':
                 ShowMyObit('Mosley')
                 break;
             case 'OverbyH2':
                 ShowMyObit('Overby')
                 break;
             case 'LindstedtH2':
                 ShowMyObit('Lindstedt')
                 break;
             case 'JohnsonH2':
                 ShowMyObit('Johnson')
                 break;      
             case 'FeakesH2':
                 ShowMyObit('Feakes')
                 break;    
             case 'VickersH2':
                 ShowMyObit('Vickers')
                 break; 
             case 'LandryH2':
                 ShowMyObit('Landry')
                 break;     
             case 'McCloskeyH2':
                 ShowMyObit('McCloskey')
                break;
             case 'WilliamsonH2':
                 ShowMyObit('Williamson')
                break;
             case 'SchmiedH2':
                ShowMyObit('Schmied')
                break;
            case 'PickelH2':
                ShowMyObit('Pickel')
                break;
            case 'MehargH2':
                ShowMyObit('Meharg')
                break;
            case 'KaterH2':
                ShowMyObit('Kater')
                break;
            case 'JamesDavisH2':
                ShowMyObit('JamesDavis')
                break;
            case 'DaveHamilH2':
                ShowMyObit('DaveHamil')
                break;
            case 'MOWhiteH2':
                ShowMyObit('MOWhite')
                break;
            case 'CameronH2':
                ShowMyObit('Cameron')
                break;
            case 'MasonH2':
                ShowMyObit('Mason')
                break;
            case 'BalentineH2':
                ShowMyObit('Balentine')
                 break;
             case 'CaldwellH2':
                 ShowMyObit('Caldwell')
                 break;
             case 'BrowningH2':
                 ShowMyObit('Browning')
                 break;   
            case 'JustmanH2':
                ShowMyObit('Justman')
                break;
        }

        $('#butShowListings').val('Return to Obituaries');
    });
    //**********************************************************************

    //News To Know Page
    //**********************************************************************

    $('#stemNext').click(function () {
        stemCurrentPic = stemCurrentPic + 1;
        if (stemCurrentPic > 8) { stemCurrentPic = 1 };

        $('.stemFigs').removeClass('block').addClass('noDisplay');
        $('#stemFig' + stemCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#stemPrevious').click(function () {
        stemCurrentPic = stemCurrentPic - 1;
        if (stemCurrentPic < 1) { stemCurrentPic = 8 };

        $('.stemFigs').removeClass('block').addClass('noDisplay');
        $('#stemFig' + stemCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#hurrNext').click(function () {
        hurrCurrentPic = hurrCurrentPic + 1;
        if (hurrCurrentPic > 18) { hurrCurrentPic = 1 };

        $('.hurrFigs').removeClass('block').addClass('noDisplay');
        $('#hurrFig' + hurrCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#hurrPrevious').click(function () {
        hurrCurrentPic = hurrCurrentPic - 1;
        if (hurrCurrentPic < 1) { hurrCurrentPic = 18 };

        $('.hurrFigs').removeClass('block').addClass('noDisplay');
        $('#hurrFig' + hurrCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#topsNext').click(function () {
        topsCurrentPic = topsCurrentPic + 1;
        if (topsCurrentPic > 3) { topsCurrentPic = 1 };

        $('.topsFigs').removeClass('block').addClass('noDisplay');
        $('#topsFig' + topsCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#topsPrevious').click(function () {
        topsCurrentPic = topsCurrentPic - 1;
        if (topsCurrentPic < 1) { topsCurrentPic = 3 };

        $('.topsFigs').removeClass('block').addClass('noDisplay');
        $('#topsFig' + topsCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#rslNext').click(function () {
        rslCurrentPic = rslCurrentPic + 1;
        if (rslCurrentPic > 2) { rslCurrentPic = 1 };

        $('.rslFigs').removeClass('block').addClass('noDisplay');
        $('#rslFig' + rslCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#rslPrevious').click(function () {
        rslCurrentPic = rslCurrentPic - 1;
        if (rslCurrentPic < 1) { rslCurrentPic = 2 };

        $('.rslFigs').removeClass('block').addClass('noDisplay');
        $('#rslFig' + rslCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#soccerNext').click(function () {
        soccerCurrentPic = soccerCurrentPic + 1;
        if (soccerCurrentPic > 4) { soccerCurrentPic = 1 };

        $('.soccerFig').removeClass('block').addClass('noDisplay');
        $('#soccerFig' + soccerCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#soccerPrevious').click(function () {
        soccerCurrentPic = soccerCurrentPic - 1;
        if (soccerCurrentPic < 1) { soccerCurrentPic = 4 };

        $('.soccerFig').removeClass('block').addClass('noDisplay');
        $('#soccerFig' + soccerCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#rotcNext').click(function () {
        rotcCurrentPic = rotcCurrentPic + 1;
        if (rotcCurrentPic > 4) { rotcCurrentPic = 1 };

        $('.rotcFig').removeClass('block').addClass('noDisplay');
        $('#rotcFig' + rotcCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#rotcPrevious').click(function () {
        rotcCurrentPic = rotcCurrentPic - 1;
        if (rotcCurrentPic < 1) { rotcCurrentPic = 4 };

        $('.rotcFig').removeClass('block').addClass('noDisplay');
        $('#rotcFig' + rotcCurrentPic).removeClass('noDisplay').addClass('block');
    });

    $('#btnMissionNext').click(function () {
        missionCurrentPic = missionCurrentPic + 1;
        if (missionCurrentPic > 5) { missionCurrentPic = 1 };

        $('.missionDivs').removeClass('block').addClass('noDisplay');
        $('#missDiv' + missionCurrentPic.toString()).removeClass('noDisplay').addClass('block')
    });

    $('#btnMissionPrev').click(function () {
        missionCurrentPic = missionCurrentPic - 1;
        if (missionCurrentPic < 1) { missionCurrentPic = 5 };

        $('.missionDivs').removeClass('block').addClass('noDisplay');
        $('#missDiv' + missionCurrentPic.toString()).removeClass('noDisplay').addClass('block')
    });

    $("#butHark1").click(function () {
        if ($(this).attr('value') === ' See Reply from Michael Harkins ') {
            $(this).attr('value', ' Return to Article about Harkins Lab ');
            $('#butHark2').attr('value', ' Return to Article about Harkins Lab ');
            $('#harkArt').removeClass('block').addClass('noDisplay');
            $('#harkResponse').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).attr('value', ' See Reply from Michael Harkins ')
            $('#harkArt').removeClass('noDisplay').addClass('block');
            $('#harkResponse').removeClass('block').addClass('noDisplay');
        }
    });

    $("#butHark2").click(function () {
        if ($(this).attr('value') === ' See Reply from Michael Harkins ') {
            $(this).attr('value', ' Return to Article about Harkins Lab ');
            $('#butHark1').attr('value', ' Return to Article about Harkins Lab ');
            $('#harkArt').removeClass('block').addClass('noDisplay');
            $('#harkResponse').removeClass('noDisplay').addClass('block');
            $('#butHark1').focus();
        }
        else {
            $(this).attr('value', ' See Reply from Michael Harkins ');
            $('#butHark1').attr('value', ' See Reply from Michael Harkins ');
            $('#harkArt').removeClass('noDisplay').addClass('block');
            $('#harkResponse').removeClass('block').addClass('noDisplay');
            $('#butHark1').focus();

        }
    });

    $('#btngrassShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#grassSlides').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#grassSlides').hide()
        }
    });

    $('#btnhockeyShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#hockeySlides').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#hockeySlides').removeClass('block').addClass('noDisplay');
        }
    });

    $('#btncommandShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#commandSlides').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#commandSlides').removeClass('block').addClass('noDisplay');
        }
    });

    $('#btnwiseShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#wiseSlides').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#wiseSlides').removeClass('block').addClass('noDisplay');
        }
    });

    $('#btnsecAFShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#secAfSlides').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#secAfSlides').removeClass('block').addClass('noDisplay');
        }
    });

    $('#btnholmesShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#holmesSlides').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#holmesSlides').removeClass('block').addClass('noDisplay');
        }
    });

    $('#btnAntShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#antSlides').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#antSlides').removeClass('block').addClass('noDisplay');
        }
    });

    $('.news2KnowH1').click(function () {
        myText = $(this).html(); //Get the text inside of the news2KnowH1 that was clicked.
        switch (myText) {
            case "The Art of Sign in a Secure Environment - 11/14/2022":
                OpenNTKfromMenu('Sign');
                break;
            case "CTBTO Executive Secretary visits AFTAC - 11/12/2022":
                OpenNTKfromMenu('CTBTO');
                break;
            case "New Nuke-Sniffing Jet Flies Off South America On First International Mission - 1/18/2023":
                OpenNTKfromMenu('ConstnatPhoenix2023');
                break;
            case "Finlayson takes command of nuclear treaty monitoring center - 7/6/2022":
                OpenNTKfromMenu('Finlayson');
                break;
            case "Nuclear air sampling aircraft on display at Patrick AFB - 3/4/2021":
                OpenNTKfromMenu('Nasa');
                break;
            case "Innovative self-serve temperature check helps workforce during COVID - 2/3/2021":
                OpenNTKfromMenu('SelfTemp');
                break;
            case "AFTAC earns highly effective rating from Inspector General - 2/3/2021":
                OpenNTKfromMenu('Effective');
                break;
            case "H.S. student immerses with AFTAC in the Outback - 2/3/2021":
                OpenNTKfromMenu('OutBack');
                break;
            case "2 famed bases re-designated to highlight Space Force connection - 12/10/2020":
                OpenNTKfromMenu('SpaceForce');
                break;
            case "COMACC joins AFTAC Airmen in online training session - 9/20/2020":
                OpenNTKfromMenu('COMACC');
                break;
            case "The science of mind and body: A successful combination for one Airman - 9/20/2020":
                OpenNTKfromMenu('MindnBody');
                break;
            case "AFTAC Master Scientific Applications Specialist Badge - 9/17/2020":
                OpenNTKfromMenu('MSASB');
                break;
            case "Air Force Vice Chief: Nearly One-Third of Employees May Permanently Telework - 9/17/2020":
                OpenNTKfromMenu('Telework');
                break;
            case "For 1st Time in 3 Decades, Military Families and Retirees Are Getting Revamped IDs - 9/1/2020":
                OpenNTKfromMenu('ID');
                break;
            case "AFTAC uses technology to execute Change of Command - 7/2/2020":
                OpenNTKfromMenu('COC');
                break;
            case "COMACC joins AFTAC Airmen in online training session - 5/20/2020":
                OpenNTKfromMenu('COMACC');
                break;
            case "Arguing Artificial Intelligence during pandemic becomes a reality - 5/17/2020":
                OpenNTKfromMenu('AI');
                break;
            case "Suicide survivor helps Airmen, families battle adversity during pandemic - 5/16/2020":
                OpenNTKfromMenu('Suicide');
                break;
            case "Curbside Pick-Up at PAFB BX - 4/15/2020":
                OpenNTKfromMenu('curbside');
                break;
            case "Pandemic can’t stop AFTAC’s innovative Airmen - 4/14/2020":
                OpenNTKfromMenu('pandemic');
                break;
            case "Vital treaty monitoring mission continues in wake of COVID-19 response - 4/8/2020":
                OpenNTKfromMenu('coVid');
                break;
            case "AFTAC inducts 3 into famed Wall of Honor - 3/18/2020":
                OpenNTKfromMenu('inductees');
                break;
            case "DOD Issues Flexible Instructions on Response to Coronavirus - 3/13/2020":
                OpenNTKfromMenu('corona');
                break;
            case "DOD Closing Dozens of Military Clinics to Retirees, Families - 2/20/2020":
                OpenNTKfromMenu('close');
                break;
            case "DoD to restructure 50 hospitals, clinics to improve readiness - 2/21/2020":
                OpenNTKfromMenu('clinics');
                break;
            case "AFTAC hosts 5th annual WiSE Symposium - 2/13/2020":
                OpenNTKfromMenu('Wise2');
                break;
            case "VCSAF meets with nuclear scientists, engineers about future operations - 12/10/2019":
                OpenNTKfromMenu('vcsaf');
                break;
            case "AFTAC leads charge on R&amp;D Roadmap for USAF - 11/2/2019":
                OpenNTKfromMenu('roadMap');
                break;
            case "College Fellows develop nuke detection system to test at RED FLAG ‘19 - 10/30/2019":
                OpenNTKfromMenu('fellows');
                break;
            case "Military Affairs Council tours only radiochemistry lab in USAF - 10/30/2019":
                OpenNTKfromMenu('council');
                break;
            case "CRF develops innovative solution to seismic array vulnerability - 10/4/2019":
                OpenNTKfromMenu('crf');
                break;
            case "Local ’16 valedictorian recruited by AFTAC as nuclear data analyst - 9/25/2019":
                OpenNTKfromMenu('valedictorian');
                break;
            case "Experts from AFTAC travel to Georgia for STEMversity - 9/16/2019":
                OpenNTKfromMenu('STEMversity');
                break;
            case "Despite Dorian, vital nuke mission continues uninterrupted - 9/14/2019":
                OpenNTKfromMenu('Dorian');
                break;
            case "Two distinguished executives receive Presidential Rank Awards - 7/12/2019":
                OpenNTKfromMenu('Presidential');
                break;
            case "From Uzbekistan to America: One Airman's Tale - 6/27/2019":
                OpenNTKfromMenu('Uzbekistan');
                break;
            case "Dr Glenn Sjoden, AFTAC Chief Scientist, Is Leaving":
                OpenNTKfromMenu('Sjoden');
                break;
            case "A1C with PhD now a 2Lt - 6/6/2019":
                OpenNTKfromMenu('Lt');
                break;
            case "Cannon Shot Nuclear Test - 5/27/2019":
                OpenNTKfromMenu('Cannon');
                break;
            case "Secret lab at Patrick Air Force Base - 4/23/2019":
                OpenNTKfromMenu('SecLab');
                break;
            case "Using dynamite and TNT to enhance nuclear mission - 4/17/2019":
                OpenNTKfromMenu('TNT');
                break;
            case "Divisional wins lead to state competition for AFTAC mentors - 4/17/2019":
                OpenNTKfromMenu('Mentors');
                break;
            case "Nuclear air sampling aircraft on display at Patrick AFB - 3/14/2019":
                OpenNTKfromMenu('Nuclear');
                break;
            case "Rare boat-to-boat transfer executed on the high seas - 3/13/2019":
                OpenNTKfromMenu('Boat2Boat');
                break;
            case "Defense Department pushing ahead to merge commissary and exchange systems - 3/13/2019":
                OpenNTKfromMenu('Exchange');
                break;
            case "Congressional staffers learn about AFTAC’s heritage, mission - 3/13/2019":
                OpenNTKfromMenu('Staffers');
                break;
            case "STEM outreach key to uniting Airmen with students - 2/20/2019":
                OpenNTKfromMenu('Stem1');
                break;
            case "Another tournament, another trophy for AFTAC Hockey - 1/16/2019":
                OpenNTKfromMenu('Hockey');
                break;
            case "A1C with Ph.D. lands job at nuclear treaty monitoring center - 12/16/2018":
                OpenNTKfromMenu('A1C');
                break;
            case "Our Cardboard Christmas Tree - 11/28/2018":
                OpenNTKfromMenu('Cardboard');
                break;
            case "Hoop coaches, life mentors: AFTAC Airmen engage with community youth - 11/16/2018":
                OpenNTKfromMenu('Hoop');
                break;
            case "Leadership in a Selfie Culture - 11/6/2018":
                OpenNTKfromMenu('Selfie');
                break;
            case "AFTAC molecular biologist represents Air Force at SWE18 conference - 11/6/2018":
                OpenNTKfromMenu('WE18');
                break;
            case "Air Force Chief Scientist pays visit to treaty monitoring center - 10/22/2018":
                OpenNTKfromMenu('Chief');
                break;
            case "Downrange ‘MacGyvers’ creatively get the job done - 10/3/2018":
                OpenNTKfromMenu('Macgyver');
                break;
            case "Musical Tesla Coil, 3-D printer draws crowd at Science Bowl - 10/2/2018":
                OpenNTKfromMenu('Testla');
                break;
            case "Creative prototype leads to fielded implementation - 9/20/2018":
                OpenNTKfromMenu('ProtoType');
                break;
            case "Chemist at AFTAC earns award from national Hispanic organization - 9/19/2018":
                OpenNTKfromMenu('Chemist');
                break;
            case "eFAILution Wall:  Failure + Learning = Successful Evolution - 9/18/2018":
                OpenNTKfromMenu('Failure');
                break;
            case "AFTAC Hockey takes trophy at charity match - 9/18/2018":
                OpenNTKfromMenu('HockeyWin');
                break;
            case "Florida Airmen Skype with Georgia middle school students - 5/12/2018":
                OpenNTKfromMenu('skype');
                break;
            case "AFTAC hosts annual WiSE Symposium - 2/15/2018":
                OpenNTKfromMenu('wise');
                break;
            case "SecAF briefed on AFTAC role in nuclear explosions - 2/15/2018":
                OpenNTKfromMenu('secAF');
                break;
            case "Holmes, Batten pay first visit to nuclear treaty monitoring center - 1/26/2018":
                OpenNTKfromMenu('holmes');
                break;
            case "Airmen travel to Earth’s southernmost point for annual maintenance 1/16/2018":
                OpenNTKfromMenu('antarctic');
                break;
            case "AFTAC civilian, Army Reservist selected for promotion to brigadier general 12/5/2017":
                OpenNTKfromMenu('general');
                break;
            case "AFTAC civilian returns to duty after Hurricane Maria relief efforts 11/30/2017":
                OpenNTKfromMenu('maria');
                break;
            case "AFTAC names lab after ‘giant’ of nuclear forensics 11/24/2017":
                OpenNTKfromMenu('harkins');
                break;
            case "Ions and betas and treaties, oh my! 11/8/2017":
                OpenNTKfromMenu('ions');
                break;
            case "AFTAC Airman honored with Valor Award for life-saving actions 9/27/2017":
                OpenNTKfromMenu('Valor');
                break;
            case "Nuclear Treaty Monitoring unit cleans up after Hurricane Irma 9/16/2017":
                OpenNTKfromMenu('Hurricane');
                break;
            case "Air Force team monitors North Korean nuclear threat 9/16/2017":
                OpenNTKfromMenu('Nok');
                break;
            case "Sixth generation Sailor, first generation Airman 8/29/2017":
                OpenNTKfromMenu('Sailor');
                break;
            case "Cyberspace domain critical to Nuclear Treaty Monitoring 8/29/2017":
                OpenNTKfromMenu('Cyber');
                break;
            case "AFTACers thrill young STEM minds, get surprise visit from HAF 3-star 8/23/2017":
                OpenNTKfromMenu('Stem');
                break;
        };
    });
    //**********************************************************************

    //**********************************************************************
    //Events Page

    $('#OpenHouse').click(function () {
        $('.eventArts').removeClass('block').addClass('noDisplay');
        $('#openHouseArt').removeClass('noDisplay').addClass('block');
    });

    $('#liCoBreakfast').click(function () {
        $('.eventArts').removeClass('block').addClass('noDisplay');
        $('#coBreakfast').removeClass('noDisplay').addClass('block');
    });

    $('#mySlideRequest').click(function () {
        $('.ssPics').addClass('noDisplay maroonBorder smallShadow bottomMargin2em');
        if ($(this).html().trim() === 'Show Photos in a Slide Show.') {
            $(this).html('Hide Photos in a Slide Show.');
            $('#slideArt').removeClass('noDisplay').addClass('block');
            $('#sbArticleArt').removeClass('block').addClass('noDisplay');
            $('.ssPics').addClass('noDisplay').removeClass('block');
            $('#ss' + ssCurrentPic).removeClass('noDisplay').addClass('block');
            //ssCurrentPic = 1;
        }
        else {
            $(this).html('Show Photos in a Slide Show.');
            $('#slideArt').removeClass('block').addClass('noDisplay');
            //ssCurrentPic = 1;
            $('.ssPics').addClass('noDisplay').removeClass('block');
            $('#sbArticleArt').removeClass('noDisplay').addClass('block');
        };
    });

    $('#btnPrevious').click(function () {

        ssLastPic = ssCurrentPic;

        ssCurrentPic = ssCurrentPic - 1;

        if (ssCurrentPic < 1) {
            ssCurrentPic = ssMaxPic
        };

        $('#ss' + ssLastPic).fadeOut(function () { $('#ss' + ssCurrentPic).fadeIn(); });

    });

    $('#btnNext').click(function () {

        ssLastPic = ssCurrentPic;

        ssCurrentPic = ssCurrentPic + 1;

        if (ssCurrentPic > ssMaxPic) {
            ssCurrentPic = 1;
        };

        $('#ss' + ssLastPic).fadeOut(function () { $('#ss' + ssCurrentPic).fadeIn(); });

    });

    $('#btnStartSlideShow').click(function () {
        if ($(this).attr('value') == ' Start Slide Show ') {
            SlideShowInt = setInterval(function () { ssSlideShow() }, 4000);
            $(this).attr('value', ' Stop Slide Show ');
            $('#btnPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#btnNext').removeClass('myBut').addClass('myGrayBut');
            $('#btnPrevious').attr('disabled', 'disabled');
            $('#btnNext').attr('disabled', 'disabled');
            $('.ssPics').removeClass('block').addClass('noDisplay');
            $('#ss' + ssCurrentPic).removeClass('noDisplay').addClass('block');
        }
        else {
            clearInterval(SlideShowInt)
            $(this).attr('value', ' Start Slide Show ');
            $('#btnPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#btnNext').removeClass('myGrayBut').addClass('myBut');
            $('#btnPrevious').removeAttr('disabled');
            $('#btnNext').removeAttr('disabled');
        }
    });

    //**********************************************************************

    //**********************************************************************
    //Pomo Page

    $('#btnEmail').click(function () {
        if ($('#txtEmail').val().length === 0) {
            $('#pnlPomoError').html('<p class="redText bold italic" style="font-size:1em;">Your email must be entered here.</p>;');
            $('#pnlPomoError').removeClass('noDisplay').addClass('block');
        }
        else {
            $('#pnlPomoError').removeClass('block').addClass('noDisplay');
            $(this).attr('disabled', true);

            CallService();

            $(this).attr('disabled', false);
        }
    });

    $('#liPoMos').click(function () {
        if ($('#divPomos').hasClass('noDisplay')) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            $('.underSel').css('color', 'yellow');
            $('.underMenu').removeClass('block').addClass('noDisplay');
            $('#divPomos').removeClass('noDisplay').addClass('block');
        };
    });

    $('#pomosArchived').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        if ($('#pomoArt').hasClass('noDisplay')) {
            $('.myArts').removeClass('block').addClass('noDisplay');
            $('#pomoArt').removeClass('noDisplay').addClass('block');
            $('#sectPomoCurrent').removeClass('block').addClass('noDisplay');
            $('#sectPomoArchived').removeClass('noDisplay').addClass('block');
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#pomoArt").offset().top
            }, 500);
        }
        else {
            $('#sectPomoCurrent').removeClass('block').addClass('noDisplay');
            $('#sectPomoArchived').removeClass('noDisplay').addClass('block');
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#pomoArt").offset().top
            }, 500);
        };
    });

    $('#ancPomo').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#pomoArt').removeClass('noDisplay').addClass('block');
        $('#sectPomoCurrent').removeClass('block').addClass('noDisplay');
        $('#sectPomoArchived').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#pomoArt").offset().top
        }, 500);
    });

    //**********************************************************************

  $('#myMinutes').click(function () {
      window.open('_Minutes/2023-9-22_Minutes.pdf', '');
    });

    $('#AprilPomo').click(function () {
        window.open('http://aftacaa.us/_Pomos/PoMo2023_04.pdf', '');
    });       

    $('#AugustPomo').click(function () {
        window.open('http://aftacaa.us/_Pomos/PoMo2023_08.pdf', '');
    });
    $('#DecemberPomo').click(function () {
        window.open('http://aftacaa.us/_Pomos/PoMo2022_12.pdf', '');
    });

    //**********************************************************************

    //**********************************************************************
    //SnowBall Page

    $('#sbButArticle').click(function () {
        $("video").each(function () { this.pause() });
        $('#sbButVideo1').removeClass('noDisplay').addClass('inline');
        $('#sbButVideo2').removeClass('noDisplay').addClass('inline');
        $(this).removeClass('inline').addClass('noDisplay');
        $('.sbSects').removeClass('block').addClass('noDisplay');
        $('#mySBArticle').removeClass('noDisplay').addClass('block');
        vid = document.getElementById("sbVideo1");
        vid.currentTime = 0;
    });

    $('#sbButVideo1').click(function () {
        $("video").each(function () { this.pause() });
        $('#sbButArticle').removeClass('noDisplay').addClass('inline');
        $('#sbButVideo2').removeClass('noDisplay').addClass('inline');
        $(this).removeClass('inline').addClass('noDisplay');
        $('.sbSects').removeClass('block').addClass('noDisplay');
        $('#mySBVideo1').removeClass('noDisplay').addClass('block');
        vid = document.getElementById("vidSBVideo1");
        vid.currentTime = 0;
        $('#vidSBVideo1').trigger('play');
    });

    $('#sbButVideo2').click(function () {
        $("video").each(function () { this.pause() });
        $('#sbButArticle').removeClass('noDisplay').addClass('inline');
        $('#sbButVideo1').removeClass('noDisplay').addClass('inline');
        $(this).removeClass('inline').addClass('noDisplay');
        $('.sbSects').removeClass('block').addClass('noDisplay');
        $('#mySBVideo2').removeClass('noDisplay').addClass('block');
        vid = document.getElementById("vidSBVideo2");
        vid.currentTime = 0;
        $('#vidSBVideo2').trigger('play');
    });

    $('#h1SBSlideShow').click(function () {
        if ($(this).html() === ' Show Slide Show ') {
            $(this).html(' Hide Slide Show ');
            $('.sbfigs').removeClass('noDisplay').addClass('block');
            $('#fig1').removeClass('noDisplay').addClass('block');
            $('#divSBSlideShow').removeClass('noDisplay').addClass('block');
            sbCurrentPic = 1;
        }
        else {
            $(this).html(' Show Slide Show ');
            $('#divSBSlideShow').removeClass('block').addClass('noDisplay');
            $('.sbfigs').removeClass('block').addClass('noDisplay');
        };
    })

    $('#h1SB2SlideShow').click(function () {
        if ($(this).html() === ' Show Slide Show ') {
            $(this).html(' Hide Slide Show ');
            $('.sb2figs').removeClass('noDisplay').addClass('block');
            $('#fig1').removeClass('noDisplay').addClass('block');
            $('#divSB2SlideShow').removeClass('noDisplay').addClass('block');
            sb2CurrentPic = 1;
        }
        else {
            $(this).html(' Show Slide Show ');
            $('#divSB2SlideShow').removeClass('block').addClass('noDisplay');
            $('.sbfigs').removeClass('block').addClass('noDisplay');
        };
    })

    var wise2Mess1 = "Students from Sabal Elementary School in Melbourne, Fla., participate in a yelling contest with Airman 1st Class Kishona Quinn, a member of the Air Force Technical Applications Center at Patrick AFB, Fla., using a meter that measures sound levels to test exposure to hazardous noises. The demonstrations were part of AFTAC's annual Women in Science and Engineering Symposium Pioneer Day for local school students. (U.S. Air Force photo by Matthew S. Jurgens)"
    var wise2Mess2 = "Dr. Toby Daly-Engle (right), professor of Ocean Engineering and Marine Sciences at the Florida Institute of Technology, exchanges business cards with Trinity Ann Martinez, a 10th grader and aspiring marine biologist who attended the Women in Science and Engineering Symposium Jan. 21-23, 2020 hosted by the Air Force Technical Applications Center. Daly-Engle was one of the keynote speakers at the event aimed at inspiring the next generation of STEM enthusiasts. (U.S. Air Force photo by Matthew S. Jurgens)"
    var wise2Mess3 = "Students from Capeview Elementary School in Cape Canaveral, Fla., sift through rocks to locate actual fossils during the Women in Science and Engineering Symposium hosted by the Air Force Technical Applications Center Jan. 23, 2020. Cutline. (U.S. Air Force photo by Matthew S. Jurgens)"
    var wise2Mess4 = "Dr. Rebecca Albo, a member of the Air Force Technical Applications Center, Patrick AFB, Fla., delivers opening remarks during the Women in Science and Engineering Symposium Jan. 21, 2020. This was the fifth year AFTAC has hosted the event to highlight the value that gender diversity brings to the Science, Technology, Engineering and Math (STEM) workforce. (U.S. Air Force photo by Matthew S. Jurgens)"
    var wise2Mess5 = "Tech. Sgt. Steven Blake, a member of the Air Force Technical Applications Center at Patrick AFB, Fla., pours liquid nitrogen into a bowl to freeze balloons to illustrate to local school students how the difference in temperatures changes malleable objects into brittle ones during the 2020 Women in Science and Engineering Symposium Jan. 21-23, 2020. (U.S. Air Force photo by Matthew S. Jurgens)"
    var wise2Mess6 = "Dr. Mary D'Ambrosio, a board certified veterinarian from the Animal Specialty and Emergency Center of Brevard, conducts a networking session during the Women in Science and Engineering Symposium hosted by the Air Force Technical Applications Center, Patrick AFB, Fla., Jan. 21-23, 2020. D'Ambrosio was one of several distinguished speakers featured at the annual event aimed at drawing young women into STEM fields. (U.S. Air Force photo by Matthew S. Jurgens)"
    var wise2Mess7 = "Dr. Gioia Mass, NASA project scientist and plant scientist at Kennedy Space Center, takes a question from an audience member during the Women in Science and Engineering Symposium hosted by the Air Force Technical Applications Center at Patrick AFB, Fla., Jan. 21, 2020. Mass was one of several WiSE keynote speakers who highlighted the value that gender diversity brings to the Science, Technology, Engineering and Math workforce. (U.S. Air Force photo by Matthew S. Jurgens)"

    $('#btnWise2Previous').click(function () {
        if ($(this).hasClass('myBut')) {
            wise2CurrentPic = wise2CurrentPic - 1;
            if (wise2CurrentPic < 1) { wise2CurrentPic = 7 };

            $('#wise2Pic').attr('src', '_Photos/News2Know/wise2-' + wise2CurrentPic + '.JPG').attr('alt', 'wise2-' + wise2CurrentPic + '.JPG');
        };

        switch (wise2CurrentPic) {
            case 1:
                $('#wise2_Mess').html(wise2Mess1);
                break
            case 2:
                $('#wise2_Mess').html(wise2Mess2);
                break
            case 3:
                $('#wise2_Mess').html(wise2Mess3);
                break
            case 4:
                $('#wise2_Mess').html(wise2Mess4);
                break
            case 5:
                $('#wise2_Mess').html(wise2Mess5);
                break
            case 6:
                $('#wise2_Mess').html(wise2Mess6);
                break
            case 7:
                $('#wise2_Mess').html(wise2Mess7);
                break
        };
    });

    $('#btnWise2Next').click(function () {
        if ($(this).hasClass('myBut')) {
            wise2CurrentPic = wise2CurrentPic + 1;
            if (wise2CurrentPic > 7) { wise2CurrentPic = 1 };

            $('#wise2Pic').attr('src', '_Photos/News2Know/wise2-' + wise2CurrentPic + '.JPG').attr('alt', 'wise2-' + wise2CurrentPic + '.JPG');
        };

        switch (wise2CurrentPic) {
            case 1:
                $('#wise2_Mess').html(wise2Mess1);
                break
            case 2:
                $('#wise2_Mess').html(wise2Mess2);
                break
            case 3:
                $('#wise2_Mess').html(wise2Mess3);
                break
            case 4:
                $('#wise2_Mess').html(wise2Mess4);
                break
            case 5:
                $('#wise2_Mess').html(wise2Mess5);
                break
            case 6:
                $('#wise2_Mess').html(wise2Mess6);
                break
            case 7:
                $('#wise2_Mess').html(wise2Mess7);
                break
        };
    });

    $('#btnWise2Slide').click(function () {
        clearInterval(Wise2SlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#btnWise2Previous').removeClass('myBut').addClass('myGrayBut');
            $('#btnWise2Next').removeClass('myBut').addClass('myGrayBut');
            Wise2SlideShowInt = setInterval(function () { wise2Show() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#btnWise2Previous').removeClass('myGrayBut').addClass('myBut');
            $('#btnWise2Next').removeClass('myGrayBut').addClass('myBut');
            clearInterval(relocateSlideShowInt);
        };
    });




    var relocateCurrentPic = 1;
    var relocateMess1 = "Keith Ewasiuk, (center) maintenance operations control center manager for the Air Force Technical Applications Center, explains to Col. Ralph E. Bordner III (lower right), AFTAC vice commander, how data is analyzed after the nuclear treaty monitoring center transfers the mission from its primary location at Patrick AFB, Fla., to its alternate location in Millington, Tenn.  Also pictured (l to r):  Maj. William J. Pattinson, 22nd Surveillance Squadron director of operations; Staff Sgt. Beau Brennan, subsurface analyst; and Lt. Col. Joseph H. Shupert, 709th Surveillance and Analysis Group deputy commander. (U.S. Air Force photo by Susan A. Romano)"
    var relocateMess2 = "2nd Lt. Morgan Snyder, senior duty officer at the Air Force Technical Applications Center headquartered at Patrick AFB, Fla., takes a call during a Contingency of Operations exercise that tested the nuclear treaty monitoring center's ability to transfer its vital mission from Patrick to its alternate location in Millington, Tenn., as Master Sgt. Jorge Garcia, AFTAC operations manager, relays information to his counterparts in Florida.  (U.S. Air Force photo by Susan A. Romano)"
    var relocateMess3 = "Senior Airman Joseph Stanley (right), a subsurface operations manager at the Air Force Technical Applications Center, describes to Col. Ralph E. Bordner III, AFTAC vice commander, how seismic signals and waveforms appear after the nuclear treaty monitoring mission is transferred from the center's primary location at Patrick AFB, Fla., to its alternate location in Millington, Tenn.  AFTAC recently exercised its ability to relocate in the event of a natural or man-made disaster.  (U.S. Air Force photo by Susan A. Romano)"
    var relocateMess4 = "Master Sgt. Michael Nolan, cyber operations superintendent, fields a phone call from his headquarters at Patrick AFB, Fla., during a Contingency of Operations exercise Aug. 14-15, 2018, as Maj. William J. Pattinson looks on.  Nolan was one of several members of the Air Force Technical Applications Center who participated in the exercise to test the nuclear treaty monitoring center's ability to transfer the mission from its primary location to its alternate site in Millington, Tenn.  (U.S. Air Force photo by Susan A. Romano)"
    var relocateCurrentPic = 1;
    var relocateSlideShowInt;

    $('#relocatePrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            relocateCurrentPic = relocateCurrentPic - 1;
            if (relocateCurrentPic < 1) { relocateCurrentPic = 4 };

            $('#relocatePic').attr('src', '_Photos/News2Know/relocate' + relocateCurrentPic + '.JPG').attr('alt', 'relocate' + relocateCurrentPic + '.JPG');
        };

        switch (relocateCurrentPic) {
            case 1:
                $('#relocateMess').html(relocateMess1);
                break
            case 2:
                $('#relocateMess').html(relocateMess2);
                break
            case 3:
                $('#relocateMess').html(relocateMess3);
                break
            case 4:
                $('#relocateMess').html(relocateMess4);
                break
        };
    });

    $('#relocateNext').click(function () {
        if ($(this).hasClass('myBut')) {
            relocateCurrentPic = relocateCurrentPic + 1;
            if (relocateCurrentPic > 4) { relocateCurrentPic = 1 };

            $('#relocatePic').attr('src', '_Photos/News2Know/relocate' + relocateCurrentPic + '.JPG').attr('alt', 'relocate' + relocateCurrentPic + '.JPG');
        };

        switch (relocateCurrentPic) {
            case 1:
                $('#relocateMess').html(relocateMess1);
                break
            case 2:
                $('#relocateMess').html(relocateMess2);
                break
            case 3:
                $('#relocateMess').html(relocateMess3);
                break
            case 4:
                $('#relocateMess').html(relocateMess4);
                break
        };
    });

    $('#relocateSlide').click(function () {
        clearInterval(BuzzSlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#relocatePrevious').removeClass('myBut').addClass('myGrayBut');
            $('#relocateNext').removeClass('myBut').addClass('myGrayBut');
            relocateSlideShowInt = setInterval(function () { relocateShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#relocatePrevious').removeClass('myGrayBut').addClass('myBut');
            $('#relocateNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(relocateSlideShowInt);
        };
    });


    var stemGirlsMess1 = "One of only four women in her squadron, Parveen Kapoor is the chief of the Atmosphere and Space Operations Flight within the 23rd Analysis Squadron at the Air Force Technical Applications Center. She leads a flight comprised of military and civilian scientists, mathematicians, engineers and technicians responsible for the operation and maintenance of the U.S. Nuclear Detonation Detection System. (U.S. Air Force photo by Susan A. Romano)"
    var stemGirlsMess2 = "An ever-present participant when the Air Force Technical Applications Center showcases its mission on the road, Diana Velosa enjoys reaching out to America’s youth to encourage them to pursue careers in STEM - science, technology, engineering and math. (U.S. Air Force photo by Susan A. Romano)"
    var stemGirlsMess3 = "Staff Sgt. Terica Clewis has been assigned to the Air Force Technical Applications Center performing various roles for the past three years. Her current duties include designing innovated software systems that assist center personnel (as well as the rest of the Air Force) efficiently manage, store and process large-scale data. (U.S. Air Force photo by Susan A. Romano)"
    var stemGirlsMess4 = "One of only four women in her squadron, Parveen Kapoor is the chief of the Atmosphere and Space Operations Flight within the 23rd Analysis Squadron at the Air Force Technical Applications Center. She leads a flight comprised of military and civilian scientists, mathematicians, engineers and technicians responsible for the operation and maintenance of the U.S. Nuclear Detonation Detection System. (U.S. Air Force photo by Susan A. Romano)"
    var stemGirlsMess5 = "When the Air Force Technical Applications Center celebrated National Pi Day on March 14, Tech. Sgt. BreAnne Groth’s section was amazed when the noncommissioned officer in charge picked up a dry-erase marker and began writing out Pi in decimal form from memory. With ease, she surpassed 100 decimal points and stopped only because she ran out of room on the white board and had to get back to work. (U.S. Air Force photo by Susan A. Romano)"
    var stemGirlsMess6 = "When Senior Master Sgt. Tonya L. Cobarruviaz enlisted in the Air Force more than 16 years ago, little did she know she would spend 14 of those 16 years with the same organization. It is a testament to her knowledge, skill and expertise that she remains one of the stalwart senior noncommissioned officers assigned to the Air Force Technical Applications Center. (U.S. Air Force photo by Susan A. Romano)"
    var stemGirlsCurrentPic = 1;
    var stemGirlsSlideShowInt;

    $('#butstemGirlsPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            stemGirlsCurrentPic = stemGirlsCurrentPic - 1;
            if (stemGirlsCurrentPic < 1) { stemGirlsCurrentPic = 6 };

            $('#stemGirlsPic').attr('src', '_Photos/News2Know/stemGirls' + stemGirlsCurrentPic + '.JPG').attr('alt', 'stemGirls' + stemGirlsCurrentPic + '.JPG');
        };

        switch (stemGirlsCurrentPic) {
            case 1:
                $('#stemGirlsMess').html(stemGirlsMess1);
                break
            case 2:
                $('#stemGirlsMess').html(stemGirlsMess2);
                break
            case 3:
                $('#stemGirlsMess').html(stemGirlsMess3);
                break
            case 4:
                $('#stemGirlsMess').html(stemGirlsMess4);
                break
            case 5:
                $('#stemGirlsMess').html(stemGirlsMess5);
                break
            case 6:
                $('#stemGirlsMess').html(stemGirlsMess6);
                break
        };
    });

    $('#butstemGirlsNext').click(function () {
        if ($(this).hasClass('myBut')) {
            stemGirlsCurrentPic = stemGirlsCurrentPic + 1;
            if (stemGirlsCurrentPic > 6) { stemGirlsCurrentPic = 1 };

            $('#stemGirlsPic').attr('src', '_Photos/News2Know/stemGirls' + stemGirlsCurrentPic + '.JPG').attr('alt', 'stemGirls' + stemGirlsCurrentPic + '.JPG');
        };

        switch (stemGirlsCurrentPic) {
            case 1:
                $('#stemGirlsMess').html(stemGirlsMess1);
                break
            case 2:
                $('#stemGirlsMess').html(stemGirlsMess2);
                break
            case 3:
                $('#stemGirlsMess').html(stemGirlsMess3);
                break
            case 4:
                $('#stemGirlsMess').html(stemGirlsMess4);
                break
            case 5:
                $('#stemGirlsMess').html(stemGirlsMess5);
                break
            case 6:
                $('#stemGirlsMess').html(stemGirlsMess6);
                break
        };
    });

    $('#butstemGirlsSlide').click(function () {
        clearInterval(stemGirlsSlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butstemGirlsPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butstemGirlsNext').removeClass('myBut').addClass('myGrayBut');
            stemGirlsSlideShowInt = setInterval(function () { stemGirlsShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butstemGirlsPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butstemGirlsNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(stemGirlsSlideShowInt);
        };
    });

    var awdMess = [9];
    awdMess[0] = "The Award";
    awdMess[1] = "Pete Gilbert and Frank Calenda before the ceremony"
    awdMess[2] = "Pete running up to accept the award"
    awdMess[3] = "Shirley and Pete accepting the award from Colonel Hartman"
    awdMess[4] = "Group photo of award recipients"
    awdMess[5] = "Pete coming back with the award"
    awdMess[6] = "Pete discussing life with Colonel Hartman"
    awdMess[7] = "Pete discussing how the award was made with CMS Mike Joseph"
    awdMess[8] = "Some of the Alumni in attendance"
    var awdCurrentPic = 1;
    var awdSlideShowInt;


    $('#morePics').click(function () {
        if ($(this).html() === 'Click to see More Pictures') {
            $(this).html('Click to Hide Pictures')
            $('#allAwardPhotos').removeClass('noDisplay').addClass('block');
        }
        else {
            $(this).html('Click to see More Pictures')
            $('#allAwardPhotos').removeClass('block').addClass('noDisplay');
        }
    });

    $('#butAwdPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            awdCurrentPic = awdCurrentPic - 1;
            if (awdCurrentPic < 1) { awdCurrentPic = 9 };

            $('#awardPic').attr('src', '_Photos/News2Know/award' + awdCurrentPic + '.JPG').attr('alt', 'award' + awdCurrentPic + '.JPG');
            $('#awardMess').html(awdMess[awdCurrentPic - 1])
        };
    });

    $('#butAwdNext').click(function () {
        if ($(this).hasClass('myBut')) {
            awdCurrentPic = awdCurrentPic + 1;
            if (awdCurrentPic > 9) { awdCurrentPic = 1 };

            $('#awardPic').attr('src', '_Photos/News2Know/award' + awdCurrentPic + '.JPG').attr('alt', 'award' + awdCurrentPic + '.JPG');
            $('#awardMess').html(awdMess[awdCurrentPic - 1])
        };
    });

    $('#butAwdSlide').click(function () {
        clearInterval(awdSlideShowInt);

        if ($(this).attr('value') === 'Show Slide Show') {
            $(this).attr('value', 'Stop Slide Show');
            $('#butAwdPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butAwdNext').removeClass('myBut').addClass('myGrayBut');
            awdSlideShowInt = setInterval(function () { AwdSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', 'Show Slide Show');
            $('#butAwdPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butAwdNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(awdSlideShowInt);
        };
    });

    var BuzzMess = [4];
    BuzzMess[0] = "Capt. Corey Buran, an assistant director of operations at the 363rd Intelligence, Surveillance and Reconnaissance Wing, Langley AFB, Va., examines some projects produced by members of the Air Force Technical Applications Center's Innovation Lab during a visit June 1, 2018.  Buran was one of 35 Airmen within the ISR community to visit the nuclear treaty monitoring center at Patrick AFB, Fla., to learn more about how AFTAC employs innovation to improve its processes.   (U.S. Air Force photo by Susan A. Romano)"
    BuzzMess[1] = "Senior Master Sgt. Scott Gero, a first sergeant at the 363rd Intelligence, Surveillance and Reconnaissance Wing, Langley AFB, Va., looks over some projects produced by members of the Air Force Technical Applications Center's Innovation Lab during a visit June 1, 2018.  Gero, along with 35 other Airmen across the Air Force ISR enterprise, visited the nuclear treaty monitoring center at Patrick AFB, Fla., to learn more about how AFTAC employs innovation to improve mission accomplishment.   (U.S. Air Force photo by Susan A. Romano)"
    BuzzMess[2] = "2nd Lt. Kaleb Mitchell, a chemist at the Air Force Radiochemistry Lab at Patrick AFB, Fla., checks Chief Master Sgt. Jessica Bender, command chief for the 9th Reconnaissance Wing, Beale AFB, Calif., for possible radioactive contamination using a hand-held radiation monitor.  Bender was one of 35 Airmen within 25th Air Force who visited DoD's sole nuclear treaty monitoring center June 1, 2018 to learn more about AFTAC's innovative mission.  (U.S. Air Force photo by Susan A. Romano)"
    BuzzMess[3] = "Leaders from across 25th Air Force's Intelligence, Surveillance and Reconnaissance community listen as members of the Air Force Technical Applications Center brief them on how the center uses innovation to develop and streamline technologies and processes at a cheaper cost while simultaneously addressing mission gaps.  Thirty-five ISR Airmen visited the nuclear treaty monitoring center June 1, 2018.  (U.S. Air Force photo by Susan A. Romano)"
    BuzzCurrentPic = 1;
    var BuzzSlideShowInt;

    $('#butbuzzPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            BuzzCurrentPic = BuzzCurrentPic - 1;
            if (BuzzCurrentPic < 1) { BuzzCurrentPic = 4 };

            $('#buzzPic').attr('src', '_Photos/News2Know/buzz' + BuzzCurrentPic + '.JPG').attr('alt', 'Buzz' + BuzzCurrentPic + '.JPG');
            $('#buzzMess').html(BuzzMess[BuzzCurrentPic - 1]);
        };
    });

    $('#butbuzzNext').click(function () {
        if ($(this).hasClass('myBut')) {
            BuzzCurrentPic = BuzzCurrentPic + 1;
            if (BuzzCurrentPic > 4) { BuzzCurrentPic = 1 };

            $('#buzzPic').attr('src', '_Photos/News2Know/buzz' + BuzzCurrentPic + '.JPG').attr('alt', 'Buzz' + BuzzCurrentPic + '.JPG');
            $('#buzzMess').html(BuzzMess[BuzzCurrentPic - 1]);
        };
    });

    $('#butbuzzSlide').click(function () {
        clearInterval(BuzzSlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butbuzzPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butbuzzNext').removeClass('myBut').addClass('myGrayBut');
            BuzzSlideShowInt = setInterval(function () { BuzzSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butbuzzPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butbuzzNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(BuzzSlideShowInt);
        };
    });


    var ChangeMess1 = "Col. Steven M. Gorski (left) shares a laugh with Col. Chad J. Hartman during their Change of Command ceremony at Patrick AFB, Fla.  Hartman assumed command of the Air Force Technical Applications Center from Gorski who served as the nuclear treaty monitoring center's commander since July 2016.  (U.S. Air Force photo by Phillip C. Sunkel IV)"
    var ChangeMess2 = "Maj. Gen. Mary F. O'Brien, commander of 25th Air Force, delivers her remarks during a Change of Command ceremony for the Air Force Technical Applications Center, Patrick AFB, Fla., June 20, 2018.  O'Brien served as the ceremony's presiding officer, conferring authority from outgoing commander Col. Steven M. Gorski to incoming commander Col. Chad J. Hartman.  (U.S. Air Force photo by Phillip C. Sunkel IV)"
    var ChangeMess3 = "Col. Chad J. Hartman, incoming commander of the Air Force Technical Applications Center, Patrick AFB, Fla., addresses the crowd during his Change of Command ceremony June 20, 2018.  (U.S. Air Force photo by Phillip C. Sunkel IV)"
    var ChangeMess4 = "Col. Chad J. Hartman renders a first salute to Airmen of the Air Force Technical Applications Center, Patrick AFB, Fla., during his Change of Command ceremony June 20, 2018.  (U.S. Air Force photo by Phillip C. Sunkel IV)"
    var ChangeCurrentPic = 1;
    var ChangeSlideShowInt;

    $('#butchangePrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            ChangeCurrentPic = ChangeCurrentPic - 1;
            if (ChangeCurrentPic < 1) { ChangeCurrentPic = 5 };

            $('#changePic').attr('src', '_Photos/News2Know/Change' + ChangeCurrentPic + '.JPG').attr('alt', 'Change' + ChangeCurrentPic + '.JPG');
        };

        switch (ChangeCurrentPic) {
            case 1:
                $('#changeMess').html(ChangeMess1);
                break
            case 2:
                $('#changeMess').html(ChangeMess2);
                break
            case 3:
                $('#changeMess').html(ChangeMess3);
                break
            case 4:
                $('#changeMess').html(ChangeMess4);
                break
            case 5:
                $('#changeMess').html(ChangeMess4);
                break
        };
    });

    $('#butchangeNext').click(function () {
        if ($(this).hasClass('myBut')) {
            ChangeCurrentPic = ChangeCurrentPic + 1;
            if (ChangeCurrentPic > 5) { ChangeCurrentPic = 1 };

            $('#changePic').attr('src', '_Photos/News2Know/Change' + ChangeCurrentPic + '.JPG').attr('alt', 'Change' + ChangeCurrentPic + '.JPG');
        };

        switch (ChangeCurrentPic) {
            case 1:
                $('#changeMess').html(ChangeMess1);
                break
            case 2:
                $('#changeMess').html(ChangeMess2);
                break
            case 3:
                $('#changeMess').html(ChangeMess3);
                break
            case 4:
                $('#changeMess').html(ChangeMess4);
                break
            case 5:
                $('#changeMess').html(ChangeMess4);
                break
        };
    });

    $('#butchangeSlide').click(function () {
        clearInterval(ChangeSlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butchangePrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butchangeNext').removeClass('myBut').addClass('myGrayBut');
            ChangeSlideShowInt = setInterval(function () { ChangeSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butchangePrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butchangeNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(ChangeSlideShowInt);
        };
    });

    var MonMess1 = "Contractors from Chief Electric Company connect a 750-kilowatt generator that will be used to power the contingency operations location for the Air Force Technical Applications Center in Millington, Tenn.  (U.S. Air Force photo by Master Sgt. Chris Gaskill)"
    var MonMess2 = "A team of experts from the Air Force Technical Applications Center, headquartered at Patrick AFB, Fla., look over blueprints of the operations facility where AFTAC, the Department of Defense's sole nuclear treaty monitoring center, will house its contingency operations facility at Naval Support Activity Mid-South in Millington, Tenn.  Pictured from left to right:  Bill Leslie, Randy Pomeroy and Lt. Col. Christopher Hall.  (U.S. Air Force photo by Master Sgt. Chris Gaskill)"
    var MonMess3 = "Staff Sgt. Beau Brennan, a member of the Air Force Technical Applications Center's contingency operations (COOP) relocation team, unloads equipment onto a forklift at Joint Base San Antonio-Lackland in support of AFTAC's COOP mission transfer from JBSA to Naval Support Activity Mid-South in Millington, Tenn.  (U.S. Air Force photo by Marvin T. Crumpton)"
    var MonMess4 = "Mike Holt, a member of the Air Force Technical Applications Center's relocation team, guides a forklift hoisting information technology equipment onto the second floor of AFTAC's new contingency operations location at Naval Support Activity Mid-South.  Holt was one of several members of the nuclear treaty monitoring center who assisted with the relocation from San Antonio to Millington, Tenn.  (U.S. Air Force photo by Marvin T. Crumpton)"
    var MonCurrentPic = 1;
    var MonSlideShowInt;

    $('#butmonitorPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            MonCurrentPic = MonCurrentPic - 1;
            if (MonCurrentPic < 1) { MonCurrentPic = 4 };

            $('#monitorPic').attr('src', '_Photos/News2Know/Monitoring' + MonCurrentPic + '.JPG').attr('alt', 'Monitoring' + MonCurrentPic + '.JPG');
        };

        switch (MonCurrentPic) {
            case 1:
                $('#monitorMess').html(MonMess1);
                break
            case 2:
                $('#monitorMess').html(MonMess2);
                break
            case 3:
                $('#monitorMess').html(MonMess3);
                break
            case 4:
                $('#monitorMess').html(MonMess4);
                break
        };
    });

    $('#butmonitorNext').click(function () {
        if ($(this).hasClass('myBut')) {
            MonCurrentPic = MonCurrentPic + 1;
            if (MonCurrentPic > 4) { MonCurrentPic = 1 };

            $('#monitorPic').attr('src', '_Photos/News2Know/Monitoring' + MonCurrentPic + '.JPG').attr('alt', 'Monitoring' + MonCurrentPic + '.JPG');
        };

        switch (MonCurrentPic) {
            case 1:
                $('#monitorMess').html(MonMess1);
                break
            case 2:
                $('#monitorMess').html(MonMess2);
                break
            case 3:
                $('#monitorMess').html(MonMess3);
                break
            case 4:
                $('#monitorMess').html(MonMess4);
                break
        };
    });

    $('#butmonitorSlide').click(function () {
        clearInterval(MonSlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butmonitorPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butmonitorNext').removeClass('myBut').addClass('myGrayBut');
            MonSlideShowInt = setInterval(function () { MonSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butmonitorPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butmonitorNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(MonSlideShowInt);
        };
    });

    var commMess1 = "Lt. Col. Jeremy Goodwin (right), 23rd Analysis Squadron commander, accepts his unit’s guidon from Col. Jonathan VanNoord, 709th Surveillance and Analysis Group commander during a ceremony in the Doyle M. Northrup Auditorium at the Air Force Technical Applications Center, Patrick AFB, Fla., April 4, 2018.  Goodwin assumed command of the newly formed squadron after the nuclear treaty monitoring center reorganized to improve mission effectiveness.  (U.S. Air Force photo by Matthew S. Jurgens)"
    var commMess2 = "Col. Richard Mendez (left), 709th Support Group commander, assists Lt. Col. David Laird, commander of the group’s Detachment 1, unfurl the unit’s new guidon flag during a ceremony held April 6, 2018 at Patrick AFB, Fla.  Laird took command of the detachment as part of the Air Force Technical Applications Center’s reorganization to improve mission effectiveness.  (U.S. Air Force photo by Matthew S. Jurgens)"
    var commMess3 = "Members of the Air Force Technical Applications Center display newly unfurled detachment guidon flags during a ceremony in AFTAC’s Doyle M. Northrup Auditorium April 9, 2018, Patrick AFB, Fla.  Pictured left to right:   Senior Master Sgt. John M. Williams, Detachment 319, Germany; Senior Master Sgt. Jason L. Hutchinson, Detachment 402, Japan; Master Sgt. Jason C. Ellwinger, Detachment 421, Australia; Senior Master Sgt. Matthew D. Mohler, Detachment 460, Alaska; Master Sgt. Jesse L. Marsh, Detachment 403, Korea; Col. Richard Mendez, 709th Support Group commander; Lt. Col. Paul Hendrickson, 709th Technical Maintenance Squadron commander; and Chief Master Sgt. Chad Madore, 709th TMXS superintendent.  (U.S. Air Force photo by Matthew S. Jurgens)"
    var commMess4 = "Lt. Col. Christopher Hall, 709th Support Squadron commander, renders a salute to Col. Richard Mendez, 709th Support Group commander, after taking command of the newly-formed squadron within the Air Force Technical Applications Center, Patrick AFB, Fla.  Also pictured (left) is Senior Master Sgt. Shannon S. Harris, 709th SPTS superintendent.  (U.S. Air Force photo by Matthew S. Jurgens)"
    var commMess5 = "Lt. Col. Nathan Loyd (right), 709th Cyberspace Squadron commander, accepts his squadron’s guidon from Col. Richard Mendez, 709th Support Group commander, during a ceremony at the Air Force Technical Applications Center, Patrick AFB, Fla., April 11, 2018.  Loyd assumed command of the newly-formed squadron after the nuclear treaty monitoring center reorganized to improved mission effectiveness.  Pictured in background is Master Sgt. Brian Bowles, ceremonial guidon bearer.  (U.S. Air Force photo by Matthew S. Jurgens)"
    var commCurrentPic = 1;
    var commSlideShowInt;

    $('#butcommPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            commCurrentPic = commCurrentPic - 1;
            if (commCurrentPic < 1) { commCurrentPic = 5 };

            $('#commPic').attr('src', '_Photos/News2Know/comm' + commCurrentPic + '.JPG').attr('alt', 'comm' + commCurrentPic + '.JPG');
        };

        switch (commCurrentPic) {
            case 1:
                $('#commMess').html(commMess1);
                break
            case 2:
                $('#commMess').html(commMess2);
                break
            case 3:
                $('#commMess').html(commMess3);
                break
            case 4:
                $('#commMess').html(commMess4);
                break
            case 5:
                $('#commMess').html(commMess5);
                break
        };
    });

    $('#butcommNext').click(function () {
        if ($(this).hasClass('myBut')) {
            commCurrentPic = commCurrentPic + 1;
            if (commCurrentPic > 5) { commCurrentPic = 1 };

            $('#commPic').attr('src', '_Photos/News2Know/comm' + commCurrentPic + '.JPG').attr('alt', 'comm' + commCurrentPic + '.JPG');
        };

        switch (commCurrentPic) {
            case 1:
                $('#commMess').html(commMess1);
                break
            case 2:
                $('#commMess').html(commMess2);
                break
            case 3:
                $('#commMess').html(commMess3);
                break
            case 4:
                $('#commMess').html(commMess4);
                break
            case 5:
                $('#commMess').html(commMess5);
                break
        };
    });

    $('#butcommSlide').click(function () {
        clearInterval(commSlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butcommPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butcommNext').removeClass('myBut').addClass('myGrayBut');
            commSlideShowInt = setInterval(function () { commSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butcommPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butcommNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(commSlideShowInt);
        };
    });

    var stemMess1 = "Capt. Sky Thai (left), a physicist at the Air Force Technical Applications Center, Patrick AFB, Fla., briefs a group of Boy Scouts about his job at the center’s Ciambrone Radiochemistry Lab March 31, 2018.  Thai spearheaded the effort to help 98 scouts from across Central Florida earn their Nuclear Science Merit Badge.  (U.S. Air Force photo by Susan A. Romano)"
    var stemMess2 = "Capt. Jason Goins, a scientist with the Air Force Technical Applications Center, helps Boy Scouts Daniel Kirchhof, a 9th grader at University High School in Orlando, and Ethan Jesse, an 8th grader from Innovation Middle School in Orlando, during a Boy Scout Merit event hosted by the nuclear treaty monitoring center at Patrick AFB, Fla., March 31, 2018.  Goins was one of several Airmen from AFTAC who volunteered to help troops earn the badge.  (U.S. Air Force photo by Susan A. Romano)"
    var stemMess3 = "First Lt. Pamela Zhang, a chemist with the Air Force Technical Applications Center, describes how a particle accelerator works to a group of Boy Scouts from Central Florida.  Zhang was one of several volunteers from the nuclear treaty monitoring center who volunteered to help the scouts earn their Nuclear Science Merit Badge March 31, 2018.  (U.S. Air Force photo by Susan A. Romano)"
    var stemMess4 = "Jake Shipley (center), a 13-year-old Boy Scout from Hoover Middle School in Melbourne Beach, Fla., glances at PowerPoint slides as fellow scouts Ryan Herbruger (left) and Grand Newcombe (right) take notes during the Nuclear Science Merit Badge event hosted by the Air Force Technical Applications Center, Patrick AFB, Fla., March 31, 2018.  Shipley and his fellow scouts from Troop #330 earned the badge with the help of volunteers from the nuclear treaty monitoring center.  (U.S. Air Force photo by Susan A. Romano)"
    var stemMess5 = "Staff Sgt. Leland La Kemper, a radiochemistry lab technician at the Air Force Radiochemistry Laboratory, Patrick AFB, Fla., shows a group of Boy Scouts the effects of liquid nitrogen.  La Kemper was one of several Airmen who volunteered to help scouts from across Central Florida earn their Nuclear Science Merit Badge March 31, 2018.  (U.S. Air Force photo by Susan A. Romano)"
    var stemMess6 = "Robbie Naberhaus (left) and Jack Gander, both 8th graders at Ascension Catholic School and members of Boy Scout Troop #373 in Melbourne, Fla., attempt to build an atomic model using miniature marshmallows during an event hosted by the Air Force Technical Applications Center, Patrick AFB, Fla., March 31, 2018.  The boys were two of 98 scouts who traveled to the base to earn their Nuclear Science Merit Badge with the help of Airmen from the Department of Defense’s sole nuclear treaty monitoring center.  (U.S. Air Force photo by Susan A. Romano))"
    var stemMess7 = "Larry Edgecombe, an 8th grader at Holy Trinity Episcopal Academy and member of Boy Scout Troop #355, opens the door of a gamma ray detector as Staff Sgt. Nicholas Jarvis, a radiochemistry lab technician, observes and explains how the detector works.  Edgecombe was one of 98 scouts who visited the Air Force Technical Applications Center March 31, 2018 to earn the Nuclear Science Merit Badge with the help of AFTAC Airmen.  (U.S. Air Force photo by Susan A. Romano))"
    var stemMess8 = "Luke Pendergrast, a Boy Scout from Troop 330 in Ormond Beach, Fla., carefully molds black felt in a petri dish to create a cloud chamber to visualize condensation trails left by ionizing radiation.  Pendergrast attended the Nuclear Science Merit Badge event hosted by the Air Force Technical Applications Center, Patrick AFB, Fla,. March 31, 2018.  (U.S. Air Force photo by Susan A. Romano)"
    var stemMess9 = "Nearly 100 Boy Scouts from across Central Florida came to the Air Force Technical Applications Center, Patrick AFB, Fla., March 31, 2018 to earn their Nuclear Science Merit Badge with the help of AFTAC Airmen.  The center is the sole nuclear treaty monitoring center in the Department of Defense.  (U.S. Air Force photo by Susan A. Romano)"
    var stemCurrentPic = 1;
    var stemSlideShowInt;

    $('#butstemPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            stemCurrentPic = stemCurrentPic - 1;
            if (stemCurrentPic < 1) { stemCurrentPic = 9 };

            $('#stemPic').attr('src', '_Photos/News2Know/st' + stemCurrentPic + '.JPG').attr('alt', 'st' + stemCurrentPic + '.JPG');
        };

        switch (stemCurrentPic) {
            case 1:
                $('#stemMess').html(stemMess1);
                break
            case 2:
                $('#stemMess').html(stemMess2);
                break
            case 3:
                $('#stemMess').html(stemMess3);
                break
            case 4:
                $('#stemMess').html(stemMess4);
                break
            case 5:
                $('#stemMess').html(stemMess5);
                break
            case 6:
                $('#stemMess').html(stemMess6);
                break
            case 7:
                $('#stemMess').html(stemMess7);
                break
            case 8:
                $('#stemMess').html(stemMess8);
                break
            case 9:
                $('#stemMess').html(stemMess9);
                break
        };
    });

    $('#butstemNext').click(function () {
        if ($(this).hasClass('myBut')) {
            stemCurrentPic = stemCurrentPic + 1;
            if (stemCurrentPic > 9) { stemCurrentPic = 1 };

            $('#stemPic').attr('src', '_Photos/News2Know/st' + stemCurrentPic + '.JPG').attr('alt', 'st' + stemCurrentPic + '.JPG');
        };

        switch (stemCurrentPic) {
            case 1:
                $('#stemMess').html(stemMess1);
                break
            case 2:
                $('#stemMess').html(stemMess2);
                break
            case 3:
                $('#stemMess').html(stemMess3);
                break
            case 4:
                $('#stemMess').html(stemMess4);
                break
            case 5:
                $('#stemMess').html(stemMess5);
                break
            case 6:
                $('#stemMess').html(stemMess6);
                break
            case 7:
                $('#stemMess').html(stemMess7);
                break
            case 8:
                $('#stemMess').html(stemMess8);
                break
            case 9:
                $('#stemMess').html(stemMess9);
                break
        };
    });

    $('#butstemSlide').click(function () {
        clearInterval(stemSlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butstemPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butstemNext').removeClass('myBut').addClass('myGrayBut');
            stemSlideShowInt = setInterval(function () { stemSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butstemPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butstemNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(stemSlideShowInt);
        };
    });



    var grassMess1 = "Dr. Bob Kemerait, senior scientist and Defense Intelligence Senior Level executive at the Air Force Technical Applications Center, Patrick AFB, Fla., poses for a picture prior to the start of the Plenary Session of the Comprehensive Nuclear Test Ban Treaty Organization’s  Preparatory Commission at its headquarters in Vienna March 19, 2018.  Kemerait was recognized by CTBTO Executive Secretary Dr. Lassina Zerbo as the only person from any nation in the world to attend every Working Group B meeting since its inception in 1997.  (U.S. Air Force photo by Susan A. Romano)"
    var grassMess2 = "Dr. Bob Kemerait (left), a senior scientist with the Air Force Technical Applications Center, discusses seismic research with Dr. Daniela Ghica (center), senior researcher at Romania’s National Institute for Earth Physics and Dr. Mihaela Popa, Head of Romania’s National Data Center, at the Comprehensive Test Ban Treaty Organization’s headquarters in Vienna March 19, 2018.  (U.S. Air Force photo by Susan A. Romano)"
    var grassMess3 = "Dr. Lassina Zerbo (right), Executive Secretary for the Comprehensive Test Ban Treaty Organization in Vienna, presents Dr. Bob Kemerait, senior scientist at the Air Force Technical Applications Center, with a statue of a water carrier from Zerbo’s home country of Burkina Faso, Africa.  Zerbo recognized Kemerait’s perfect attendance at CTBTO’s 50th Working Group B session March 19, 2018. No other member of any nation has attended all 50 WGB meetings.  (U.S. Air Force photo by Susan A. Romano)"
    var grassCurrentPic = 1;
    var grassSlideShowInt;

    $('#butgrassPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            grassCurrentPic = grassCurrentPic - 1;
            if (grassCurrentPic < 1) { grassCurrentPic = 3 };

            $('#grassPic').attr('src', '_Photos/News2Know/grass' + grassCurrentPic + '.JPG').attr('alt', 'grass' + grassCurrentPic + '.JPG');
        };

        switch (grassCurrentPic) {
            case 1:
                $('#grassMess').html(grassMess1);
                break
            case 2:
                $('#grassMess').html(grassMess2);
                break
            case 3:
                $('#grassMess').html(grassMess3);
                break
        };
    });

    $('#butgrassNext').click(function () {
        if ($(this).hasClass('myBut')) {
            grassCurrentPic = grassCurrentPic + 1;
            if (grassCurrentPic > 3) { grassCurrentPic = 1 };

            $('#grassPic').attr('src', '_Photos/News2Know/grass' + grassCurrentPic + '.JPG').attr('alt', 'grass' + grassCurrentPic + '.JPG');
        };

        switch (grassCurrentPic) {
            case 1:
                $('#grassMess').html(grassMess1);
                break
            case 2:
                $('#grassMess').html(grassMess2);
                break
            case 3:
                $('#grassMess').html(grassMess3);
                break
        };
    });

    $('#butgrassSlide').click(function () {
        clearInterval(hockeySlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butgrassPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butgrassNext').removeClass('myBut').addClass('myGrayBut');
            grassSlideShowInt = setInterval(function () { grassSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butgrassPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butgrassNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(grassSlideShowInt);
        };
    });




    var hockeyMess1 = "Master Sgt. Michael Nolan, a member of the Athletes for Teamwork and Charity hockey team at Patrick AFB, Fla., takes a face-off against a player from Florida Institute of Technology during a charity game March 24, 2018 in Rockledge, Fla.  Nolan and his teammates were recognized by Rep. Bill Posey (FL-15) for outstanding contributions to the community.  (U.S. Air Force photo by Susan A. Romano)"
    var hockeyMess2 = "Master Sgt. Rebecca Goodwin, a member of the Athletes for Teamwork and Charity hockey team at Patrick AFB, Fla., shakes the hand of Rob Medina, Director of Community Relations for Congressman Bill Posey (FL-15), where Media presented Certificates of Appreciation to the players for their fundraising efforts.  Also pictured are Tech. Sgt. Denton Kimber (second from left) and team captain Bill Hungate (right).  (U.S. Air Force photo by Susan A. Romano)"
    var hockeyMess3 = "A photo of the certificate that was presented to members of the Air Force Technical Applications Center hockey team March 24, 2018 from Rep. Bill Posey (FL-15) for the team’s charitable contributions and outstanding support to the community.  (U.S. Air Force photo by Susan A. Romano)"
    var hockeyMess4 = "Rob Medina, Director of Community Relations for Congressman Bill Posey (FL-15), poses with members of the Athletes for Teamwork and Charity hockey team March 24, 2018.  The team is comprised of members of the Air Force Technical Applications Center at Patrick AFB, Fla.  Medina presented Certifications of Recognition to the Airmen on behalf of Posey to recognize their service and charitable efforts in the community.  The team faced off against players from Florida Tech at the Space Coast IcePlex in Rockledge, Fla. (U.S. Air Force photo by Susan A. Romano)"
    var hockeyCurrentPic = 1;
    var hockeySlideShowInt;

    $('#buthockeyPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            hockeyCurrentPic = hockeyCurrentPic - 1;
            if (hockeyCurrentPic < 1) { hockeyCurrentPic = 4 };

            $('#hockeyPic').attr('src', '_Photos/News2Know/hockey' + hockeyCurrentPic + '.JPG').attr('alt', 'hockey' + hockeyCurrentPic + '.JPG');
        };

        switch (hockeyCurrentPic) {
            case 1:
                $('#hockeyMess').html(hockeyMess1);
                break
            case 2:
                $('#hockeyMess').html(hockeyMess2);
                break
            case 3:
                $('#hockeyMess').html(hockeyMess3);
                break
            case 4:
                $('#hockeyMess').html(hockeyMess4);
                break
        };
    });

    $('#buthockeyNext').click(function () {
        if ($(this).hasClass('myBut')) {
            hockeyCurrentPic = hockeyCurrentPic + 1;
            if (hockeyCurrentPic > 4) { hockeyCurrentPic = 1 };

            $('#hockeyPic').attr('src', '_Photos/News2Know/hockey' + hockeyCurrentPic + '.JPG').attr('alt', 'hockey' + hockeyCurrentPic + '.JPG');
        };

        switch (hockeyCurrentPic) {
            case 1:
                $('#hockeyMess').html(hockeyMess1);
                break
            case 2:
                $('#hockeyMess').html(hockeyMess2);
                break
            case 3:
                $('#hockeyMess').html(hockeyMess3);
                break
            case 4:
                $('#hockeyMess').html(hockeyMess4);
                break
        };
    });

    $('#buthockeySlide').click(function () {
        clearInterval(hockeySlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#buthockeyPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#buthockeyNext').removeClass('myBut').addClass('myGrayBut');
            hockeySlideShowInt = setInterval(function () { hockeySlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#buthockeyPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#buthockeyNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(hockeySlideShowInt);
        };
    });

    var commandMess1 = "Staff Sgt. Justin A. Baldwin (left) a radiochemistry noncommissioned officer at the Air Force Technical Applications Center, Patrick AFB, Fla., explains to Maj. Gen. Mary F. O’Brien, 25th Air Force commander and Chief Master Sgt. Stanley Cadell, 25th AF command chief, how he prepares reagents and small equipment prior to conducting chemistry operations in the Ciambrone Radiochemistry Laboratory.  O’Brien and Cadell toured the facility Feb. 21, 2018 during a visit to the nuclear treaty monitoring center. (U.S. Air Force photo by Susan A. Romano)"
    var commandMess2 = "Reggie Crane (right), Workforce Development Program Manager for the Air Force Technical Applications Center, explains to Maj. Gen. Mary F. O’Brien, 25th Air Force commander and Chief Master Sgt. Stanley Cadell, 25th AF command chief, AFTAC’s Human Resources strategic approach to developing the workforce, with a focus on enhancing self-awareness and how the center seeks to improve communication effectiveness.  O’Brien and Cadell visited the nuclear treaty monitoring center Feb. 20-21 to meet the Airmen who accomplish their global surveillance mission. (U.S. Air Force photo by Susan A. Romano)"
    var commandMess3 = "2nd Lt. Kaleb Mitchell (center) a Ciambrone Radiochemistry Laboratory chemist at the Air Force Technical Applications Center, Patrick AFB, Fla., explains to (l. to r.) Col. Steven M. Gorski, AFTAC commander, Maj. Gen. Mary F. O’Brien, 25th Air Force commander, Chief Master Sgt. Stanley Cadell, 25th AF command chief, and Lt. Col. James Thomas, CRL director, how samples undergo radiochemical separation to determine if trace levels of radioactive debris are present in environmental samples.  O’Brien and Cadell toured the facility Feb. 21, 2018.  (U.S. Air Force photo by Susan A. Romano)"
    var commandMess4 = "Tech. Sgt. Donald E. Kramer II, noncommissioned officer in charge of Innovation Operations for the Air Force Technical Applications Center, Patrick AFB, Fla., shows Maj. Gen. Mary F. O’Brien, 25th Air Force commander and Chief Master Sgt. Stanley Cadell, 25th AF command chief, one of the projects he’s working on at AFTAC’s Innovation Lab.  O’Brien and Cadell came from San Antonio, Texas, to Florida to learn more about how the center executes its global nuclear treaty monitoring mission.  (U.S. Air Force photo by Susan A. Romano)"
    var commandMess5 = "Chief Master Sgt. Stanley Cadell, command chief for 25th Air Force headquartered in San Antonio, Texas, examines a seismometer belonging to the Air Force Technical Applications Center, Patrick AFB, Fla., as his boss, Maj. Gen. Mary F. O’Brien, 25th AF commander, looks on.  Cadell and O’Brien visited the nuclear treaty monitoring center Feb. 20-21, 2018 to meet with senior leadership, learn more about the AFTAC mission, and discuss their priorities with center personnel. (U.S. Air Force photo by Susan A. Romano)"
    var commandMess6 = "Maj. Gen. Mary F. O’Brien, commander of 25th Air Force, and Chief Master Sgt. Stanley Cadell, listen as Staff Sgt. Nathan Korytko briefs them on his role as a gamma measurements technician with the Air Force Technical Applications Center, Patrick AFB, Fla.  O’Brien and Cadell visited the nuclear treaty monitoring center Feb. 20-21, 2018.  Pictured from left to right:  Lt. Col. James Thomas, Ciambrone Radiochemistry Lab director; Korytko; O’Brien; Cadell; Col. Steven M. Gorski, AFTAC commander; and Chief Master Sgt. Michael Joseph, AFTAC command chief.  (U.S. Air Force photo by Susan A. Romano)"
    var commandCurrentPic = 1;
    var commandSlideShowInt;

    $('#butcommandPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            commandCurrentPic = commandCurrentPic - 1;
            if (commandCurrentPic < 1) { commandCurrentPic = 6 };

            $('#commandPic').attr('src', '_Photos/News2Know/command' + commandCurrentPic + '.JPG').attr('alt', 'command' + commandCurrentPic + '.JPG');
        };

        switch (commandCurrentPic) {
            case 1:
                $('#commandMess').html(commandMess1);
                break
            case 2:
                $('#commandMess').html(commandMess2);
                break
            case 3:
                $('#commandMess').html(commandMess3);
                break
            case 4:
                $('#commandMess').html(commandMess4);
                break
            case 5:
                $('#commandMess').html(commandMess5);
                break
            case 6:
                $('#commandMess').html(commandMess6);
                break
        };
    });

    $('#butcommandNext').click(function () {
        if ($(this).hasClass('myBut')) {
            commandCurrentPic = commandCurrentPic + 1;
            if (commandCurrentPic > 6) { commandCurrentPic = 1 };

            $('#commandPic').attr('src', '_Photos/News2Know/command' + commandCurrentPic + '.JPG').attr('alt', 'command' + commandCurrentPic + '.JPG');
        };

        switch (commandCurrentPic) {
            case 1:
                $('#commandMess').html(commandMess1);
                break
            case 2:
                $('#commandMess').html(commandMess2);
                break
            case 3:
                $('#commandMess').html(commandMess3);
                break
            case 4:
                $('#commandMess').html(commandMess4);
                break
            case 5:
                $('#commandMess').html(commandMess5);
                break
            case 6:
                $('#commandMess').html(commandMess6);
                break
        };
    });

    $('#butcommandSlide').click(function () {
        clearInterval(commandSlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butcommandPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butcommandNext').removeClass('myBut').addClass('myGrayBut');
            commandSlideShowInt = setInterval(function () { commandSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butcommandPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butcommandNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(commandSlideShowInt);
        };
    });

    var wiseMess1 = "Secretary of the Air Force Heather Wilson gives the keynote address at the 2018 Women in Science and Engineering Symposium, hosted by the Air Force Technical Applications Center, Patrick AFB, Fla., Feb. 8, 2018.  Wilson was one of many high profile women who spoke to symposium attendees about the value that gender diversity brings to the science, technology, engineering and mathematics workforce.  (U.S. Air Force photo by Phillip C. Sunkel IV)"
    var wiseMess2 = "Lt. Gen. Stayce Harris, the Inspector General of the U.S. Air Force, discusses discipline, leadership and teamwork with attendees at the 2018 Women in Science and Engineering Symposium Feb. 8, 2018.  Harris was a keynote speaker at the event that focused on encouraging mentorship and networking opportunities for those interested in pursuing and excelling in STEM careers. (U.S. Air Force photo by Ian Bush)"
    var wiseMess3 = "Chief Master Sgt. Michael Joseph, command chief for the Air Force Technical Applications Center, Patrick AFB, Fla., shares a hearty laugh with Mae Krier, an original member of “Rosie the Riveters” during the 2018 Women in Science and Engineering Symposium Feb. 8, 2018.  AFTAC hosted the event and invited Krier and many other high-profile women in government, education and industry to relay their success stories to young minds interested in pursuing careers in science, technology, engineering and math.  (U.S. Air Force photo by Phillip C. Sunkel IV)"
    var wiseMess4 = "Mónica Groba López, the Secretary General of the National Geographic Institute headquartered in Madrid, Spain, speaks to a group of attendees at the Women in Science and Engineering Symposium Feb. 8, 2018, which was hosted by the Air Force Technical Applications Center, Patrick AFB, Fla.  Lopez was one of many high-profile women who were invited to deliver messages on gender and diversity efforts within STEM. (U.S. Air Force photo by Phillip C. Sunkel IV)"
    var wiseMess5 = "Dr. Oneeka Williams, a urologic surgeon at St. Elizabeth’s Medical Center and assistant clinical professor at Tufts Medical School, briefs attendees at the 2018 Women in Science and Engineering Symposium hosted by the Air Force Technical Applications Center, Patrick AFB, Fla., Feb. 8, 2018.  Williams discussed the importance of speaking frequently to both children and adults about STEM, and encouraged girls, especially those of color, that “not even the sky is the limit!”   (U.S. Air Force photo by Phillip C. Sunkel IV)"
    var wiseMess6 = "Gen. Janet Wolfenbarger, U.S. Air Force retired, delivers her speech about the huge strides women have made in leadership roles during the 2018 Women in Science and Engineering Symposium Feb. 7, 2018.  Wolfenbarger was one of many high profile women who spoke at the symposium hosted by the Air Force Technical Applications Center, Patrick AFB, Fla.  (U.S. Air Force photo by Phillip C. Sunkel IV)"
    var wiseCurrentPic = 1;
    var wiseSlideShowInt;

    $('#butwisePrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            wiseCurrentPic = wiseCurrentPic - 1;
            if (wiseCurrentPic < 1) { wiseCurrentPic = 6 };

            $('#wisePic').attr('src', '_Photos/News2Know/wise' + wiseCurrentPic + '.JPG').attr('alt', 'secAF' + wiseCurrentPic + '.JPG');
        };

        switch (wiseCurrentPic) {
            case 1:
                $('#wiseMess').html(wiseMess1);
                break
            case 2:
                $('#wiseMess').html(wiseMess2);
                break
            case 3:
                $('#wiseMess').html(wiseMess3);
                break
            case 4:
                $('#wiseMess').html(wiseMess4);
                break
            case 5:
                $('#wiseMess').html(wiseMess5);
                break
            case 6:
                $('#wiseMess').html(wiseMess6);
                break
        };
    });

    $('#butwiseNext').click(function () {
        if ($(this).hasClass('myBut')) {
            wiseCurrentPic = wiseCurrentPic + 1;
            if (wiseCurrentPic > 6) { wiseCurrentPic = 1 };

            $('#wisePic').attr('src', '_Photos/News2Know/wise' + wiseCurrentPic + '.JPG').attr('alt', 'wise' + wiseCurrentPic + '.JPG');
        };

        switch (wiseCurrentPic) {
            case 1:
                $('#wiseMess').html(wiseMess1);
                break
            case 2:
                $('#wiseMess').html(wiseMess2);
                break
            case 3:
                $('#wiseMess').html(wiseMess3);
                break
            case 4:
                $('#wiseMess').html(wiseMess4);
                break
            case 5:
                $('#wiseMess').html(wiseMess5);
                break
            case 6:
                $('#wiseMess').html(wiseMess6);
                break
        };
    });

    $('#butwiseSlide').click(function () {
        clearInterval(wiseSlideShowInt);

        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butwisePrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butwiseNext').removeClass('myBut').addClass('myGrayBut');
            wiseSlideShowInt = setInterval(function () { wiseSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butwisePrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butwiseNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(wiseSlideShowInt);
        };
    });

    var secAFMess1 = "Col. Steven M. Gorski (right), commander of the Air Force Technical Applications Center, Patrick AFB, Fla., briefs Secretary of the Air Force Heather Wilson on AFTAC’s role in nuclear event detection.  Wilson visited the treaty monitoring center Feb. 8, 2018 to gain perspective into the Air Force’s largest sensor network and organization responsible for the U.S. Atomic Energy Detection System.  (U.S. Air Force photo by Susan A. Romano)"
    var secAFMess2 = "Dr. Julie Gostic, a nuclear evaluator for the Materials Technology Directorate at the Air Force Technical Applications Center, displays an environmental sample to Secretary of the Air Force Heather Wilson (left) during the secretary’s visit to the nuclear treaty monitoring center at Patrick AFB, Fla., Feb. 8, 2018. (U.S. Air Force photo by Susan A. Romano)"
    var secAFMess3 = "First Lt. Drew Belk, Innovation Lab chief at the Air Force Technical Applications Center, Patrick AFB, Fla., discusses ongoing innovation projects with Secretary of the Air Force Heather Wilson during her visit to the Department of Defense’s sole nuclear treaty monitoring center.  Wilson was in town to speak at AFTAC’s annual Women in Science and Engineering Symposium Feb. 8, 2018.  (U.S. Air Force photo by William M. Donelson)"
    var secAFMess4 = "Tech. Sgt. Donald E. Kramer II, noncommissioned officer in charge of Innovation Operations for the Air Force Technical Applications Center, Patrick AFB, Fla., shows Secretary of the Air Force Heather Wilson a project he’s working on at the nuclear treaty monitoring center.  Wilson toured AFTAC to get a first-hand glimpse into the role the center plays in worldwide nuclear event detection. (U.S. Air Force photo by William M. Donelson)"
    var secAFMess5 = "Maj. James A. Hansen II, director of operations, Air Force Technical Applications Center, Patrick AFB, Fla., watches as Secretary of the Air Force Heather Wilson autographs a photo from Hansen’s U.S. Air Force Academy graduation ceremony.  Wilson sponsored Hansen when she was a U.S. representative for the state of New Mexico, and was pictured in the photo with Hansen and President George W. Bush.  (U.S. Air Force photo by Susan A. Romano)"
    var secAFCurrentPic = 1;

    $('#butsecAFPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            secAFCurrentPic = secAFCurrentPic - 1;
            if (secAFCurrentPic < 1) { secAFCurrentPic = 5 };

            $('#secAFPic').attr('src', '_Photos/News2Know/secAF' + secAFCurrentPic + '.JPG').attr('alt', 'secAF' + secAFCurrentPic + '.JPG');
        };

        switch (secAFCurrentPic) {
            case 1:
                $('#secAFMess').html(secAFMess1);
                break
            case 2:
                $('#secAFMess').html(secAFMess2);
                break
            case 3:
                $('#secAFMess').html(secAFMess3);
                break
            case 4:
                $('#secAFMess').html(secAFMess4);
                break
            case 5:
                $('#secAFMess').html(secAFMess5);
                break
        };
    });

    $('#butsecAFNext').click(function () {
        if ($(this).hasClass('myBut')) {
            secAFCurrentPic = secAFCurrentPic + 1;
            if (secAFCurrentPic > 5) { secAFCurrentPic = 1 };

            $('#secAFPic').attr('src', '_Photos/News2Know/secAF' + secAFCurrentPic + '.JPG').attr('alt', 'secAF' + secAFCurrentPic + '.JPG');
        };

        switch (secAFCurrentPic) {
            case 1:
                $('#secAFMess').html(secAFMess1);
                break
            case 2:
                $('#secAFMess').html(secAFMess2);
                break
            case 3:
                $('#secAFMess').html(secAFMess3);
                break
            case 4:
                $('#secAFMess').html(secAFMess4);
                break
            case 5:
                $('#secAFMess').html(secAFMess5);
                break
        };
    });

    $('#butsecAFSlide').click(function () {
        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butsecAFPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butsecAFNext').removeClass('myBut').addClass('myGrayBut');
            secAFSlideShowInt = setInterval(function () { secAFSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butsecAFPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butsecAFNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(secAFSlideShowInt);
        };
    });

    var holmesMess1 = "Senior Airman Dylan B. Melone (right), a clean room technician with the Air Force Technical Applications Center, shows Gen. Mike Holmes, commander of Air Combat Command, a transmission electron microscope grid he uses to accomplish AFTAC's trace particle analysis mission.  Holmes visited the nuclear treaty monitoring center, Patrick AFB, Fla., Jan. 24, 2018.  (U.S. Air Force photo by Susan A. Romano)"
    var holmesMess2 = "Gen. Mike Holmes, commander of Air Combat Command, and Chief Master Sgt. Frank Batten, ACC command chief, met with members of the Air Force Technical Applications Center Jan. 24, 2018, to learn more about their global nuclear treaty monitoring mission.  Pictured here, Holmes and Batten conduct a round-table discussion with AFTAC's squadron commanders and division chiefs.  (U.S. Air Force photo by Susan A. Romano)"
    var holmesMess3 = "Tech. Sgt. Peter J. Oliveri (left), noncommissioned officer in charge of seismic field maintenance for the Air Force Technical Applications Center, Patrick AFB, Fla., discusses seismic operations with Chief Master Sgt. Frank Batten, command chief of Air Combat Command, during the chief's visit to the nuclear treaty monitoring center Jan. 24, 2018. Oliveri was one of many AFTAC Airmen who briefed Batten on the center's global mission.  (U.S. Air Force photo by Susan A. Romano)"
    var holmesMess4 = "Tech. Sgt. Timothy Kavanagh, noncommissioned officer in charge of product support for the Air Force Technical Applications Center, Patrick AFB, Fla., explains to Chief Master Sgt. Frank Batten, command chief of Air Combat Command, how he designed a crate to better ship, house and store AFTAC's precision seismic equipment.  Batten visited the nuclear treaty monitoring center Jan. 24, 2018 to meet with the Airmen who perform AFTAC's 24/7 global mission. (U.S. Air Force photo by Susan A. Romano)"
    var holmesMess5 = "Tech. Sgt. Donald E. Kramer II, noncommissioned officer in charge of Innovation Operations for the Air Force Technical Applications Center, shows Gen. Mike Holmes, commander of Air Combat Command, a prototype of an early iteration of a materials program carousel created by AFTAC's Innovation Lab.  This was Holmes' first visit to the Department of Defense's sole nuclear treaty monitoring center at Patrick AFB, Fla.  (U.S. Air Force photo by Susan A. Romano)"
    var holmesMess6 = "Kevin Jack (right), a radio frequency engineer at the Air Force Technical Applications Center, Patrick AFB, Fla., explains rapid prototyping of deployable antenna systems to (l. to r.) Gen. Mike Holmes, commander of Air Combat Command, Brig. Gen. Peter Lambert, ACC director of intelligence, and Chief Master Sgt. Frank Batten, ACC command chief, during their visit to the Department of Defense's sole nuclear treaty monitoring center Jan. 24, 2018.  (U.S. Air Force photo by Susan A. Romano)"
    var holmesMess7 = "First Lt. Drew Belk, Innovation Lab chief at the Air Force Technical Applications Center, Patrick AFB, Fla., describes how his lab develops mesh bottle caps to increase the center's small volume collection capability to Gen. Mike Holmes, commander of Air Combat Command, during the general's visit Jan. 24, 2018.  AFTAC oversees the largest sensor network in the Air Force and is the sole nuclear treaty monitoring center in the Department of Defense.  (U.S. Air Force photo by Susan A. Romano)"

    $('#butholmesPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            holmesCurrentPic = holmesCurrentPic - 1;
            if (holmesCurrentPic < 1) { holmesCurrentPic = 7 };

            $('#holmesPic').attr('src', '_Photos/News2Know/Holmes' + holmesCurrentPic + '.JPG').attr('alt', 'Holmes' + holmesCurrentPic + '.JPG');

        };
        switch (holmesCurrentPic) {
            case 1:
                $('#holmesMess').html(holmesMess1);
                break
            case 2:
                $('#holmesMess').html(holmesMess2);
                break
            case 3:
                $('#holmesMess').html(holmesMess3);
                break
            case 4:
                $('#holmesMess').html(holmesMess4);
                break
            case 5:
                $('#holmesMess').html(holmesMess5);
                break
            case 6:
                $('#holmesMess').html(holmesMess6);
                break
            case 7:
                $('#holmesMess').html(holmesMess7);
                break
        };
    });

    $('#butholmesNext').click(function () {
        if ($(this).hasClass('myBut')) {
            holmesCurrentPic = holmesCurrentPic + 1;
            if (holmesCurrentPic > 7) { holmesCurrentPic = 1 };

            $('#holmesPic').attr('src', '_Photos/News2Know/Holmes' + holmesCurrentPic + '.JPG').attr('alt', 'Holmes' + holmesCurrentPic + '.JPG');

        };
        switch (holmesCurrentPic) {
            case 1:
                $('#holmesMess').html(holmesMess1);
                break
            case 2:
                $('#holmesMess').html(holmesMess2);
                break
            case 3:
                $('#holmesMess').html(holmesMess3);
                break
            case 4:
                $('#holmesMess').html(holmesMess4);
                break
            case 5:
                $('#holmesMess').html(holmesMess5);
                break
            case 6:
                $('#holmesMess').html(holmesMess6);
                break
            case 7:
                $('#holmesMess').html(holmesMess7);
                break
        };
    });

    $('#butholmesSlide').click(function () {
        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butholmesPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butholmesNext').removeClass('myBut').addClass('myGrayBut');
            holmesSlideShowInt = setInterval(function () { ssholmesSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butholmesPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butholmesNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(holmesSlideShowInt);
        };
    });

    var antMess1 = 'Airman from the Air Force Technical Applications Center, Patrick AFB, Fla., walk on a frozen lake in Antarctica after a full day of performing maintenance on the center’s seismic equipment near Bull Pass.  The photo, taken at about 10 p.m., illustrates the 24-hour daylight cycle at Earth’s southernmost point.  Pictured from left to right:  Staff. Sgt. Jeremy Hannah, Senior Airman Andrew Pouncy and Staff Sgt. Justin Sherman.  (U.S. Air Force photo by Senior Airman Richard Westra)'
    var antMess2 = 'Battling high winds and frigid temperatures, seismic maintainers from the Air Force Technical Applications Center, Patrick AFB, Fla., receive fuel resupply via helicopter from the National Science Foundation at AFTAC’s repeater site at Mt. Newell, Antarctica.  The Airmen use the fuel to power the batteries that are the energy source for their seismic data collection equipment, radios and other communications functions.  Pictured from left to right:  Senior Airman Richard Westra, Raymond Richards, Staff Sgt. Jeremy Hannah and Senior Airman Andrew Pouncy.  (U.S. Air Force photo by Brian Fox)'
    var antMess3 = 'Staff Sgt. Jeremy Hannah and Senior Airman Richard Westra, both geophysical maintainers with the Air Force Technical Applications Center, Patrick AFB, Fla., reinstall a short-period seismometer at their site in Bull Pass, Antarctica.  The duo was part of a six-man team that traveled to Earth’s southernmost point to conduct annual maintenance.  The snow seen on the ground was an unusual sight as this area is considered part of Antarctica’s dry valley.  (U.S. Air Force photo by Brian Fox)'
    var antMess4 = 'Staff Sgt. Jeremy Hannah, a geophysical maintenance supervisor with the Air Force Technical Applications Center, Patrick AFB, Fla., peers out the window of a Bell 212 helicopter as it flies over Antarctica.  Hannah and five other members of the nuclear treaty monitoring center made the trek from Florida to Antarctica to conduct annual maintenance, troubleshoot, and replace seismometers that contribute to the International Monitoring System. (U.S. Air Force photo by Brian Fox)'
    var antMess5 = 'Senior Airman Richard Westra, a geophysical maintenance supervisor with the Air Force Technical Applications Center, Patrick AFB, Fla., snaps a photo of the last sunset of the year at McMurdo Station, Antarctica.  Westra was one of six Airmen from the nuclear treaty monitoring center who traveled to Earth’s southernmost point to conduct annual maintenance on AFTAC’s seismic equipment.  (U.S. Air Force photo by Senior Airman Richard Westra)'
    var antMess6 = 'Airmen from the Air Force Technical Applications Center, Patrick AFB, Fla., enter their Hybrid Power Station at Mt. Newell, Antarctica, to conduct annual maintenance at the center’s southernmost seismic site as part of AFTAC’s global nuclear treaty monitoring mission.  Pictured:  Staff Sgt. Jeremy Hannah and Senior Airmen Richard Westra and Andrew Pouncy.  (U.S. Air Force photo by Brian Fox)'

    $('#butAntPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            holmesCurrentPic = antCurrentPic - 1;
            if (antCurrentPic < 1) { antCurrentPic = 6 };

            $('#antPic').attr('src', '_Photos/News2Know/Antarctic' + antCurrentPic + '.JPG').attr('alt', 'Antarctic' + antCurrentPic + '.JPG');

        };
        switch (antCurrentPic) {
            case 1:
                $('#antMess').html(antMess1);
                break
            case 2:
                $('#antMess').html(antMess2);
                break
            case 3:
                $('#antMess').html(antMess3);
                break
            case 4:
                $('#antMess').html(antMess4);
                break
            case 5:
                $('#antMess').html(antMess5);
                break
            case 6:
                $('#antMess').html(antMess6);
                break
        };
    });

    $('#butAntNext').click(function () {
        if ($(this).hasClass('myBut')) {
            antCurrentPic = antCurrentPic + 1;
            if (antCurrentPic > 6) { antCurrentPic = 1 };

            $('#antPic').attr('src', '_Photos/News2Know/Antarctic' + antCurrentPic + '.JPG').attr('alt', 'Antarctic' + antCurrentPic + '.JPG');
        };
        switch (antCurrentPic) {
            case 1:
                $('#antMess').html(antMess1);
                break
            case 2:
                $('#antMess').html(antMess2);
                break
            case 3:
                $('#antMess').html(antMess3);
                break
            case 4:
                $('#antMess').html(antMess4);
                break
            case 5:
                $('#antMess').html(antMess5);
                break
            case 6:
                $('#antMess').html(antMess6);
                break
        };
    });

    $('#butAntSlide').click(function () {
        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#butAntPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#butAntNext').removeClass('myBut').addClass('myGrayBut');
            AntSlideShowInt = setInterval(function () { ssAntSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#butAntPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#butAntNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(AntSlideShowInt);
        };
    });

    $('#btnsbPrevious').click(function () {
        if ($(this).hasClass('myBut')) {
            sbCurrentPic = sbCurrentPic - 1;
            if (sbCurrentPic < 1) { sbCurrentPic = sbMaxPic };

            $('#sbPic').attr('src', '_Photos/SnowBall/sb' + sbCurrentPic + '.JPG').attr('alt', 'sb' + sbCurrentPic + '.JPG');
        };
    });

    $('#btnsbNext').click(function () {
        if ($(this).hasClass('myBut')) {
            sbCurrentPic = sbCurrentPic + 1;
            if (sbCurrentPic > sbMaxPic) { sbCurrentPic = 1 };

            $('#sbPic').attr('src', '_Photos/SnowBall/sb' + sbCurrentPic + '.JPG').attr('alt', 'sb' + sbCurrentPic + '.JPG');
        };
    });

    $('#btnsbStartShow').click(function () {
        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#btnsbPrevious').removeClass('myBut').addClass('myGrayBut');
            $('#btnsbNext').removeClass('myBut').addClass('myGrayBut');
            SBSlideShowInt = setInterval(function () { ssSBSlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#btnsbPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#btnsbNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(SBSlideShowInt);
        };
    });

    var sb2CurrentPic = 1;

    $('#btnsb2Previous').click(function () {
        if ($(this).hasClass('myBut')) {
            sb2CurrentPic = sb2CurrentPic - 1;
            if (sb2CurrentPic < 1) { sb2CurrentPic = 23 };

            $('#sb2Pic').attr('src', '_Photos/SnowBall2/sb2-' + sb2CurrentPic + '.JPG').attr('alt', 'sb2-' + sb2CurrentPic + '.JPG');
        };
    });

    $('#btnsb2Next').click(function () {
        if ($(this).hasClass('myBut')) {
            sb2CurrentPic = sb2CurrentPic + 1;
            if (sb2CurrentPic > 23) { sb2CurrentPic = 1 };

            $('#sb2Pic').attr('src', '_Photos/SnowBall2/sb2-' + sb2CurrentPic + '.JPG').attr('alt', 'sb2-' + sb2CurrentPic + '.JPG');
        };
    });

    $('#btnsb2StartShow').click(function () {
        if ($(this).attr('value') === ' Start Slide Show ') {
            $(this).attr('value', ' Stop Slide Show ');
            $('#btnsb2Previous').removeClass('myBut').addClass('myGrayBut');
            $('#btnsb2Next').removeClass('myBut').addClass('myGrayBut');
            SB2SlideShowInt = setInterval(function () { ssSB2SlideShow() }, 4000);
        }
        else {
            $(this).attr('value', ' Start Slide Show ');
            $('#btnsb2Previous').removeClass('myGrayBut').addClass('myBut');
            $('#btnsb2Next').removeClass('myGrayBut').addClass('myBut');
            clearInterval(SB2SlideShowInt);
        };
    });

    function coReunionSlideShow() {
        coloradoCurrentPic = coloradoCurrentPic + 1;

        if (coloradoCurrentPic > 105) {
            coloradoCurrentPic = 1;
        }
        $('.dpPic').removeClass('block').addClass('noDisplay')
        $('#doPic' + aftacDiningCurrentPic).removeClass('noDisplay').addClass('block')
    };

    function aftacDOSlideShow() {
        aftacDiningCurrentPic = aftacDiningCurrentPic + 1;

        if (aftacDiningCurrentPic > 11) {
            aftacDiningCurrentPic = 1;
        }
        $('.dpPic').removeClass('block').addClass('noDisplay')
        $('#doPic' + aftacDiningCurrentPic).removeClass('noDisplay').addClass('block')
    };

    function aftacHisSlideShow() {
        aftacHisCurentPic = aftacHisCurentPic + 1;

        if (aftacHisCurentPic > 55) {
            aftacHisCurentPic = 1;
        }

        $('#hisPic').attr('alt', 'DO' + aftacDiningCurrentPic + '.png').attr('src', '_Photos/aftacHistory/DO' + aftacHisCurentPic + '.png');
    };

    function ssSBSlideShow() {

        sbLastPic = sbCurrentPic;

        sbCurrentPic = sbCurrentPic + 1;

        if (sbCurrentPic > sbMaxPic) {
            sbCurrentPic = 1;
        }

        $('#sbPic').attr('src', '_Photos/SnowBall/sb' + sbCurrentPic + '.JPG').attr('alt', 'sb' + sbCurrentPic + '.JPG');

    };

    function ssSB2SlideShow() {

        sb2CurrentPic = sb2CurrentPic + 1;

        if (sb2CurrentPic > 23) {
            sb2CurrentPic = 1;
        }

        $('#sb2Pic').attr('src', '_Photos/SnowBall2/sb2-' + sb2CurrentPic + '.JPG').attr('alt', 'sb2-' + sb2CurrentPic + '.JPG');

    };

    function ssAntSlideShow() {

        antCurrentPic = antCurrentPic + 1;

        if (antCurrentPic > 6) {
            antCurrentPic = 1;
        }

        $('#antPic').attr('src', '_Photos/News2Know/Antarctic' + antCurrentPic + '.JPG').attr('alt', 'Antarctic' + antCurrentPic + '.JPG');

        switch (antCurrentPic) {
            case 1:
                $('#antMess').html(antMess1);
                break
            case 2:
                $('#antMess').html(antMess2);
                break
            case 3:
                $('#antMess').html(antMess3);
                break
            case 4:
                $('#antMess').html(antMess4);
                break
            case 5:
                $('#antMess').html(antMess5);
                break
            case 6:
                $('#antMess').html(antMess6);
                break
        };

    };

    function relocateShow() {

        relocateCurrentPic = relocateCurrentPic + 1;
        if (relocateCurrentPic > 4) { relocateCurrentPic = 1 };

        $('#relocatePic').attr('src', '_Photos/News2Know/relocate' + relocateCurrentPic + '.JPG').attr('alt', 'relocate' + relocateCurrentPic + '.JPG');

        switch (relocateCurrentPic) {
            case 1:
                $('#relocateMess').html(relocateMess1);
                break
            case 2:
                $('#relocateMess').html(relocateMess2);
                break
            case 3:
                $('#relocateMess').html(relocateMess3);
                break
            case 4:
                $('#relocateMess').html(relocateMess4);
                break
        };
    };

    function wise2Show() {

        wise2CurrentPic = wise2CurrentPic + 1;
        if (wise2CurrentPic > 7) {
            wise2CurrentPic = 1
        };

        $('#wise2Pic').attr('src', '_Photos/News2Know/wise2-' + wise2CurrentPic + '.JPG').attr('alt', 'wise2-' + wise2CurrentPic + '.JPG');

        switch (wise2CurrentPic) {
            case 1:
                $('#wise2_Mess').html(wise2Mess1);
                break
            case 2:
                $('#wise2_Mess').html(wise2Mess2);
                break
            case 3:
                $('#wise2_Mess').html(wise2Mess3);
                break
            case 4:
                $('#wise2_Mess').html(wise2Mess4);
                break
            case 5:
                $('#wise2_Mess').html(wise2Mess5);
                break
            case 6:
                $('#wise2_Mess').html(wise2Mess6);
                break
            case 7:
                $('#wise2_Mess').html(wise2Mess7);
                break
        };
    };

    function stemGirlsShow() {

        stemGirlsCurrentPic = stemGirlsCurrentPic + 1;
        if (stemGirlsCurrentPic > 6) { stemGirlsCurrentPic = 1 };

        $('#stemGirlsPic').attr('src', '_Photos/News2Know/stemGirls' + stemGirlsCurrentPic + '.JPG').attr('alt', 'stemGirls' + stemGirlsCurrentPic + '.JPG');

        switch (stemGirlsCurrentPic) {
            case 1:
                $('#stemGirlsMess').html(stemGirlsMess1);
                break
            case 2:
                $('#stemGirlsMess').html(stemGirlsMess2);
                break
            case 3:
                $('#stemGirlsMess').html(stemGirlsMess3);
                break
            case 4:
                $('#stemGirlsMess').html(stemGirlsMess4);
                break
            case 5:
                $('#stemGirlsMess').html(stemGirlsMess5);
                break
            case 6:
                $('#stemGirlsMess').html(stemGirlsMess6);
                break
        };
    };

    function AwdSlideShow() {

        awdCurrentPic = awdCurrentPic + 1;
        if (awdCurrentPic > 9) { awdCurrentPic = 1 };

        $('#awardPic').attr('src', '_Photos/News2Know/award' + awdCurrentPic + '.JPG').attr('alt', 'award' + awdCurrentPic + '.JPG');
        $('#awardMess').html(awdMess[awdCurrentPic - 1]);

    };


    function BuzzSlideShow() {

        BuzzCurrentPic = BuzzCurrentPic + 1;
        if (BuzzCurrentPic > 4) { BuzzCurrentPic = 1 };

        $('#buzzPic').attr('src', '_Photos/News2Know/buzz' + BuzzCurrentPic + '.JPG').attr('alt', 'Buzz' + BuzzCurrentPic + '.JPG');
        $('#buzzMess').html(BuzzMess[BuzzCurrentPic - 1]);

    };

    function ChangeSlideShow() {

        ChangeCurrentPic = ChangeCurrentPic + 1;

        if (ChangeCurrentPic > 5) { ChangeCurrentPic = 1 };

        $('#changePic').attr('src', '_Photos/News2Know/Change' + ChangeCurrentPic + '.JPG').attr('alt', 'Change' + ChangeCurrentPic + '.JPG');

        switch (ChangeCurrentPic) {
            case 1:
                $('#changeMess').html(ChangeMess1);
                break
            case 2:
                $('#changeMess').html(ChangeMess2);
                break
            case 3:
                $('#changeMess').html(ChangeMess3);
                break
            case 4:
                $('#changeMess').html(ChangeMess4);
                break
            case 5:
                $('#changeMess').html(ChangeMess4);
                break
        }
    };

    function MonSlideShow() {

        MonCurrentPic = MonCurrentPic + 1;

        if (MonCurrentPic > 4) { MonCurrentPic = 1 };

        $('#monitorPic').attr('src', '_Photos/News2Know/Monitoring' + MonCurrentPic + '.JPG').attr('alt', 'Monitoring' + MonCurrentPic + '.JPG');

        switch (MonCurrentPic) {
            case 1:
                $('#monitorMess').html(MonMess1);
                break
            case 2:
                $('#monitorMess').html(MonMess2);
                break
            case 3:
                $('#monitorMess').html(MonMess3);
                break
            case 4:
                $('#monitorMess').html(MonMess4);
                break
        }
    };

    function commSlideShow() {

        commCurrentPic = commCurrentPic + 1;

        if (commCurrentPic > 5) { commCurrentPic = 1 };

        $('#commPic').attr('src', '_Photos/News2Know/comm' + commCurrentPic + '.JPG').attr('alt', 'comm' + commCurrentPic + '.JPG');

        switch (commCurrentPic) {
            case 1:
                $('#commMess').html(commMess1);
                break
            case 2:
                $('#commMess').html(commMess2);
                break
            case 3:
                $('#commMess').html(commMess3);
                break
            case 4:
                $('#commMess').html(commMess4);
                break
            case 5:
                $('#commMess').html(commMess5);
                break
        }
    };

    function stemSlideShow() {

        stemCurrentPic = stemCurrentPic + 1;

        if (stemCurrentPic > 9) {
            stemCurrentPic = 1;
        }

        $('#stemPic').attr('src', '_Photos/News2Know/st' + stemCurrentPic + '.JPG').attr('alt', 'st' + stemCurrentPic + '.JPG');

        switch (stemCurrentPic) {
            case 1:
                $('#stemMess').html(stemMess1);
                break
            case 2:
                $('#stemMess').html(stemMess2);
                break
            case 3:
                $('#stemMess').html(stemMess3);
                break
            case 4:
                $('#stemMess').html(stemMess4);
                break
            case 5:
                $('#stemMess').html(stemMess5);
                break
            case 6:
                $('#stemMess').html(stemMess6);
                break
            case 7:
                $('#stemMess').html(stemMess7);
                break
            case 8:
                $('#stemMess').html(stemMess8);
                break
            case 9:
                $('#stemMess').html(stemMess9);
                break
        };

    };

    function grassSlideShow() {

        grassCurrentPic = grassCurrentPic + 1;

        if (grassCurrentPic > 3) {
            grassCurrentPic = 1;
        }

        $('#grassPic').attr('src', '_Photos/News2Know/grass' + grassCurrentPic + '.JPG').attr('alt', 'grass' + grassCurrentPic + '.JPG');

        switch (grassCurrentPic) {
            case 1:
                $('#grassMess').html(grassMess1);
                break
            case 2:
                $('#grassMess').html(grassMess2);
                break
            case 3:
                $('#grassMess').html(grassMess3);
                break
        };

    };

    function hockeySlideShow() {

        hockeyCurrentPic = hockeyCurrentPic + 1;

        if (hockeyCurrentPic > 4) {
            hockeyCurrentPic = 1;
        }

        $('#hockeyPic').attr('src', '_Photos/News2Know/hockey' + hockeyCurrentPic + '.JPG').attr('alt', 'hockey' + hockeyCurrentPic + '.JPG');

        switch (hockeyCurrentPic) {
            case 1:
                $('#hockeyMess').html(hockeyMess1);
                break
            case 2:
                $('#hockeyMess').html(hockeyMess2);
                break
            case 3:
                $('#hockeyMess').html(hockeyMess3);
                break
            case 4:
                $('#hockeyMess').html(hockeyMess4);
                break
        };

    };

    function commandSlideShow() {

        commandCurrentPic = commandCurrentPic + 1;

        if (commandCurrentPic > 6) {
            commandCurrentPic = 1;
        }

        $('#commandPic').attr('src', '_Photos/News2Know/command' + commandCurrentPic + '.JPG').attr('alt', 'command' + commandCurrentPic + '.JPG');

        switch (commandCurrentPic) {
            case 1:
                $('#commandMess').html(commandMess1);
                break
            case 2:
                $('#commandMess').html(commandMess2);
                break
            case 3:
                $('#commandMess').html(commandMess3);
                break
            case 4:
                $('#commandMess').html(commandMess4);
                break
            case 5:
                $('#commandMess').html(commandMess5);
                break
            case 6:
                $('#commandMess').html(commandMess6);
                break
        };

    };

    function wiseSlideShow() {

        wiseCurrentPic = wiseCurrentPic + 1;

        if (wiseCurrentPic > 6) {
            wiseCurrentPic = 1;
        }

        $('#wisePic').attr('src', '_Photos/News2Know/wise' + wiseCurrentPic + '.JPG').attr('alt', 'wise' + wiseCurrentPic + '.JPG');

        switch (wiseCurrentPic) {
            case 1:
                $('#wiseMess').html(wiseMess1);
                break
            case 2:
                $('#wiseMess').html(wiseMess2);
                break
            case 3:
                $('#wiseMess').html(wiseMess3);
                break
            case 4:
                $('#wiseMess').html(wiseMess4);
                break
            case 5:
                $('#wiseMess').html(wiseMess5);
                break
            case 6:
                $('#wiseMess').html(wiseMess6);
                break
        };

    };

    function secAFSlideShow() {

        secAFCurrentPic = secAFCurrentPic + 1;

        if (secAFCurrentPic > 5) {
            secAFCurrentPic = 1;
        }

        $('#secAFPic').attr('src', '_Photos/News2Know/secAF' + secAFCurrentPic + '.JPG').attr('alt', 'secAF' + secAFCurrentPic + '.JPG');

        switch (secAFCurrentPic) {
            case 1:
                $('#secAFMess').html(secAFMess1);
                break
            case 2:
                $('#secAFMess').html(secAFMess2);
                break
            case 3:
                $('#secAFMess').html(secAFMess3);
                break
            case 4:
                $('#secAFMess').html(secAFMess4);
                break
            case 5:
                $('#secAFMess').html(secAFMess5);
                break
        };

    };

    function ssholmesSlideShow() {

        holmesCurrentPic = holmesCurrentPic + 1;

        if (holmesCurrentPic > 7) {
            holmesCurrentPic = 1;
        }

        $('#holmesPic').attr('src', '_Photos/News2Know/Holmes' + holmesCurrentPic + '.JPG').attr('alt', 'Holmes' + holmesCurrentPic + '.JPG');

        switch (holmesCurrentPic) {
            case 1:
                $('#holmesMess').html(holmesMess1);
                break
            case 2:
                $('#holmesMess').html(holmesMess2);
                break
            case 3:
                $('#holmesMess').html(holmesMess3);
                break
            case 4:
                $('#holmesMess').html(holmesMess4);
                break
            case 5:
                $('#holmesMess').html(holmesMess5);
                break
            case 6:
                $('#holmesMess').html(holmesMess6);
                break
            case 7:
                $('#holmesMess').html(holmesMess7);
                break
        };

    };

    //Additions Box Subroutines
    //**********************************************************************
    $('#btnWOH1').click(function () {
        window.open('https://www.25af.af.mil/News/Article-Display/Article/1891784/three-inducted-into-aftac-wall-of-honor/', '');
    });

    $('#woh').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#2019WOHArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#wohPara").offset().top
        }, 500);
    });

    $('#disney').click(function () {
        window.open('https://disneyworld.disney.go.com/special-offers/military-multi-day-tickets-2019/', '');
    });

    $('#boardMeetingLst').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#meetingArt').removeClass('noDisplay').addClass('block')
    })

    $('.chiefLong').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#longArt').removeClass('noDisplay').addClass('block');
    });

    $('#calendar1').click(function () {
        window.open('_PDFs/Calendar.pdf', '')
    });

    $('#universal').click(function () {
        window.open('https://www.military.com/discounts/universal-orlando-has-new-2019-military-discount.html?utm_medium=Social&utm_source=Facebook&fbclid=IwAR2P8YbBqcfEPXo7Ox_je1F90QtpWbdIrCQmTwczaoTIzO8rgGXJuSLuI2M#Echobox=1565196335', '');
    })

    $('#golf2019').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#golfArt').removeClass('noDisplay').addClass('block')
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#myGolfArt").offset().top
        }, 500);
    })

    $('#btnSnow').click(function () {
        window.open('_PDFs/2023 Snowball.pdf', '');
    });

    $('#job9l').click(function () {
        window.open('https://jobs.localjobnetwork.com/j/38444081', '');
    });

    $('#presAward').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#newsToKnowArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('.year20Wall').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wallArt').removeClass('noDisplay').addClass('block');
    });

    //end of Additions Box Subroutines
    //**********************************************************************

    //Main Menu Items
    //**********************************************************************
    //$(document).ready(function () {
    var subclicked = false;

    $('#liAftacaaBoard').click(function () {
        if ($('#divBoard').hasClass('noDisplay')) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $('.underSel').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            $('.underMenu').removeClass('block').addClass('noDisplay');
            $('#divBoard').removeClass('noDisplay').addClass('block');
            subclicked = true;
        };
    })

    $('#liMainPage').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#defaultArt').removeClass('noDisplay').addClass('block');

        $([document.documentElement, document.body]).animate({
            scrollTop: $('#recentTitle').offset().top
        }, 500);
    });

    $('#mySnowBall').click(function () {
        subclicked = true;
        $('#becoming99Art').css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#Snow2023').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#mybecoming99, #mnubecoming99').click(function () {
        subclicked = true;
        $('#becoming99Art').css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#becoming99Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });
    //Used for Recent Additions Table Announcement-CAN BE DELETED AFTER 9/10/2023

    $('#showMinutes').click(function () {
        subclicked = true;
        $('#showMinutes').css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#minutesArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#meetingMinutes').click(function () {
        window.open('_Minutes/1-9-2023_Minutes.pdf', '');
    });
    $('#myAgenda').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showAgenda').css('color', 'lightgreen');
        window.open('_PDFs/Agenda_10_2023.pdf', '');
    });

    $('#showAgenda').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showAgenda').css('color', 'lightgreen');
        window.open('_PDFs/Agenda_10_2023.pdf', '');
    });

    $('#showElected').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showElected').css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#electedBoardArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#openHouse2021').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#openHouse2021Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#openHouse2021Art").offset().top
        }, 500);
    });
    $('#myWWR2022').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#WWR2022Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });
    $('#myGolf2021').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#Golf2021Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#showAppointed').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showAppointed').css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#selectedBoardArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#showByLaws').click(function () {
        subclicked = true;
        $(this).css('color', 'lightgreen');
        $('#showCol').css('color', 'yellow');
        window.open('_PDFs/AFTACAA ByLaws.pdf', '');
    });

    $('#showConstitution').click(function () {
        subclicked = true;
        $(this).css('color', 'lightgreen');
        $('#showCal').css('color', 'yellow');
        window.open('_PDFs/AFTACAA Constitution.pdf', '');
    });

    $('#myWise').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#WiseArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#WiseArt").offset().top
        }, 500);
    });

    $('#myCoBreakfast').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#CoBreakfastArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#CoBreakfastArt").offset().top
        }, 500);
    });

    $('#my79Years, #79Years').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#79YearsArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#79YearsArt").offset().top
        }, 500);
        //    window.open('_PDFs/79 Years Ago.pdf');
    });
    $('#myLittleGreenMan, #LittleGreenMan').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#LittleGreenManArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#LittleGreenManArt").offset().top
        }, 500);
       });
    
    $('#mySpy').click(function () {
        window.open('https://www.scmp.com/news/china/military/article/3154476/us-spy-planes-over-south-china-sea-likely-surveyed-nuclear', '');
    });

    $('#myPomo').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#pomoArt').removeClass('noDisplay').addClass('block');
        $('#sectPomoArchived').removeClass('block').addClass('noDisplay');
        $('#sectPomoCurrent').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#pomoArt").offset().top
        }, 500);
    });

    $('#pomosCurrent').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        if ($('#pomoArt').hasClass('noDisplay')) {
            $('.myArts').removeClass('block').addClass('noDisplay');
            $('#pomoArt').removeClass('noDisplay').addClass('block');
            $('#sectPomoArchived').removeClass('block').addClass('noDisplay');
            $('#sectPomoCurrent').removeClass('noDisplay').addClass('block');
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#pomoArt").offset().top
            }, 500);
        }
        else {
            $('#sectPomoArchived').removeClass('block').addClass('noDisplay');
            $('#sectPomoCurrent').removeClass('noDisplay').addClass('block');
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#pomoArt").offset().top
            }, 500);
        };
    });

    $('#liHonor,#wohInductees').click(function () {
        resetpage()
        subclicked = true;
        $("video").each(function () { this.pause() });
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#honorArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#pWOH_Honorees").offset().top
        }, 500);
    });

    $('#liSageShop').click(function () {
        resetpage()
        window.open('/_pdfs/SageStore_10_2023.pdf', '');
    });

    $('#liWall').click(function () {
        resetpage()
        subclicked = true;
        $("video").each(function () { this.pause() });
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wallArt').removeClass('noDisplay').addClass('block');


        $('#divReturnToListings').removeClass('noDisplay').addClass('block');
        $('#wallListings').removeClass('noDisplay').addClass('block');
        $('#showPic').removeClass('block').addClass('noDisplay');
        $('#wallListings').removeClass('noDisplay').addClass('block');
        $('#hideListings').removeClass('block').addClass('noDisplay');
        $('#wallPic').removeClass('block').addClass('noDisplay');
        $('#wallImg').attr("src", "/_Images/Blank.bmp")
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#wallPara").offset().top
        }, 500);
        $('#butShowListings').val('Return to Listings');

    });

    $('.CommandNotes').click(function () {
        switch ($(this).html()) {
            case "Colonel Finlayson's Biography":
                $('.CommandArt').removeClass('block').addClass('noDisplay');
                $('#Command1').removeClass('noDisplay').addClass('block');
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#Command1").offset().top
                }, 500);
                break
            case "Chief Wright's Biography":
                $('.CommandArt').removeClass('block').addClass('noDisplay');
                $('#Command2').removeClass('noDisplay').addClass('block');
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#Command2").offset().top
                }, 500);
                break
            case "Note from the Commander":
                $('.CommandArt').removeClass('block').addClass('noDisplay');
                $('#Command3').removeClass('noDisplay').addClass('block');
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#Command3").offset().top
                }, 500);
                break
        }
    });

    $('#liCommand').click(function () {
        if ($('#divChapters').hasClass('noDisplay')) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            $('.underSel').css('color', 'yellow');
            $('.underMenu').removeClass('block').addClass('noDisplay');
            $('.myArts').removeClass('block').addClass('noDisplay');
            $('#myCommandArt').removeClass('noDisplay').addClass('block');
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#myCommandArt").offset().top
            }, 500);
        };
    });

    $('#liIndependent').click(function () {
        if ($('#divChapters').hasClass('noDisplay')) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            $('.underSel').css('color', 'yellow');
            $('.underMenu').removeClass('block').addClass('noDisplay');
            $('#divChapters').removeClass('noDisplay').addClass('block');
        };
    });

    $('#showCal').click(function () {
        window.open('http://www.aftacwcc.org/index.htm', '');
    })

    $('#showCol').click(function () {
        window.open('http://www.aftacco.org', '');
    })

    $('#liAlumni').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#alumniArt').removeClass('noDisplay').addClass('block');
        $('#AOYList').removeClass('noDisplay').addClass('block');
        $('#AOYCarousel').removeClass('noDisplay').addClass('block');

        $([document.documentElement, document.body]).animate({
            scrollTop: $("#lblAOY").offset().top
        }, 500);
    });

    $('#WWR2022PG').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        glbGalPath = "Gal2022WWR";
        window.open("PhotoGallery.html");
    });
    $('#btnsb2PhotoGal').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        glbGalPath = "Gal2018SB";
        window.open("PhotoGallery.html");
    });

    $('#liEventPhotos').click(function () {
        if ($('#divEvents').hasClass('noDisplay')) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            $('.underSel').css('color', 'yellow');
            $('.underMenu').removeClass('block').addClass('noDisplay');
            $('#divEvents').removeClass('noDisplay').addClass('block');
        }
    });

    $('#lbl2022').click(function () {
        if ($('#2022Act').hasClass('block')) {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#eventMess').removeClass('noDisplay').addClass('block');
        }
        else {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#2022Act').removeClass('noDisplay').addClass('block');
            $('#eventMess').removeClass('block').addClass('noDisplay');
        }
    });
    $('#lbl2021').click(function () {
        if ($('#2021Act').hasClass('block')) {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#eventMess').removeClass('noDisplay').addClass('block');
        }
        else {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#2021Act').removeClass('noDisplay').addClass('block');
            $('#eventMess').removeClass('block').addClass('noDisplay');
        }
    });

    $('#lbl2020').click(function () {
        if ($('#2020Act').hasClass('block')) {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#eventMess').removeClass('noDisplay').addClass('block');
        }
        else {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#2020Act').removeClass('noDisplay').addClass('block');
            $('#eventMess').removeClass('block').addClass('noDisplay');
        }
    });

    $('#lbl2019').click(function () {
        if ($('#2019Act').hasClass('block')) {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#eventMess').removeClass('noDisplay').addClass('block');
        }
        else {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#2019Act').removeClass('noDisplay').addClass('block');
            $('#eventMess').removeClass('block').addClass('noDisplay');
        }
    });


    // events
    //**********************************************************************

    $('#coReunion').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#coloReunionArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#coloReunionArt").offset().top
        }, 500);
    });

    $('#tbWinners').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#tbWinnersArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#tbWinnersArt").offset().top
        }, 500);
    });

    $('#AftacAwards2021').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#AOYAwardArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#myAwardsPara").offset().top
        }, 500);
    });

    $('#DiamondJub').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#DiamondArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#DiamondArtArt").offset().top
        }, 500);
    });
    $('#WWR2022RecentAddition').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#WWR2022Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#WWR2022Art").offset().top
        }, 500);
    });
    $('#WWR2022').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#WWR2022Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#WWR2022Art").offset().top
        }, 500);
    });
    
    $('#Golf2022').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#Golf2022Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#Golf2022Art").offset().top
        }, 500);
    });

    $('#Golf2021').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#Golf2021Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#Golf2021Art").offset().top
        }, 500);
    });

    $('#OH2021').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#openHouse2021Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#openHouse2021Art").offset().top
        }, 500);
    });

    $('#WOHAwards2021').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#WOH2021Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#myWOHPara").offset().top
        }, 500);
    });

    $('#AFTACawards').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#aftacAwardsArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#aftacAwardsArt").offset().top
        }, 500);
    });

    $('#FlagRun').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#FlagRunArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#flagRunPara").offset().top
        }, 500);
    });

    $('#2020Snowball').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#SB2020Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#SB2020Para").offset().top
        }, 500);
    });

    $('#tbSnowball').click(function () {
        window.open('/_pdfs/2019 SnowBall.pdf', '');
    });

    $('#retreat').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#retreatArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#retreatArt").offset().top
        }, 500);
    });

    //end of 2019 events
    //**********************************************************************

    $('#lbl2018').click(function () {
        if ($('#2018Act').hasClass('block')) {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#eventMess').removeClass('noDisplay').addClass('block');
        }
        else {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#2018Act').removeClass('noDisplay').addClass('block');
            $('#eventMess').removeClass('block').addClass('noDisplay');
        }
    });


    //2018 events
    //**********************************************************************

    $('#wccPic').click(function () {
        subclicked = true;
        window.open("http://www.aftacwcc.org/PhotoAlbums/20180519_SpringPicnic/20180519_WCCPicnic-SlideShow.pdf", "")
    });

    $('#eventsSnowBall').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#sbArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#sbArt").offset().top
        }, 500);
    });

    $('#eventsSnowBall2').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#sb2Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#sb2Art").offset().top
        }, 500);
    });

    $('#liWoodwork').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#woodenHQArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    //end of 2018 events
    //**********************************************************************


    $('#lbl2017').click(function () {
        if ($('#2017Act').hasClass('block')) {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#eventMess').removeClass('noDisplay').addClass('block');
        }
        else {
            $('.myActs').removeClass('block').addClass('noDisplay');
            $('#2017Act').removeClass('noDisplay').addClass('block');
            $('#eventMess').removeClass('block').addClass('noDisplay');
        }
    });


    //2017 events
    //**********************************************************************

    $('#eventsToiletBowl').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#toilet2017Art').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#toilet2017Art").offset().top
        }, 500);
    });

    $('#diningH2').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#diningOut').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#eventsOpenHouse').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#openHouseArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#openHouseArt").offset().top
        }, 500);
    });

    $('#ladiesLuncheon').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#ladiesLunchArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#ladiesLunchArt").offset().top
        }, 500);
    });

    $('#eventsWCCReunion').click(function () {
        window.open('http://www.aftacwcc.org/albums.htm', '');
    });

    //end of 2017 events
    //**********************************************************************

    $('#liLookup').click(function () {
        resetpage()
    });

    $('#liHistory').click(function () {
        if ($('#divHistory').hasClass('noDisplay')) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            $('.underSel').css('color', 'yellow');
            $('.underMenu').removeClass('block').addClass('noDisplay');
            $('#divHistory').removeClass('noDisplay').addClass('block');
        }
    });

    //History Sub Items
    //**********************************************************************


    $('#FourSkin').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#FourSkinArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#AFTACCommand').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#CommandArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#historyAFTAC').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#historyArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#historyAlumni').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#historyAlumniArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#heritageandHistory').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#heritageArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#oconnorHistory').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#oconnerArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#excelHistory').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#excellenceArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#last70years').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#last70yearArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#olMemories').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#olMemoriesArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    //end of history sub items
    //**********************************************************************

    $('#liObituaries').click(function () {
        if ($('#divObits').hasClass('noDisplay')) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            $('.underSel').css('color', 'yellow');
            $('.underMenu').removeClass('block').addClass('noDisplay');
            $('#divObits').removeClass('noDisplay').addClass('block');
        }
    });

    $('#obitsRecent').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('#archivedObits').removeClass('block').addClass('noDisplay');
        $('#currentObits').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#obitsArchived').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        //$('#audioTaps').trigger('play');
        //$('#audioTaps').prop('volume', '0.1');
        $('#currentObits').removeClass('block').addClass('noDisplay');
        $('#archivedObits').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#Label10").offset().top
        }, 500);
    });

    $('#liNewsToKnow, .clsN2K').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#newsToKnowArt').removeClass('noDisplay').addClass('block');
        $('.news2KnowH1').removeClass('noDisplay').addClass('block');
        $('.ntkButs').removeClass('noDisplay').addClass('block');
        $('.archivedNews').removeClass('block').addClass('noDisplay');
        $('.currentNews').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liJobs').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#jobsArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liSpecialLinks').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#specialLinksArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });
    //This code is used to open the Special Links "page" from an announcement on adding new links and can be deleted after the announcement is deleted> 
    $('#anouncementSpecialLinks').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#specialLinksArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });
    $('#liHurricane').click(function () {
        if ($('#divHurricane').hasClass('noDisplay')) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            $('.underSel').css('color', 'yellow');
            $('.underMenu').removeClass('block').addClass('noDisplay');
            $('#divHurricane').removeClass('noDisplay').addClass('block');
        }
    });

    $('#wunder').click(function () {
        subclicked = true;
        $('.myweather').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wunderArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#nhc').click(function () {
        subclicked = true;
        $('.myweather').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#nhcArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liVideos').click(function () {
        if ($('#divVideos').hasClass('noDisplay')) {
            $('.liMainMenu').css('color', 'yellow');
            //$('#audioTaps')[0].pause();
            $(this).css('color', 'lightgreen')
            $('.underSel').css('color', 'yellow');
            $('.underMenu').removeClass('block').addClass('noDisplay');
            $('#divVideos').removeClass('noDisplay').addClass('block');
        }
    });

    $('#vid_2015Reunion').click(function () {
        window.open('https://www.youtube.com/embed/yMNL-F9esQo', '');
    });

    $('#vid_2017AirShow').click(function () {
        window.open('https://www.youtube.com/embed/MCYjuVaijSk', '');
    });

    $('#vid_2018AirShow').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#2018AirShowArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });
    $('#vidDrones').click(function () {
        window.open('_Videos/GUINNESS WORLD RECORD Fourth Of July Drone Show.mp4', '');
    });
    $('#vidDedication').click(function () {
        window.open('https://www.youtube.com/embed/pjhml8xTMLI', '');
    });

    $('#vidSeminar').click(function () {
        window.open('https://www.youtube.com/embed/aC12oNZUYsI', '');
    });

    $('#vidStonehenge').click(function () {
        window.open('https://www.youtube.com/embed/cx3HZweJ2Sk', '');
    });

    $('#vidWall').click(function () {
        window.open('https://www.youtube.com/embed/9MLmLPlTOMc', '');
    });

    $('#vidUpgrade').click(function () {
        window.open('https://www.youtube.com/embed/Rx0rdO4R1vo', '');
    });

    $('#liBooster').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#aftacboosterArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });
    //End of Main Menu Items
    //**********************************************************************

    function resetpage() {

        $('#mainHeader').removeClass('noDisplay').addClass('block');

        //$('#audioTaps')[0].pause();

        //var $audio = $("#audioTaps");
        //$audio.currentTime = 0;

        $('#winterSocialArt').removeClass('block').addClass('noDisplay');

        $('.obitPara').removeClass('block').addClass('noDisplay');
        $('.n2KPara').removeClass('block').addClass('noDisplay');
        //$("video").each(function () { this.pause() });
        $('#txtEmail').val('');
        $('#pnlPomoError').html('');
        $('#pnlPomoError').removeClass('block').addClass('noDisplay');
        $('.sbfigs').removeClass('block').addClass('noDisplay');
        $('#wallPic').removeClass('block').addClass('noDisplay')
        $('#hideListings').removeClass('block').addClass('noDisplay')
        $('#wallListings').removeClass('noDisplay').addClass('block')
    };

});
//**********************************************************************
//**********************************************************************
//End of $(docoment.ready)

function Show20YearPic(s) {
    $('.myArts').removeClass('block').addClass('noDisplay');
    $('#wallArt').removeClass('noDisplay').addClass('block');
    $('#wallListings').removeClass('block').addClass('noDisplay');
    $('#divReturnToListings').removeClass('block').addClass('noDisplay');
    $('#paraWallTitle').removeClass('block').addClass('noDisplay');
    $('#wallImg').attr('src', '_Photos/20YearWall/' + s + '.jpg');
    $('#wallImg').css('width', '100%')
    $('#showPic').removeClass('noDisplay').addClass('block');
    $([document.documentElement, document.body]).animate({
        scrollTop: $("#showPic").offset().top
    }, 500);
};

function Open20Year(s) {
    $('.myArts').removeClass('block').addClass('noDisplay');
    $('#wallArt').removeClass('noDisplay').addClass('block');
    $('#wallListings').removeClass('block').addClass('noDisplay');
    $('#hideListings').removeClass('noDisplay').addClass('block');
    $('#wallImg').attr('src', '_photos/20yearwall/' + s + '.jpg')
    $('#showPic').removeClass('noDisplay').addClass('block');
    $([document.documentElement, document.body]).animate({
        scrollTop: $("#hideListings").offset().top
    }, 500);
};

function OpenObit(s) {
    $('.myArts').removeClass('block').addClass('noDisplay');
    $('#currentObitsArt').removeClass('noDisplay').addClass('block');
    $('.n2KPara').removeClass('block').addClass('noDisplay');
    $('#' + s + 'Para').removeClass('noDisplay').addClass('block');
    $([document.documentElement, document.body]).animate({
        scrollTop: $('#' + s + 'H2').offset().top
    }, 500);
};

function ShowMyObit(s) {
    if ($('#' + s + 'Para').is(':hidden')) {
        $('.obitPara').removeClass('block').addClass('noDisplay');
        $('#' + s + 'Para').removeClass('noDisplay').addClass('block');
    }
    else {
        $('.obitPara').removeClass('block').addClass('noDisplay');
    }
    $([document.documentElement, document.body]).animate({
        scrollTop: $('#' + s + 'H2').offset().top
    }, 500);
};

function OpenNTKfromMenu(s) {
    if ($('#ntk' + s + 'Para').hasClass('noDisplay')) {
        $('.n2KPara').removeClass('block').addClass('noDisplay');
        $('#ntk' + s + 'Para').removeClass('noDisplay').addClass('block');
    }
    else {
        $('.n2KPara').removeClass('block').addClass('noDisplay');
    }
    $([document.documentElement, document.body]).animate({
        scrollTop: $('#ntk' + s + 'H2').offset().top
    }, 500);
};

function Open20YearPic(s) {
    $('.myArts').removeClass('block').addClass('noDisplay');
    $('#wallArt').removeClass('noDisplay').addClass('block');
    //    $('#wallImg').attr('src', '_Photos/20YearWall/' + s + '.jpg');
    //    $('#wallImg').css('width', '100%')
    //    $('#hideListings').removeClass('noDisplay').addClass('block');
    //    $('#wallListings').removeClass('block').addClass('noDisplay');
    //    $('#wallPic').removeClass('noDisplay').addClass('block');
    //    $('#wallPic').attr('src', s & 'jpg')
    //    $([document.documentElement, document.body]).animate({
    //        scrollTop: $("#hideListings").offset().top
    //    }, 500);
};

function OpenNTK(s) {
    $('.myArts').removeClass('block').addClass('noDisplay');
    $('#newsToKnowArt').removeClass('noDisplay').addClass('block');
    $('.n2KPara').removeClass('block').addClass('noDisplay');
    $('#ntk' + s + 'Para').removeClass('noDisplay').addClass('block');
    $([document.documentElement, document.body]).animate({
        scrollTop: $('#ntk' + s + 'H2').offset().top
    }, 500);
};

function search() {
    //event.preventDefault();

    if (event.keyCode === 13) {
        if ($('#txtEmail').val().length === 0) {
            $('#pnlPomoError').html('<p class="redText bold italic" style="font-size:1em;">Your email must be entered here.</p>;');
            $('#pnlPomoError').removeClass('noDisplay').addClass('block');
        }
        else {
            $('#pnlPomoError').removeClass('block').addClass('noDisplay');
            $(this).attr('disabled', true);

            CallService();

            $(this).attr('disabled', false);
        };
    };
};

function resetMenu() {
    $('.liMainMenu').css('color', 'yellow');
    $(this).css('color', 'lightgreen');
    $('.underMenu').removeClass('block').addClass('noDisplay');
    $('.underSel').css('color', 'yellow');
};

//function ping() {
//    $.ajax({
//        url: 'http://aftacaa.us',
//        success: function () {
//            alert('reply');
//        },
//        error: function () {
//            alert('timeout/error');
//        }
//    });
//}

function ShowAdminMenu() {
    $('.myArts').removeClass('block').addClass('noDisplay');
    $('#adminMenu').removeClass('noDisplay').addClass('block');
};

function CallService() {
    $.ajax({
        type: "POST",
        url: "myService.asmx/ismemberbyemail",
        data: "{'email': '" + $("#txtEmail").val() + "'}",
        contentType: "application/json; charset=utf-8",
        cache: false,
        dataType: "json",
        success: OnismemberbyemailSuccess,
        error: OnismemberbyemailError
    });
};

function OnismemberbyemailSuccess(data) {
    if (data.d) {
        $('#pomo1').removeClass('block').addClass('noDisplay')
        $('#pomo2').removeClass('noDisplay').addClass('block')
    }
    else {
        $('#pnlPomoError').html('<p class="redText bold italic" style="font-size:1em;">Your Email indicates you are not a Paidup Member of AFTAC Alumni Assoc.</p>;');
        $('#pnlPomoError').removeClass('noDisplay').addClass('block');
    };

};

function OnismemberbyemailError() {
    $("#content").html('Boy I screwed up.');
};

function scrollToElement(ele) {
    //$(window).scrollTop(ele.offset().top).scrollLeft(ele.offset().left);
    $([document.documentElement, document.body]).animate({
        scrollTop: $(ele).offset().top
    }, 500);

}

document.getElementsByAttribute = Element.prototype.getElementsByAttribute = function (attr) {
    var tagArray = document.getElementsByTagName("*");
    var tagList = [];
    for (var i = 0; i < tagArray.length; i++) {
        if (tagArray[i].getAttribute(attr)) tagList.push(tagArray[i]);
    }
    return tagList;
}

window.onload = function () {
    setEventListenersForArticles(document.getElementsByAttribute("data-toggle-art"));
    setEventListenersForLinks(document.getElementsByAttribute("data-toggle-link"));
}

function setEventListenersForArticles(tagList) {
    tagList.forEach(function (tag) {
        var attrVal = tag.getAttribute("data-toggle-art");
        tag.addEventListener("click", function () {
            $('.myArts').removeClass('block').addClass('noDisplay');
            $('#' + attrVal).removeClass('noDisplay').addClass('block');
            scrollTo(0, 0);
        })
    })
}

function setEventListenersForLinks(tagList) {
    tagList.forEach(function (tag) {
        var attrVal = tag.getAttribute("data-toggle-link");
        var link = attrVal.split(",");
        var url = link[0].trim();
        var target;
        if (link.length > 1) target = link[1].trim();
        else target = "_blank";
        tag.addEventListener("click", function () {
            window.open(url, target);
        })
    })
}
