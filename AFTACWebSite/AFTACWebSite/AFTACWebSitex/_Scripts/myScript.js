
var action ='default'

$(document).ready(function () {
    var SlideShowInt;
    var CoSlideShowInt;
    var ColFallDinerSlideShowInt;
    var SBSlideShowInt;
    var pingInt = 0;
    var AntSlideShowIntCiuperH2
    var holmesSlideShowInt;
    var secAFSlideShowInt;
    var aftacHisSSInt;
    var myText;
    var ssCurrentPic = 1;
    var ssLastPic;
    var ssMaxPic = 77;
    var coCurrentPic = 1;
    var coLastPic;
    var coMaxPic = 15;
    var colCurrentPic = 1;
    var colLastPic;
    var colMaxPic = 62;
    var sbCurrentPic = 1;
    var sbLastPic;
    var sbMaxPic = 36;
    var pomosactive = false;
    var indepOpen = false;
    var $taps = $('#audioTaps');
    var bar, slider;
    var vid;
    var subclicked = false;
    var missionMaxPic = 5;
    var missionCurrentPic = 1;
    var rotcCurrentPic = 1;
    var soccerCurrentPic = 1;
    var rslCurrentPic = 1;
    var UCFCurrentPic = 1;
    var stemCurrentPic = 1;
    var hurrCurrentPic = 1;
    var topsCurrentPic = 1;
    var antCurrentPic = 1;
    var holmesCurrentPic = 1;
    var aftacHisCurentPic = 1;
    var aftacDiningCurrentPic = 1;
    var aftacHisSlideShowInt;
    var aftacDiningSlideShowInt;

    clearInterval(SlideShowInt)
    clearInterval(SBSlideShowInt)
    clearInterval(aftacHisSlideShowInt)

    pingInt = setInterval(function () { Ping() }, 4000);

   $('.liMainMenu').css('color', 'yellow');

    $('.butA').mouseover(function () {
        $(this).css('color', 'lightblue');
    });

    if (pomosactive === true) {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#pomoArt').removeClass('noDisplay').addClass('block');
        pomosactive = false;
    }
    window.close
    //**********************************************************************
    //Default Page

    //**********************************************************************
    //Main Page

    scroll(0, 0);

    //$('#mainMenu').

    //$('#liWinner').click(function () {
    //    $('.myArts').removeClass('block').addClass('noDisplay');
    //    $('#brinkmanArt').removeClass('noDisplay').addClass('block');
    //    scroll(0,0)
    //});

    $('#butShowListings').click(function () {
        $('#wallListings').removeClass('noDisplay').addClass('block');
        $('#hideListings').removeClass('block').addClass('noDisplay');
    });

    $('#btnMemAdmin').click(function () {
        $('#adminMenu').removeClass('block').addClass('noDisplay');
        $('#mainMenu').removeClass('block').addClass('noDisplay');
        $('#membershipadminArt').removeClass('noDisplay').addClass('block');
        scroll(0, 0);
    });

    $('#btnReturnToAdminMenu').click(function () {
        $('#adminMenu').removeClass('noDisplay').addClass('block');
        $('#mainMenu').removeClass('noDisplay').addClass('block');
        $('#membershipadminArt').removeClass('block').addClass('noDisplay');
    })

    $('#alumniLogo').dblclick(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#passwordArt').removeClass('noDisplay').addClass('block');
        action = 'password';
    });

    $('#btnwohReturn').click(function () {
        $('#wohMainImg').removeClass('noDisplay').addClass('block');
        $('#wohDiv').removeClass('block').addClass('noDisplay');
    });

    $('#wohCeremony').click(function () {
        resetpage();
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wohArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#btnChangePW').click(function(){
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#changepasswordArt').removeClass('noDisplay').addClass('block');
    });

    $('#btnCancelChange').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#passwordArt').removeClass('noDisplay').addClass('block');
    });

    $('#liMainPage').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#defaultArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#liStatistics').click(function () {
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

    $('#showMinutes').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showMinutes').css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#minutesArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#showAgenda').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showAgenda').css('color', 'lightgreen');
        window.open('_PDFs/agenda.pdf', '');
    });

    $('#france1').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#france1Art').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#france2').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#france2Art').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#liDeployment').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#deploymentArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#liIndependent').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divChapters').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divChapters').removeClass('noDisplay').addClass('block');
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divChapters').removeClass('block').addClass('noDisplay');
            };
        };
        subclicked = false;
    });

    $('#showCal').click(function () {
        subclicked = true;
        $(this).css('color', 'lightgreen');
        $('#showCol').css('color', 'yellow');
        window.open('http://www.aftacwcc.org/index.htm', '');
    })

    $('#showCol').click(function () {
        subclicked = true;
        $(this).css('color', 'lightgreen');
        $('#showCal').css('color', 'yellow');
        window.open('http://www.aftacco.org/', '');
    })

    $('#liBooster').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#aftacboosterArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#liAlumni').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#alumniArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#liWoodwork').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#woodenHQArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
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

    $('#showElected').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showElected').css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#electedBoardArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#showAppointed').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showAppointed').css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#selectedBoardArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#liCalendar').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#calendarArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#coin').click(function () {
        resetpage()
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wonArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
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

    $('#liHistory').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divHistory').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divHistory').removeClass('noDisplay').addClass('block');
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divHistory').removeClass('block').addClass('noDisplay');
            };
        };
        subclicked = false;
    });

    $('#historyAFTAC').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#historyArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#historyAlumni').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#historyAlumniArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#heritageandHistory').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#heritageArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#oconnerHistory').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#oconnerArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#excelHistory').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#excellenceArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#liHurricane').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divHurricane').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divHurricane').removeClass('noDisplay').addClass('block');
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divHurricane').removeClass('block').addClass('noDisplay');
            };
        };
        subclicked = false;
    });

    $('#wunder').click(function () {
        subclicked = true;
        $('.myweather').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wunderArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#nhc').click(function () {
        subclicked = true;
        $('.myweather').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#nhcArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#liJobs').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#jobsArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#eventH2').click(function () {
        if ($('#eventSect').hasClass('noDisplay')) {
            $('.jobSect').removeClass('block').addClass('noDisplay');
            $('#eventSect').removeClass('noDisplay').addClass('block');
            scrollTo(0, 0);
        }
        else {
            $('#eventSect').removeClass('block').addClass('noDisplay');
        }
    });

    $('#liNewsToKnow').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#newsToKnowArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#limemLookup').click(function () {
        window.open('memlookup.aspx', '0');
    });

    $('#liObituaries').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $("video").each(function () { this.pause() });
            $('#txtEmail').val('');
            $(this).css('color', 'lightgreen');
            if ($('#divObits').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divObits').removeClass('noDisplay').addClass('block');
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divObits').removeClass('block').addClass('noDisplay');
            };
        };
        subclicked = false;
    });

    $('#obitsRecent').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('#audioTaps').trigger('play');
        $('#audioTaps').prop('volume', '0.1');
        if ($('#obituariesArt').hasClass('noDisplay')) {
            $('.myArts').removeClass('block').addClass('noDisplay');
            $('#obituariesArt').removeClass('noDisplay').addClass('block');
            $('#archivedObits').removeClass('block').addClass('noDisplay');
            $('#currentObits').removeClass('noDisplay').addClass('block');
            scrollTo(0, 0);
        }
        else {
            $('#archivedObits').removeClass('block').addClass('noDisplay');
            $('#currentObits').removeClass('noDisplay').addClass('block');
            scrollTo(0, 0);
        };
    });

    $('#obitsArchived').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('#audioTaps').trigger('play');
        $('#audioTaps').prop('volume', '0.1');
        if ($('#obituariesArt').hasClass('noDisplay')) {
            $('.myArts').removeClass('block').addClass('noDisplay');
            $('#obituariesArt').removeClass('noDisplay').addClass('block');
            $('#currentObits').removeClass('block').addClass('noDisplay');
            $('#archivedObits').removeClass('noDisplay').addClass('block');
            //scrollTo(0, 0);
        }
        else {
            $('#currentObits').removeClass('block').addClass('noDisplay');
            $('#archivedObits').removeClass('noDisplay').addClass('block');
            //scrollTo(0, 0);
        };
    });

    $('#btnShowArticles').click(function () {
        if ($(this).attr('value') == ' Show Archived Articles ') {
            ($(this).attr('value', ' Show Current Articles '))
            $('#newsTitle').html('Archived News Articles')
            $('.archivedNews').removeClass('noDisplay').addClass('block')
            $('.currentNews').removeClass('block').addClass('noDisplay')
        }
        else {
            ($(this).attr('value', ' Show Archived Articles '));
            $('#newsTitle').html('Current News Articles');
            $('.archivedNews').removeClass('block').addClass('noDisplay')
            $('.currentNews').removeClass('noDisplay').addClass('block')
        };
    });

    $('#liEventPhotos').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divEvents').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divEvents').removeClass('noDisplay').addClass('block');
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divEvents').removeClass('block').addClass('noDisplay');
            };
        };
        subclicked = false;
    });

    $('#eventsSnowBall').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#sbArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#eventsSnowBall2').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#sb2Art').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#eventsOpenHouse').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#openHouseArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#eventsToiletBowl').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#toilet2017Art').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#eventsGolfGet').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#golfGetArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#eventsGolf').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#golfOutingArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#eventsBreakfast').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#coBreakfastArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#eventsWCCReunion').click(function () {
        window.open('http://www.aftacwcc.org/albums.htm', '');
    });

    $('#ladiesLuncheon').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#ladiesLunchArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    //*************************************************************************************
    //AFTAC History
    $('#hisButNext').click(function () {
        aftacHisCurentPic = aftacHisCurentPic + 1
        if (aftacHisCurentPic > 55) { aftacHisCurentPic = 1 }
        $('#hisPic').attr('alt', 'DO' + aftacHisCurentPic + '.png').attr('src', '_Photos/aftacHistory/DO' + aftacHisCurentPic + '.png')
        //$('#hisPic').attr('src', '_Photos/Dining/DO' + aftacHisCurentPic + '.jpg')
    });

    $('#hisButPrevious').click(function () {
        aftacHisCurentPic = aftacHisCurentPic - 1
        if (aftacHisCurentPic < 1) { aftacHisCurentPic = 55 }
        $('#hisPic').attr('alt', 'DO' + aftacHisCurentPic + '.png').attr('src', '_Photos/aftacHistory/DO' + aftacHisCurentPic + '.png')
        //$('#hisPic').attr('src', '_Photos/Dining/DO' + aftacHisCurentPic + '.jpg')
    });

    $('#hisButSS').click(function () {
        if ($(this).attr('value') == ' Start Slide Show ') {
            ($(this).attr('value', ' Stop Slide Show '))
            $('#hisButNext').removeClass('myBut').addClass('myGrayBut');
            $('#hisButPrevious').removeClass('myBut').addClass('myGrayBut');
            aftacHisSlideShowInt = setInterval(function () { aftacHisSlideShow() }, 4000);
        }
        else
        {
            $('#hisButNext').removeClass('myGrayBut').addClass('myBut');
            $('#hisButPrevious').removeClass('myGrayBut').addClass('myBut');
            ($(this).attr('value', ' Start Slide Show '))
            clearInterval(aftacHisSlideShowInt)
        }
    });
    //*************************************************************************************

    //*************************************************************************************
    //AFTAC Dining Out
    $('#doButNext').click(function () {
        aftacDiningCurrentPic = aftacDiningCurrentPic + 1
        if (aftacDiningCurrentPic > 20) { aftacDiningCurrentPic = 1 }
        $('#DOpic').attr('src', '_Photos/Dining/DO' + aftacDiningCurrentPic + '.jpg').attr('alt', 'DO' + aftacDiningCurrentPic + '.jpg')
    });

    $('#doButPrev').click(function () {
        aftacDiningCurrentPic = aftacDiningCurrentPic - 1
        if (aftacDiningCurrentPic < 1) { aftacDiningCurrentPic = 20 }
        $('#DOpic').attr('src', '_Photos/Dining/DO' + aftacDiningCurrentPic + '.jpg').attr('alt','DO' + aftacDiningCurrentPic + '.jpg')
    });

    $('#doButSS').click(function () {
        if ($(this).attr('value') == ' Start Slide Show ') {
            ($(this).attr('value', ' Stop Slide Show '))
            $('#doButPrev').removeClass('myBut').addClass('myGrayBut');
            $('#doButNext').removeClass('myBut').addClass('myGrayBut');
            aftacDiningSlideShowInt = setInterval(function () { aftacDOSlideShow() }, 4000);
        }
        else {
            $('#doButPrev').removeClass('myGrayBut').addClass('myBut');
            $('#doButNext').removeClass('myGrayBut').addClass('myBut');
            ($(this).attr('value', ' Start Slide Show '))
            clearInterval(aftacDiningSlideShowInt)
        }
    });
    //*************************************************************************************

    //*************************************************************************************
    //Hot Topics

    $('#btnRules').click(function () {
        if ($('#contestSec').hasClass('block')) {
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

    $('#diningH2').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#diningOut').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#wccElection').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wccElectionResults').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#last70years').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#last70yearArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0); 
    });

    $('#olMemories').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#olMemoriesArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#election').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#electionArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#wallhonor').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wallhonorArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
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
        scrollTo(0, 0);
    });

    $('#cobreakfast').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#cobreakfastArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
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

    $('#liPoMos').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divPomos').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divPomos').removeClass('noDisplay').addClass('block');
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divPomos').removeClass('block').addClass('noDisplay');
            };
        };
        subclicked = false;
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
            scrollTo(0, 0);
        }
        else {
            $('#sectPomoCurrent').removeClass('block').addClass('noDisplay');
            $('#sectPomoArchived').removeClass('noDisplay').addClass('block');
            scrollTo(0, 0);
        };
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
            scrollTo(0, 0);
        }
        else {
            $('#sectPomoArchived').removeClass('block').addClass('noDisplay');
            $('#sectPomoCurrent').removeClass('noDisplay').addClass('block');
            scrollTo(0, 0);
        };
    });

    $('#liSageShop').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#sageShopArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#liSpecialLinks').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#specialLinksArt').removeClass('noDisplay').addClass('block');
        scrollTo(0, 0);
    });

    $('#liVideos').click(function () {
        if (!subclicked) {
            $('.liMainMenu').css('color', 'yellow');
            $('#audioTaps')[0].pause();
            $(this).css('color', 'lightgreen')
            if ($('#divVideos').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divVideos').removeClass('noDisplay').addClass('block');
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').removeClass('block').addClass('noDisplay');
                $('#divVideos').removeClass('block').addClass('noDisplay');
            };
        };
        subclicked = false;
    });

    $('#vidWeather').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("vidNuclear");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').removeClass('block').addClass('noDisplay');
        $('#weatherVideo').removeClass('noDisplay').addClass('block');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#weatherArt').removeClass('noDisplay').addClass('block');
        $('#vidNuclear').trigger('play');
        scrollTo(0, 0);
    });

    $('#vid_2015Reunion').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("2015Reunion");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').removeClass('block').addClass('noDisplay');
        $('#airShowVideo').removeClass('noDisplay').addClass('block');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#2015ReunionArt').removeClass('noDisplay').addClass('block');
        $('#2015Reunion').trigger('play');
        //scrollTo(0, 0);
    });

    $('#vid_2017AirShow').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("2017vidAirShow");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').removeClass('block').addClass('noDisplay');
        $('#airShowVideo').removeClass('noDisplay').addClass('block');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#2017AirShowArt').removeClass('noDisplay').addClass('block');
        $('#2017vidAirShow').trigger('play');
    });

    $('#vid_2018AirShow').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("2018vidAirShow");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').removeClass('block').addClass('noDisplay');
        $('#airShowVideo').removeClass('noDisplay').addClass('block');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#2018AirShowArt').removeClass('noDisplay').addClass('block');
        $('#2018vidAirShow').trigger('play');
    });

    $('#vidDedication').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("vidDed");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').removeClass('block').addClass('noDisplay');
        $('#dedicationVideo').removeClass('noDisplay').addClass('block');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#dedicationArt').removeClass('noDisplay').addClass('block');
        $('#vidDed').trigger('play');
        scrollTo(0, 0);
    });

    $('#vidSeminar').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("vidSem");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').removeClass('block').addClass('noDisplay');
        $('#SeminarVideo').removeClass('noDisplay').addClass('block');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#SeminarArt').removeClass('noDisplay').addClass('block');
        $('#vidSem').trigger('play');
        scrollTo(0, 0);
    });

    $('#vidStonehenge').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("vidHonor");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').removeClass('block').addClass('noDisplay');
        $('#stonehengeVideo').removeClass('noDisplay').addClass('block');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#stonehengeArt').removeClass('noDisplay').addClass('block');
        $('#vidstonehenge').trigger('play');
    });

    $('#vidWall').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("vidHonor");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').removeClass('block').addClass('noDisplay');
        $('#honorVideo').removeClass('noDisplay').addClass('block');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#honorVidArt').removeClass('noDisplay').addClass('block');
        $('#vidHonor').trigger('play');
    });

    $('#vidUpgrade').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("vid_Under");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').removeClass('block').addClass('noDisplay');
        $('#underVideo').removeClass('noDisplay').addClass('block');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#underArt').removeClass('noDisplay').addClass('block');
        $('#vid_Under').trigger('play');
        scrollTo(0, 0);
    });

    $('#liWall').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#wallArt').removeClass('noDisplay').addClass('block');
    });

    $('#liHonor').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#honorArt').removeClass('noDisplay').addClass('block');
    });

    //**********************************************************************

    //Air Show Page
    //**********************************************************************
    //document.getElementById('vidAirShow').addEventListener('ended', myHandler, false);

    //function myHandler(e) {
    //    $('#vidDiv').removeClass('block').addClass('noDisplay')
    //    $('#airShowVideo').removeClass('block').addClass('noDisplay');
    //    $('.myArts').removeClass('block').addClass('noDisplay');
    //    $('#defaultArt').removeClass('noDisplay').addClass('block');
    //};

    //$('#airshow').click(function () {
    //    $("video").each(function () { this.pause() });
    //    vid = document.getElementById("vidAirShow");
    //    $('.airShowVideo').removeClass('block').addClass('noDisplay');
    //    $('#vidAirShow').removeClass('noDisplay').addClass('block');

    //    try { vid.currentTime = 0 }
    //    catch (err) { }

    //    $('#vidAirShow').trigger('play');
    //});

    $('#historyAlumniArt a').mouseover(function () {
        $(this).css('color','red')
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
    var image

    $('.List20Year li').click(function () {
        $('.List20Year li').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        image = '_Photos/20YearWall/' + $(this).attr('id') + '.jpg';
        $('#wallImg').attr('src', image);
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

        image = '_Photos/Wall/' + $(this).attr('id') + '.jpg';

        switch ($(this).attr('id')) {
            case 'gilbertSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#gilbert').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'kemnaSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#kemna').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'snyderSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#snyder').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'calendaSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#calenda').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'ryanSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#ryan').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'gibbonsSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#gibbons').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'melchiorSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#melchior').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'klugSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#klug').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'smithSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#smith').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'jacksonSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#jackson').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'wileySel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#wiley').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'schmiedSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                $('#schmied').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'carsonSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                $('#carson').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'blackSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                $('#black').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'goldianSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                $('#goldian').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            case 'payneSel':
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                $('#payne').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');
                break;
            default:
                $('.alumArt').removeClass('block').addClass('noDisplay');
                $('#notIncluded').removeClass('noDisplay').addClass('block');
                $('#aoyPicture').removeClass('noDisplay').addClass('block');

        }
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

    $('#btnTaps').click(function () {
        if ($(this).attr('value') == ' Stop Taps ') {
            $(this).attr('value', ' Play Taps ')
            $('#audioTaps').trigger('pause');
            $('#tapsControls').removeClass('block').addClass('noDisplay')
        }
        else {
            $(this).attr('value', ' Stop Taps ')
            $('#audioTaps').trigger('play');
            $('#tapsControls').removeClass('noDisplay').addClass('block')
        };
    });

    $('#btnTapsDown').click(function () {
        var volume = $('#audioTaps').prop('volume');
        volume = volume - 0.1;
        if (volume < 0.1) {
            volume = 0.1;
        }
        $('#spanVolume').html(volume.toFixed(1));
        $("#audioTaps").prop('volume', volume);
    });

    $('#btnTapsUp').click(function () {
        var volume = $('#audioTaps').prop('volume');
        volume = volume + 0.1;
        if(volume > 1){
            volume = 1;
        }
        $('#spanVolume').html(volume.toFixed(1));
        $("#audioTaps").prop('volume', volume);
    });

    $('.obitH1').click(function () {
        myText = $(this).attr('id');

        switch (myText) {
            case 'LubinH2':
                if ($('#LubinPara').hasClass('block')) {
                    $('#LubinPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#LubinPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#LubinPara").offset().top
                    }, 500);
                }
                break;
            case 'PriceH2':
                if ($('#PricePara').hasClass('block')) {
                    $('#PricePara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#PricePara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#PricePara").offset().top
                    }, 500);
                }
                break;
            case 'McCuneH2':
                if ($('#McCunePara').hasClass('block')) {
                    $('#McCunePara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#McCunePara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#McCunePara").offset().top
                    }, 500);
                }
                break;
            case 'FaulconerH2':
                if ($('#FaulconerPara').hasClass('block')) {
                    $('#FaulconerPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#FaulconerPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#FaulconerPara").offset().top
                    }, 500);
                }
                break;
            case 'BradfordH2':
                if ($('#BradfordPara').hasClass('block')) {
                    $('#BradfordPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#BradfordPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#BradfordPara").offset().top
                    }, 500);
                }
                break;
            case 'AndersonH2':
                if ($('#AndersonPara').hasClass('block')) {
                    $('#AndersonPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#AndersonPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#AndersonPara").offset().top
                    }, 500);
                }
                break;
            case 'HummelH2':
                if ($('#HummelPara').hasClass('block')) {
                    $('#HummelPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#HummelPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#HummelPara").offset().top
                    }, 500);
                }
                break;
            case 'RidensH2':
                if ($('#RidensPara').hasClass('block')) {
                    $('#RidensPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#RidensPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#RidensPara").offset().top
                    }, 500);
                }
                break;
            case 'LeathersH2':
                if ($('#LeathersPara').hasClass('block')) {
                    $('#LeathersPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#LeathersPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#LeathersPara").offset().top
                    }, 500);
                }
                break;
            case 'BennettH2':
                if ($('#BennettPara').hasClass('block')) {
                    $('#BennettPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#BennettPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#BennettPara").offset().top
                    }, 500);
                }
                break;
            case 'CrouseH2':
                if ($('#CrousePara').hasClass('block')) {
                    $('#CrousePara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#CrousePara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#CrousePara").offset().top
                    }, 500);
                }
                break;
            case 'WilladsenH2':
                if ($('#WilladsenPara').hasClass('block')) {
                    $('#WilladsenPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#WilladsenPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#WilladsenPara").offset().top
                    }, 500);
                }
                break;
            case 'GriffinH2':
                if ($('#GriffinPara').hasClass('block')) {
                    $('#GriffinPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#GriffinPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#GriffinPara").offset().top
                    }, 500);
                }
                break;
            case 'BaumanH2':
                if ($('#BaumanPara').hasClass('block')) {
                    $('#BaumanPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#BaumanPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#BaumanPara").offset().top
                    }, 500);
                }
                break;
            case 'BiddleH2':
                if ($('#BiddlePara').hasClass('block')) {
                    $('#BiddlePara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#BiddlePara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#BiddlePara").offset().top
                    }, 500);
                }
                break;
            case 'ShulstadH2':
                if ($('#ShulstadPara').hasClass('block')) {
                    $('#ShulstadPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#ShulstadPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#ShulstadPara").offset().top
                    }, 500);
                }
                break;
            case 'PetersH2':
                if ($('#PetersPara').hasClass('block')) {
                    $('#PetersPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#PetersPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#PetersPara").offset().top
                    }, 500);
                }
                break;
            case 'LuedkeH2':
                if ($('#LuedkePara').hasClass('block')) {
                    $('#LuedkePara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#LuedkePara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#LuedkePara").offset().top
                    }, 500);
                }
                break;
            case 'PoulinH2':
                if ($('#PoulinPara').hasClass('block')) {
                    $('#PoulinPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#PoulinPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#PoulinPara").offset().top
                    }, 500);
                }
                break;
            case 'DickinsonH2':
                if ($('#DickinsonPara').hasClass('block')) {
                    $('#DickinsonPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#DickinsonPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#DickinsonPara").offset().top
                    }, 500);
                }
                break;
            case 'BakerH2':
                if ($('#BakerPara').hasClass('block')) {
                    $('#BakerPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#BakerPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#BakerPara").offset().top
                    }, 500);
                }
                break;
            case 'JBrownH2':
                if ($('#JBrownPara').hasClass('block')) {
                    $('#JBrownPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#JBrownPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#JBrownPara").offset().top
                    }, 500);
                }
                break;
            case 'LeeH2':
                if ($('#LeePara').hasClass('block')) {
                    $('#LeePara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#LeePara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#LeePara").offset().top
                    }, 500);
                }
                break;
            case 'BrownH2':
                if ($('#BrownPara').hasClass('block')) {
                    $('#BrownPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#BrownPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#BrownPara").offset().top
                    }, 500);
                }
                break;
            case 'SmithH2':
                if ($('#SmithPara').hasClass('block')) {
                    $('#SmithPara').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.obitPara').removeClass('block').addClass('noDisplay');
                    $('#SmithPara').addClass('block').removeClass('noDisplay');
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#SmithPara").offset().top
                    }, 500);
                }
                break;
        }

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
        if ($(this).attr('value') === ' See Reply from Michael Harkins ')
        {
            $(this).attr('value', ' Return to Article about Harkins Lab ');
            $('#butHark2').attr('value', ' Return to Article about Harkins Lab ');
            $('#harkArt').removeClass('block').addClass('noDisplay');
            $('#harkResponse').removeClass('noDisplay').addClass('block');
        }
        else
        {
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
            $('#grassSlides').addClass('block').removeClass('noDisplay')
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#hockeySlides').addClass('noDisplay').removeClass('block')
        }
    });

    $('#btnhockeyShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#hockeySlides').addClass('block').removeClass('noDisplay')
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#hockeySlides').addClass('noDisplay').removeClass('block')
        }
    });

    $('#btncommandShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#commandSlides').addClass('block').removeClass('noDisplay')
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#commandSlides').addClass('noDisplay').removeClass('block')
        }
    });

    $('#btnwiseShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#wiseSlides').addClass('block').removeClass('noDisplay')
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#wiseSlides').addClass('noDisplay').removeClass('block')
        }
    });

    $('#btnsecAFShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#secAfSlides').addClass('block').removeClass('noDisplay')
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#secAfSlides').addClass('noDisplay').removeClass('block')
        }
    });

    $('#btnholmesShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#holmesSlides').addClass('block').removeClass('noDisplay')
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#holmesSlides').addClass('noDisplay').removeClass('block')
        }
    });

    $('#btnAntShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#antSlides').addClass('block').removeClass('noDisplay')
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#antSlides').addClass('noDisplay').removeClass('block')
        }
    });

    $('.news2KnowH1').click(function () {
        myText = $(this).html(); //Get the text inside of the news2KnowH1 that was clicked.
        switch (myText) {
            case "Nuclear air sampling aircraft on display at Patrick AFB - 3/14/2019":
                if ($('#ntkSampling').hasClass('block')) {
                    $('#ntkSampling').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkSampling').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkSampling").offset().top
                }, 500);
                break;
            case "Rare boat-to-boat transfer executed on the high seas - 3/13/2019":
                if ($('#ntkBoat2Boat').hasClass('block')) {
                    $('#ntkBoat2Boat').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkBoat2Boat').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkBoat2Boat").offset().top
                }, 500);
                break;
            case "Defense Department pushing ahead to merge commissary and exchange systems - 3/13/2019":
                if ($('#ntkExchange').hasClass('block')) {
                    $('#ntkExchange').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkExchange').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkExchange").offset().top
                }, 500);
                break;
            case "Congressional staffers learn about AFTAC’s heritage, mission - 3/13/2019":
                if ($('#ntkStaffers').hasClass('block')) {
                    $('#ntkStaffers').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkStaffers').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkStaffers").offset().top
                }, 500);
                break;
            case "STEM outreach key to uniting Airmen with students - 2/20/2019":
                if ($('#ntkOutreach').hasClass('block')) {
                    $('#ntkOutreach').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkOutreach').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkOutreach").offset().top
                }, 500);
                break;
            case "Another tournament, another trophy for AFTAC Hockey - 1/16/2019":
                if ($('#ntkHockey').hasClass('block')) {
                    $('#ntkHockey').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkHockey').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkHockey").offset().top
                }, 500);
                break;
            case "A1C with Ph.D. lands job at nuclear treaty monitoring center - 12/16/2018":
                if ($('#ntkA1C').hasClass('block')) {
                    $('#ntkA1C').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkA1C').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkA1C").offset().top
                }, 500);
                break;
            case "Our Cardboard Christmas Tree - 11/28/2018":
                if ($('#ntkCardboard').hasClass('block')) {
                    $('#ntkCardboard').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkCardboard').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkCardboard").offset().top
                }, 500);
                break;
            case "Hoop coaches, life mentors: AFTAC Airmen engage with community youth - 11/16/2018":
                if ($('#ntkHoop').hasClass('block')) {
                    $('#ntkHoop').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkHoop').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkHoop").offset().top
                }, 500);
                break;
            case "Leadership in a Selfie Culture - 11/6/2018":
                if ($('#ntkSelfie').hasClass('block')) {
                    $('#ntkSelfie').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkSelfie').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkSelfie").offset().top
                }, 500);
                break;
            case "AFTAC molecular biologist represents Air Force at SWE18 conference - 11/6/2018":
                if ($('#ntkWE18').hasClass('block')) {
                    $('#ntkWE18').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkWE18').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkWE18").offset().top
                }, 500);
                break;
            case "Air Force Chief Scientist pays visit to treaty monitoring center - 10/22/2018":
                if ($('#ntkChief').hasClass('block')) {
                    $('#ntkChief').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkChief').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkChief").offset().top
                }, 500);
                break;
            case "Downrange ‘MacGyvers’ creatively get the job done - 10/3/2018":
                if ($('#ntkMacgyver').hasClass('block')) {
                    $('#ntkMacgyver').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkMacgyver').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkMacgyver").offset().top
                }, 500);
                break;
            case "Musical Tesla Coil, 3-D printer draws crowd at Science Bowl - 10/2/2018":
                if ($('#ntkTestla').hasClass('block')) {
                    $('#ntkTestla').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkTestla').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkTestla").offset().top
                }, 500);
                break;
            case "Creative prototype leads to fielded implementation - 9/20/2018":
                if ($('#ntkProtoType').hasClass('block')) {
                    $('#ntkProtoType').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkProtoType').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkProtoType").offset().top
                }, 500);
                break;
            case "Chemist at AFTAC earns award from national Hispanic organization - 9/19/2018":
                if ($('#ntkChemist').hasClass('block')) {
                    $('#ntkChemist').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkChemist').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkChemist").offset().top
                }, 500);
                break;
            case "eFAILution Wall:  Failure + Learning = Successful Evolution - 9/18/2018":
                if ($('#ntkFailure').hasClass('block')) {
                    $('#ntkFailure').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkFailure').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkFailure").offset().top
                }, 500);
                break;
            case "AFTAC Hockey takes trophy at charity match - 9/18/2018":
                if ($('#ntkHockeyWin').hasClass('block')) {
                    $('#ntkHockeyWin').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkHockeyWin').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkHockeyWin").offset().top
                }, 500);
                break;
            case "Center exercises capability to relocate treaty monitoring mission - 9/6/2018":
                if ($('#ntkRelocate').hasClass('block')) {
                    $('#ntkRelocate').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkRelocate').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkRelocate").offset().top
                }, 500);
                break;
            case "Breaking the STEM mold, one woman at a time - 8/24/2018":
                if ($('#ntkStemGirls').hasClass('block')) {
                    $('#ntkStemGirls').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkStemGirls').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkStemGirls").offset().top
                }, 500);
                break;
            case "Contractor with treaty monitoring center puts lifesaving skills to the test - 8/24/2018":
                if ($('#ntkSkills').hasClass('block')) {
                    $('#ntkSkills').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkSkills').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkSkills").offset().top
                }, 500);
                break;
            case "AFTAC upgrades phone system to enhance security - 8/23/2018":
                if ($('#ntkPhone').hasClass('block')) {
                    $('#ntkPhone').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkPhone').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkPhone").offset().top
                }, 500);
                break;
            case "Cop for a Day: AFTAC Airmen learn role of base Security Forces - 8/21/2018":
                if ($('#ntkSFS').hasClass('block')) {
                    $('#ntkSFS').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkSFS').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkSFS").offset().top
                }, 500);
                break;
            case "Not just a buzzword; AFTAC showcases innovation to ISR community - 7/9/2018":
                if ($('#ntkbuzz').hasClass('block')) {
                    $('#ntkbuzz').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkbuzz').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkbuzz").offset().top
                }, 500);
                break;
            case "Officials announce 2018 ACC STEM Award winners - 6/26/2018":
                if ($('#ntkstemaward').hasClass('block')) {
                    $('#ntkstemaward').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkstemaward').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkstemaward").offset().top
                }, 500);
                break;
            case "When the storms of life arise, how do you survive the onslaught? - 6/25/2018":
                if ($('#ntkstorms').hasClass('block')) {
                    $('#ntkstorms').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkstorms').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkstorms").offset().top
                }, 500);
                break;
            case "New commander inherits newly-structured Air Force organization - 6/20/2018":
                if ($('#ntkchange').hasClass('block')) {
                    $('#ntkchange').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkchange').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkchange").offset().top
                }, 500);
                break;
            case "24/7 treaty monitoring center ready for contingency ops - 6/15/2018":
                if ($('#ntkmonitoring').hasClass('block')) {
                    $('#ntkmonitoring').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkmonitoring').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkmonitoring").offset().top
                }, 500);
                break;
            case "Florida Airmen Skype with Georgia middle school students - 5/12/2018":
                if ($('#ntkskype').hasClass('block')) {
                    $('#ntkskype').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkskype').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkskype").offset().top
                }, 500);
                break;
            case "Reorganization brings structure, leadership to treaty monitoring center - 5/9/2018":
                if ($('#ntkcomm').hasClass('block')) {
                    $('#ntkcomm').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkcomm').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkcomm").offset().top
                }, 500);
                break;
            case "Reserve Citizen Airman sets sail as first reserve mission commander - 5/1/2018":
                if ($('#ntkcitizen').hasClass('block')) {
                    $('#ntkcitizen').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkcitizen').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkcitizen").offset().top
                }, 500);
                break;
            case "DoD’s sole nuclear surveillance unit undergoes organizational change - 4/25/2018":
                if ($('#ntknuclear').hasClass('block')) {
                    $('#ntknuclear').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntknuclear').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntknuclear").offset().top
                }, 500);
                break;
            case "With help from Airmen, Boy Scouts earn prestigious merit badge - 4/15/2018":
                if ($('#ntkstem').hasClass('block')) {
                    $('#ntkstem').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkstem').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkstem").offset().top
                }, 500);
                break;
            case "Treaty Monitoring Center inducts three to its Wall of Honor - 4/4/2018":
                if ($('#ntktreaty').hasClass('block')) {
                    $('#ntktreaty').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntktreaty').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntktreaty").offset().top
                }, 500);
                break;
            case "Grass does not grow under this octogenarian’s feet - 3/31/2018":
                if ($('#ntkgrass').hasClass('block')) {
                    $('#ntkgrass').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkgrass').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkgrass").offset().top
                }, 500);
                break;
            case "AFTAC Hockey Team receives special Congressional recognition - 3/31/2018":
                if ($('#ntkhockey').hasClass('block')) {
                    $('#ntkhockey').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkhockey').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkhockey").offset().top
                }, 500);
                break;
            case "25th AF commander immerses into treaty monitoring mission - 3/1/2018":
                if ($('#ntkcommand').hasClass('block')) {
                    $('#ntkcommand').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkcommand').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkcommand").offset().top
                }, 500);
                break;
            case "Industry Day brings high-tech companies to AFTAC - 2/28/2018":
                if ($('#ntkindust').hasClass('block')) {
                    $('#ntkindust').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkindust').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkindust").offset().top
                }, 500);
                break;
            case "AFTAC hosts annual WiSE Symposium - 2/15/2018":
                if ($('#ntkwise').hasClass('block')) {
                    $('#ntkwise').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkwise').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkwise").offset().top
                }, 500);
                break;
            case "SecAF briefed on AFTAC role in nuclear explosions - 2/15/2018":
                if ($('#ntksecAf').hasClass('block')) {
                    $('#ntksecAf').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntksecAf').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntksecAf").offset().top
                }, 500);
                break;
            case "Holmes, Batten pay first visit to nuclear treaty monitoring center - 1/26/2018":
                if ($('#ntkholmes').hasClass('block')) {
                    $('#ntkholmes').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkholmes').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkholmes").offset().top
                }, 500);
                break;
            case "Airmen travel to Earth’s southernmost point for annual maintenance 1/16/2018":
                if ($('#ntkantarctic').hasClass('block')) {
                    $('#ntkantarctic').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkantarctic').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkantarctic").offset().top
                }, 500);
                break;
            case "AFTAC civilian, Army Reservist selected for promotion to brigadier general 12/5/2017":
                if ($('#ntkgeneral').hasClass('block')) {
                    $('#ntkgeneral').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkgeneral').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkgeneral").offset().top
                }, 500);
                break;
            case "AFTAC civilian returns to duty after Hurricane Maria relief efforts 11/30/2017":
                if ($('#ntkmaria').hasClass('block')) {
                    $('#ntkmaria').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkmaria').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkmaria").offset().top
                }, 500);
                break;
            case "AFTAC names lab after ‘giant’ of nuclear forensics 11/24/2017":
                if ($('#ntkharkins').hasClass('block')) {
                    $('#ntkharkins').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkharkins').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkharkins").offset().top
                }, 500);
                break;
            case "Ions and betas and treaties, oh my! 11/8/2017":
                if ($('#ntkions').hasClass('block')) {
                    $('#ntkions').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkions').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkions").offset().top
                }, 500);
                break;
            case "AFTAC Airman honored with Valor Award for life-saving actions 9/27/2017":
                //alert("hello");
                if ($('#ntkValor').hasClass('block')) {
                    $('#ntkValor').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkValor').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkValor").offset().top
                }, 500);
                break;
            case "Nuclear Treaty Monitoring unit cleans up after Hurricane Irma 9/16/2017":
                if ($('#ntkHurricane').hasClass('block')) {
                    $('#ntkHurricane').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkHurricane').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkHurricane").offset().top
                }, 500);
                break;

            case "Air Force team monitors North Korean nuclear threat 9/16/2017":
                if ($('#ntkNok').hasClass('block')) {
                    $('#ntkNok').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkNok').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkNok").offset().top
                }, 500);
                break;

            case "Sixth generation Sailor, first generation Airman 8/29/2017":
                if ($('#ntkSailor').hasClass('block')) {
                    $('#ntkSailor').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkSailor').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkSailor").offset().top
                }, 500);
                break;

            case "Tech Ops Squadron is heartbeat of nuke treaty monitoring from air, sea, space 5/23/2017":
                if ($('#ntkTops').hasClass('block')) {
                    $('#ntkTops').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkTops').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkTops").offset().top
                }, 500);
                break;

            case "Cyberspace domain critical to Nuclear Treaty Monitoring 8/29/2017":
                if ($('#ntkCyber').hasClass('block')) {
                    $('#ntkCyber').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkCyber').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkCyber").offset().top
                }, 500);
                break;

            case "Tech Ops Squadron is heartbeat of nuke treaty monitoring from air, sea, space 5/23/2017":
                if ($('#ntkTops').hasClass('block')) {
                    $('#ntkTops').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkTops').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkTops").offset().top
                }, 500);
                break;
               
            case "AFTACers thrill young STEM minds, get surprise visit from HAF 3-star 8/23/2017":
                if ($('#ntkStem').hasClass('block')) {
                    $('#ntkStem').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkStem').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkStem").offset().top
                }, 500);
                break;

            case "Tech Ops Squadron is heartbeat of nuke treaty monitoring from air, sea, space 5/23/2017":
                if ($('#ntkTops').hasClass('block')) {
                    $('#ntkTops').addClass('noDisplay').removeClass('block');
                }
                else {
                    $('.n2KPara').removeClass('block').addClass('noDisplay');
                    $('#ntkTops').addClass('block').removeClass('noDisplay');
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkTops").offset().top
                }, 500);
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

    $('#augustPomo').click(function () {
        window.open('http://aftacaa.us/_Pomos/PoMo2018_08.pdf', '');
    });

    $('#aprilPomo').click(function () {
        window.open('http://aftacaa.us/_Pomos/PoMo2018_04.pdf', '');
    });

    $('#decemberPomo').click(function () {
        window.open('http://aftacaa.us/_Pomos/PoMo2018_12.pdf', '');
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
            $('.sbfigs').removeClass('block').addClass('noDisplay');
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
            $('.sb2figs').removeClass('block').addClass('noDisplay');
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
            $('#allAwardPhotos').removeClass('noDisplay').addClass('Block');
        }
        else {
            $(this).html('Click to see More Pictures') 
            $('#allAwardPhotos').removeClass('Block').addClass('noDisplay');
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
    var ChangeMess5 = "Members of the Air Force Technical Applications Center, Patrick AFB, Fla., render a first salute to their new commander, Col. Chad J. Hartman, during the center''s Change of Command ceremony June 20, 2018.  (U.S. Air Force photo by Phillip C. Sunkel IV)"
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
            if (commandCurrentPic < 1) {commandCurrentPic = 6 };

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

            $('#sbPic').attr('src', '_Photos/SnowBall/sb' + sbCurrentPic + '.JPG').attr('alt','sb' + sbCurrentPic + '.JPG');
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
            $(this).attr('value',' Start Slide Show ');
            $('#btnsbPrevious').removeClass('myGrayBut').addClass('myBut');
            $('#btnsbNext').removeClass('myGrayBut').addClass('myBut');
            clearInterval(SBSlideShowInt);
        };
    });

    var sb2CurrentPic = 1;

    $('#btnsb2Previous').click(function () {
        if ($(this).hasClass('myBut')) {
            sb2CurrentPic = sb2CurrentPic - 1;
            if (sb2CurrentPic < 1) { sb2CurrentPic = 23};

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
            clearInterval(SBSlideShowInt);
        };
    });

    function aftacDOSlideShow() {
        aftacDiningCurrentPic = aftacDiningCurrentPic + 1;

        if (aftacDiningCurrentPic > 20) {
            aftacDiningCurrentPic = 1;
        }
        $('#DOpic').attr('src', '_Photos/Dining/DO' + aftacDiningCurrentPic + '.jpg').attr('alt', 'DO' + aftacDiningCurrentPic + '.jpg')
    };

    function aftacHisSlideShow()
    {
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

    //**********************************************************************

});

