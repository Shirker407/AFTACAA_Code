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
    var subclicked = false;
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
    var aftacHisSlideShowInt;
    var aftacDiningSlideShowInt;
    var coloradoSlideShowInt;
    var $myArts = $('myArts');

    clearInterval(SlideShowInt)
    clearInterval(SBSlideShowInt)
    clearInterval(aftacHisSlideShowInt)
    clearInterval(coloradoSlideShowInt)

    pingInt = setInterval(function () { Ping() }, 4000);
    picInt = setInterval(function () { ChangePic() }, 5000);

    //$('#passPic').hide();
    //$('.n2KPara').hide();
    //$('#wallRulesDiv').hide();
    //$('#btnHideWallRules').hide();

    //$('.liMainMenu').css('color', 'yellow');

    //$('.butA').mouseover(function () {
    //    $(this).css('color', 'lightblue');
    //});

    //if (pomosactive === true) {
    //    $('.myArts').hide();
    //    $('#pomoArt').show();
    //    pomosactive = false;
    //}
    //window.close
    //**********************************************************************
    //Default Page

    //**********************************************************************
    //Main Page

    $('.chiefLong').on("click", (function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#longArt').removeClass('noDisplay').addClass('block');
    }));

    $('#calendar1').click(function () {
        window.open('_PDFs/Calendar.pdf', '')
    });

    $('#universal').click(function () {
        window.open('https://www.military.com/discounts/universal-orlando-has-new-2019-military-discount.html?utm_medium=Social&utm_source=Facebook&fbclid=IwAR2P8YbBqcfEPXo7Ox_je1F90QtpWbdIrCQmTwczaoTIzO8rgGXJuSLuI2M#Echobox=1565196335', '');
    })

    $('#golf2019').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#golfArt').removeClass('noDisplay').addClass('block')
    })

    $('#vaMedical').click(function () {
        window.open('https://www.va.gov/health-care/get-medical-records/', '');
    });

    $('#job9l').click(function () {
        window.open('https://jobs.localjobnetwork.com/j/38444081', '');
    });

    $('#minutes').click(function () {
        window.open('_Minutes/7-8-2019_Minutes.pdf', '')
    });

    $('#fSpot, #fun').click(function () {
        window.open("https://www.youtube.com/watch?v=nORRgU8sGdE", "")
    });

    $('#presAward').click(function () {
        $('.myArts').hide();
        $('#newsToKnowArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('.dunnAOY').Click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#alumniArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#lblAOY").offset().top
        }, 500);
    });

    $('#boardMeetingLst').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#meetingArt').removeClass('noDisplay').addClass('block')
    })

    $('#btnWallRules').click(function () {
        if ($(this).attr('value') == ' Show Rules and Regulations ') {
            $('#wallRulesDiv').show();
            $('#btnHideWallRules').show();
            $(this).attr('value', ' Hide Rules and Regulations ');
        }
        else {
            $('#wallRulesDiv').hide();
            $('#btnHideWallRules').hide();
            $(this).attr('value', ' Show Rules and Regulations ')
        }
    });

    $('#btnHideWallRules').click(function () {
        $('#wallRulesDiv').hide();
        $(this).hide();
        $('#btnWallRules').attr('value', ' Show Rules and Regulations ')
    });

    $('#btnwohReturn').click(function () {
        $('#wohMainImg').removeClass('noDisplay').addClass('block');
        $('#wohDiv').removeClass('block').addClass('noDisplay');
        $('#wohName').html('');
        $('#wohImg').attr('src', 'xxx');
        $('#wohVerbage').html('');
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
                verb = '<p>Colonel Frank Hall received his commission in 1956 and then attended Navigator Training at Ellington Field, Houston, Texas. After serving as an Electronic Countermeasures Officer aboard B-52s with the 6th Bomb Wing at Walker AFB, Roswell, New Mexico, Lieutenant Hall separated from the military and returned to civilian life.<br/><br/> However, as a result of the Cuban Missile Crisis of 1962, Frank was recalled to active duty and sent to Ground Electronics School at Keesler AFB, Mississippi. Upon graduation he was assigned to the 669th Aircraft Control and Warning Squadron, Vandenberg AFB, California. His follow-on assignments included tours of duty with the 2nd Surveillance Squadron at Shemya, Alaska, and as the MAJCOM Chief of the Space and Missile Warning Maintenance Branch, Air Defense Command, Ent AFB, Colorado Springs.<br/><br/>In 1972, Major Hall served as a NATO electronic systems staff officer with the 6th Allied Tactical Air Force in Izmir, Turkey. In 1974, he returned to CONUS where he assumed command of the 772nd Aircraft Control and Warning (AC&W) Squadron in Gibbsboro, New Jersey, and immediately thereafter as commander of the 762nd AC&W squadron in North Truro, Massachusetts. Lieutenant Colonel Hall first came to AFTAC in June 1978, where he was assigned as Chief of the Acquisition and Engineering Branch (AFTAC/LGL). In that role, he oversaw the fielding of the new Electromagnetic Pulse (EMP) system known as the &quot;J&quot; technique. In 1980, he was promoted to Colonel and became AFTAC&apos;s Director of Logistics (LG). The AFTAC Commander, Colonel Robert Meisenheimer, also appointed Colonel Hall to serve as the AFTAC Inspector General. As director of Logistics, he directed more than ten system acquisition programs involving the development, test, production, and installation of sophisticated electronic, seismic, hydroacoustic, and particulate air sampling systems.<br/><br/>In June 1982, Colonel Hall assumed command of the 1156th Technical Operations Squadron at Wheeler AFB, Hawaii, where he was  responsible for the operation and sustainment of all AFTAC detachments and equipment locations in the Pacific Area of Operations.<br/><br/>In September 1986, now back in Florida, the new AFTAC commander, Colonel Billy Bingham, assigned Col Hall to the position of Director of Logistics. Hall led his directorate for two years. During that time, his directorate supported more than 50 alerts that involved the monitoring of nuclear tests originating in three geographically dispersed regions. In September 1988, Colonel Hall became Director of Plans and Resources and held that position until his retirement on February 28, 1989.<br/><br/>Colonel Hall&apos;s awards include the Legion of Merit with one oak leaf cluster; the Meritorious Service Medal with three oak leaf clusters; and the Joint Service Commendation Medal.<br/><br/>Today we recognize Colonel Frank Hall&apos;s leadership and significant contributions to the AFTAC mission by inducting him into our Wall of Honor.</p>'
                break
            case 'btnMacInnes':
                pre = 'Lt Colonel'
                first = 'Michael '
                last = 'MacInnes'
                pic = "_Photos/WOH/MacInnes.png"
                verb = '<p>Michael MacInnes received his commission in 1967 and graduated from the Air Force Institute of Technology with a Master of Science in Nuclear Engineering in 1969. He began his long term career with AFTAC at McClellan Central Laboratory where he was involved in the measurement of airborne and ground-based collections. During those years, MacInnes helped analyze debris samples from several dozen atmospheric tests. He was also responsible for training officers that ran the detachment laboratories where initial analyses were performed.<br/><br/>As a captain, MacInnes worked at Los Alamos National Laboratory (LANL) as a military research associate. Following that assignment, he moved to AFTAC headquarters at Patrick AFB where he became Chief of the Test Branch within the Nuclear Division (TNT). As Branch Chief, MacInnes was responsible for the Nuclear Debris Collection and Analysis (NDC&A) and the materials portion of the PONY EXPRESS program. Following his years at Patrick, he served as the Chief of the Nuclear Weapons Branch at the Defense Intelligence Agency.<br/><br/>After his retirement from the Air Force, MacInnes returned to Los Alamos National  Laboratory where he wrote documents for his former AFTAC division, TNT, that explained how to perform debris diagnostics. In the late 1990s, he was instrumental in standing up new capabilities to perform radiochemistry. As other nations continued to conduct nuclear tests, MacInnes and Dr. Don Barr, established an expert panel with AFTAC.<br/><br/>As the 1990s came to a close, AFTAC sought to re-build its airborne NDC&A capabilities that had largely vanished during the extensive reduction in force that occurred during the decade. When AFTAC took the new initiative programs up to national level authorities to request funding to rebuild the NDC&A capability, MacInnes attended those meetings to articulate the requirements.<br/><br/>At Los Alamos, MacInnes moved from the Chemistry Department into the weapons design areas where he worked closely with the nuclear weapons designers. He retired from LANL after 18 years working principally in the interpretation of data collected from radiochemical analysis of nuclear debris.<br/><br/>Since 1999, Michael MacInnes has continued to contribute to the AFTAC mission as the co-chair of the NDC&A Expert Panel. Today we recognize his long term of service to AFTAC with his induction into the Wall of Honor.</p>'
                break
            case 'btnRothe':
                pre = 'Dr.'
                first = 'George H. '
                last = 'Rothe'
                pic = "_Photos/WOH/Rothe.png"
                verb = '<p>George Rothe served as a geophysical research scientist for AFTAC for more than 26 years. As a former Assistant Professor at the University of Kansas, he championed the use of &quot;forensic geophysics&quot; as a key component of technical analysis. He was known for his ability to convey the complexities of technical analysis in simple, concrete terms.<br/><br/>In the 1980s and 1990s, George served as the chief of the Research Branch in the Treaty Monitoring Directorate. In that position, he established geophysics as a key element of inter-agency cooperation. He wrote the charter for the Geophysical Working Group (GWG) and served as the group&apos;s chair for the last 13 years of his tenure. In his role as Chairman, Dr. Rothe actively sought provocative ideas and innovative technologies for the GWG to review and critique. His goal was to recommend to the funding agencies those ideas that might advance the nation&apos;s scientific and technical analysis capabilities. Those ideas spanned the widest spectrum ofgeophysics to include: gravity gradiometry, electromagnetic phenomena, ground penetrating radar, ionospheric physics, and wave propagation in hydroacoustics, infrasound, and seismology.<br/><br/>During the 1980s, George served as a technical advisor to the U.S. delegation during the negotiations for the Strategic Arms Reduction Treaty (also known as START l). In 1990, he spearheaded AFTAC&apos;s implementation of the geophysical protocols for the Treaty on the Limitation of Underground Nuclear Weapon Tests (also known as the Threshold Test Ban Treaty or ITBT). For the TTBT, George drafted inspection plans for Soviet monitoring equipment used for verification.<br/><br/>In December 2011, in recognition for his contributions to the nation, Dr. George Rothe was awarded the Founder&apos;s Award.<br/><br/>When George passed away in October 2012, his family posted this request: &quot;To honor George&apos;s life&apos;s work as a geophysicist, please feel free to bring a rock or stone of your choice to the service.&quot;<br/><br/>Today we recognize Dr. Rothe&apos;s enormous contributions to the AFTAC mission by inducting him into our Wall of Honor.</p>'
                break
            case 'btnMcClelland':
                pre = 'CMSgt'
                first = 'Bill'
                last = 'McClelland'
                pic = "_Photos/WOH/McClelland.png"
                verb = '<p>William J. McClelland enlisted in the USAF in March of 1954, and attended the technical school at Keesler AFB, Biloxi, Mississippi, where he entered the Electronic Countermeasures career field. He performed ground maintenance on RB-47 and B-52 aircraft until 1964, when he retrained into Reporting Identifier 99125, the Special Electronics career field. After graduating as a 99125, he became a "Z" technique technician servicing Atmospheric Fluorescence Detection equipment and deployed to Detachment 372 on Ascension Island. After returning to the states, he was assigned to AFTAC&apos;s 1155th Technical Operations Squadron at McClellan AFB, California, where he supervised Z Systems Maintenance.</p><p>Between 1968 and 1971, McClelland served as the senior enlisted leader for Detachment 430, at Blenheim, New Zealand. In 1971 and 1972, he worked at AFTAC headquarters in Washington D.C. In 1972, as AFTAC moved to Patrick AFB, McClelland helped lead the relocation of the Geophysical Division as the Hydrosonics Branch Superintendent. In this role, he was responsible for analysis, evaluation and classification of data collected by the entire hydroacoustic network.</p><p>In 1977, as a Senior Master Sergeant, McClelland deployed for another short tour of duty to Detachment 452 at Wonju, Korea. As station superintendent, McClelland excelled at managing field system operations, and leading and training airmen. In 1978, AFTAC brought him back to Florida to work as the Chief of the Geophysical Data Terminals Branch. In that capacity, and now promoted to Chief Master Sergeant, he was responsible for the training, welfare and morale of over 80 specialists who operated the seismic, hydroacoustic and electromagnetic pulse central data terminals of the US Atomic Energy Detection System.</p><p>Chief Master Sergeant Bill McClelland retired in 1984, after 30 years of exemplary service. However, he continued supporting the AFTAC mission as a senior systems analyst from 1984 to 1997 with ENSCO working with data reproduction and storage. In the years since 1997, his subject matter expertise as a senior data analyst has contributed to AFTAC&apos;s document declassification efforts. Chief McClelland&apos;s commitment to the mission coupled with his "people skills" earned him a coveted reputation in helping other airmen with their career development and life skills. Among AFTAC alumni, Bill is still remembered as a role model who impacted the lives of countless AFTAC members and their families.</p><p>Over the years, Bill earned an Associate of Science degree in Electronic Systems Technology and a Bachelor of Science degree in Business Administration and Economics from Rollins College. Chief McClelland&apos;s awards include the Meritorious Service Medal with 1 oak leaf cluster.</p>'
                break
            case 'btnSpencer':
                pre = 'CMSgt'
                first = 'Sue'
                last = 'Spencer'
                pic = "_Photos/WOH/Spencer.png"
                verb = '<p>In 1981, after serving eight years as a pharmacy technician, Chief Master Sergeant Susan Spencer began her career with AFTAC as a laboratory specialist (99106) in the Applied Physics Laboratory. Initially, she worked as a polarized light microscopist in support of AFTAC&apos;s trace particle analysis missions. Spencer excelled as a microscopist and was promoted to being the supervisor of the microscopy team. Over the next decade, she continued to support the trace particle analysis programs as she assumed greater levels of responsibility.</p><p>From 1983 to 1986, Spencer was the NCOIC of the Gas Analysis Laboratory&apos;s Quality Assurance branch and the Automated Data Systems Coordinator. In 1986, she returned to the Applied Physics Laboratory as the NCOIC of the entire microscopy section. In 1988, Spencer became the NCOIC of Standards and Training for the entire laboratory. Here she was responsible for the training for approximately 150 personnel in the Applied Physics Laboratory, the Radiation Laboratory, and the Gas Laboratory. In addition, she oversaw the development and maintenance of hundreds of written laboratory procedures for McClellan Central Laboratory as well as the field laboratories at Detachments 407 and 460. In 1989, she moved back to the Gas Laboratory as the NCOIC of Gas Measurements and, later, the superintendent of Gas Operations.</p><p>In 1990, Sue Spencer was named one of the Air Force&apos;s 12 Outstanding Airmen of the Year.</p><p> In 1992, she served as the Superintendent of Detachment 46 at Falcon AFB, Colorado (now Schriever AFB), and in 1994, she embarked on an unaccompanied tour as the Station Superintendent, at the Belbasi Seismic Research Station in Ankara, Turkey. After her assignment in Turkey, she attended the Senior NCO Academy in residence. She graduated from a class of 312 students with top honors as the John Levitow Award Recipient for outstanding leadership and academic achievement.</p><p>SMSgt Spencer&apos;s next assignment was Detachment Chief of Detachment 319, at Ramstein Air Base, Germany. During this tour she was promoted to Chief Master Sergeant. In 1998, she was diverted from a Washington DC assignment to McClellan Air Force Base to support the closure of the Technical Operations Division.</p><p>During her 26 year career, Chief Spencer earned two Community College of the Air Force degrees, and a Bachelor of Science degree in Computer Science. She was awarded the Air Force Meritorious Service Medal with three oak leaf clusters, the Air Force Commendation Medal with three oak leaf clusters, and the Air Force Achievement Medal with one oak leaf cluster.</p>'
                break
            case 'btnWiley':
                pre = 'Lt Colonel'
                first = 'Bob'
                last = 'Wiley'
                pic = "_Photos/WOH/Wiley.png"
                verb = '<p>Mr. Robert "Bob" Wiley&apos;s career as a physicist and a recognized authority in the nuclear explosion detection community was built on an extensive background in satellite data collection and associated analysis using both real-time and post-event applications software. </p><p>Wiley began his career with AFTAC in 1971. During that decade, he managed the VELA satellite program and worked with Space Division and Space Command in developing the initial operating concepts for the sensors on board the Global Positioning System satellites that comprised the United States Nuclear Detonation Detection System or what is commonly referred to as USNDS. In that position, he maintained day-to-day operational control of two detachments located at the host satellite facilities. </p><p> In the 1980s, Lieutenant Colonel Wiley served as Chief of the Space Operations Division where he managed the 50-man satellite sensor data collection and analysis center that provided real-time 24-hour-per-day operations. The center supported five satellite programs which provided data from 15 vehicles and over 100 sensors to the USNDS in support of nuclear treaty monitoring. His outstanding work in developing "nuclear scaling laws" from actual nuclear tests remains a pinnacle of the current USNDS program in the analysis of satellite system data. Today, that data supports the AFTAC treaty monitoring mission. </p><p>In addition to his technical prowess, Wiley provided exemplary program management of multi-year, multi-million dollar technical, engineering, and acquisition support contracts for the United States Atomic Energy Detection System or USAEDS. He managed a variety of in-house and contractor research projects for the development of sensor systems that collected satellite data, and that provided data interpretation techniques to convert the data into useful information. Many of the techniques which he implemented are still used within the current USAEDS. </p><p>Since his retirement in 1985, Bob has taken an active role as a member of the AFTAC Alumni Association. From 2005 to 2006, he served as President of the Alumni Association. In 2007, Bob served as the Chairman for the AFTAC Worldwide Alumni Reunion, and in 2008, he received the AFTAC "Alumnus of the Year" award. Today, Bob continues to support AFTAC as a senior technical expert on the AFTAC Satellite Systems Review Panel.</p>'
                break
            case 'btnDavis':
                pre = 'CMSgt'
                first = 'James C.'
                last = 'Davis'
                pic = "_Photos/WOH/Davis.png"
                verb = '<p>Chief Master Sergeant James C. Davis began his career with the Air Force in August 1950. Working as a weather equipment operator, he served his initial enlistment with the 373rd Weather Reconnaissance Squadron (Very Long Range) at Kindley AFB Bermuda.<br />Shortly after being re-assigned to the 55th Weather Reconnaissance Squadron at McClellan AFB, Davis transferred to the 1009th Special Weapons Squadron to train as a Special Equipment Operator (or SEO). Because there were no formal training courses at that time, he immediately went to work learning on the job. Once he became proficient as an SEO, Davis was assigned to Team 407 at Yokota Air Base in Japan to serve as the NCOIC of the airborne sampling unit there. The 1009th then leveraged his experience by assigning him to the Long Range Detection (LRD) School at Lowry AFB, Denver, Colorado, to help develop and teach the curriculum of the airborne sampling technique. Following his instructor time at Lowry, Davis re-trained into seismic systems and returned to the 1009th&rsquo;s Western Field Office at McClellan AFB.<br />Over the next several years, Davis joined the experimental LRD teams that participated in US nuclear tests in Nevada, and supervised key installations of the long period seismic equipment at several locations as part of the growing Atomic Energy Detection System (AEDS). As the AEDS greatly expanded in the early 1960s, Davis played a leading role in fielding several new operational detection techniques. He then transferred to Detachment 204 in Fairbanks, Alaska, to serve as the superintendent over the seismic and hydro-acoustic systems. For his follow-on assignment, Davis joined the staff at AFTAC headquarters in Washington D.C. to supervise four new techniques that were entering the AEDS.<br />Leaving Washington for an overseas tour of duty in 1967, Davis became the station chief for Detachment 517 on Easter Island where AFTAC operated the Earth Current, Hydro-acoustic, and Atmospheric Florescence Detection systems. However, in 1968, AFTAC closed Detachment 517 and summoned Davis back to Washington, where they assigned him to the Prompt Data Analysis section, and later as NCOIC of the Operations Evaluation Unit. When AFTAC moved to Patrick AFB, in 1972, Davis remained in Washington DC to work for Dr. Carl Romney at the Vela Seismological Center in Alexandria, Virginia, until his retirement in May 1973.</p>'
                break
            case 'btnMarshall':
                pre = 'Mr.'
                first = 'Joseph D.'
                last = 'Marshall'
                pic = "_Photos/WOH/Marshall.png"
                verb = '<p>From March 1976 to January 2004, Joe Marshall made numerous outstanding contributions to AFTAC and the United States Air Force. In just a few months of becoming a civilian employee at AFTAC, Mr. Marshall became AFTAC&rsquo;s focal point for remote, space-based nuclear detection programs. From this position, he led the development, implementation, and execution of various satellite programs to maintain and enhance AFTAC&rsquo;s ability to perform the nuclear detonation (or NUDET) monitoring mission.<br /><br />Because of his widely recognized technical expertise within the Department of Defense and the National Laboratories, national level committees and decision-makers often asked him to brief on any crucial satellite plans and programs that were in jeopardy of being cut or terminated. In every case, Joe never failed to attain full support for the programs he presented. In addition, Joe&rsquo;s clever financial approaches often extended AFTAC&rsquo;s limited space program budget. For example, to meet both US short and long-term requirements, he frequently used his managerial and diplomatic skills to leverage monies from the Department of Energy and Air Force Space Command in funding AFTAC&rsquo;s R&D satellite systems and data support programs.<br /><br />Joe Marshall initiated the formation of a Satellite Sensor Review Panel (SSRP) to perform a technical peer review of existing and proposed satellite sensors and systems. This Panel still meets twice a year to perform an impartial scientific appraisal of the plans and programs for AFTAC&rsquo;s space-based nuclear monitoring sensors, associated ground-based communication and analysis systems, and relevant data exploitation methods. The Panel is composed of a core of non-government experts that Mr. Marshall selected from academia and industry.<br /><br />Marshall also was instrumental in leading the integration and fusion of satellite data with seismic, hydro-acoustic, and infrasonic data within the US National Data Center. This combination of data from the various collection techniques allowed AFTAC to attain greater reliability and resolution in detecting, identifying, and locating nuclear detonations than previously possible. In short, Joe Marshall played a critical role in the expansion and improvement of the United States Atomic Energy Detection System.<br /><br />Today we honor Mr. Joe Marshall&rsquo;s strong dedication to AFTAC with his induction into our Wall of Honor.</p>'
                break
            case 'btnPavik':
                pre = 'Colonel'
                first = 'Alvin L.'
                last = 'Pavik'
                pic = "_Photos/WOH/Pavik.png"
                verb = '<p>Colonel Al Pavik was born and raised on a farm in northern Iowa with absolutely no exposure to the military. In 1952, he enrolled at Iowa State University, but left school in 1954 to attend the Air Force Aviation Cadet Program. After graduating navigation school in 1956, he remained an additional year at Ellington AFB to serve as an instructor. From there, Pavik was assigned to Griffiss AFB, New York, where he worked in the Air Force Electronic Countermeasures (ECM) program. The Air Force then allowed Pavik to finish his undergraduate and graduate degrees in Electrical Engineering at the University of Illinois, where he graduated in 1965 ranked number one in a class of 266 electrical engineers.<br /><br />After earning his degrees, Pavik joined AFTAC&rsquo;s 1155th Technical Operations Squadron (TOS) at McClellan AFB, California. While at the 1155th, he held a number of jobs including Chief of the Airborne Measurement Unit, the Airborne Nuclear Unit, and the Nuclear Instrumentation Section. In 1970, Colonel Pavik deployed to Vietnam to work at 7th Air Force, Saigon, as a special project officer in the IGLOO White Program. The program employed seismic and acoustics sensors to monitor North Vietnamese penetration throughout Vietnam, Laos, and Cambodia. Upon his return from Vietnam in 1971, Captain Pavik re-joined AFTAC at McClellan AFB. For the next 15 years, Pavik worked either at McClellan Central Laboratory or at AFTAC headquarters.<br /><br />Lieutenant Colonel Pavik moved to Patrick in 1976 and assumed the duties of Chief, Maintenance Engineering Branch, and as the AFTAC Inspector General. In January 1979, after his stint in the IG, Colonel Pavik became the deputy to Dr. Gerard Leies, the AFTAC Technical Director.<br /><br />In July 1980, Colonel Pavik assumed command of the 1155th TOS. Of the eighteen commanders who ever commanded the 1155th, Pavik served the longest by far—six years in command (his final years in the Air Force). While in command, Pavik received special recognition for conducting numerous JCS directed operations and for significant improvements in the quantity and quality of analyses conducted by the McClellan Central Laboratory. Just weeks before his retirement in 1986, Pavik led the effort to process and analyze 354 samples taken from the 55 sorties (500 flying hours) flown in response to the Soviet nuclear accident at Chernobyl. In total, his unit compiled more than 2500 work hours to analyze the nature and scope of the accident—a surge operation that outsized any in the previous 25 years.<br /><br />In June 1986, Colonel Pavik retired with over 4,100 flying hours and a Master Navigator rating. More importantly, he received numerous accolades from several general officers such as James Clapper, and other notable leaders for his extensive impact on AFTAC’s missions and personnel.</p>'
                break
            case 'btnButler':
                pre = 'CMSgt'
                first = 'Charles A.'
                last = 'Butler'
                pic = "_Photos/WOH/Butler.png"
                verb = '<p>Chief Master Sergeant Charles A. Butler enlisted in the Air Force in November 1948. He then spent the next thirty years of his life working in the LRD (Long Range Detection) Program. Initially assigned to the 1009th Special Weapons Squadron, Charlie attended the first B-Systems technician course and manned one of the first LRD sites at Ladd AFB, Alaska—Detachment 204. He continued to work in seismic positions with assignments to Fort Sill, Oklahoma, and Detachment 301 at Ankara, Turkey. In the late 1950s, Sergeant Butler attended the first Q-course (EMP systems) and subsequently served at Larson AFB, Washington; McClellan AFB, California; Pinedale, Wyoming; and Weisbaden, Germany.</p><p>Charlie spent much, if not most, of his career going TDY to conduct site surveys for the installation of &ldquo;B&rdquo; and &ldquo;Q&rdquo; systems. Indeed, during his years of conducting site surveys, AFTAC added more than 100 sites to the US Atomic Energy Detection System.</p><p>Chief Master Sergeant Butler completed his thirty years in uniform with AFTAC headquarters at Patrick AFB, where he retired on 30 April 1978. Following his retirement, Charlie was active in the Alumni Association. His fellow airmen recalled that &ldquo;Charlie was the &lsquo;go to&rsquo; guy for seismic and EMP. . .His blood truly ran AFTAC. He was an excellent leader by example and without trying. You wanted to work for Charlie out of respect.&rdquo;</p><p>As his wife Doris recalls, &ldquo;Charles was a true AFTAC person and always considered his personnel his family. He always took pride in his work and sometimes I would become jealous because I had to share him with people all over the world. I would never have wanted him to be any different. He was my friend and husband.&rdquo;Chief Master Sergeant Charlie Butler passed away in March 1996.</p>'
                break
            case 'btnHarkins':
                pre = 'Mr.'
                first = 'Michael L.'
                last = 'Harkins'
                pic = "_Photos/WOH/Harkins.png"
                verb = '<p>From 1975 to 1999, Michael Harkins served as a premier subject matter expert for AFTAC&rsquo;s gas analysis programs, both as an Air Force officer and as a civil service employee. As a captain in 1975, Harkins was assigned as a scientist to the gas analysis laboratory of AFTAC&rsquo;s Technical Operations Division within the McClellan Central Laboratory at McClellan AFB, California. At that time, the gas lab was less than a year old but quickly became a critical asset for AFTAC.<br/><br/>From 1975 to 1980, Harkins developed new databases, and oversaw the design and construction of new &ldquo;load lines&rdquo; used to process collected gas samples for precision measurements. His efforts significantly increased the lab&rsquo;s overall capabilities and productivity. In 1980, Harkins transitioned to civil service and accepted the position of Chief Scientist of the gas analysis laboratory, a position that he held for almost twenty years. During his years there, Harkins managed the development of reference gas standards upon which all pertinent samples are now based. In 1986, he received accolades for his analysis of samples collected in the Soviet Union&rsquo;s Chernobyl nuclear accident that identified specific radiological fallout patterns throughout the world. In 1987, AFTAC&rsquo;s most renowned scientist, Walter Singlevich, recognized Harkins for his scientific contributions in establishing the baseline calibration standards.<br/><br/>During his quarter century with AFTAC, Harkins made numerous and long-lasting contributions to AFTAC&rsquo;s materials mission. He elevated the laboratory processes to a production scale, and the resulting output of continuous precision measurements enabled US assessments of foreign activities, a feat that had never before been accomplished in the Air Force. The scientific processes that Mike Harkins pioneered are still in use today within AFTAC&rsquo;s production laboratory system to include OL-GT. In recognition of his achievements, OL-GT is currently undergoing the approval process to memorialize the lab as the Harkins Laboratory.</p>'
                break
            case 'btnLeies':
                pre = 'Dr.'
                first = 'Gerard M.'
                last = 'Leies'
                pic = "_Photos/WOH/Leies.png"
                verb = '<p>Dr. Gerard M. Leies earned a masters degree in physics from the University of California, and a PhD in physics from Georgetown University. During World War II, he served as a Weather Officer for the 13th Bomber Command, and 13th Air Force in the South Pacific. His first experience with LRD (Long Range Detection) occurred in 1948 in the Pacific where Major Leies participated in the initial LRD experiments in Operation SANDSTONE. In 1951, he was assigned to the Long Range Detection Program in Washington, DC, where he served as Assistant Chief, Field Activities Section. In 1953 he was reassigned to the Aeronautical Research Laboratory at Wright-Patterson AFB, Ohio, where he served as a physicist and later as Chief of Modern Physics Branch. In the latter position Dr. Leies was responsible for research programs in the fields of nuclear physics, solid state physics, plasma physics, relativity, and nuclear engineering. While there, Lieutenant Colonel Leies was co-discoverer of a key component that made solar generators possible.<br/><br/>In the late 1950s, Leies worked as the Assistant Scientific Advisor, and in May 1962, became the Assistant Technical Director for Evaluation. Upon his retirement from the Air Force in August 1962, Leies remained in the position of Assistant Technical Director as a civil service employee until 1973. During that time, he expanded his responsibilities to include the fields of nucleonics and diagnostics. In March 1974, Dr. Leies was selected to be the Technical Director of AFTAC; a position he held until his retirement in 1988.<br/><br/>During his 14 years as the Technical Director, Leies oversaw AFTAC&apos;s operational coverage of more than 500 American, British, and Soviet nuclear tests. He also supervised AFTAC&apos;s extensive participation in the Chernobyl nuclear accident in 1986. His interface with key national agencies and organizations proved crucial in providing timely and accurate information to key customers.<br/><br/>Dr. Gerry Leies passed away in December 2008.</p>'
                break
            case 'btnCiambrone':
                pre = 'Colonel'
                first = 'Thomas'
                last = 'Ciambrone'
                pic = "_Photos/WOH/Ciambrone.png"
                verb = '<p>In his thirty-year career with the Air Force, Colonel Tom Ciambrone served more than 20 years with AFTAC. In his final tour of duty with AFTAC, from 1981 to1987, Ciambrone served as the Vice Commander. Upon his retirement, members of Detachment 452 at Wonju Air Station, Korea, dedicated their new facilities to him — &ldquo;the Ciambrone House.&rdquo; In 1999, Colonel Ciambrone was inducted into the Hall of Honors at Lackland AFB</p>'
                break
            case 'btnHayden':
                pre = 'Lt Colonel'
                first = 'Thomas'
                last = 'Hayden'
                pic = "_Photos/WOH/Hayden.png"
                verb = '<p>Lieutenant Colonel Howard Hayden was a career Air Force officer who served from the 1960s to the 1980s. Hayden served as the NOS Program Officer for Vela operations and data analyses. As a satellite expert, pioneered the establishment of monitoring requirements. His work led to the identification of false trigger rates and other equipment sensitivities.</p>'
                break
            case 'btnKniedler':
                pre = 'Dr.'
                first = 'Marc'
                last = 'Kniedler'
                pic = "_Photos/WOH/Kniedler.png"
                verb = '<p>Dr. Marc Kniedler spent over 40 years in the NDC&A program. From the early 1960s on, Dr. Kniedler served as AFTAC&rsquo;s primary weapons characterization expert. He was AFTAC&rsquo;s interface with weapons experts from several national laboratories, and served as the AFTAC representative to the Bethe Panel.</p>'
                break
            case 'btnLeggett':
                pre = 'CMSgt'
                first = 'Kathy'
                last = 'Leggett'
                pic = "_Photos/WOH/Leggett.png"
                verb = '<p>AFTAC&rsquo;s first female chief master sergeant, CMSgt (Ret) Katherine R. Leggett, served an exemplary career in the USAF from the late 1970s to the 1990s. In October 1983, she became the first female Special Equipment Operator (SEO), and as a Staff Sergeant in 1984, she was selected as one of the 12 Outstanding Airmen of the Year for the Air Force.</p>'
                break
            case 'btnMcBrearty':
                pre = 'Colonel'
                first = 'Charles'
                last = 'McBrearty'
                pic = "_Photos/WOH/McBrearty.png"
                verb = '<p>Colonel McBrearty devoted much of his Air Force career to AFTAC. He held two command positions with AFTAC, taught at the Air Force Academy, and served in numerous staff and scientific positions. He returned to federal service in 1993 to assume duties as the Director of TM until his retirement from the Air Force Senior Executive Service in 2008.</p>'
                break
            case 'btnNiquette':
                pre = 'Colonel'
                first = 'Thomas'
                last = 'Niquette'
                pic = "_Photos/WOH/Niquette.png"
                verb = '<p>Colonel (Ret.) Thomas H. Niquette served 30 years in the USAF, from 1962-1992. He started out as a Physical Security officer with Strategic Air Command and then was picked up to become a pilot. In 1967 he served in Thailand and Vietnam flying C-130s in a Rescue Squadron, where he flew 156 combat missions (1100+ combat hours). </p><p>He began his time with AFTAC in 1974, where as a Major he worked with the Directorate of Operations. He then moved to McClellan AFB and became the 1155th Tech Ops Squadron DO. He was then selected to be the 1157th Tech Ops Squadron Commander in Wiesbaden, Germany where he oversaw operations.</p><p>Niquette was then assigned to HQ AFTAC as the Director of Operations from 1983-1989, where he oversaw operations of several types of aircraft: B-52, U-2, WC-135, C-130, etc ... He was instrumental in building relationships across several different commands: Strategic Air Command (SAC), Military Airlift Command (MAC), Systems Command; and made sure all equipment and platforms functioned properly. During his time as DO, he was instrumental for directing airborne collection operations during the Chernobyl nuclear crisis in 1986. His direct support was the key to providing the samples needed to verify contamination levels across Eastern and Northern Europe.</p><p>1n 1989 Col Niguette was assigned as the Pacific Technical Ops Area Commander, where he was responsible for managing all AFTAC operations across the Pacific.</p>'
                break
            case 'btnNorthrup':
                pre = 'Mr.'
                first = 'Doyle'
                last = 'Northrup'
                pic = "_Photos/WOH/Northrup.png"
                verb = '<p>Mr. Northrup was the AFTAC Technical Director from 1959 to 1973. His international stature in the scientific community resulted in his appointment as technical advisor to the US Delegation to the Geneva Conference on the Cessation of Nuclear Tests. Northrup received the Exceptional Civilian Service Award by the Air Force in 1950 and 1954, and the Distinguished Civilian Service Award by the Secretary of Defense in 1958. Finally, for his leadership and counsel to the US Delegation in Geneva, President Eisenhower awarded him the President&rsquo;s Award for Distinguished Federal Civilian Service.</p>'
                break
            case 'btnOwen':
                pre = 'SMSgt'
                first = 'Marvin'
                last = 'Owen'
                pic = "_Photos/WOH/Owen.png"
                verb = '<p>From the 1970s and into the 2000s, Marv Owen contributed significantly to AFTAC&apos;s mission in numerous capacities. Indeed, he is one of a few individuals who have worked nearly all of AFTAC&apos;s mission techniques. When he retired from active duty in May 1995, TM Director Chuck McBrearty handpicked Marv to lead mission support for the ground base techniques, a job he held until his retirement in April 2014. Upon his retirement from civil service, Marv was recognized by inter agency mission partners for his exemplary career in support of "combined operations".</p>'
                break
            case 'btnPilotte':
                pre = 'Dr.'
                first = 'Frank F.'
                last = 'Pilotte'
                pic = "_Photos/WOH/Pilotte.png"
                verb = '<p>Dr. Frank Pilotte was a mathematician who worked for AFTAC from 1962 to his retirement in 1999. In 1972, Dr. Pilotte became the director of AFTAC&rsquo;s Nuclear Treaty Monitoring Directorate. He was at the forefront in laying out the foundation for global nuclear treaty monitoring and participated in numerous international exchanges throughout most of his career. In recognition to his numerous contributions, Dr. Pilotte received the Presidential Meritorious Rank Award in 1995.</p>'
                break
            case 'btnRomney':
                pre = 'Dr.'
                first = 'Carl'
                last = 'Romney'
                pic = "_Photos/WOH/Romney.png"
                verb = '<p>Dr. Carl Romney was one of the nation&rsquo;s most prominent seismologists who worked for the Air Force from the 1950s to the early 1970s. Romney was one of the first scientists to use seismic detections to accurately locate above ground nuclear tests, which he demonstrated on the fourth Soviet test "Joe-4." From 1958 to 1961, Romney accompanied Doyle Northrup as a representative to the Geneva negotiations that resulted in the formulation of the Limited Test Ban Treaty. It was Romney who educated US negotiators that LRD, using seismology, was much more difficult than they believed.</p>'
                break
            case 'btnSinglevich':
                pre = 'Mr.'
                first = 'Walter'
                last = 'Singlevich'
                pic = "_Photos/WOH/Singlevich.png"
                verb = '<p>Mr. Walt Singlevich, worked began his career as part of the Manhattan Project during the Second World War. From 1952 until his death in 1992, Walt devoted his life to AFTAC. During his last 12 years with AFTAC, Walt served as the Director of Nuclear Technology. In recognition for his numerous achievements while serving in that position, the Air Force twice awarded him its highest award for civil service—the Air Force Exceptional Civilian Service Award.</p>'
                break
            case 'btnSolari':
                pre = 'SMSgt'
                first = 'Delbe'
                last = 'Solari'
                pic = "_Photos/WOH/Solari.png"
                verb = '<p>Mr. Delbe Solari&rsquo;s career spanned 60 years with AFTAC (22 years enlisted, 38 civil service). Delbe served as the Seismic Alert Duty Officer for over 20 years, and in so doing he analyzed hundreds of nuclear explosions, reviewed all seismic and hydroacoustic data, and wrote the final reports. More importantly, he served as a role model and mentor to many, many airmen.</p>'
                break
        };

        myTitle = pre + " " + first + " " + last

        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#honorArt').removeClass('noDisplay').addClass('block');
        $('#wohMainImg').removeClass('block').addClass('noDisplay');
        $('#wohDiv').removeClass('noDisplay').addClass('block');
        $('#wohName').html(myTitle);
        $('#wohImg').attr('src', pic);
        $('#wohVerbage').html(verb);
        $([document.documentElement, document.body]).animate({ scrollTop: $('#wohName').offset().top }, 500);

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

    $('.announcement').mouseover(function () {
        $(this).css('cursor', 'pointer');
    });

    $('.announcement').mouseout(function () {
        $(this).css('cursor', 'default');
    });

    $('#btnMemAdmin').click(function () {
        $('#adminMenu').hide();
        $('#mainMenu').hide();
        $('#membershipadminArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#btnReturnToAdminMenu').click(function () {
        $('#adminMenu').show();
        $('#mainMenu').show();
        $('#membershipadminArt').hide();
    })

    $('#alumniLogo').dblclick(function () {
        $('.myArts').hide();
        $('#passwordArt').show();
        action = 'password';
    });

    $('#boardMeeting').click(function () {
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#meetingArt').removeClass('noDisplay').addClass('block')
    })

    $('#btnwohReturn').click(function () {
        $('#wohMainImg').show();
        $('#wohDiv').hide();
        $('#wohImg').attr('src', pic);
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#pWOH_Honorees").offset().top
        }, 500);
    });

    $('#wohCeremony').click(function () {
        resetpage();
        $('.myArts').hide();
        $('#wohArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#btnChangePW').click(function () {
        $('.myArts').hide();
        $('#changepasswordArt').show();
    });

    $('#btnCancelChange').click(function () {
        $('.myArts').hide();
        $('#passwordArt').show();
    });

    $('#liMainPage').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').removeClass('block').addClass('noDisplay');
        $('.underSel').css('color', 'yellow');
        $('.myArts').removeClass('block').addClass('noDisplay');
        $('#defaultArt').removeClass('noDisplay').addClass('block');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    //$('#liStatistics').click(function () {
    //    window.open('_Statistics/awstats(1).html', '');
    //});

    $('#juneStats').click(function () {
        window.open('_Statistics/awstats(1).html', '');
    });

    $('#liMeeting').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divMinutes').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').hide();
                $('#divMinutes').show();
                scrollTo(0, 0);
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divMinutes').hide();
            };
        };
        subclicked = false;
    });

    $('#showMinutes').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showMinutes').css('color', 'lightgreen')
        $('.myArts').hide();
        $('#minutesArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#showAgenda').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showAgenda').css('color', 'lightgreen');
        window.open('_PDFs/agenda.pdf', '');
    });

    $('#job1').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        window.open('https://www.candidatemanager.net/cm/p/pJobDetails.aspx?mid=YWWY&sid=BWDY&jid=GTCXGTWCXGT&a=Ya5kVOjNOCU%253d', '');
    });

    $('#job2').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        window.open('https://uwhires.admin.washington.edu/eng/candidates/default.cfm?szCategory=jobprofile&szOrderID=166058', '');
    });

    $('#job3').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        window.open('https://uwhires.admin.washington.edu/eng/candidates/default.cfm?szCategory=jobprofile&szOrderID=165968', '');
    });

    $('#job4').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        window.open('https://uwhires.admin.washington.edu/eng/candidates/default.cfm?szCategory=jobprofile&szOrderID=165969', '');
    });

    $('#job5').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        window.open('https://careers.whoi.edu/opportunities/view-all-openings/science-research/', '');
    });

    $('#job6').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        window.open('https://pa334.peopleadmin.com/postings/2813', '');
    });

    $('#job7').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        window.open('https://utah.peopleadmin.com/postings/89933', '');
    });

    $('#job8').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        window.open('https://kbr.taleo.net/careersection/kbrwyle_external/jobdetail.ftl?job=1079091', '');
    });

    $('#liDeployment').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').hide();
        $('.underSel').css('color', 'yellow');
        $('.myArts').hide();
        $('#deploymentArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liAftacaaBoard').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divBoard').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').hide();
                $('#divBoard').show();
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divBoard').hide();
            };
        };
        subclicked = false;
    })

    $('#liIndependent').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divChapters').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').hide();
                $('#divChapters').show();
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divChapters').hide();
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
        $('.underMenu').hide();
        $('.underSel').css('color', 'yellow');
        $('.myArts').hide();
        $('#aftacboosterArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liAlumni').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').hide();
        $('.underSel').css('color', 'yellow');
        $('.myArts').hide();
        $('#alumniArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#lblAOY").offset().top
        }, 500);
    });

    $('#liWoodwork').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').hide();
        $('.underSel').css('color', 'yellow');
        $('.myArts').hide();
        $('#woodenHQArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liOfficers').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divBoard').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').hide();
                $('#divBoard').show();
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divBoard').hide();
            };
        };
        subclicked = false;
    });

    $('#showElected').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showElected').css('color', 'lightgreen');
        $('.myArts').hide();
        $('#electedBoardArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#showAppointed').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $('#showAppointed').css('color', 'lightgreen');
        $('.myArts').hide();
        $('#selectedBoardArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    //$('#liCalendar').click(function () {
    //    resetpage()
    //    $('.liMainMenu').css('color', 'yellow');
    //    $(this).css('color', 'lightgreen');
    //    $('.underMenu').hide();
    //    $('.underSel').css('color', 'yellow');
    //    $('.myArts').hide();
    //    $('#calendarArt').show();
    //    $([document.documentElement, document.body]).animate({
    //        scrollTop: $("#mainHeader").offset().top
    //    }, 500);
    //});

    $('#coin').click(function () {
        resetpage()
        $('.myArts').hide();
        $('#wonArt').show();
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
                $('.underMenu').hide();
                $('#divConstitution').show();
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divConstitution').hide();
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
                $('.underMenu').hide();
                $('#divHistory').show();
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divHistory').hide();
            };
        };
        subclicked = false;
    });

    $('#historyAFTAC').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').hide();
        $('#historyArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#historyAlumni').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').hide();
        $('#historyAlumniArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#heritageandHistory').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').hide();
        $('#heritageArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#oconnerHistory').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').hide();
        $('#oconnerArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#excelHistory').click(function () {
        subclicked = true;
        $('.myHistories').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').hide();
        $('#excellenceArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liHurricane').click(function () {
        if (!subclicked) {
            resetpage()
            $('.liMainMenu').css('color', 'yellow');
            $(this).css('color', 'lightgreen');
            if ($('#divHurricane').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').hide();
                $('#divHurricane').show();
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divHurricane').hide();
            };
        };
        subclicked = false;
    });

    $('#wunder').click(function () {
        subclicked = true;
        $('.myweather').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').hide();
        $('#wunderArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#nhc').click(function () {
        subclicked = true;
        $('.myweather').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myArts').hide();
        $('#nhcArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liJobs').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').hide();
        $('.underSel').css('color', 'yellow');
        $('.myArts').hide();
        $('#jobsArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#eventH2').click(function () {
        if ($('#eventSect').hasClass('noDisplay')) {
            $('.jobSect').hide();
            $('#eventSect').show();
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#mainHeader").offset().top
            }, 500);
        }
        else {
            $('#eventSect').hide();
        }
    });

    $('#liNewsToKnow, .clsN2K').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').hide();
        $('.underSel').css('color', 'yellow');
        $('.myArts').hide();
        $('#newsToKnowArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
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
                $('.underMenu').hide();
                $('#divObits').show();
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divObits').hide();
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
            $('.myArts').hide();
            $('#obituariesArt').show();
            $('#archivedObits').hide();
            $('#currentObits').show();
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#mainHeader").offset().top
            }, 500);
        }
        else {
            $('#archivedObits').hide();
            $('#currentObits').show();
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#mainHeader").offset().top
            }, 500);
        };
    });

    $('#obitsArchived').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('#audioTaps').trigger('play');
        $('#audioTaps').prop('volume', '0.1');
        if ($('#obituariesArt').hasClass('noDisplay')) {
            $('.myArts').hide();
            $('#obituariesArt').show();
            $('#currentObits').hide();
            $('#archivedObits').show();
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#Label10").offset().top
            }, 500);
        }
        else {
            $('#currentObits').hide();
            $('#archivedObits').show();
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#Label10").offset().top
            }, 500);
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
                $('.underMenu').hide();
                $('#divEvents').show();
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divEvents').hide();
            };
        };
        subclicked = false;
    });

    $('#AFTACawards').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').hide();
        $('#aftacAwardsArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#aftacAwardsArt").offset().top
        }, 500);
    });

    $('#retreat').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').hide();
        $('#retreatArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#retreatArt").offset().top
        }, 500);
    });

    $('#wccPic').click(function () {
        subclicked = true;
        window.open("http://www.aftacwcc.org/PhotoAlbums/20180519_SpringPicnic/20180519_WCCPicnic-SlideShow.pdf", "")
    });

    $('#eventsSnowBall').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').hide();
        $('#sbArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#sbArt").offset().top
        }, 500);
    });

    $('#eventsSnowBall2').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').hide();
        $('#sb2Art').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#sb2Art").offset().top
        }, 500);
    });

    $('#eventsOpenHouse').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').hide();
        $('#openHouseArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#openHouseArt").offset().top
        }, 500);
    });

    $('#eventsToiletBowl').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').hide();
        $('#toilet2017Art').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#toilet2017Art").offset().top
        }, 500);
    });

    $('#eventsGolfGet').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').hide();
        $('#golfGetArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#golfGetArt").offset().top
        }, 500);
    });

    $('#eventsGolf').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen')
        $('.myArts').hide();
        $('#golfOutingArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#golfOutingArt").offset().top
        }, 500);
    });

    $('#eventsBreakfast').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow')
        $(this).css('color', 'lightgreen')
        $('.myArts').hide();
        $('#coBreakfastArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#coBreakfastArt").offset().top
        }, 500);
    });

    $('#eventsWCCReunion').click(function () {
        window.open('http://www.aftacwcc.org/albums.htm', '');
    });

    $('#SeaWorld').click(function () {
        window.open('https://seaworld.com/orlando/tickets/military-discount/veterans/?utm_source=Silverpop&utm_medium=Email&utm_campaign=SWO_Pass_Veterans_FreeDayTicket_TP1_05202019_00780379+%281%29&utm_content=DIGITAL&xtor=-%5BSWO_Pass_Veterans_FreeDayTicket_TP1_05202019_00780379+%281%29%5D--%5BSWO+Tickets%5D-&bxid=%5BMTc4NDQzNjkzMTg3S0%5D--&spMailingID=15676176&spUserID=MTc4NDQzNjkzMTg3S0&spJobID=1641345088&spReportId=MTY0MTM0NTA4OAS2&fbclid=IwAR1vwxXap9xcGuAcFiAU_b6LR2anqzr5E2LYoPB-uR7FpQCIolzuUYcEdlU', '');
    });

    $('#milRecs').click(function () {
        $('.myArts').hide();
        $('#milRecsArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#milRecsPara").offset().top
        }, 500);
    });

    $('#btnWOH1').click(function () {
        window.open('https://www.25af.af.mil/News/Article-Display/Article/1891784/three-inducted-into-aftac-wall-of-honor/', '');
    });

    $('#woh').click(function () {
        $('.myArts').hide();
        $('#2019WOHArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#wohPara").offset().top
        }, 500);
    });

    $('#tricare').click(function () {
        window.open('https://www.tricare.mil/CoveredServices/Pharmacy/Drugs.aspx', '');
    });

    $('#tbSnowball').click(function () {
        window.open('/_pdfs/2019 SnowBall.pdf', '');
    });

    $('#tbWinners').click(function () {
        $('.myArts').hide();
        $('#tbWinnersArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#tbWinnersArt").offset().top
        }, 500);
    });

    $('#disney').click(function () {
        window.open('https://disneyworld.disney.go.com/special-offers/military-multi-day-tickets-2019/', '');
    });

    $('#WallofHonor').click(function () {
        $('.myArts').hide();
        $('#wohArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#wohArt").offset().top
        }, 500);
    });

    $('#aftacVSaftac').click(function () {
        $('.myArts').hide();
        $('#aftacVSaftacArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#aftacVSaftacArt").offset().top
        }, 500);
    });

    $('#coReunion1').click(function () {
        $('.myArts').hide();
        $('#coloReunionArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#coloReunionArt").offset().top
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


    $('#ladiesLuncheon').click(function () {
        $('.myArts').hide();
        $('#ladiesLunchArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#ladiesLunchArt").offset().top
        }, 500);
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
    $('#doButNext').click(function () {
        aftacDiningCurrentPic = aftacDiningCurrentPic + 1
        if (aftacDiningCurrentPic > 20) { aftacDiningCurrentPic = 1 }
        $('#DOpic').attr('src', '_Photos/Dining/DO' + aftacDiningCurrentPic + '.jpg').attr('alt', 'DO' + aftacDiningCurrentPic + '.jpg')
    });

    $('#doButPrev').click(function () {
        aftacDiningCurrentPic = aftacDiningCurrentPic - 1
        if (aftacDiningCurrentPic < 1) { aftacDiningCurrentPic = 20 }
        $('#DOpic').attr('src', '_Photos/Dining/DO' + aftacDiningCurrentPic + '.jpg').attr('alt', 'DO' + aftacDiningCurrentPic + '.jpg')
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
        $('.myArts').hide();
        $('#contestArt').show();
        scrollTo(0, 0);
    });

    $('#diningH2').click(function () {
        $('.myArts').hide();
        $('#diningOut').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#wccElection').click(function () {
        $('.myArts').hide();
        $('#wccElectionResults').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#last70years').click(function () {
        $('.myArts').hide();
        $('#last70yearArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#olMemories').click(function () {
        $('.myArts').hide();
        $('#olMemoriesArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#election').click(function () {
        $('.myArts').hide();
        $('#electionArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#wallhonor').click(function () {
        $('.myArts').hide();
        $('#wallhonorArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#oconner').click(function () {
        $('.myArts').hide();
        $('#oconnerArt').show();
        scrollTo(0, 0);
    });

    //*************************************************************************************


    //Upcomming Events
    //*************************************************************************************

    $('#annualmeeting').click(function () {
        $('.myArts').hide();
        $('#annualmeetingArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#cobreakfast').click(function () {
        $('.myArts').hide();
        $('#cobreakfastArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#diningout').click(function () {
        $('.myArts').hide();
        $('#diningoutArt').show();
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
                $('.underMenu').hide();
                $('#divAlbums').show();
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divAlbums').hide();
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
                $('.underMenu').hide();
                $('#divPomos').show();
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divPomos').hide();
            };
        };
        subclicked = false;
    });

    $('#pomosArchived').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        if ($('#pomoArt').hasClass('noDisplay')) {
            $('.myArts').hide();
            $('#pomoArt').show();
            $('#sectPomoCurrent').hide();
            $('#sectPomoArchived').show();
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#mainHeader").offset().top
            }, 500);
        }
        else {
            $('#sectPomoCurrent').hide();
            $('#sectPomoArchived').show();
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#mainHeader").offset().top
            }, 500);
        };
    });

    $('#pomosCurrent').click(function () {
        subclicked = true;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        if ($('#pomoArt').hasClass('noDisplay')) {
            $('.myArts').hide();
            $('#pomoArt').show();
            $('#sectPomoArchived').hide();
            $('#sectPomoCurrent').show();
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#mainHeader").offset().top
            }, 500);
        }
        else {
            $('#sectPomoArchived').hide();
            $('#sectPomoCurrent').show();
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#mainHeader").offset().top
            }, 500);
        };
    });

    $('#liSageShop').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').hide();
        $('.underSel').css('color', 'yellow');
        $('.myArts').hide();
        $('#sageShopArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liSpecialLinks').click(function () {
        resetpage()
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').hide();
        $('.underSel').css('color', 'yellow');
        $('.myArts').hide();
        $('#specialLinksArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liVideos').click(function () {
        if (!subclicked) {
            $('.liMainMenu').css('color', 'yellow');
            $('#audioTaps')[0].pause();
            $(this).css('color', 'lightgreen')
            if ($('#divVideos').hasClass('noDisplay')) {
                $('.underSel').css('color', 'yellow');
                $('.underMenu').hide();
                $('#divVideos').show();
            }
            else {
                $('.underSel').css('color', 'lightgreen');
                $('.underMenu').hide();
                $('#divVideos').hide();
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
        $('.myVids').hide();
        $('#weatherVideo').show();
        $('.myArts').hide();
        $('#weatherArt').show();
        $('#vidNuclear').trigger('play');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#vid_2015Reunion').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("2015Reunion");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').hide();
        $('#airShowVideo').show();
        $('.myArts').hide();
        $('#2015ReunionArt').show();
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
        $('.myVids').hide();
        $('#airShowVideo').show();
        $('.myArts').hide();
        $('#2017AirShowArt').show();
        $('#2017vidAirShow').trigger('play');
    });

    $('#vid_2018AirShow').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("2018vidAirShow");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').hide();
        $('#airShowVideo').show();
        $('.myArts').hide();
        $('#2018AirShowArt').show();
        $('#2018vidAirShow').trigger('play');
    });

    $('#vidDedication').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("vidDed");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').hide();
        $('#dedicationVideo').show();
        $('.myArts').hide();
        $('#dedicationArt').show();
        $('#vidDed').trigger('play');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#vidSeminar').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("vidSem");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').hide();
        $('#SeminarVideo').show();
        $('.myArts').hide();
        $('#SeminarArt').show();
        $('#vidSem').trigger('play');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#vidStonehenge').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("vidHonor");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').hide();
        $('#stonehengeVideo').show();
        $('.myArts').hide();
        $('#stonehengeArt').show();
        $('#vidstonehenge').trigger('play');
    });

    $('#vidWall').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("vidHonor");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').hide();
        $('#honorVideo').show();
        $('.myArts').hide();
        $('#honorVidArt').show();
        $('#vidHonor').trigger('play');
    });

    $('#vidUpgrade').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        vid = document.getElementById("vid_Under");
        vid.currentTime = 0;
        $('.underSel').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.myVids').hide();
        $('#underVideo').show();
        $('.myArts').hide();
        $('#underArt').show();
        $('#vid_Under').trigger('play');
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#mainHeader").offset().top
        }, 500);
    });

    $('#liWall').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').hide();
        $('.underSel').css('color', 'yellow');
        $('.myArts').hide();
        $('#wallArt').show();
    });

    $('.yearWall').click(function () {
        $('.myArts').hide();
        $('#wallArt').show();
    });
    $('#liHonor').click(function () {
        subclicked = true;
        $("video").each(function () { this.pause() });
        $('.liMainMenu').css('color', 'yellow');
        $(this).css('color', 'lightgreen');
        $('.underMenu').hide();
        $('.underSel').css('color', 'yellow');
        $('.myArts').hide();
        $('#honorArt').show();
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#wohTitle").offset().top
        }, 500);

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
        $('#wallListings').removeClass('noDisplay').addClass('block');
        $('#hideListings').removeClass('block').addClass('noDisplay');
        $('#wallImg').removeClass('block').addClass('noDisplay');
        $('#wallImg').attr("src", "/_Images/Blank.bmp")
        $('#wallImg').css('width', '0px')
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#wallPara").offset().top
        }, 500);
    });

    $('.List20Year li').click(function () {
        $('#wallImg').attr('src', '_Photos/20YearWall/' + $(this).attr('id') + '.jpg');
        $('#hideListings').removeClass('noDisplay').addClass('block');
        $('#wallListings').removeClass('block').addClass('noDisplay');
        $('#wallImg').removeClass('noDisplay').addClass('block');
        $('#wallImg').css('width', '100%')
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#hideListings").offset().top
        }, 500);
    });

    //**********************************************************************

    //Minutes Page
    //**********************************************************************
    $('#butMeeting').click(function () {
        if ($(this).attr('value') === ' View Agenda for Next Meeting Meeting ') {
            $(this).attr('value', ' View Minutes of Last Meeting ');
            $('#minutes').hide();
            $('#agenda').show();
        }
        else {
            $(this).attr('value', ' View Agenda for Next Meeting Meeting ');
            $('#minutes').show();
            $('#agenda').hide();
        };
    });

    //**********************************************************************

    //**********************************************************************
    //Alumni of Year 

    $('.alumniList li').css('color', 'yellow');

    $('#aoyPicture').click(function () {
        $('.alumArt').hide();
        $('#defaultAlum').show();
        $('.alumniList li').css('color', 'yellow');
        $(this).hide();
    });

    $('.alumniList li').click(function () {
        $('.alumniList li').css('color', 'yellow');
        $(this).css('color', 'lightgreen');

        image = '_Photos/Wall/' + $(this).attr('id') + '.jpg';

        //alert($(this).attr('id'))

        switch ($(this).attr('id')) {
            case 'dunnSel':
                $('.alumArt').hide();
                $('#dunn').show();
                $('#aoyPicture').show();
                break;
            case 'gilbertSel':
                $('.alumArt').hide();
                $('#gilbert').show();
                $('#aoyPicture').show();
                break;
            case 'kemnaSel':
                $('.alumArt').hide();
                $('#kemna').show();
                $('#aoyPicture').show();
                break;
            case 'snyderSel':
                $('.alumArt').hide();
                $('#snyder').show();
                $('#aoyPicture').show();
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#lblAOY").offset().top
                }, 500);
                break;
            case 'calendaSel':
                $('.alumArt').hide();
                $('#calenda').show();
                $('#aoyPicture').show();
                break;
            case 'ryanSel':
                $('.alumArt').hide();
                $('#ryan').show();
                $('#aoyPicture').show();
                break;
            case 'gibbonsSel':
                $('.alumArt').hide();
                $('#gibbons').show();
                $('#aoyPicture').show();
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#lblAOY").offset().top
                }, 500);
                break;
            case 'melchiorSel':
                $('.alumArt').hide();
                $('#melchior').show();
                $('#aoyPicture').show();
                break;
            case 'klugSel':
                $('.alumArt').hide();
                $('#klug').show();
                $('#aoyPicture').show();
                break;
            case 'smithSel':
                $('.alumArt').hide();
                $('#smith').show();
                $('#aoyPicture').show();
                break;
            case 'jacksonSel':
                $('.alumArt').hide();
                $('#jackson').show();
                $('#aoyPicture').show();
                $('#aoyPicture').show();
                break;
            case 'wileySel':
                $('.alumArt').hide();
                $('#wiley').show();
                $('#aoyPicture').show();
                break;
            case 'schmiedSel':
                $('.alumArt').hide();
                $('#aoyPicture').show();
                $('#schmied').show();
                $('#aoyPicture').show();
                break;
            case 'carsonSel':
                $('.alumArt').hide();
                $('#aoyPicture').show();
                $('#carson').show();
                $('#aoyPicture').show();
                break;
            case 'blackSel':
                $('.alumArt').hide();
                $('#aoyPicture').show();
                $('#black').show();
                $('#aoyPicture').show();
                break;
            case 'goldianSel':
                $('.alumArt').hide();
                $('#aoyPicture').show();
                $('#goldian').show();
                $('#aoyPicture').show();
                break;
            case 'payneSel':
                $('.alumArt').hide();
                $('#aoyPicture').show();
                $('#payne').show();
                $('#aoyPicture').show();
                break;
            default:
                $('.alumArt').hide();
                $('#notIncluded').show();
                $('#aoyPicture').show();
        }

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
        if (volume > 1) {
            volume = 1;
        }
        $('#spanVolume').html(volume.toFixed(1));
        $("#audioTaps").prop('volume', volume);
    });

    $('.obitH1').click(function () {
        myText = $(this).attr('id');

        switch (myText) {
            case 'DeanH2':
                if ($('#DeanPara').is(':hidden')) {
                    $('.obitPara').hide();
                    $('#DeanPara').show();
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#DeanH2").offset().top
                    }, 500);
                }
                else {
                    $('.obitPara').hide();
                    $('#DeanPara').hide();
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#DeanH2").offset().top
                    }, 500);
                }
                break;
            case 'CahillH2':
                if ($('#CahillPara').is(':hidden')) {
                    $('.obitPara').hide();
                    $('#CahillPara').show();
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#CahillH2").offset().top
                    }, 500);
                }
                else {
                    $('.obitPara').hide();
                    $('#CahillPara').hide();
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#CahillH2").offset().top
                    }, 500);
                }
                break;
            case 'QuerryH2':
                if ($('#QuerryPara').is(':hidden')) {
                    $('.obitPara').hide();
                    $('#QuerryPara').show();
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#QuerryH2").offset().top
                    }, 500);
                }
                else {
                    $('.obitPara').hide();
                    $('#QuerryPara').hide();
                    $([document.documentElement, document.body]).animate({
                        scrollTop: $("#QuerryH2").offset().top
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

        $('.stemFigs').hide();
        $('#stemFig' + stemCurrentPic).show();
    });

    $('#stemPrevious').click(function () {
        stemCurrentPic = stemCurrentPic - 1;
        if (stemCurrentPic < 1) { stemCurrentPic = 8 };

        $('.stemFigs').hide();
        $('#stemFig' + stemCurrentPic).show();
    });

    $('#hurrNext').click(function () {
        hurrCurrentPic = hurrCurrentPic + 1;
        if (hurrCurrentPic > 18) { hurrCurrentPic = 1 };

        $('.hurrFigs').hide();
        $('#hurrFig' + hurrCurrentPic).show();
    });

    $('#hurrPrevious').click(function () {
        hurrCurrentPic = hurrCurrentPic - 1;
        if (hurrCurrentPic < 1) { hurrCurrentPic = 18 };

        $('.hurrFigs').hide();
        $('#hurrFig' + hurrCurrentPic).show();
    });

    $('#topsNext').click(function () {
        topsCurrentPic = topsCurrentPic + 1;
        if (topsCurrentPic > 3) { topsCurrentPic = 1 };

        $('.topsFigs').hide();
        $('#topsFig' + topsCurrentPic).show();
    });

    $('#topsPrevious').click(function () {
        topsCurrentPic = topsCurrentPic - 1;
        if (topsCurrentPic < 1) { topsCurrentPic = 3 };

        $('.topsFigs').hide();
        $('#topsFig' + topsCurrentPic).show();
    });

    $('#rslNext').click(function () {
        rslCurrentPic = rslCurrentPic + 1;
        if (rslCurrentPic > 2) { rslCurrentPic = 1 };

        $('.rslFigs').hide();
        $('#rslFig' + rslCurrentPic).show();
    });

    $('#rslPrevious').click(function () {
        rslCurrentPic = rslCurrentPic - 1;
        if (rslCurrentPic < 1) { rslCurrentPic = 2 };

        $('.rslFigs').hide();
        $('#rslFig' + rslCurrentPic).show();
    });

    $('#soccerNext').click(function () {
        soccerCurrentPic = soccerCurrentPic + 1;
        if (soccerCurrentPic > 4) { soccerCurrentPic = 1 };

        $('.soccerFig').hide();
        $('#soccerFig' + soccerCurrentPic).show();
    });

    $('#soccerPrevious').click(function () {
        soccerCurrentPic = soccerCurrentPic - 1;
        if (soccerCurrentPic < 1) { soccerCurrentPic = 4 };

        $('.soccerFig').hide();
        $('#soccerFig' + soccerCurrentPic).show();
    });

    $('#rotcNext').click(function () {
        rotcCurrentPic = rotcCurrentPic + 1;
        if (rotcCurrentPic > 4) { rotcCurrentPic = 1 };

        $('.rotcFig').hide();
        $('#rotcFig' + rotcCurrentPic).show();
    });

    $('#rotcPrevious').click(function () {
        rotcCurrentPic = rotcCurrentPic - 1;
        if (rotcCurrentPic < 1) { rotcCurrentPic = 4 };

        $('.rotcFig').hide();
        $('#rotcFig' + rotcCurrentPic).show();
    });

    $('#btnMissionNext').click(function () {
        missionCurrentPic = missionCurrentPic + 1;
        if (missionCurrentPic > 5) { missionCurrentPic = 1 };

        $('.missionDivs').hide();
        $('#missDiv' + missionCurrentPic.toString()).removeClass('noDisplay').addClass('block')
    });

    $('#btnMissionPrev').click(function () {
        missionCurrentPic = missionCurrentPic - 1;
        if (missionCurrentPic < 1) { missionCurrentPic = 5 };

        $('.missionDivs').hide();
        $('#missDiv' + missionCurrentPic.toString()).removeClass('noDisplay').addClass('block')
    });

    $("#butHark1").click(function () {
        if ($(this).attr('value') === ' See Reply from Michael Harkins ') {
            $(this).attr('value', ' Return to Article about Harkins Lab ');
            $('#butHark2').attr('value', ' Return to Article about Harkins Lab ');
            $('#harkArt').hide();
            $('#harkResponse').show();
        }
        else {
            $(this).attr('value', ' See Reply from Michael Harkins ')
            $('#harkArt').show();
            $('#harkResponse').hide();
        }
    });

    $("#butHark2").click(function () {
        if ($(this).attr('value') === ' See Reply from Michael Harkins ') {
            $(this).attr('value', ' Return to Article about Harkins Lab ');
            $('#butHark1').attr('value', ' Return to Article about Harkins Lab ');
            $('#harkArt').hide();
            $('#harkResponse').show();
            $('#butHark1').focus();
        }
        else {
            $(this).attr('value', ' See Reply from Michael Harkins ');
            $('#butHark1').attr('value', ' See Reply from Michael Harkins ');
            $('#harkArt').show();
            $('#harkResponse').hide();
            $('#butHark1').focus();

        }
    });

    $('#btngrassShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#grassSlides').show();
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#grassSlides').hide()
        }
    });

    $('#btnhockeyShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#hockeySlides').show();
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#hockeySlides').hide();
        }
    });

    $('#btncommandShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#commandSlides').show();
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#commandSlides').hide();
        }
    });

    $('#btnwiseShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#wiseSlides').show();
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#wiseSlides').hide();
        }
    });

    $('#btnsecAFShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#secAfSlides').show();
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#secAfSlides').hide();
        }
    });

    $('#btnholmesShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#holmesSlides').show();
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#holmesSlides').hide();
        }
    });

    $('#btnAntShowSS').click(function () {
        if ($(this).attr('value') == ' Show Slide Show ') {
            $(this).attr('value', ' Hide Slide Show ');
            $('#antSlides').show();
        }
        else {
            $(this).attr('value', ' Show Slide Show ')
            $('#antSlides').hide();
        }
    });

    $('.news2KnowH1').click(function () {
        myText = $(this).html(); //Get the text inside of the news2KnowH1 that was clicked.
        switch (myText) {
            case "Two distinguished executives receive Presidential Rank Awards - 7/12/2019":
                if ($('#ntkPresidentialPara').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkPresidentialPara').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkPresidentialPara').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkPresitentialH2").offset().top
                }, 500);
                break;
            case "Dr Glenn Sjoden, AFTAC Chief Scientist, Is Leaving":
                if ($('#ntkSjodenPara').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkSjodenPara').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkSjodenPara').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkSjodenH2").offset().top
                }, 500);
                break;
            case "From Uzbekistan to America: One Airman's Tale - 6/27/2019":
                if ($('#ntkUzbekistanPara').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkUzbekistanPara').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkUzbekistanPara').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkUzbekistanH2").offset().top
                }, 500);
                break;
            case "A1C with PhD now a 2Lt - 6/6/2019":
                if ($('#ntkLtPara').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkLtPara').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkLtPara').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkLTH2").offset().top
                }, 500);
                break;
            case "Cannon Shot Nuclear Test - 5/27/2019":
                if ($('#ntkCanonPara').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkCanonPara').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkCanonPara').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkCanonH2").offset().top
                }, 500);
                break;
            case "Secret lab at Patrick Air Force Base - 4/23/2019":
                $('.n2KPara').hide();
                window.open('https://www.floridatoday.com/story/news/2019/04/11/secretive-lab-patrick-afb-watches-nuclear-explosions-worldwide-protecting-u-s/3309294002/?fbclid=IwAR2B316XKXxO7ONk3Rho0tcnesP1GM3ljrMC2fdApPIYDxL92eCvCtyfbGA', '');
                break;
            case "US to boost nuke sniffing with modified C-130s - 4/23/2019":
                if ($('#ntkC130').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkC130').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkC130').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkC130H2").offset().top
                }, 500);
                break;
            case "Using dynamite and TNT to enhance nuclear mission - 4/17/2019":
                if ($('#ntkTNT').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkTNT').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkTNT').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkTNTH2").offset().top
                }, 500);
                break;
            case "Divisional wins lead to state competition for AFTAC mentors - 4/17/2019":
                if ($('#ntkMentors').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkMentors').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkMentors').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkMentorsH2").offset().top
                }, 500);
                break;
            case "Nuclear air sampling aircraft on display at Patrick AFB - 3/14/2019":
                if ($('#ntkSampling').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkSampling').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkSampling').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkNuclearH2").offset().top
                }, 500);
                break;
            case "Rare boat-to-boat transfer executed on the high seas - 3/13/2019":
                if ($('#ntkBoat2Boat').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkBoat2Boat').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkBoat2Boat').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#n2kB2BH2").offset().top
                }, 500);
                break;
            case "Defense Department pushing ahead to merge commissary and exchange systems - 3/13/2019":
                if ($('#ntkExchange').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkExchange').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkExchange').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#n2kCommissaryH2").offset().top
                }, 500);
                break;
            case "Congressional staffers learn about AFTAC’s heritage, mission - 3/13/2019":
                if ($('#ntkStaffers').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkStaffers').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkStaffers').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkStaffersH2").offset().top
                }, 500);
                break;
            case "STEM outreach key to uniting Airmen with students - 2/20/2019":
                if ($('#ntkOutreach').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkOutreach').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkOutreach').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#n2kStemH2").offset().top
                }, 500);
                break;
            case "Another tournament, another trophy for AFTAC Hockey - 1/16/2019":
                if ($('#ntkHockey').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkHockey').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkHockey').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkHockeyH2").offset().top
                }, 500);
                break;
            case "A1C with Ph.D. lands job at nuclear treaty monitoring center - 12/16/2018":
                if ($('#ntkA1C').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkA1C').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkA1C').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkA1CH2").offset().top
                }, 500);
                break;
            case "Our Cardboard Christmas Tree - 11/28/2018":
                if ($('#ntkCardboard').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkCardboard').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkCardboard').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkCardboardH2").offset().top
                }, 500);
                break;
            case "Hoop coaches, life mentors: AFTAC Airmen engage with community youth - 11/16/2018":
                if ($('#ntkHoop').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkHoop').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkHoop').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkHoopH2").offset().top
                }, 500);
                break;
            case "Leadership in a Selfie Culture - 11/6/2018":
                if ($('#ntkSelfie').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkSelfie').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkSelfie').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkSelfieH2").offset().top
                }, 500);
                break;
            case "AFTAC molecular biologist represents Air Force at SWE18 conference - 11/6/2018":
                if ($('#ntkWE18').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkWE18').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkWE18').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkWE18H2").offset().top
                }, 500);
                break;
            case "Air Force Chief Scientist pays visit to treaty monitoring center - 10/22/2018":
                if ($('#ntkChief').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkChief').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkChief').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkChiefH2").offset().top
                }, 500);
                break;
            case "Downrange ‘MacGyvers’ creatively get the job done - 10/3/2018":
                if ($('#ntkMacgyver').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkMacgyver').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkMacgyver').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkMacgyverH2").offset().top
                }, 500);
                break;
            case "Musical Tesla Coil, 3-D printer draws crowd at Science Bowl - 10/2/2018":
                if ($('#ntkTestla').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkTestla').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkTestla').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkTestlaH2").offset().top
                }, 500);
                break;
            case "Creative prototype leads to fielded implementation - 9/20/2018":
                if ($('#ntkProtoType').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkProtoType').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkProtoType').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkProtoTypeH2").offset().top
                }, 500);
                break;
            case "Chemist at AFTAC earns award from national Hispanic organization - 9/19/2018":
                if ($('#ntkChemist').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkChemist').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkChemist').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkChemistH2").offset().top
                }, 500);
                break;
            case "eFAILution Wall:  Failure + Learning = Successful Evolution - 9/18/2018":
                if ($('#ntkFailure').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkFailure').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkFailure').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkFailureH2").offset().top
                }, 500);
                break;
            case "AFTAC Hockey takes trophy at charity match - 9/18/2018":
                if ($('#ntkHockeyWin').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkHockeyWin').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkHockeyWin').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkHockeyWinH2").offset().top
                }, 500);
                break;
            case "Center exercises capability to relocate treaty monitoring mission - 9/6/2018":
                if ($('#ntkRelocate').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkRelocate').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkRelocate').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkRelocateH2").offset().top
                }, 500);
                break;
            case "Breaking the STEM mold, one woman at a time - 8/24/2018":
                if ($('#ntkStemGirls').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkStemGirls').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('.n2KPara').hide();
                    $('#ntkStemGirls').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkStemGirlsH2").offset().top
                }, 500);
                break;
            case "Contractor with treaty monitoring center puts lifesaving skills to the test - 8/24/2018":
                if ($('#ntkSkills').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkSkills').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkSkills').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkSkillsH2").offset().top
                }, 500);
                break;
            case "AFTAC upgrades phone system to enhance security - 8/23/2018":
                if ($('#ntkPhone').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkPhone').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkPhone').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkPhoneH2").offset().top
                }, 500);
                break;
            case "Cop for a Day: AFTAC Airmen learn role of base Security Forces - 8/21/2018":
                if ($('#ntkSFS').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkSFS').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkSFS').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkSFSH2").offset().top
                }, 500);
                break;
            case "Not just a buzzword; AFTAC showcases innovation to ISR community - 7/9/2018":
                if ($('#ntkbuzz').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkbuzz').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkbuzz').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkbuzzH2").offset().top
                }, 500);
                break;
            case "Officials announce 2018 ACC STEM Award winners - 6/26/2018":
                if ($('#ntkstemaward').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkstemaward').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkstemaward').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkstemawardH2").offset().top
                }, 500);
                break;
            case "When the storms of life arise, how do you survive the onslaught? - 6/25/2018":
                if ($('#ntkstorms').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkstorms').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkstorms').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkstormsH2").offset().top
                }, 500);
                break;
            case "New commander inherits newly-structured Air Force organization - 6/20/2018":
                if ($('#ntkchange').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkchange').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkchange').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkchangeH2").offset().top
                }, 500);
                break;
            case "24/7 treaty monitoring center ready for contingency ops - 6/15/2018":
                if ($('#ntkmonitoring').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkmonitoring').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkmonitoring').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkmonitoringH2").offset().top
                }, 500);
                break;
            case "Florida Airmen Skype with Georgia middle school students - 5/12/2018":
                if ($('#ntkskype').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkskype').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkskype').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkskypeH2").offset().top
                }, 500);
                break;
            case "Reorganization brings structure, leadership to treaty monitoring center - 5/9/2018":
                if ($('#ntkcomm').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkcomm').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkcomm').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkcommH2").offset().top
                }, 500);
                break;
            case "Reserve Citizen Airman sets sail as first reserve mission commander - 5/1/2018":
                if ($('#ntkcitizen').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkcitizen').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkcitizen').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkcitizenH2").offset().top
                }, 500);
                break;
            case "DoD’s sole nuclear surveillance unit undergoes organizational change - 4/25/2018":
                if ($('#ntknuclear').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntknuclear').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntknuclear').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntknuclearH2").offset().top
                }, 500);
                break;
            case "With help from Airmen, Boy Scouts earn prestigious merit badge - 4/15/2018":
                if ($('#ntkstem').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkstem').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkstem').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkstemH2").offset().top
                }, 500);
                break;
            case "Treaty Monitoring Center inducts three to its Wall of Honor - 4/4/2018":
                if ($('#ntktreaty').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntktreaty').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntktreaty').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntktreatyH2").offset().top
                }, 500);
                break;
            case "Grass does not grow under this octogenarian’s feet - 3/31/2018":
                if ($('#ntkgrass').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkgrass').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkgrass').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkgrassH2").offset().top
                }, 500);
                break;
            case "AFTAC Hockey Team receives special Congressional recognition - 3/31/2018":
                if ($('#ntkhockey').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkhockey').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkhockey').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkhockeyH2").offset().top
                }, 500);
                break;
            case "25th AF commander immerses into treaty monitoring mission - 3/1/2018":
                if ($('#ntkcommand').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkcommand').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkcommand').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkcommandH2").offset().top
                }, 500);
                break;
            case "Industry Day brings high-tech companies to AFTAC - 2/28/2018":
                if ($('#ntkindust').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkindust').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkindust').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkindustH2").offset().top
                }, 500);
                break;
            case "AFTAC hosts annual WiSE Symposium - 2/15/2018":
                if ($('#ntkwise').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkwise').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkwise').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkwiseH2").offset().top
                }, 500);
                break;
            case "SecAF briefed on AFTAC role in nuclear explosions - 2/15/2018":
                if ($('#ntksecAf').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntksecAf').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntksecAf').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntksecAfH2").offset().top
                }, 500);
                break;
            case "Holmes, Batten pay first visit to nuclear treaty monitoring center - 1/26/2018":
                if ($('#ntkholmes').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkholmes').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkholmes').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkholmesH2").offset().top
                }, 500);
                break;
            case "Airmen travel to Earth’s southernmost point for annual maintenance 1/16/2018":
                if ($('#ntkantarctic').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkantarctic').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkantarctic').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkantarcticH2").offset().top
                }, 500);
                break;
            case "AFTAC civilian, Army Reservist selected for promotion to brigadier general 12/5/2017":
                if ($('#ntkgeneral').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkgeneral').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkgeneral').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkgeneralH2").offset().top
                }, 500);
                break;
            case "AFTAC civilian returns to duty after Hurricane Maria relief efforts 11/30/2017":
                if ($('#ntkmaria').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkmaria').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkmaria').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkmariaH2").offset().top
                }, 500);
                break;
            case "AFTAC names lab after ‘giant’ of nuclear forensics 11/24/2017":
                if ($('#ntkharkins').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkharkins').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkharkins').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkharkinsH2").offset().top
                }, 500);
                break;
            case "Ions and betas and treaties, oh my! 11/8/2017":
                if ($('#ntkions').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkions').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkions').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkionsH2").offset().top
                }, 500);
                break;
            case "AFTAC Airman honored with Valor Award for life-saving actions 9/27/2017":
                //alert("hello");
                if ($('#ntkValor').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkValor').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkValor').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkValorH2").offset().top
                }, 500);
                break;
            case "Nuclear Treaty Monitoring unit cleans up after Hurricane Irma 9/16/2017":
                if ($('#ntkHurricane').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkHurricane').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkHurricane').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkHurricaneH2").offset().top
                }, 500);
                break;

            case "Air Force team monitors North Korean nuclear threat 9/16/2017":
                if ($('#ntkNok').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkNok').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkNok').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkNokH2").offset().top
                }, 500);
                break;

            case "Sixth generation Sailor, first generation Airman 8/29/2017":
                if ($('#ntkSailor').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkSailor').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkSailor').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkSailorH2").offset().top
                }, 500);
                break;

            case "Cyberspace domain critical to Nuclear Treaty Monitoring 8/29/2017":
                if ($('#ntkCyber').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkCyber').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkCyber').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkCyberH2").offset().top
                }, 500);
                break;

            case "Tech Ops Squadron is heartbeat of nuke treaty monitoring from air, sea, space 5/23/2017":
                if ($('#ntkTops').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkTops').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkTops').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkTopsH2").offset().top
                }, 500);
                break;

            case "AFTACers thrill young STEM minds, get surprise visit from HAF 3-star 8/23/2017":
                if ($('#ntkStem').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkStem').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkStem').hide();
                }
                $([document.documentElement, document.body]).animate({
                    scrollTop: $("#ntkStemH2").offset().top
                }, 500);
                break;

            case "Tech Ops Squadron is heartbeat of nuke treaty monitoring from air, sea, space 5/23/2017":
                if ($('#ntkTops').is(':hidden')) {
                    $('.n2KPara').hide();
                    $('#ntkTops').show();
                }
                else {
                    $('.n2KPara').hide();
                    $('#ntkTops').hide();
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
        $('.eventArts').hide();
        $('#openHouseArt').show();
    });

    $('#liCoBreakfast').click(function () {
        $('.eventArts').hide();
        $('#coBreakfast').show();
    });

    $('#mySlideRequest').click(function () {
        $('.ssPics').addClass('noDisplay maroonBorder smallShadow bottomMargin2em');
        if ($(this).html().trim() === 'Show Photos in a Slide Show.') {
            $(this).html('Hide Photos in a Slide Show.');
            $('#slideArt').show();
            $('#sbArticleArt').hide();
            $('.ssPics').addClass('noDisplay').removeClass('block');
            $('#ss' + ssCurrentPic).show();
            //ssCurrentPic = 1;
        }
        else {
            $(this).html('Show Photos in a Slide Show.');
            $('#slideArt').hide();
            //ssCurrentPic = 1;
            $('.ssPics').addClass('noDisplay').removeClass('block');
            $('#sbArticleArt').show();
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
            $('.ssPics').hide();
            $('#ss' + ssCurrentPic).show();
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
            $('#pnlPomoError').show();
        }
        else {
            $('#pnlPomoError').hide();
            $(this).attr('disabled', true);

            CallService();

            $(this).attr('disabled', false);
        }
    });

    $('#aprilPomo').click(function () {
        window.open('https://aftacaa.us/_Pomos/PoMo2019_04.pdf', '');
    });

    $('#augustPomo').click(function () {
        window.open('https://aftacaa.us/_Pomos/PoMo2018_08.pdf', '');
    });

    $('#decemberPomo').click(function () {
        window.open('https://aftacaa.us/_Pomos/PoMo2018_12.pdf', '');
    });

    //**********************************************************************

    //**********************************************************************
    //SnowBall Page

    $('#sbButArticle').click(function () {
        $("video").each(function () { this.pause() });
        $('#sbButVideo1').removeClass('noDisplay').addClass('inline');
        $('#sbButVideo2').removeClass('noDisplay').addClass('inline');
        $(this).removeClass('inline').addClass('noDisplay');
        $('.sbSects').hide();
        $('#mySBArticle').show();
        vid = document.getElementById("sbVideo1");
        vid.currentTime = 0;
    });

    $('#sbButVideo1').click(function () {
        $("video").each(function () { this.pause() });
        $('#sbButArticle').removeClass('noDisplay').addClass('inline');
        $('#sbButVideo2').removeClass('noDisplay').addClass('inline');
        $(this).removeClass('inline').addClass('noDisplay');
        $('.sbSects').hide();
        $('#mySBVideo1').show();
        vid = document.getElementById("vidSBVideo1");
        vid.currentTime = 0;
        $('#vidSBVideo1').trigger('play');
    });

    $('#sbButVideo2').click(function () {
        $("video").each(function () { this.pause() });
        $('#sbButArticle').removeClass('noDisplay').addClass('inline');
        $('#sbButVideo1').removeClass('noDisplay').addClass('inline');
        $(this).removeClass('inline').addClass('noDisplay');
        $('.sbSects').hide();
        $('#mySBVideo2').show();
        vid = document.getElementById("vidSBVideo2");
        vid.currentTime = 0;
        $('#vidSBVideo2').trigger('play');
    });

    $('#h1SBSlideShow').click(function () {
        if ($(this).html() === ' Show Slide Show ') {
            $(this).html(' Hide Slide Show ');
            $('.sbfigs').hide();
            $('#fig1').show();
            $('#divSBSlideShow').show();
            sbCurrentPic = 1;
        }
        else {
            $(this).html(' Show Slide Show ');
            $('#divSBSlideShow').hide();
            $('.sbfigs').hide();
        };
    })

    $('#h1SB2SlideShow').click(function () {
        if ($(this).html() === ' Show Slide Show ') {
            $(this).html(' Hide Slide Show ');
            $('.sb2figs').hide();
            $('#fig1').show();
            $('#divSB2SlideShow').show();
            sb2CurrentPic = 1;
        }
        else {
            $(this).html(' Show Slide Show ');
            $('#divSB2SlideShow').hide();
            $('.sbfigs').hide();
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
            $('#allAwardPhotos').show();
        }
        else {
            $(this).html('Click to see More Pictures')
            $('#allAwardPhotos').hide();
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
            clearInterval(SBSlideShowInt);
        };
    });

    function coReunionSlideShow() {
        coloradoCurrentPic = coloradoCurrentPic + 1;

        if (coloradoCurrentPic > 105) {
            coloradoCurrentPic = 1;
        }
        $('#coPic').attr('src', '_Photos/CoReunion/cr' + coloradoCurrentPic + '.jpg').attr('alt', 'cr' + coloradoCurrentPic + '.jpg')
    };

    function aftacDOSlideShow() {
        aftacDiningCurrentPic = aftacDiningCurrentPic + 1;

        if (aftacDiningCurrentPic > 20) {
            aftacDiningCurrentPic = 1;
        }
        $('#DOpic').attr('src', '_Photos/Dining/DO' + aftacDiningCurrentPic + '.jpg').attr('alt', 'DO' + aftacDiningCurrentPic + '.jpg')
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

