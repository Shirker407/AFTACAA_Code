<%@ import Namespace="System.Data.SqlClient" %>
<%@ import Namespace="System" %>
<%@ Page Language="C#" %>
<%

    NameValueCollection eventQuery = HttpUtility.ParseQueryString(Request.Url.Query);

    if(eventQuery["action"] == "event_getall")
    {
        Response.Write("<h2 style='text-align: center'>EVENTS</h2>");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AFTACConnectionString"].ConnectionString);
        SqlCommand com = new SqlCommand("Select * FROM EVENT", con);
        con.Open();
        SqlDataReader events;
        events = com.ExecuteReader();

        while(events.Read())
        {
            DateTime startdate = DateTime.Parse(events["EVENT_START"].ToString());
            Response.Write("<div onclick='getEvent(\"" + events["EVENT_ID"] + "\")' class='jtfw-article jtfw-article-shadow  jtfw-prompt-default jtfw-left'>");
            Response.Write("<div class='jtfw-article-image-container'>");
            Response.Write("<img class='jtfw-article-image' alt='image not found' src='" + events["EVENT_IMAGE_URL"] + "'/>");
            Response.Write("</div>");
            Response.Write("<div class='jtfw-article-title'>");
            Response.Write(events["EVENT_TITLE"] + " <br/>");
            Response.Write("</div>");
            Response.Write("<div class='jtfw-article-info'>");
            Response.Write(startdate.ToString("MMMM dd, yyyy") + " @ " + startdate.ToString("HH:mm") + " <br/>");
            Response.Write("</div>");
            Response.Write("</div>");
        }
        con.Close();
    }
    else if(eventQuery["action"] == "event_get")
    {


        string id = eventQuery["event_id"];
        StringBuilder sb = new StringBuilder();
        // Get event Data
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AFTACConnectionString"].ConnectionString);
        SqlCommand com = new SqlCommand("Select * FROM EVENT WHERE EVENT_ID = " + id, con);
        con.Open();
        SqlDataReader events;
        events = com.ExecuteReader();
        events.Read();
        DateTime startdate = DateTime.Parse(events["EVENT_START"].ToString());
        DateTime stopdate = DateTime.Parse(events["EVENT_STOP"].ToString());
        sb.Append("<div class=\"jtfw-event-panel-title\">" + events["EVENT_TITLE"] + "</div>");
        sb.Append("<div class=\"jtfw-event-panel-info jtfw-row\">");
        sb.Append("<div class=\"jtfw-col-4\">");
        sb.Append("<div  style=\"padding-left: 25px\">");
        sb.Append("<div style=\"text-align: center; font-size: 25px\">Details</div>");
        sb.Append("<div style=\"padding-top: 10px\"><span style=\"font-weight: bold; color: cornflowerblue\">Location:</span><br/>" + events["EVENT_LOCATION"] + "<br/></div>");
        sb.Append("<div style=\"padding-top: 10px\"><span style=\"font-weight: bold; color: cornflowerblue\">Date:</span><br/>" + startdate.ToString("dddd, dd MMMM") + "<br/></div>");
        sb.Append("<div style=\"padding-top: 10px\"><span style=\"font-weight: bold; color: cornflowerblue\">Time:</span><br/>" + startdate.ToString("HHmm") + " - " + stopdate.ToString("HHmm") + "</div>");
        sb.Append("</div>");
        sb.Append("</div>");
        sb.Append("<div class=\"jtfw-col-4\">");
        sb.Append("<div class=\"jtfw-event-panel\">" + events["EVENT_BODY"] + "</div>");
        sb.Append("</div>");
        sb.Append("<div class=\"jtfw-col-4\">");
        sb.Append("<div style=\"text-align: center; font-size: 25px\">Location</div>");
        sb.Append("<div id=\"map\"></div>");

        sb.Append("<script type=\"text/javascript\">dynamicAddress= \"" + events["EVENT_ADDRESS"] + "\";</script>");
        sb.Append("</div>");
        sb.Append("</div>");
        
        var json = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(new { html = sb.ToString(), address = events["EVENT_ADDRESS"] });
        Response.Write(json);
        con.Open();
        // Get Event POCs

        // Get Event Attachments

    }
%>
