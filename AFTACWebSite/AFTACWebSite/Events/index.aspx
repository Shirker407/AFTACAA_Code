<!DOCTYPE html>
<!--
    Google Maps API Key 
    AIzaSyASU9ve34aQo_xS2jkzYzXb8VccKcQtqoI
    Restricted to aftacaa.us only
-->
<html>
	<head>
		<title>Home | AFTAC ALUMNI</title>
		<link  rel="stylesheet" type="text/css" href="css/jtfw.css">
        <script type="text/javascript" src="js/dynamic_data.js"></script>
            <style>
      #map {
        height: 400px;
        
       }
    </style>
	</head>
	<body onload="getEvents()">
		<div class="jtfw-col-12">
			<!-- Page content -->
				<div class="jtfw-row jtfw-header">
					<div class="jtfw-header-menu-bar jtfw-row">
						<div class="jtfw-col-1"><img class="jtfw-image" src="images/AFTAC_Shield.png"></div>
						<div class="jtfw-col-10 jtfw-header-menu-format jtfw-header-menu-text" style="text-align: center;"><asp:Label runat="server" id="HelloWorldLabel"></asp:Label>AFTAC Alumni Association</div>
					</div>
				</div>
				<div class="jtfw-container jtfw-row jtfw-col-12 jtfw-col-center">
					<div class="jtfw-col-2" id="eventList">
						<!-- Page Events -->

					</div>
					<div class="jtfw-col-8">
						<!-- Page Main -->
                        <h2 style="text-align: center">Event</h2>
                        <div id="dynamic_content" class="jtfw-event-panel jtfw-event-panel-shadow">
                        </div>
					</div>

					<div class="jtfw-col-2">
						<!-- Page News -->
						<h2 style="text-align: center">NEWS</h2>
                        <div class="jtfw-content-panel jtfw-content-panel-shadow">
							<div class="jtfw-content-panel-title">NEXT ALUMNI MEETING</div>
							<div class="jtfw-content-panel-info">
								<span style="font-weight: bold">Location:</span>Beef O'Bradys<br/>
								<span style="font-weight: bold">Date:</span> Monday, 11 December<br/>
								<span style="font-weight: bold">Time:</span> 1130 Hrs
							</div>
                        </div>
						<div class="jtfw-content-panel jtfw-content-panel-shadow">
							<div class="jtfw-content-panel-title">HOT TOPICS</div>
							<div class="jtfw-content-panel-info">
							    TRICARE Cost Changes in 2018<br/>
							    Election Results<br/>
							    Disney Military Discounts 2018<br/>
							    2017 AFTAC Worldwide Reunion<br/>
							</div>
						</div>
					</div>
				</div>
        </div>
		<div class="jtfw-footer jtfw-footer-fixed">
			© AFTAC Alumni | <span style="color: red">2017</span>
		</div>

        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASU9ve34aQo_xS2jkzYzXb8VccKcQtqoI&callback=apiReady">
            var dynamicAddress = "";
        </script>
	</body>
</html>
