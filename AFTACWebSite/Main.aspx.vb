Imports System.Net.Mail
Imports System.Net
Imports System.Text.RegularExpressions


Public Class _Default
    Inherits System.Web.UI.Page
    Dim globalData As DataSet
    Dim action As String = "Default"
    Dim PWUser As String 'The Name of the person that is logged in.
    Dim pb As Boolean
    Dim _id As Int32
    Dim currentindex As Int32
    Dim ListType As String = "Name"
    Dim isSearch As Boolean = False
    Dim blank As String = ""
    'Dim Users_Ip As String = GetExternalIP().ToString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ds As New DataSet
        Dim sb As New StringBuilder
        Dim ws As New myService

        If Not IsPostBack() Then
            'sb.Append("<script>")
            'sb.Append("$.getJSON('https://example.com/get_ip', function(data) {alert(JSON.stringify(data, null, 2));")
            'sb.Append("</script>")
            'RunScript(sb.ToString)

            hfSearchStatus.Value = ""

            action = "Default"
        End If
    End Sub

    Private Sub Default_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete
        Dim sb As New StringBuilder
        Dim sql As String = ""
        Dim ds As New DataSet

        Select Case action
            Case "Default"
                OpenArticle("defaultArt")
                ScrollTo("defaultArt")
                If Not IsPostBack() Then
                    UpdateLogins("Login")
                Else
                    UpdateLogins("Main")
                End If
            Case "btnDeceased_Click"
                If btnDeceased.Text = "Hide Deceased" Then
                    btnDeceased.Text = "Show Deceased"
                    lblListTitle.Text = getAction() & " Database<br/>Deceased Hidden"
                    UpdateLogins("Decdeased Hidden")
                Else
                    btnDeceased.Text = "Hide Deceased"
                    lblListTitle.Text = getAction() & " Database<br/>Deceased Shown"
                    UpdateLogins("Decdeased Swhown")
                End If

                GetList()

                UpdateLogins("Membership Opened")
                OpenArticle("MembershipArt")
                ScrollTo("MembershipArt")

            Case "btnSearch_Click"
                If Len(txtSearch.Text) < 1 Then
                    lblMemCount.Text = "Nothing in Search Box"
                    lstMembers.Items.Clear()
                    OpenArticle("MembershipArt")
                    ScrollTo("MembershipArt")
                    Exit Sub
                End If
                GetList()
                OpenArticle("MembershipArt")
                ScrollTo("MembershipArt")
            Case "btnClearSearch_Click"
                GetList()
                txtSearch.Text = ""
                OpenArticle("MembershipArt")
                ScrollTo("MembershipArt")
            Case "ShowList"
                sb.Append("<script>")
                sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                    sb.Append("$('#wallArt').removeClass('noDisplay').addClass('block');")
                sb.Append("$('#hideListings').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#wallPic').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#wallListings').removeClass('noDisplay').addClass('block');")
                sb.Append("$('#wallImg').removeClass('noDisplay').addClass('block');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
            Case "Password"
                OpenAdminPassword()
                UpdateLogins("Password Opened")

            Case "PasswordSubmit"
                Dim pw As String
                Dim admin As Int16
                Dim myDS As New DataSet
                Dim myID As Int32
                Dim myName As String

                sb = New StringBuilder

                lblPWError.Visible = False

                If Len(PWUser) < 1 Then
                    lblPWError.Visible = True
                    lblPWError.Text = "You did not enter your User Name."
                    OpenAdminPassword()
                    Exit Sub
                End If

                sql = "SELECT ID, Password, Admin from Passwords Where UserName = '" & txtPWUserName.Text & "'"
                Get_Dataset(sql, myDS)

                If myDS.Tables(0).Rows.Count = 0 Then
                    lblPWError.Visible = True
                    lblPWError.Text = "Your User Name was Not in the database."
                    OpenAdminPassword()
                    Exit Sub
                End If
                If myDS.Tables(0).Rows(0).Item("Admin") < 1 Then
                    lblPWError.Visible = True
                    lblPWError.Text = "You are not Authorized to be here."
                    OpenAdminPassword()
                    Exit Sub
                End If
                If Len(txtPWPassword.Text) < 1 Then
                    lblPWError.Visible = True
                    lblPWError.Text = "You did not enter your Password."
                    OpenAdminPassword()
                    Exit Sub
                End If

                If myDS.Tables(0).Rows(0).Item("Password") <> txtPWPassword.Text Then
                    lblPWError.Visible = True
                    lblPWError.Text = "Your Password is incorrect."
                    OpenAdminPassword()
                    Exit Sub
                End If

                pw = myDS.Tables(0).Rows(0).Item("Password")
                admin = myDS.Tables(0).Rows(0).Item("admin")
                myID = myDS.Tables(0).Rows(0).Item("ID")

                Session("myName") = txtPWUserName.Text
                Session("AdminLevel") = admin

                sql = "Select Last + ', ' + First as Name from AFTAC Where ID = " & myID
                Get_Dataset(sql, myDS, "Name")
                myName = myDS.Tables("Name").Rows(0).Item("Name")
                Session("myName") = myName

                If myName <> "Gilbert, Peter" Then
                    sql = "Insert into AdminLogins (Name, LoginDate) values ('" & myName & " ', getdate())"
                    Run_Sql(sql)
                End If

                UpdateLogins("Password Submited")

                OpenAdminMenu()

            Case "openPasswordChange"
                OpenArticle("changepasswordArt")
                ScrollTo("changepasswordArt")
                UpdateLogins("Password Changed")

            Case "memberadmin"
                sb = New StringBuilder
                sb.Append("<script>")
                sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
            Case "Menu"
                sb = New StringBuilder
                sb.Append("<script>")
                sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#adminMenuArt').removeClass('noDisplay').addClass('block');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                UpdateLogins("Open Admin Menu")

            Case "obitsRecent_Click"
                OpenArticle("currentObitsArt")
                UpdateLogins("Open Current Obits")
            Case "obitsArchived_Click"
                FillObitList()
                OpenArticle("archivedObitsArt")
                UpdateLogins("Open Archived Obits")
            Case "lstObitNames_SelectedIndexChanged"
                Dim obituary As String
                Dim name As String
                Dim myIndex As Int32

                sql = "Select ID, Obituary, Name from obits where ID = " & lstObitNames.SelectedValue
                ds = New DataSet
                Get_Dataset(sql, ds)

                myIndex = 0
                obituary = ds.Tables(0).Rows(myIndex).Item("Obituary") & ""
                name = ds.Tables(0).Rows(myIndex).Item("Name")
                obitErrMess.Visible = False

                If txtObitSearch.Text = "" Then
                    myIndex = 0
                    name = ds.Tables(0).Rows(0).Item("Name")

                    lstObitNames.DataSource = ds
                    lstObitNames.DataValueField = "ID"
                    lstObitNames.DataTextField = "Obituary"
                    lstObitNames.DataTextField = "Name"
                    lstObitNames.DataBind()
                    lstObitNames.SelectedIndex = 0
                End If

                If Len(obituary) < 10 Then
                    obitErrMess.Text = name & " does not have an Obituary posted."
                    obitErrMess.Visible = True
                    pnlmyDefaultPic.Visible = True
                    pnlmyObits.Visible = False
                    OpenArticle("archivedObitsArt")
                    Exit Sub
                End If

                pnlmyObits.Visible = True
                pnlmyDefaultPic.Visible = False

                If ds.Tables(0).Rows(myIndex).Item(myIndex) & "" <> "" Then
                    pnlmyObits.Visible = True
                    pnlmyDefaultPic.Visible = False
                    myObitArt.InnerHtml = ds.Tables(0).Rows(0).Item(1)
                End If

                UpdateLogins("Opened Archived an Obituary")
                OpenArticle("archivedObitsArt")

            Case "butObitSearchClicked"
                Dim Name As String
                Dim ok As Boolean = False
                Dim r As DataRow


                If Len(txtObitSearch.Text) < 1 Then
                    obitErrMess.Text = "A name must be entered in the Search Box."
                    obitErrMess.Visible = True
                    Exit Sub
                End If

                obitErrMess.Visible = False
                Name = txtObitSearch.Text

                sql = "select ID, Name, obituary From Obits Where Name Like'" & txtObitSearch.Text & "%' order by Name"

                ds = New DataSet
                Get_Dataset(sql, ds)

                For Each r In ds.Tables(0).Rows
                    If Len(r.Item("obituary") & "") > 0 Then
                        r.Item("Name") = r.Item("Name") & "*"
                    End If
                    ds.AcceptChanges()
                Next

                If ds.Tables(0).Rows.Count >= 1 Then
                    lstObitNames.DataSource = ds
                    lstObitNames.DataTextField = "Name"
                    lstObitNames.DataValueField = "ID"
                    lstObitNames.DataBind()
                    lstObitNames.SelectedIndex = 0

                    sql = "Select obituary from obits where id = " & lstObitNames.SelectedItem.Value
                    Get_Dataset(sql, ds, "Obit")

                    If ds.Tables("Obit").Rows(0).Item(0) & "" <> "" Then
                        obitErrMess.Visible = False
                        pnlmyDefaultPic.Visible = False
                        pnlmyObits.Visible = True
                        myObitArt.InnerHtml = ds.Tables(0).Rows(0).Item("Obituary")
                    Else
                        obitErrMess.Text = lstObitNames.SelectedItem.Text & " does Not have an Obituary posted."
                        obitErrMess.Visible = True
                        pnlmyDefaultPic.Visible = True
                        pnlmyObits.Visible = False
                    End If

                Else
                    obitErrMess.Text = Name & " Is Not In database."
                    obitErrMess.Visible = True
                    pnlmyDefaultPic.Visible = True
                    pnlmyObits.Visible = False
                    FillObitList()
                    lstObitNames.SelectedIndex = -1
                    OpenArticle("archivedObitsArt")
                    Exit Sub
                End If

                UpdateLogins("Searched for Obituary")
                OpenArticle("archivedObitsArt")
            Case "ObitClearSearch"
                FillObitList()
                lstObitNames.SelectedIndex = -1

                myObitArt.InnerHtml = ""
                pnlmyObits.Visible = False
                pnlmyDefaultPic.Visible = True
                obitErrMess.Visible = False
                txtObitSearch.Text = ""
                OpenArticle("archivedObitsArt")
            Case "eall"
                OpenArticle("localeallArt")
                ScrollTo("localeallArt")
            Case "allmail"
                OpenArticle("allMailArt")
                ScrollTo("allMailArt")
            Case "modlog"
                OpenArticle("modlog")
                ScrollTo("modlog")
            Case "WOH"
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
                sb.Append("$('#wohName').html('" + myTitle + "');")
                sb.Append("$('wohImg').attr('src','" + pic + "');")
                sb.Append("$('wohImg').attr('alt','" + dsWOH.Tables("wohData").Rows(0).Item("Picture") + "');")
                sb.Append("$('wohVerbage').html(verb);")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
            Case "localeall"
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

                OpenArticle("localeallArt")
                ScrollTo("localeallArt")
            Case "localEallMod"
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

                OpenArticle("localeallArt")
                ScrollTo("localeallArt")
            Case "ChangeFlList"
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

                OpenArticle("localeallArt")
                ScrollTo("localeallArt")
            Case "butEmailLookupClicked"
                txtEMailLook.Text = ""
                sb = New StringBuilder

                sb.Append("<script>")
                sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#emailLookupArt').removeClass('noDisplay').addClass('block');")
                sb.Append("$('#emlInfo').removeClass('noDisplay');")
                sb.Append("$('#emlMess').addClass('noDisplay');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                UpdateLogins("Looked up Email")

            Case "GoodEMail"
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

            Case "BadEMail"
                OpenArticle("emailLookupArt")
                ScrollTo("emailLookupArt")
                lblerrMess.ForeColor = Drawing.Color.Red
                lblerrMess.Text = "You have not entered an Email Address"

            Case "ReturntoAdminMenu"
                OpenArticle("adminMenuArt")
                ScrollTo("adminMenuArt")
            Case Else
                OpenArticle("defaultArt")
                ScrollTo("defaultArt")
        End Select


    End Sub

    Private Sub SendMail()
        'Try

        '    Dim SmtpServer As New SmtpClient()
        '    Dim mail As New MailMessage()
        '    SmtpServer.UseDefaultCredentials = False
        '    SmtpServer.Credentials = New Net.NetworkCredential("aftacaawebmaster@gmail.com", "Shirley@6")
        '    SmtpServer.EnableSsl = True
        '    SmtpServer.Port = 465
        '    SmtpServer.Host = "smtp.gmail.com"
        '    SmtpServer.DeliveryMethod = SmtpDeliveryMethod.Network

        '    mail = New MailMessage
        '    mail.From = New MailAddress("aftacaawebmaster@gmail.com")
        '    mail.To.Add("pete@seagullusa.net")
        '    mail.Subject = "This is the subject"
        '    mail.Body = "This is the body"

        '    SmtpServer.Send(mail)

        '    MsgBox("Mail Sent")

        'Catch ex As Exception

        '    MsgBox(Err.Number & vbNewLine & ex.Message)

        'End Try
    End Sub

    Protected Sub btnCalenda_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Frank Calenda'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnSmith_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'Curtis F. Smith'", dsWOH, "wohData")
        action = "WOH"
    End Sub

    Protected Sub btnWhidden_Click(sender As Object, e As EventArgs)
        dsWOH = New DataSet
        Get_Dataset("exec woh_data 'James Whidden'", dsWOH, "wohData")
        action = "WOH"
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
        PWUser = txtPWUserName.Text
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

    Function GetDeceased() As String
        If deceasedChk.Checked Then
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
        PWUser = txtPWUserName.Text
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
        GetList()

        FillCommandList()

        If Session("adminLevel") = 1 Then
            pnlButs.Visible = True
        Else
            pnlButs.Visible = False
        End If

        OpenArticle("MembershipArt")

        ScrollTo("MembershipArt")

    End Sub

    Protected Sub lstMembers_SelectedIndexChanged(sender As Object, e As EventArgs)

        lblSearchErr.Visible = False
        _id = lstMembers.SelectedValue
        FillBoxes()
        lblMess.Visible = False

        OpenArticle("MembershipArt")
        ScrollTo("lblListTitle")

    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs)
        action = "btnSearch_Click"
    End Sub

    Protected Sub btnClearSearch_Click(sender As Object, e As EventArgs)
        action = "btnClearSearch_Click"
    End Sub

    Private Sub FillBoxes()
        Dim sql As String
        Dim ds As New DataSet
        Dim chaps As String
        Dim cmdPosition As String = ""
        Dim cmdDates As String = ""

        sql = "Exec GetMemberdata " & _id

        Get_Dataset(sql, ds)

        lblMemID.Text = "ID: " & ds.Tables(0).Rows(0).Item("id")
        txtFirst.Text = Capitolize(ds.Tables(0).Rows(0).Item("First"))
        txtLast.Text = Capitolize(ds.Tables(0).Rows(0).Item("Last"))
        txtInitial.Text = Capitolize(ds.Tables(0).Rows(0).Item("Initial"))
        txtSuffix.Text = Capitolize(ds.Tables(0).Rows(0).Item("Jr"))
        txtSpouse.Text = Capitolize(ds.Tables(0).Rows(0).Item("Wife"))
        txtAddress.Text = Capitolize(ds.Tables(0).Rows(0).Item("Address"))
        txtCity.Text = Capitolize(ds.Tables(0).Rows(0).Item("City"))
        txtState.Text = UCase(ds.Tables(0).Rows(0).Item("State"))
        txtZip.Text = ds.Tables(0).Rows(0).Item("ZipCode")
        txtCountry.Text = Capitolize(ds.Tables(0).Rows(0).Item("Country"))
        txtSpouse.Text = Capitolize(ds.Tables(0).Rows(0).Item("Wife"))
        txtMemEmail.Text = ds.Tables(0).Rows(0).Item("EMail")
        txtRank.Text = ds.Tables(0).Rows(0).Item("Rank")
        txtPhone.Text = UnFixMyPhone(ds.Tables(0).Rows(0).Item("Phone"))
        txtCellPhone.Text = UnFixMyPhone(ds.Tables(0).Rows(0).Item("CellPhone"))
        txtComments.Text = ds.Tables(0).Rows(0).Item("Comments")
        txtJoined.Text = ds.Tables(0).Rows(0).Item("DateJoined")
        txtDets.Text = ds.Tables(0).Rows(0).Item("Dets")
        txtRemarks.Text = ds.Tables(0).Rows(0).Item("Remarks")
        txtDues.Text = ds.Tables(0).Rows(0).Item("MemberDues")
        txtSEO.Text = ds.Tables(0).Rows(0).Item("SEOID")
        ddlCommand.Text = ds.Tables(0).Rows(0).Item("Command")
        txtcmdDates.Text = ds.Tables(0).Rows(0).Item("cmdServiceDates")

        If ds.Tables(0).Rows(0).Item("Chapters") Like "1*" Then
            chkCalifornia.Checked = True
        Else
            chkCalifornia.Checked = False
        End If

        If ds.Tables(0).Rows(0).Item("Chapters") Like "*2*" Then
            chkColorado.Checked = True
        Else
            chkColorado.Checked = False
        End If

        If ds.Tables(0).Rows(0).Item("Chapters") Like "*3" Then
            chkFlorida.Checked = True
        Else
            chkFlorida.Checked = False
        End If

        If ds.Tables(0).Rows(0).Item("Deceased") = "1" Then
            deceasedChk.Checked = True
        Else
            deceasedChk.Checked = False
        End If

        If ds.Tables(0).Rows(0).Item("On_Line") = "1" Then
            RecieveEallsChk.Checked = True
        Else
            RecieveEallsChk.Checked = False
        End If

        If ds.Tables(0).Rows(0).Item("On_Line") = "1" Then
            RecieveEallsChk.Checked = True
        Else
            RecieveEallsChk.Checked = False
        End If

        If ds.Tables(0).Rows(0).Item("MailPomo") = "1" Then
            mailPomoChk.Checked = True
        Else
            mailPomoChk.Checked = False
        End If

        If ds.Tables(0).Rows(0).Item("BadEmail") = "1" Then
            badEmailChk.Checked = True
        Else
            badEmailChk.Checked = False
        End If

        If ds.Tables(0).Rows(0).Item("Deleted") = "1" Then
            deletedChk.Checked = True
        Else
            deletedChk.Checked = False
        End If

        'If ds.Tables(0).Rows(0).Item("Electronic") = "1" Then
        '    elecPomoChk.Checked = True
        'Else
        '    elecPomoChk.Checked = False
        'End If

        chaps = ds.Tables(0).Rows(0).Item("Chapters") & ""

        lblModDate.Text = "Date Last Modified " & ds.Tables(0).Rows(0).Item("LastModified")

        sql = "EXEC isCommander " & lstMembers.SelectedValue

        Get_Dataset(sql, ds, "Command")

        txtFirst.Focus()

    End Sub

    Private Sub ClearBoxes()
        txtFirst.Text = ""
        txtLast.Text = ""
        txtInitial.Text = ""
        txtSuffix.Text = ""
        txtSpouse.Text = ""
        txtJoined.Text = ""
        txtAddress.Text = ""
        txtCity.Text = ""
        txtState.Text = ""
        txtZip.Text = ""
        txtCountry.Text = ""
        'txtAddress2.Text = ""
        'txtCity2.Text = ""
        'txtState2.Text = ""
        'txtZip2.Text = ""
        'txtCountry2.Text = ""
        txtSpouse.Text = ""
        txtMemEmail.Text = ""
        txtRank.Text = ""
        txtPhone.Text = ""
        txtComments.Text = ""
        txtDets.Text = ""
        txtRemarks.Text = ""
        txtDues.Text = ""
        txtSEO.Text = ""
        txtReason.Text = ""
        'calChkBox.Checked = False
        'colChkBox.Checked = False
        'flaChkBox.Checked = False
        deceasedChk.Checked = False
        'elecPomoChk.Checked = False
        RecieveEallsChk.Checked = False
        deletedChk.Checked = False
        mailPomoChk.Checked = False
        badEmailChk.Checked = False

        ddlCommand.Text = "None"
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs)
        Dim sql As String = "Exec DeleteListing " & lstMembers.SelectedValue

        Run_Sql(sql)
    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs)
        'Saves the data entered in the membership screen.
        Dim sql As String
        Dim newentry As Boolean = False
        Dim ws As New myService
        Dim ds As New DataSet

        pnlMemErr.Visible = False
        lblMess.Visible = False

        If Len(txtFirst.Text) < 1 Then
            lblMess.Text = "A First Name must be Entered"
            lblMess.ForeColor = Drawing.Color.Red
            lblMess.Visible = True
            txtFirst.Focus()
            OpenArticle("MembershipArt")
            Exit Sub
        End If

        If Len(txtLast.Text) < 1 Then
            lblMess.Text = "A Last Name must be Entered"
            lblMess.ForeColor = Drawing.Color.Red
            lblMess.Visible = True
            txtLast.Focus()
            OpenArticle("MembershipArt")
            Exit Sub
        End If

        If Not IsDate(txtJoined.Text) And Len(txtJoined.Text) > 0 Then
            lblMess.Text = "An invalid date was entered"
            lblMess.ForeColor = Drawing.Color.Red
            lblMess.Visible = True
            txtJoined.Focus()
            OpenArticle("MembershipArt")
            Exit Sub
        End If

        If Len(txtAddress.Text) > 0 And Len(txtCountry.Text) = 0 Then
            txtCountry.Text = "United States"
        End If

        If btnMemSave.Text = " Save Changes " Then
            'if btnsave text equals "Save Changes" we are updating a record
            currentindex = lstMembers.SelectedIndex

            If Len(txtReason.Text) < 1 Then
                pnlMemErr.Visible = True
                lblMemErr.Text = "A ""Reason for Change"" must be entered"
                txtReason.Focus()
                OpenArticle("MembershipArt")
                Exit Sub
            End If

            sql = "Exec SaveMemberInfo " & lstMembers.SelectedValue & ",'" & Capitolize(txtFirst.Text) & "','" & Apos(Capitolize(txtLast.Text)) & "','" &
                UCase(txtInitial.Text) & "','" & txtJoined.Text & "','" & Capitolize(txtSuffix.Text) & "','" & Capitolize(txtSpouse.Text) & "','" &
                txtMemEmail.Text & "','" & FixMyPhone(txtPhone.Text) & "','" & FixMyPhone(txtCellPhone.Text) & "','" & Capitolize(txtAddress.Text) & "','" &
                Capitolize(txtCity.Text) & "','" & UCase(txtState.Text) & "','" & txtZip.Text & "','" & UCase(txtCountry.Text) & "','" & txtRank.Text & "','" &
                UCase(txtDues.Text) & "','" & Apos(txtDets.Text) & "','" & Apos(txtRemarks.Text) & "','" & Apos(txtComments.Text) & "'," &
                GetChapters() & "," & GetDeceased() & "," & GetMailPomo() & "," & ReceiveEalls() & ",'" &
                ddlCommand.Text & "','" & txtcmdDates.Text & "','" & txtSEO.Text & "'," & GetFailed() & "," &
                GetDeleted() & ",'" & Session("myName") & "','" & Apos(txtReason.Text) & "'"
            'txtsql.Text = sql '(GetMailPomo())
            Try
                Run_Sql(sql)

                lblMess.Text = "Data Saved."
                lblMess.ForeColor = Drawing.Color.DarkBlue
                lblMess.Visible = True
            Catch
                lblMess.Text = "Data was not saved."
                lblMess.ForeColor = Drawing.Color.Red
                lblMess.Visible = True
                'Exit Sub
            End Try

            GetList()

            lstMembers.SelectedIndex = currentindex

            _id = lstMembers.SelectedValue

            FillBoxes()

        Else
            'btnsave text does not equal "Save Changes" so we are adding a new member

            sql = "Exec AddNewMemberInfo '" & Capitolize(txtFirst.Text) & "','" & Apos(Capitolize(txtLast.Text)) & "','" &
                UCase(txtInitial.Text) & "','" & txtJoined.Text & "','" & Capitolize(txtSuffix.Text) & "','" & Capitolize(txtSpouse.Text) & "','" &
                txtMemEmail.Text & "','" & FixMyPhone(txtPhone.Text) & "','" & FixMyPhone(txtCellPhone.Text) & "','" & Capitolize(txtAddress.Text) & "','" & Capitolize(txtCity.Text) & "','" &
                UCase(txtState.Text) & "','" & txtZip.Text & "','" & Capitolize(txtCountry.Text) & "','" & txtRank.Text & "','" &
                UCase(txtDues.Text) & "','" & Apos(txtDets.Text) & "','" & Apos(txtRemarks.Text) & "','" & Apos(txtComments.Text) & "','" &
                GetChapters() & "," & GetDead() & "," & "','" & GetMailPomo() & "," & Capitolize(ddlCommand.Text) & "','" &
                txtcmdDates.Text & "','" & txtSEO.Text & "','" & GetFailed() & "','" & PWUser & "'"

            'txtsql.Text = sql

            Try
                Run_Sql(sql)

                'Send_Mail("webmaster@aftacaa.us,fcalenda@aol.com", "webmaster@aftacaa.us", "The database was changed. The reason was: A new member was  added.", "Database Change")

                lblMess.Text = "Data Saved."
                lblMess.ForeColor = Drawing.Color.DarkBlue
                lblMess.Visible = True
            Catch
                lblMess.Text = "Data was not saved."
                lblMess.ForeColor = Drawing.Color.Red
                lblMess.Visible = True

                OpenArticle("MembershipArt")

                Exit Sub
            End Try

            btnMemSave.Text = " Save Changes "
            btnAdd.Text = " Add New "
            lstMembers.Enabled = True

            GetList()

            lstMembers.SelectedIndex = currentindex

            _id = lstMembers.SelectedValue

            Dim ok As Boolean = False

            lblSearchErr.Visible = False

            lstMembers.SelectedIndex = currentindex

            Dim x As Int16

            For x = 0 To lstMembers.Items.Count - 1
                If UCase(lstMembers.Items(x).Text) = (txtLast.Text & ", " & txtFirst.Text) Then
                    ok = True
                    Exit For
                End If
            Next

            If ok Then
                lstMembers.SelectedIndex = x
            End If

            FillBoxes()

        End If

        OpenArticle("MembershipArt")

    End Sub

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs)

        If btnMemSave.Text = " Save Changes " Then
            btnMemSave.Text = " Save New "
            btnAdd.Text = " Cancel Add "
            Session("SelectedValue") = lstMembers.SelectedValue
            lstMembers.Enabled = False
            ClearBoxes()
        Else
            btnMemSave.Text = " Save Changes "
            btnAdd.Text = " Add New "
            lstMembers.Enabled = True
            _id = Session("SelectedValue")
        End If

        GetList()

        OpenArticle("MembershipArt")

        ScrollTo("MembershipArt")

    End Sub

    Protected Sub btnMemAll_Click(sender As Object, e As EventArgs)
        Dim sb As New StringBuilder

        btnMemCalifornia.CssClass = "mySelBut myBut autoMarginLeftRight"
        btnMemColorado.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnMemFlorida.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnNonMem.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnEntire.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnMemAll.CssClass = "mySelBut hotBut topMarginHalfem autoMarginLeftRight"
        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "Paid Members<br>Deceased Shown"
        Else
            lblListTitle.Text = "Paid Members<br>Deceased Hidden"
        End If


        txtSearch.Text = ""
        btnSearch.Text = "Search"

        GetList()

        OpenArticle("MembershipArt")

        ScrollTo("MembershipArt")
    End Sub

    Protected Sub btnMemCalifornia_Click(sender As Object, e As EventArgs)
        Dim sb As New StringBuilder

        btnMemCalifornia.CssClass = "mySelBut hotBut autoMarginLeftRight"
        btnMemColorado.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnMemFlorida.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnNonMem.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnEntire.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnMemAll.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"

        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "California Members<br>Deceased Shown"
        Else
            lblListTitle.Text = "California Members<br>Deceased Hidden"
        End If


        txtSearch.Text = ""
        'btnSearch.Text = "Search"

        GetList()

        OpenArticle("MembershipArt")

        ScrollTo("MembershipArt")
    End Sub

    Protected Sub btnMemColorado_Click(sender As Object, e As EventArgs)

        btnMemCalifornia.CssClass = "mySelBut myBut autoMarginLeftRight"
        btnMemColorado.CssClass = "mySelBut hotBut topMarginHalfem autoMarginLeftRight"
        btnMemFlorida.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnNonMem.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnEntire.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnMemAll.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"

        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "Colorado Members<br>Deceased Shown"
        Else
            lblListTitle.Text = "Colorado Members<br>Deceased Hidden"
        End If

        txtSearch.Text = ""
        btnSearch.Text = "Search"

        GetList()

        OpenArticle("MembershipArt")

        ScrollTo("MembershipArt")

    End Sub

    Protected Sub btnMemFlorida_Click(sender As Object, e As EventArgs)
        Dim sb As New StringBuilder

        btnMemCalifornia.CssClass = "mySelBut myBut autoMarginLeftRight"
        btnMemColorado.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnMemFlorida.CssClass = "mySelBut hotBut topMarginHalfem autoMarginLeftRight"
        btnNonMem.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnEntire.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnMemAll.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "Florida Members<br>Deceased Shown"
        Else
            lblListTitle.Text = "Florida Members<br>Deceased Hidden"
        End If

        txtSearch.Text = ""
        btnSearch.Text = "Search"

        GetList()

        OpenArticle("MembershipArt")

        ScrollTo("MembershipArt")

    End Sub

    Protected Sub btnNonMem_Click(sender As Object, e As EventArgs)
        Dim sb As New StringBuilder

        btnMemCalifornia.CssClass = "mySelBut myBut autoMarginLeftRight"
        btnMemColorado.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnMemFlorida.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnNonMem.CssClass = "mySelBut hotBut topMarginHalfem autoMarginLeftRight"
        btnEntire.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnMemAll.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"

        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "NonMembers<br>Deceased Shown"
        Else
            lblListTitle.Text = "NonMembers<br>Deceased Hidden"
        End If

        txtSearch.Text = ""
        btnSearch.Text = "Search"

        GetList()

        OpenArticle("MembershipArt")

        ScrollTo("MembershipArt")

    End Sub

    Protected Sub btnEntire_Click(sender As Object, e As EventArgs)
        Dim sb As New StringBuilder

        btnMemCalifornia.CssClass = "mySelBut myBut width85 autoMarginLeftRight"
        btnMemColorado.CssClass = "mySelBut myBut width85 topMarginHalfem autoMarginLeftRight"
        btnMemFlorida.CssClass = "mySelBut myBut width85 topMarginHalfem autoMarginLeftRight"
        btnNonMem.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"
        btnEntire.CssClass = "mySelBut hotBut topMarginHalfem autoMarginLeftRight"
        btnMemAll.CssClass = "mySelBut myBut topMarginHalfem autoMarginLeftRight"

        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "Entire<br>Deceased Shown"
        Else
            lblListTitle.Text = "Entire<br>Deceased Hidden"
        End If

        txtSearch.Text = ""
        btnSearch.Text = "Search"

        GetList()

        OpenArticle("MembershipArt")

        ScrollTo("MembershipArt")

    End Sub

    Protected Sub btnReturnAdminMenu_Click(sender As Object, e As EventArgs)
        OpenArticle("adminMenuArt")
    End Sub

    Protected Function GetChapters() As String
        Dim buffer As String = "0"

        If chkCalifornia.Checked Then
            buffer = "1"
        End If

        If chkColorado.Checked Then
            If buffer = 0 Then 'If Len(buffer) = 0 Then
                buffer = "2"
            Else
                buffer = buffer & "2"
            End If
        End If

        If chkFlorida.Checked Then
            If buffer = 0 Then 'If Len(buffer) = 0 Then
                buffer = "3"
            Else
                buffer = buffer & "3"
            End If
        End If

        Return buffer
    End Function

    Protected Function ReceiveEalls() As Short
        Try
            If RecieveEallsChk.Checked Then
                Return 1
            Else
                Return 0
            End If
        Catch
            Return 0
        End Try
    End Function

    'Protected Function GetElectronic() As Int16

    '    Try
    '        If elecPomoChk.Checked Then
    '            Return 1
    '        Else
    '            Return 0
    '        End If
    '    Catch
    '        Return 0
    '    End Try
    'End Function

    Protected Function GetMailPomo() As Short

        Try
            If mailPomoChk.Checked Then
                Return 1
            Else
                Return 0
            End If
        Catch
            Return 0
        End Try
    End Function

    Protected Function GetDead() As Short

        Try
            If deceasedChk.Checked Then
                Return 1
            Else
                Return 0
            End If
        Catch
            Return 0
        End Try
    End Function

    Protected Function GetFailed() As Short

        Try
            If badEmailChk.Checked Then
                Return 1
            Else
                Return 0
            End If
        Catch
            Return 0
        End Try
    End Function

    Protected Function GetDeleted() As Short

        Try
            If deletedChk.Checked Then
                Return 1
            Else
                Return 0
            End If
        Catch
            Return 0
        End Try
    End Function

    Private Sub FillCommandList()
        Dim ds As New DataSet
        Dim sql As String = "exec GetCommandStatus"

        Get_Dataset(sql, ds)

        ddlCommand.DataSource = ds.Tables(0)
        ddlCommand.DataTextField = "Command"
        ddlCommand.DataBind()

    End Sub

    Private Function getAction() As String

        If btnMemCalifornia.CssClass Like "*hotBut*" Then
            Return "California"
        ElseIf btnMemColorado.CssClass Like "*hotBut*" Then
            Return "Colorado"
        ElseIf btnMemFlorida.CssClass Like "*hotBut*" Then
            Return "Florida"
        ElseIf btnNonMem.CssClass Like "*hotBut*" Then
            Return "NonMembers"
        ElseIf btnEntire.CssClass Like "*hotBut*" Then
            Return "Entire"
        ElseIf btnMemAll.CssClass Like "*hotBut*" Then
            Return "All"
        Else
            Return "Entire"
        End If
    End Function

    Private Function DeceasedStatus() As Int16
        If btnDeceased.Text = "Hide Deceased" Then
            Return 0
        Else
            Return 1
        End If
    End Function

    Protected Sub btnDeceased_Click(sender As Object, e As EventArgs)
        action = "btnDeceased_Click"
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

    Protected Sub lstObitNames_SelectedIndexChanged(sender As Object, e As EventArgs)
        Session("lstName") = lstObitNames.SelectedItem.Text
        action = "lstObitNames_SelectedIndexChanged"
    End Sub

    Protected Sub butObitSearch_Click(sender As Object, e As EventArgs)
        'Session("lstName") = UCase(txtObitSearch.Text)
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

    Protected Sub butClearSearch_Click(sender As Object, e As EventArgs)
        action = "ObitClearSearch"
    End Sub

    Private Sub FillObitList()
        Dim sql As String

        sql = "Exec ArchiveNames"
        Get_Dataset(sql, lstNamesData, "ArchiveNames")

        lstObitNames.DataSource = lstNamesData.Tables("ArchiveNames")
        lstObitNames.DataTextField = "Name"
        lstObitNames.DataValueField = "ID"
        lstObitNames.DataBind()
    End Sub

    Protected Sub OpenAdminMenu()
        Dim mySB As New StringBuilder

        mySB.Append("<script>")
        mySB.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
        mySB.Append("$('#adminMenuArt').removeClass('noDisplay').addClass('block');")
        mySB.Append("</script>")
        ClientScript.RegisterStartupScript(Me.GetType(), "script", mySB.ToString)
    End Sub
    Protected Sub OpenAdminPassword()
        Dim mySB As New StringBuilder

        mySB.Append("<script>")
        mySB.Append("$('#passwordArt').removeClass('noDisplay').addClass('block');")
        mySB.Append("</script>")
        ClientScript.RegisterStartupScript(Me.GetType(), "script", mySB.ToString)
    End Sub

    Protected Sub obitsRecent_Click(sender As Object, e As EventArgs)
        action = "obitsRecent_Click"
    End Sub

    Protected Sub obitsArchived_Click(sender As Object, e As EventArgs)
        action = "obitsArchived_Click"
    End Sub

    Private Sub setupgroups()
        Dim ds As New DataSet
        Dim sql As String

        sql = "create table #tmpEmails (Id Integer Primary Key Identity (1,1), Grp integer, EMail nVarChar(75))"
        Run_Sql(sql)

        sql = "insert into #tmpEmails Select 0 as grp, Email from aftac where on_line = 1"
        Run_Sql(sql)

        sql = "Select * From #tmpEmails"

        Get_Dataset(sql, ds)
    End Sub

    Protected Sub RunScript(s As String)
        ClientScript.RegisterStartupScript(Me.GetType(), "script", s)
    End Sub

    'Protected Sub myAlert(msg As String)
    '    Dim sb As New StringBuilder

    '    sb.Append("<script>")
    '    sb.Append("alert(" & msg & ");")
    '    sb.Append("</script>")

    '    RunScript(sb.ToString)

    'End Sub

    Protected Sub btnFriends_Click(sender As Object, e As EventArgs)
        Dim myds As New DataSet
        Dim sql As String

        OpenArticle("FriendsArt")

        sql = "Exec GetFriendsList"

        Get_Dataset(sql, myds)

        lstMems.DataSource = myds.Tables(0)
        lstMems.DataValueField = "ID"
        lstMems.DataTextField = "Name"
        lstMems.DataBind()
    End Sub

    Protected Sub btnFriendSearch_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet
        Dim sql As String = ""
        Dim mySender As Object

        lblSearchErr.Visible = False

        sql = "Select id, Last + ', ' + First + ' ' + Initial as Name from Aftac where  Last + ', ' + First + ' ' + Initial Like '" & txtSearchName.Text & "%' Order By Last, First, Initial"

        Get_Dataset(sql, ds)

        lstMems.DataSource = ds.Tables(0)
        lstMems.DataTextField = "Name"
        lstMems.DataValueField = "id"
        lstMems.DataBind()

        OpenArticle("FriendsArt")

        ScrollTo("FriendsArt")

    End Sub

    Protected Sub btnClearFriendSearch_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet
        Dim sql As String = ""

        lblSearchErr.Visible = False
        txtSearchName.Text = ""

        sql = "Select id, Last + ', ' + First + ' ' + Initial as Name from Aftac Order By Last, First, Initial"

        Get_Dataset(sql, ds)

        lstMems.DataSource = ds.Tables(0)
        lstMems.DataTextField = "Name"
        lstMems.DataValueField = "id"
        lstMems.DataBind()

        OpenArticle("FriendsArt")

        ScrollTo("FriendsArt")

    End Sub

    Protected Sub lstMems_SelectedIndexChanged(sender As Object, e As EventArgs)
        SetupFriends()
    End Sub

    '****************************************************************************************
    'Functions and Procedures
    Sub GetList()
        Dim sql As String
        Dim x As Int32 = 0
        Dim ds As New DataSet
        Dim hidedeceased As Integer
        Dim chap As String = getAction()
        Dim r As DataRow

        If btnDeceased.Text = "Show Deceased" Then
            hidedeceased = 0 'This will hide the deceased
        Else
            hidedeceased = 1 'This will show the deceased
        End If
        If Len(txtSearch.Text) > 0 Then
            sql = "exec GetMemberList '" & chap & "'," & hidedeceased & ",'" & txtSearch.Text & "%'"
            txtSearch.Text = ""
        Else
            sql = "exec GetMemberList '" & chap & "'," & hidedeceased & ",'" & blank & "'"
        End If

        Get_Dataset(sql, ds)

        If ds.Tables(0).Rows.Count > 0 Then
            For Each r In ds.Tables(0).Rows
                ds.Tables(0).Rows(x).Item("Name") = Capitolize(r.Item("Name"))
                x += 1
            Next
        Else
            lblMemCount.Text = "No Records to Show"
            lstMembers.Items.Clear()
            Exit Sub
        End If

        ds.AcceptChanges()

        lstMembers.DataSource = ds.Tables(0)

        lstMembers.DataTextField = "Name"
        lstMembers.DataValueField = "id"
        lstMembers.DataBind()

        lblMemCount.Text = lstMembers.Items.Count & " Shown"

        ClearBoxes()
    End Sub

    Protected Sub UpdateLogins(p As String)
        Dim sql As String
        sql = "insert into logins (Page, ActivityDate) VALUES ('" & p & "', DateAdd(hh,3,getDate()))"
        Run_Sql(sql)
    End Sub

    Protected Sub OpenArticle(s As String)
        Dim sb As New StringBuilder
        sb.Append("<script>")
        sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
        sb.Append("$('#" & s & "').removeClass('noDisplay').addClass('block');")
        sb.Append("</script>")
        RunScript(sb.ToString)
    End Sub

    Private Sub OpenArchivedObits()
        Dim mySB As New StringBuilder

        mySB.Append("<script>")
        mySB.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
        mySB.Append("$('#obituariesArt').removeClass('noDisplay').addClass('block');")
        mySB.Append("$('#currentObits').removeClass('block').addClass('noDisplay');")
        mySB.Append("$('#archivedObits').removeClass('noDisplay').addClass('block');")
        mySB.Append("$([document.documentElement, document.body]).animate({scrollTop: $(""#obituariesArt"").offset().top}, 500);")
        mySB.Append("</script>")
        ClientScript.RegisterStartupScript(Me.GetType(), "script", mySB.ToString)
    End Sub

    Protected Sub ScrollTo(s As String)
        Dim sb As New StringBuilder

        sb.Append("<script>")
        sb.Append("$([document.documentElement, document.body]).animate({ scrollTop: $('#" + s + "').offset().top }, 500);")
        sb.Append("</script>")

        RunScript(sb.ToString)

    End Sub

    Private Function HasChapter(c As String) As Boolean

        If (c Like "*1*") Or (c Like "*2*") Or (c Like "*3*") Then
            Return True
        End If

        Return False
    End Function

    'Function GetExternalIP() As IPAddress
    '    'Return The users ip address
    '    Dim lol As WebClient = New WebClient()
    '    Dim str As String = lol.DownloadString("http://www.ip-adress.com/")
    '    Dim pattern As String = "<h2>My IP address is: (.+)</h2>"
    '    Dim matches1 As MatchCollection = Regex.Matches(str, pattern)
    '    Dim ip As String = matches1(0).ToString
    '    ip = ip.Remove(0, 21)
    '    ip = ip.Replace("</h2>", "")
    '    ip = ip.Replace(" ", "")
    '    Return IPAddress.Parse(ip)
    'End Function

    Private Sub SetupFriends()
        Dim ds As New DataSet
        Dim sql As String = "exec GetMemberData " & lstMems.SelectedValue
        Dim mailURL As String
        Dim fname As String
        Dim lname As String
        Dim id As String
        Dim ws As New myService

        'Run the SQL Statement to get the data.
        Get_Dataset(sql, ds)

        fname = ws.Capitolize(ds.Tables(0).Rows(0).Item("First"))
        lname = ws.Capitolize(ds.Tables(0).Rows(0).Item("last"))
        id = ds.Tables(0).Rows(0).Item("ID").ToString
        pnlHyper.Visible = True

        mailURL = "MailTo:Piston_Horse@hotmail.com,fCalenda@aol.com?subject=Member Information Request&body=Please send me any information you have on " & fname & " " & lname & " ID:" & id

        HyperLink1.NavigateUrl = Replace(mailURL, " ", "%20")

        If ds.Tables(0).Rows(0).Item("Deceased") Then
            lblDeceasedMess.Text = fname & " " & lname & " is deceased."
            pnlMemDefault.Visible = False
            pnlMemAlive.Visible = False
            pnlNonMember.Visible = False
            pnlMemDeceased.Visible = True

            OpenArticle("FriendsArt")
            ScrollTo("FriendsArt")

            Exit Sub
        End If

        Dim chap As String
        chap = ds.Tables(0).Rows(0).Item("Chapters").ToString

        If ds.Tables(0).Rows(0).Item("Deceased") = 0 And HasChapter(chap) Then
            If InStr(chap, "1") = 0 Then
                imgCal.ImageUrl = "~/_Images/nocheck.jpg"
            Else
                imgCal.ImageUrl = "~/_Images/checked.jpg"
            End If

            If InStr(chap, "2") = 0 Then
                imgCol.ImageUrl = "~/_Images/nocheck.jpg"
            Else
                imgCol.ImageUrl = "~/_Images/checked.jpg"
            End If

            If InStr(chap, "3") = 0 Then
                imgFla.ImageUrl = "~/_Images/nocheck.jpg"
            Else
                imgFla.ImageUrl = "~/_Images/checked.jpg"
            End If

            lblMemAlive.Text = fname & " " & lname & " is a member of the following Chapter/s"
            pnlMemDefault.Visible = False
            pnlMemAlive.Visible = True
            pnlNonMember.Visible = False
            pnlMemDeceased.Visible = False

            OpenArticle("FriendsArt")

            ScrollTo("FriendsArt")
            Exit Sub
        End If

        If Not HasChapter(chap) Then
            lblNonMember.Text = fname & " " & lname & " is not a member of any chapter"
            pnlMemDefault.Visible = False
            pnlMemAlive.Visible = False
            pnlNonMember.Visible = True
            pnlMemDeceased.Visible = False
        End If

        OpenArticle("FriendsArt")

        ScrollTo("FriendsArt")
    End Sub

    '****************************************************************************************
End Class