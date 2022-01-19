Imports System.Net.Mail

Public Class _Default
    Inherits System.Web.UI.Page
    Private action As String
    Private pb As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ds As New DataSet
        Dim sb As New StringBuilder
        Dim ws As New myService
        Dim sql As String

        If Not IsPostBack Then

            Session("lstObit") = -1

            If Session("Action") = "Menu" Then
                action = "Menu"
                Session("Action") = ""
            Else
                action = ""
            End If

            lstNamesData = New DataSet

            sql = "Exec ArchiveNames"
            Get_Dataset(sql, lstNamesData, "ArchiveNames")

            ddObitNames.DataSource = lstNamesData.Tables("ArchiveNames")
            ddObitNames.DataTextField = "Name"
            ddObitNames.DataValueField = "ID"
            ddObitNames.DataBind()
        End If
    End Sub

    Private Sub _Default_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete
        Dim sb As New StringBuilder
        Dim sql As String = ""
        Dim ds As New DataSet

        If action = "ShowList" Then
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wallArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#hideListings').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wallPic').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wallListings').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wallImg').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "Password" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#passwordArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "PasswordSubmit" Then
            Dim pw As String
            Dim admin As Int16
            sb = New StringBuilder
            ds = New DataSet
            PWuser = txtPWUserName.Text

            If Len(txtPWUserName.Text) < 1 Then
                sb.Append("<script>")
                sb.Append("$('.pwErrs').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#pwErrBox').removeClass('noDisplay').addClass('block');")
                sb.Append("$('#pwErrBox').html(""<p class='centerText redText pTitle'>You did not enter your User Name.</p>"");")
                sb.Append("$('#passwordArt').removeClass('noDisplay').addClass('block');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                Exit Sub
            End If

            sql = "SELECT Password, Admin from Passwords Where UserName = '" & PWuser & "'"
            Get_Dataset(sql, ds)

            If ds.Tables(0).Rows.Count = 0 Then
                sb.Append("<script>")
                sb.Append("$('.pwErrs').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#pwErrBox').removeClass('noDisplay').addClass('block');")
                sb.Append("$('#pwErrBox').html(""<p class='centerText redText pTitle'>Your User Name was Not in the database.</p>"");")
                sb.Append("$('#passwordArt').removeClass('noDisplay').addClass('block');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                Exit Sub
            End If
            If ds.Tables(0).Rows(0).Item("Admin") < 1 Then
                sb.Append("<script>")
                sb.Append("$('.pwErrs').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#pwErrBox').removeClass('noDisplay').addClass('block');")
                sb.Append("$('#pwErrBox').html(""<p class='centerText redText pTitle'>You are not Authorized to be here.</p>"");")
                sb.Append("$('#passwordArt').removeClass('noDisplay').addClass('block');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                Exit Sub
            End If
            If Len(txtPWPassword.Text) < 1 Then
                sb.Append("<script>")
                sb.Append("$('.pwErrs').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#pwErrBox').removeClass('noDisplay').addClass('block');")
                sb.Append("$('#pwErrBox').html(""<p class='centerText redText pTitle'>You did not enter your Password.</p>"");")
                sb.Append("$('#passwordArt').removeClass('noDisplay').addClass('block');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                Exit Sub
            End If
            If ds.Tables(0).Rows(0).Item("Password") <> txtPWPassword.Text Then
                sb.Append("<script>")
                sb.Append("$('.pwErrs').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#pwErrBox').removeClass('noDisplay').addClass('block');")
                sb.Append("$('#pwErrBox').html(""<p class='centerText redText pTitle'>Your Password is incorrect.</p>"");")
                sb.Append("$('#passwordArt').removeClass('noDisplay').addClass('block');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                Exit Sub
            End If

            pw = ds.Tables(0).Rows(0).Item("Password")
            admin = ds.Tables(0).Rows(0).Item("admin")

            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#adminMenuArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)

            Response.Cookies("UserName").Value = PWuser
            Response.Cookies("AdminLevel").Value = GetAdminLevel(PWuser)
        ElseIf action = "openPasswordChange" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#changepasswordArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "memberadmin" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "Menu" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#adminMenuArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "ddObitsClicked" Then
            Dim FullName As String = Session("lstName")
            Dim x As Int32

            sql = "Select id, Obituary from obits where FullName = '" & FullName.Replace("*", "") & "'"

            'This "For Loop" will move the list box to the selected name"
            For x = 0 To ddObitNames.Items.Count - 1
                If ddObitNames.Items(x).Text = FullName Then
                    Exit For
                End If
            Next

            ds = New DataSet
            Get_Dataset(sql, ds)

            idx = ds.Tables(0).Rows(0).Item(0)

            If ds.Tables(0).Rows(0).Item(1) & "" <> "" Then
                myObitArt.InnerHtml = ds.Tables(0).Rows(0).Item(1)
            Else
                Dim s As String
                s = "<div id='notIncluded' Class='alumArt block'><img alt = 'Not Included' Class='autoMarginLeftRight width30 topMargin2em maroonBorder smallShadow' src='_Images/Not Included.jpg' /><p Class='pTitle centerText'>This page Is still under construction.<br />We are still looking for some documentation.</p></div>"
                myObitArt.InnerHtml = s 'No Obit for this individual. Put string "s" in myObitArt 
            End If

            'End If

            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#obituariesArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#currentObits').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#archivedObits').removeClass('noDisplay').addClass('block');")
            sb.Append("$([document.documentElement, document.body]).animate({scrollTop: $(""#obituariesArt"").offset().top}, 500);")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "butObitSearchClicked" Then
            Dim x As Int32
            Dim FullName As String = Session("lstName")
            Dim ok As Boolean = False

            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#obituariesArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#currentObits').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#archivedObits').removeClass('noDisplay').addClass('block');")
            sb.Append("$([document.documentElement, document.body]).animate({scrollTop: $(""#obituariesArt"").offset().top}, 500);")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)

            obitErrMess.Visible = False

            txtObitSearch.Text = ""

            For x = 0 To ddObitNames.Items.Count - 1
                If UCase(ddObitNames.Items(x).Text) Like (Session("lstName") & "*") Then
                    ok = True
                    Exit For
                End If
            Next

            If ok Then
                sql = "Select id, Obituary from obits where ID = " & ddObitNames.Items(x).Value

                ds = New DataSet
                Get_Dataset(sql, ds)

                If ds.Tables(0).Rows(0).Item(1) & "" <> "" Then
                    myObitArt.InnerHtml = ds.Tables(0).Rows(0).Item(1)
                    ddObitNames.SelectedIndex = x
                Else
                    Dim s As String
                    s = "<div id='notIncluded' Class='alumArt block'><img alt = 'Not Included' Class='autoMarginLeftRight width30 topMargin2em maroonBorder smallShadow' src='_Images/Not Included.jpg' /><p Class='pTitle centerText'>This page Is still under construction.<br />We are still looking for some documentation.</p></div>"
                    myObitArt.InnerHtml = s 'No Obit for this individual. Put string "s" in myObitArt 
                    ddObitNames.SelectedIndex = x
                End If
            Else
                sb = New StringBuilder
                obitErrMess.Visible = True
                'sb.Append("<script>")
                'sb.Append("$('#obitErrMess').removeClass('noDisplay').addClass('block');")
                'sb.Append("</script>")
                ddObitNames.SelectedIndex = 0
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
            End If

        ElseIf action = "eall" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#eallArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#localeallArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "allmail" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#allMailArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "modlog" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#modlog').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "WOH" Then
            Dim pre, first, last, verb As String, pic As String, myTitle As String
            sb = New StringBuilder

            pre = dsWOH.Tables("wohData").Rows(0).Item("Prefix")
            first = dsWOH.Tables("wohData").Rows(0).Item("FirstName")
            last = dsWOH.Tables("wohData").Rows(0).Item("LastName")
            pic = "_Photos/WOH/" & dsWOH.Tables("wohData").Rows(0).Item("Picture")
            verb = dsWOH.Tables("wohData").Rows(0).Item("Verbage")
            myTitle = pre & " " & first & " " & last

            verb = Replace(verb, "<br/><br/>", vbNewLine)
            verb = Replace(verb, "<br /><br />", vbNewLine)

            wohName.Text = myTitle
            wohImg.ImageUrl = pic
            wohVerbage.Text = verb

            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#honorArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wohMainImg').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wohDiv').removeClass('noDisplay').addClass('block');")
            'sb.Append("$('#wohName').html('" + myTitle + "');")
            'sb.Append("$('wohImg').attr('src','" + pic + "');")
            'sb.Append("$('wohImg').attr('alt','" + dsWOH.Tables("wohData").Rows(0).Item("Picture") + "');")
            'sb.Append("$('wohVerbage').html('" + verb + "');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "localeall" Then
            Dim r As DataRow
            Dim x As Int32 = 0

            ds = New DataSet
            sql = "Exec LocalEAll"
            txtLocalEalls.Text = ""
            Get_Dataset(sql, ds, "List")

            For Each r In ds.Tables("List").Rows
                Dim s As String = r.Item("Email")
                If ValidEmail(s) Then
                    sb.Append(s + "; ")
                    x = x + 1
                Else
                    ds.Tables("List").Rows(x).Delete()
                End If
            Next

            ds.Tables("List").DefaultView.Sort = "Name ASC"

            gvLocalList.DataSource = ds.Tables("List")
            gvLocalList.DataBind()

            localEallTitle.Text = "Florida Eall Address Report"
            lblEallMess.Text = "All Florida Ealls"
            txtLocalEalls.Text = sb.ToString

            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#localeallArt').removeClass('noDisplay').addClass('block');")
            'sb.Append("$('#localEallTitle').html('Local E-All Address Report')")
            sb.Append("$([document.documentElement, document.body]).animate({scrollTop: $('#localEallTitle').offset().top}, 500);")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "localEallMod" Then
            Dim r As DataRow

            sql = "Exec LocalEAllModified"
            txtLocalEalls.Text = ""

            Get_Dataset(sql, ds)

            For Each r In ds.Tables(0).Rows
                Dim s As String = r.Item("Email")
                If ValidEmail(s) Then
                    sb.Append(s + "; ")
                End If
            Next

            'lblYoungMess.Text = "321xx, 327xx, 328xx, 329xx, 338xx, 347xx, 349xx"

            txtLocalEalls.Text = sb.ToString

            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#localeallArt').removeClass('noDisplay').addClass('block');")
            'sb.Append("$('#localEallTitle').html('Florida Eall Address Report');")
            sb.Append("$([document.documentElement, document.body]).animate({scrollTop: $('#localEallTitle').offset().top}, 500);")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "ChangeFlList" Then
            Select Case butSelList.Text
                Case " Show Data in Grid "
                    butSelList.Text = " Show Data in List "
                    flGrid.Visible = True
                    flList.Visible = False
                Case " Show Data in List "
                    butSelList.Text = " Show Data in Grid "
                    flGrid.Visible = False
                    flList.Visible = True
            End Select

            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#localeallArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "butEmailLookupClicked" Then
            txtEMailLook.Text = ""
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#emailLookupArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#emlInfo').removeClass('noDisplay');")
            sb.Append("$('#emlMess').addClass('noDisplay');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "GoodEMail" Then
            sql = "Exec GetInfobyEmail'" + txtEMailLook.Text + "'"

            If Not ValidEmail(txtEMailLook.Text) Then
                sb = New StringBuilder
                sb.Append("<script>")
                sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#emailLookupArt').removeClass('noDisplay').addClass('block');")
                sb.Append("$('#emlInfo').addClass('noDisplay');")
                sb.Append("$('#emlMess').removeClass('noDisplay');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                lblerrMess.ForeColor = Drawing.Color.Red
                lblerrMess.Text = "You have entered an Invalid Email Address"
                Exit Sub
            End If

            ds = New DataSet
            Get_Dataset(sql, ds)

            If ds.Tables(0).Rows.Count = 0 Then
                sb = New StringBuilder
                sb.Append("<script>")
                sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#emailLookupArt').removeClass('noDisplay').addClass('block');")
                sb.Append("$('#emlInfo').addClass('noDisplay');")
                sb.Append("$('#emlMess').removeClass('noDisplay');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                lblerrMess.ForeColor = Drawing.Color.Red
                lblerrMess.Text = "This email address is not in the database."
                Exit Sub
            End If

            lblemlName.Text = "Name: " & ds.Tables(0).Rows(0).Item("Name")
            lblemlAddress.Text = "Address: " & ds.Tables(0).Rows(0).Item("Address")
            lblemlCity.Text = "City: " & ds.Tables(0).Rows(0).Item("City")
            lblemlState.Text = "State: " & ds.Tables(0).Rows(0).Item("State")
            lblemlZip.Text = "Zip: " & ds.Tables(0).Rows(0).Item("ZipCode")
            lblemlPhone.Text = "Phone: " & UnFixMyPhone(ds.Tables(0).Rows(0).Item("Phone"))
            lblemlCell.Text = "Cell Phone: " & UnFixMyPhone(ds.Tables(0).Rows(0).Item("CellPhone"))

            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#emailLookupArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#emlInfo').removeClass('noDisplay');")
            sb.Append("$('#emlMess').addClass('noDisplay');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "BadEMail" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#emailLookupArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
            lblerrMess.ForeColor = Drawing.Color.Red
            lblerrMess.Text = "You have not entered an Email Address"
        ElseIf action = "ReturntoAdminMenu" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#adminMenuArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        Else
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#defaultArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
            winnerPnl.Visible = False
        End If
    End Sub

    Private Sub SendMail()
        Try

            Dim SmtpServer As New SmtpClient()
            Dim mail As New MailMessage()
            SmtpServer.UseDefaultCredentials = False
            SmtpServer.Credentials = New Net.NetworkCredential("aftacaawebmaster@gmail.com", "Shirley@6")
            SmtpServer.EnableSsl = True
            SmtpServer.Port = 465
            SmtpServer.Host = "smtp.gmail.com"
            SmtpServer.DeliveryMethod = SmtpDeliveryMethod.Network

            mail = New MailMessage
            mail.From = New MailAddress("aftacaawebmaster@gmail.com")
            mail.To.Add("pete@seagullusa.net")
            mail.Subject = "This is the subject"
            mail.Body = "This is the body"

            SmtpServer.Send(mail)

            MsgBox("Mail Sent")

        Catch ex As Exception

            MsgBox(Err.Number & vbNewLine & ex.Message)

        End Try
    End Sub

    Protected Sub btnClark_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Mike Clark'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnDeMarco_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Tony Demarco'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnHarris_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Eunice Harris'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnHorsch_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'John T. Horsch'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnSilhanek_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Larry D. Silhanek'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnWhitney_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Donald Whitney'", dsWOH, "wohData")
        action = "WOH"
    End Sub
    Protected Sub btnHall_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Frank Hall'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnMacInnes_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Michael MacInnes'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnRothe_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'George H. Rothe III'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnMcClelland_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Bill McClelland'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnSpencer_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Sue Spencer'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnWiley_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Bob Wiley'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnDavis_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'James C. Davis'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnMarshall_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Joseph D. Marshall'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnPavik_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Alvin L. Pavik'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnButler_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Charles A. Butler'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnHarkins_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Michael L. Harkins'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnLeies_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Gerard M. Leies'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnCiambrone_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Thomas Ciambrone'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnHayden_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Howard Hayden'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnKniedler_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Marc Kniedler'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnKniedler_Click1(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Marc Kniedler'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnLeggett_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Kathy Leggett'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnMcBrearty_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Charles McBrearty, Jr.'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnNiquette_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Thomas Niquette'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnNorthrup_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Doyle Northrup'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnOwen_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Marvin Owen'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnPilotte_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Frank F. Pilotte'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnRomney_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Carl Romney'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnSinglevich_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Walter Singlevich'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnSolari_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Delbe Solari'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnModLog_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet
        Dim sql As String = "Exec Mod_Log_Report"

        Get_Dataset(sql, ds)

        gvModLog.DataSource = ds.Tables(0)
        gvModLog.DataBind()

        action = "modlog"
    End Sub

    Protected Sub btnPasswordReturn_Click(sender As Object, e As EventArgs)
        action = "password"
    End Sub

    Protected Sub btnChangePW_Click(sender As Object, e As EventArgs)
        PWuser = txtPWUserName.Text
        action = "openPasswordChange"
    End Sub

    Protected Sub btnCancelChange_Click(sender As Object, e As EventArgs)
        action = "password"
    End Sub

    Protected Sub btnSubmitChangePW_Click(sender As Object, e As EventArgs)
        action = "passwordSubmitChange"
    End Sub

    Private Function chkCredentials(name As String, password As String) As Boolean
        Dim sql As String
        Dim ds As New DataSet

        sql = "exec CheckPassword '" & name & "','" & password & "'"

        Get_Dataset(sql, ds)

        If ds.Tables(0).Rows.Count = 0 Then
            Return False
        ElseIf password <> ds.Tables(0).Rows(0).Item("Password") Then
            Return False
        Else
            Return True
        End If

    End Function

    Private Function isAdmin(name As String) As Boolean
        Dim ds As New DataSet
        Dim sql As String = "exec isadmin '" & name & "'"

        Get_Dataset(sql, ds)

        If ds.Tables(0).Rows(0).Item("admin") = 0 Then
            Return False
        Else
            Return True
        End If
    End Function

    Function getCommand(s As String) As String

        If s = "" Then
            Return ""
        Else
            Select Case s
                Case "CCS"
                    Return "Command Superintendent"
                Case "SEA"
                    Return "Senior Enlisted Advisor"
                Case "CC"
                    Return "Commander"
                Case Else
                    Return ""
            End Select
        End If
    End Function

    Function GetDeceased(address As String) As String
        If UCase(address) Like "*DECEASED*" Then
            Return "1"
        Else
            Return "0"
        End If
    End Function

    Function ConvertBoolean(b As Boolean) As String
        If b = True Then
            Return "1"
        Else
            Return "0"
        End If
    End Function

    Function ConvertDate(d As String) As String
        Dim p As Int16

        If d = "" Then
            Return ""
        Else
            p = InStr(d, " ")

            If p = 0 Then
                Return d
            Else
                Return Mid$(d, 1, p - 1)
            End If
        End If

    End Function

    Function GetPhone(P As String) As String

        Try
            If Len(P) = 0 Then
                Return ""
            End If
        Catch
            Return ""
        End Try

        If P = 0 Then
            Return ""
        Else
            Return P.ToString
        End If
    End Function

    Function GetChapters(cal As Boolean, Col As Boolean, F As Char) As String
        Dim temp As String = ""

        If cal = True Then
            temp = temp & "1"
        End If

        If Col = True Then
            temp = temp & "2"
        End If

        If F = "Y" Then
            temp = temp & "3"
        End If

        Return temp
    End Function

    Function getZip(p As String, z As String) As String
        Dim temp As String
        Dim zip As String

        temp = p

        If Len(temp) = 0 Then
            Return ""
        Else
            zip = z
            If Len(zip) = 0 Then
                Return temp
            Else
                Return temp + "-" + zip
            End If
        End If

        Return ""
    End Function

    Protected Sub modLogReturn_Click(sender As Object, e As EventArgs)
        action = "Menu"
    End Sub

    Protected Sub btnMemberReturn_Click(sender As Object, e As EventArgs)
        myaction = "menu"
    End Sub

    Protected Sub elladdresses_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet
        Dim sql As String = "Exec GetEAll_List"
        Dim r As DataRow
        Dim sb As New StringBuilder

        txtEalls.Text = ""

        Get_Dataset(sql, ds)

        For Each r In ds.Tables(0).Rows
            Dim s As String = r.Item("Email")
            If ValidEmail(s) Then
                sb.Append(s + "; ")
            End If
        Next

        txtEalls.Text = sb.ToString

        action = "eall"
    End Sub

    Protected Sub allemail_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet
        Dim sql As String = "Exec Get_All_Email"
        Dim r As DataRow
        Dim sbgood As New StringBuilder
        Dim sbbad As New StringBuilder

        txtEalls.Text = ""

        Get_Dataset(sql, ds)

        For Each r In ds.Tables(0).Rows
            If ValidEmail(r.Item(0)) Then
                sbgood.Append(r.Item(0) + "; ")
            Else
                sbbad.Append(r.Item(0) + vbNewLine)
            End If
        Next

        txtGood.Text = sbgood.ToString
        txtBad.Text = sbbad.ToString

        action = "allmail"
    End Sub

    Protected Sub localelladdresses_Click(sender As Object, e As EventArgs)
        action = "localeall"
    End Sub

    Protected Sub localelladdresses2_Click(sender As Object, e As EventArgs)
        action = "localEallMod"
    End Sub

    Protected Sub btnYourSubmit_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet
        Dim sql As String = ""
        Dim sb As New StringBuilder

        action = "contest"

    End Sub

    Protected Sub btnPickWinner_Click(sender As Object, e As EventArgs)
        action = "PickWinner"
    End Sub

    Protected Sub btnPickAnother_Click(sender As Object, e As EventArgs)
        action = "PickAnother"
    End Sub

    Protected Sub btnPWSubmit_Click(sender As Object, e As EventArgs)
        PWuser = txtPWUserName.Text
        action = "PasswordSubmit"
    End Sub

    Protected Sub alumniLogo_Click(sender As Object, e As ImageClickEventArgs)
        action = "Password"
    End Sub

    Protected Sub btnReturnToMenu_Click(sender As Object, e As EventArgs)
        action = "MenuReturn"
    End Sub

    Protected Sub btnWinReturnMenu_Click(sender As Object, e As EventArgs)
        action = "winReturn"
    End Sub

    Protected Sub btnMemAdmin_Click(sender As Object, e As EventArgs)
        Response.Redirect("Membership.aspx")
    End Sub

    Protected Sub btnPWReturn_Click(sender As Object, e As EventArgs)
        action = ""
    End Sub

    Protected Sub btnEnterSite_Click(sender As Object, e As EventArgs)
        action = "Menu"
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        SendMail()
    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs)
        Ping()
    End Sub

    Protected Sub btnRsvp_Click(sender As Object, e As EventArgs)
        Response.Redirect("_pdfs/SnowballRSVP.pdf")
    End Sub

    Protected Sub butSelList_Click(sender As Object, e As EventArgs)
        action = "ChangeFlList"
    End Sub

    Protected Sub ddObitNames_SelectedIndexChanged(sender As Object, e As EventArgs)
        Session("lstName") = ddObitNames.SelectedItem.Text
        action = "ddObitsClicked"
    End Sub

    Protected Sub butObitSearch_Click(sender As Object, e As EventArgs)
        Session("lstName") = UCase(txtObitSearch.Text)
        action = "butObitSearchClicked"
    End Sub

    Protected Sub btnEmailLookup_Click(sender As Object, e As EventArgs)
        action = "butEmailLookupClicked"
    End Sub

    Protected Sub btnemlSearch_Click(sender As Object, e As EventArgs)
        If Len(txtEMailLook.Text) > 1 Then
            action = "GoodEMail"
        Else
            action = "BadEMail"
        End If
    End Sub

    Protected Sub btnemlReturntoMenu_Click(sender As Object, e As EventArgs)
        action = "ReturntoAdminMenu"
    End Sub

    'Protected Sub btnMainMenu_Click(sender As Object, e As EventArgs)
    '    Dim sb As New StringBuilder
    '    sb.Append("<script>")
    '    sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
    '    sb.Append("$('#defaultArt').removeClass('noDisplay').addClass('block');")
    '    sb.Append("</script>")
    '    ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
    'End Sub

    'Protected Sub btnShowMinutes_Click(sender As Object, e As EventArgs)
    '    Dim sb As New StringBuilder
    '    sb.Append("<script>")
    '    sb.Append("alert('Hello')")
    '    sb.Append("subclicked = true;")
    '    sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
    '    sb.Append("$('#MinutesArt').removeClass('noDisplay').addClass('block');")
    '    sb.Append("</script>")
    '    ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
    'End Sub

End Class