//End of $(document) Section
//**********************************************************************
//**********************************************************************
//**********************************************************************

function resetpage() {
    $('#audioTaps')[0].pause();

    var $audio = $("#audioTaps");
    $audio.currentTime = 0;

    $('#winterSocialArt').removeClass('block').addClass('noDisplay');

    $("video").each(function () { this.pause() });
    $('#txtEmail').val('');
    $('#pnlPomoError').html('');
    $('#pnlPomoError').removeClass('block').addClass('noDisplay');
    $('.sbfigs').removeClass('block').addClass('noDisplay');
};

function OpenMain() {
    resetpage()
    $('#flashArt').removeClass('block').addClass('noDisplay');
    $('#mainMenu').removeClass('noDisplay').addClass('block floatLeft');
    $('.myHeader').removeClass('noDisplay myHeaderFirst').addClass('myHeader');
    $('.myFooter').removeClass('noDisplay').addClass('block');
    $('.liMainMenu').css('color', 'yellow');
    $('#liMainPage').css('color', 'lightgreen');
    $('.underMenu').removeClass('block').addClass('noDisplay');
    $('.underSel').css('color', 'yellow');
    $('.myArts').removeClass('block').addClass('noDisplay');
    $('#defaultArt').removeClass('noDisplay').addClass('block');
    scrollTo(0, 0);
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

function ping() {
    $.ajax({
        url: 'http://aftacaa.us',
        success: function (result) {
            alert('reply');
        },
        error: function (result) {
            alert('timeout/error');
        }
    });
}

//function ping() {
//    $.ajax({
//        url: 'http://aftacaa.us',
//        success: function (result) {
//            alert('reply');
//        },
//        error: function (result) {
//            alert('timeout/error');
//        }
//    });
//}
//};

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

function ShowAdminMenu() {
    $('.myArts').removeClass('block').addClass('noDisplay');
    $('#adminMenu').removeClass('noDisplay').addClass('block');
};

function OnismemberbyemailSuccess(data, status) {

    if (data.d) {
        $('#pomo1').removeClass('block').addClass('noDisplay')
        $('#pomo2').removeClass('noDisplay').addClass('block')
    }
    else {
        $('#pnlPomoError').html('<p class="redText bold italic" style="font-size:1em;">Your Email indicates you are not a Paidup Member of AFTAC Alumni Assoc.</p>;');
        $('#pnlPomoError').removeClass('noDisplay').addClass('block');
    };

};

function OnismemberbyemailError(request, status, error) {
    $("#content").html('Boy I screwed up.');
};

function scrollToElement(ele) {
    $(window).scrollTop(ele.offset().top).scrollLeft(ele.offset().left);
}

document.getElementsByAttribute = Element.prototype.getElementsByAttribute = function (attr)
{
    var tagArray = document.getElementsByTagName("*");
    var tagList = [];
    for (var i = 0; i < tagArray.length; i++)
    {
        if (tagArray[i].getAttribute(attr)) tagList.push(tagArray[i]);
    }
    return tagList;
}

window.onload = function ()
{
    setEventListenersForArticles(document.getElementsByAttribute("data-toggle-art"));
    setEventListenersForLinks(document.getElementsByAttribute("data-toggle-link"));
}

function setEventListenersForArticles(tagList)
{
    tagList.forEach(function(tag) {
        var attrVal = tag.getAttribute("data-toggle-art");
        tag.addEventListener("click",function ()
        {
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
