var xmlhttp = new XMLHttpRequest();
var apiLoaded = 0;
var urlKeyValue;
function getEvents()
{
    //investigate url
    urlKeyValue = parseUrl(location.search);
    getData("data/events.aspx?action=event_getall", loadEvents);
    console.log(urlKeyValue);
    if (urlKeyValue.action === "event_get")
    {
        if (urlKeyValue.event_id && urlKeyValue.event_id > 0)
        {
            getData("data/events.aspx?action=event_get&event_id=" + urlKeyValue.event_id, loadEvent);
        }
    }
}

function parseUrl(url)
{
    var urlStruct = {};
    url = url.substring(1);
    urlTokens = url.split("&");
    for (var i = 0; i < urlTokens.length; i++)
    {
        urlStruct[urlTokens[i].split("=")[0]] = urlTokens[i].split("=")[1];
    }
    return urlStruct;
}
function getEvent(eventid)
{
    getData("data/events.aspx?action=event_get&event_id=" + eventid, loadEvent);
    //location.search = "data / events.aspx ? action = event_get & event_id=" + eventid;
    window.history.pushState("", "", location.href.split("?")[0] + "?action=event_get&event_id=" + eventid);
}

function getData(url, callback)
{
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            callback();
        }
    };
    xmlhttp.open("POST", url, false);
    xmlhttp.send();
}


function loadEvents()
{
    var eventList = document.getElementById("eventList");
    eventList.innerHTML = xmlhttp.responseText;
}

function loadEvent()
{
    var json = JSON.parse(xmlhttp.responseText);
    var eventDetail = document.getElementById("dynamic_content");
    eventDetail.innerHTML = json.html;
    geocodeAddress(json.address);
}

function apiReady()
{
    apiLoaded = 1;
    //var address = "10989 South Patrick Dr Patrick AFB Fl 32925";
    //console.log("apiReady : " + address );
    //geocodeAddress(address);
}
// need to make geocoding static.  need to get lat long during event entry.
function geocodeAddress(addressed) {
    if (addressed !== '')
    {
        var map = new google.maps.Map(document.getElementById('map'));
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode({ 'address': addressed }, function (results, status) {
            if (status === 'OK') {
                console.log(results);
                map.setCenter(results[0].geometry.location);
                map.setZoom(16);
                var marker = new google.maps.Marker({
                    map: map,
                    position: results[0].geometry.location
                });
            }
            else {
                alert("Geocode was not successful for the following reasons: " + status);
            }
        });
    }
}