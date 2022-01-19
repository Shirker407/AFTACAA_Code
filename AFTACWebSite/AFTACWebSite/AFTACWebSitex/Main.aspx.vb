Imports System.Net.Mail

Public Class _Default
    Inherits System.Web.UI.Page
    Private action As String
    Private pb As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ds As New DataSet
        Dim sql As String
        Dim sb As New StringBuilder
        Dim ws As New myService
        Dim r As DataRow
        Dim x As Int16

        If Not IsPostBack Then

            Try
                If Len(Session("Action")) < 1 Then
                    action = ""
                Else
                    action = Session("Action")
                End If
            Catch
                action = ""
            End Try

            winnerPnl.Visible = False

            sql = "Exec ArchiveNames"
            Get_Dataset(sql, ds, "ArchiveNames")

            For Each r In ds.Tables("ArchiveNames").Rows
                r.Item("Name") = ws.Capitolize(r.Item("Name"))
            Next

            If Not IsPostBack Then
                lstObits.DataSource = ds.Tables("ArchiveNames")
                lstObits.DataTextField = ("Name")
                lstObits.DataValueField = "ID"
                lstObits.DataBind()

                lstObits.SelectedIndex = 0
            End If

            sql = "Exec WOHMembers " & 10
            Run_Sql(sql)

            sql = "SELECT * from WOH1"
            Get_Dataset(sql, ds, "WOH1")

            lstWOH1.DataSource = ds.Tables("WOH1")
            lstWOH1.DataTextField = "Name"
            lstWOH1.DataValueField = "Picture"
            lstWOH1.DataBind()

            sql = "SELECT * from WOH2"
            Get_Dataset(sql, ds, "WOH2")

            lstWOH2.DataSource = ds.Tables("WOH2")
            lstWOH2.DataTextField = "Name"
            lstWOH2.DataValueField = "Picture"
            lstWOH2.DataBind()

            sql = "exec wallmembers " & 20
            Run_Sql(sql)
            'ds.AcceptChanges()



            sql = "Select * from table1"
            Get_Dataset(sql, ds, "Table1")

            x = 0

            For Each r In ds.Tables("Table1").Rows
                ds.Tables("Table1").Rows(x).Item("Name") = Capitolize(r.Item("Name"))
                x += 1
            Next

            lstWall1.DataSource = ds.Tables("Table1")
            lstWall1.DataTextField = "Name"
            lstWall1.DataValueField = "WallPhoto"
            lstWall1.DataBind()
            lstWall1.SelectedIndex = 0

            sql = "Select * from table2"
            Get_Dataset(sql, ds, "Table2")

            x = 0

            For Each r In ds.Tables("Table2").Rows
                ds.Tables("Table2").Rows(x).Item("Name") = Capitolize(r.Item("Name"))
                x += 1
            Next

            lstWall2.DataSource = ds.Tables("Table2")
            lstWall2.DataTextField = "Name"
            lstWall2.DataValueField = "WallPhoto"
            lstWall2.DataBind()

            sql = "Select * from table3"
            Get_Dataset(sql, ds, "Table3")

            x = 0

            For Each r In ds.Tables("Table3").Rows
                ds.Tables("Table3").Rows(x).Item("Name") = Capitolize(r.Item("Name"))
                x += 1
            Next

            lstWall3.DataSource = ds.Tables("Table3")
            lstWall3.DataTextField = "Name"
            lstWall3.DataValueField = "WallPhoto"
            lstWall3.DataBind()

            sql = "Select * from table4"
            Get_Dataset(sql, ds, "Table4")

            x = 0

            For Each r In ds.Tables("Table4").Rows
                ds.Tables("Table4").Rows(x).Item("Name") = Capitolize(r.Item("Name"))
                x += 1
            Next

            lstWall4.DataSource = ds.Tables("Table4")
            lstWall4.DataTextField = "Name"
            lstWall4.DataValueField = "WallPhoto"
            lstWall4.DataBind()

            ds.AcceptChanges()

            sql = "exec Reunion_Attendees " & 25
            Run_Sql(sql)

            sql = "Select * from Reunion1"
            Get_Dataset(sql, ds, "Reunion1")

            gvReunion1.DataSource = ds.Tables("Reunion1")
            gvReunion1.DataBind()

            sql = "Select * from Reunion2"
            Get_Dataset(sql, ds, "Reunion2")

            gvReunion2.DataSource = ds.Tables("Reunion2")
            gvReunion2.DataBind()

            lblAttending.Text = "Number Attending: " & Co_Attending()

        End If
    End Sub

    Private Sub _Default_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete
        Dim sb As New StringBuilder
        Dim sql As String = ""
        Dim ds As New DataSet

        If action = "passwordSubmitChange" Then
            ds = New DataSet
            sql = "exec Get_EMailandPW '" & PWuser & "'"
            Get_Dataset(sql, ds)

            If Len(txtOldPassword.Text) < 1 Then
                sb = New StringBuilder
                sb.Append("<script>")
                sb.Append("$('.pwerrors').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#pwNotEntered').removeClass('noDisplay').addClass('block');")
                sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#changepasswordArt').removeClass('noDisplay').addClass('block')")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                txtOldPassword.Focus()
                Exit Sub
            ElseIf Len(txtNewPassword.Text) < 5 Then
                sb = New StringBuilder
                sb.Append("<script>")
                sb.Append("$('.pwerrors').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#pwtooShort').removeClass('noDisplay').addClass('block');")
                sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#changepasswordArt').removeClass('noDisplay').addClass('block')")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                txtNewPassword.Focus()
                Exit Sub
            ElseIf txtOldPassword.Text <> ds.Tables(0).Rows(0).Item("Password") Then
                sb = New StringBuilder
                sb.Append("<script>")
                sb.Append("$('.pwerrors').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#pwNotCorrect').removeClass('noDisplay').addClass('block');")
                sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#changepasswordArt').removeClass('noDisplay').addClass('block')")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                txtNewPassword.Focus()
                Exit Sub
            ElseIf txtNewPassword.Text <> txtReenter.Text Then
                sb = New StringBuilder
                sb.Append("<script>")
                sb.Append("$('.pwerrors').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#pwNotAgree').removeClass('noDisplay').addClass('block');")
                sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#changepasswordArt').removeClass('noDisplay').addClass('block')")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                txtNewPassword.Focus()
                Exit Sub
            ElseIf chkCredentials(PWuser, txtOldPassword.Text) Then
                sql = "EXEC PasswordUpdate '" & PWuser & "','" & txtNewPassword.Text & "'"
                Try
                    Run_Sql(sql)
                    sb = New StringBuilder
                    sb.Append("<script>")
                    sb.Append("$('.pwerrors').removeClass('block').addClass('noDisplay');")
                    sb.Append("$('#PWbody').removeClass('block').addClass('noDisplay');")
                    sb.Append("$('#pwAccepted').removeClass('noDisplay').addClass('block');")
                    sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                    sb.Append("$('#changepasswordArt').removeClass('noDisplay').addClass('block')")
                    sb.Append("</script>")
                    ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                    Exit Sub
                Catch
                    sb = New StringBuilder
                    sb.Append("<script>")
                    sb.Append("$('.pwerrors').removeClass('block').addClass('noDisplay');")
                    sb.Append("$('#pwNotChanged').removeClass('noDisplay').addClass('block');")
                    sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
                    sb.Append("$('#changepasswordArt').removeClass('noDisplay').addClass('block');")
                    sb.Append("</script>")
                    ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                    Exit Sub
                End Try
            End If
        ElseIf action = "openPasswordChange" Then
            If Len(txtPWUserName.Text) < 1 Then
                sb.Append("<script>")
                sb.Append("$('.pwErrs').removeClass('block').addClass('noDisplay');")
                sb.Append("$('#pwNameErr').removeClass('noDisplay').addClass('block');")
                sb.Append("$('#passwordArt').removeClass('noDisplay').addClass('block');")
                sb.Append("</script>")
                ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
                Exit Sub
            End If
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#changepasswordArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf (action = "lstWOH1" Or action = "lstWOH2") Then
            Dim pre, first, last, verb As String, pic As String, myTitle As String
            sb = New StringBuilder

            ds = New DataSet

            If action = "lstWOH1" Then
                sql = "Select * from Wall_of_Honor Where Picture = '" & lstWOH1.SelectedValue & "'"
                lstWOH2.SelectedIndex = -1
            Else
                sql = "Select * from Wall_of_Honor Where Picture = '" & lstWOH2.SelectedValue & "'"
                lstWOH1.SelectedIndex = -1
            End If

            Get_Dataset(sql, ds, "lstWOH")

            pre = ds.Tables("lstWOH").Rows(0).Item("Prefix")
            first = ds.Tables("lstWOH").Rows(0).Item("FirstName")
            last = ds.Tables("lstWOH").Rows(0).Item("LastName")
            pic = "_Photos/WOH/" & ds.Tables("lstWOH").Rows(0).Item("Picture")
            verb = ds.Tables("lstWOH").Rows(0).Item("Verbage")
            myTitle = pre & " " & first & " " & last


            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#honorArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wohMainImg').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wohDiv').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wohName').html('" & myTitle & "');")
            sb.Append("$('#wohImg').attr('src','" & pic & "');")
            sb.Append("$('#wohVerbage').html('" & verb & "');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
            'ElseIf action = "WOH" Then
            '    Dim pre, first, last, pic, verb As String

            '    sb = New StringBuilder
            '    sql = "Select * from Wall_of_Honor Where Name= '" & lstWOH1.SelectedValue & "'"

            '    Get_Dataset(sql, ds, "WOH")

            '    pre = ds.Tables("WOH").Rows(0).Item("Prefix")
            '    first = ds.Tables("WOH").Rows(0).Item("FirstName")
            '    last = ds.Tables("WOH").Rows(0).Item("LastName")
            '    pic = "_Photos/WOH/" & ds.Tables("WOH").Rows(0).Item("Picture")
            '    verb = ds.Tables("WOH").Rows(0).Item("Verbage")

            '    sb.Append("<script>")
            '    sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            '    sb.Append("$('#honorArt').removeClass('noDisplay').addClass('block');")
            '    'sb.Append("$('#wohDiv').html(""" & mess & """);")
            '    sb.Append("$('#wohName').html('" & pre & " " & first & " " & last & "');")
            '    sb.Append("$('#wohMyPic').attr('src','" & pic & "');")
            '    sb.Append("$('#wohVerbage').html('" & verb & "');")
            '    sb.Append("$('#wohMainImg').removeClass('block').addClass('noDisplay');")
            '    sb.Append("$('#wohDiv').removeClass('noDisplay').addClass('block');")
            '    sb.Append("</script>")
            '    ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
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

            sql = "SELECT Password, Admin from Passwords Where UserName = '" & txtPWUserName.Text & "'"
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
            PWuser = txtPWUserName.Text
            'If UCase(PWuser) = UCase("pgilbert") Or UCase(PWuser) = UCase("fcalenda") Or UCase(PWuser) = UCase("elindsay") Then
            '    btnPickWinner.Visible = True
            'Else
            '    btnPickWinner.Visible = False
            'End If
            Response.Cookies("UserName").Value = PWuser
            Response.Cookies("AdminLevel").Value = GetAdminLevel(PWuser)
        ElseIf action = "lstWall1" Then
            wallImg.ImageUrl = "_Photos/20YearWall/" & lstWall1.SelectedValue
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wallArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wallListings').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#hideListings').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wallImg').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "lstWall2" Then
            wallImg.ImageUrl = "_Photos/20YearWall/" & lstWall2.SelectedValue
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wallArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wallListings').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#hideListings').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wallImg').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "lstWall3" Then
            wallImg.ImageUrl = "_Photos/20YearWall/" & lstWall3.SelectedValue
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wallArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wallListings').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#hideListings').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wallImg').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "lstWall4" Then
            wallImg.ImageUrl = "_Photos/20YearWall/" & lstWall4.SelectedValue
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wallArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wallListings').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#hideListings').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wallImg').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "ShowList" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wallArt').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#hideListings').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wallPic').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#wallListings').removeClass('noDisplay').addClass('block');")
            sb.Append("$('#wallImg').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")

            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)

            lstWall1.SelectedIndex = -1
            lstWall2.SelectedIndex = -1
            lstWall3.SelectedIndex = -1
            lstWall4.SelectedIndex = -1
        ElseIf action = "memberadmin" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "Menu" Then
            If UCase(PWuser) = UCase("pgilbert") Or UCase(PWuser) = UCase("fcalenda") Or UCase(PWuser) = UCase("elindsay") Then
                btnPickWinner.Visible = True
            Else
                btnPickWinner.Visible = False
            End If
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#adminMenuArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "eall" Then
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#eallArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
        ElseIf action = "localeall" Then
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
        ElseIf action = "PickWinner" Or action = "PickAnother" Then
            Dim NumMembers As Integer
            Dim num As Integer
            lblWinId.Text = "ID# "
            lblWinName.Text = "Name: "
            lblWinAddress.Text = "Address: "
            lblWinCity.Text = "City: "
            lblWinState.Text = "State: "
            lblWinZip.Text = "Zip: "
            lblWinEmail.Text = "EMail: "
            lblWinPhone.Text = "Phone: "
            sb = New StringBuilder
            sql = "Exec GetMemberList '" & "Florida" & "', 1"
            Get_Dataset(sql, ds, "List")
            NumMembers = ds.Tables("List").Rows.Count
            Randomize()
            num = Int((NumMembers - 2) * Rnd() + 1)
            sql = "Exec GetMemberData " & ds.Tables("List").Rows(num).Item("ID")
            Get_Dataset(sql, ds)
            lblWinId.Text = lblWinId.Text & ds.Tables("data").Rows(0).Item("ID")
            lblWinName.Text = lblWinName.Text & ds.Tables("data").Rows(0).Item("First") & " " & ds.Tables("data").Rows(0).Item("Last")
            lblWinAddress.Text = lblWinAddress.Text & ds.Tables("data").Rows(0).Item("Address")
            lblWinCity.Text = lblWinCity.Text & ds.Tables("data").Rows(0).Item("City")
            lblWinState.Text = lblWinState.Text & ds.Tables("data").Rows(0).Item("State")
            lblWinZip.Text = lblWinZip.Text & ds.Tables("data").Rows(0).Item("ZipCode")
            lblWinEmail.Text = lblWinEmail.Text & ds.Tables("data").Rows(0).Item("EMail")
            lblWinPhone.Text = lblWinPhone.Text & UnFixMyPhone(ds.Tables("data").Rows(0).Item("Phone"))
            winnerPnl.Visible = True
        ElseIf action = "winReturn" Then
            winnerPnl.Visible = False
        Else
            sb = New StringBuilder
            sb.Append("<script>")
            sb.Append("$('.myArts').removeClass('block').addClass('noDisplay');")
            sb.Append("$('#defaultArt').removeClass('noDisplay').addClass('block');")
            sb.Append("</script>")
            ClientScript.RegisterStartupScript(Me.GetType(), "script", sb.ToString)
            winnerPnl.Visible = False
            'passwordPnl.Visible = False
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

    Protected Sub btnModLog_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet
        Dim sql As String = "Exec Mod_Log_Report"

        Get_Dataset(sql, ds)

        gvModLog.DataSource = ds.Tables(0)
        gvModLog.DataBind()

        action = "modlog"
    End Sub

    Protected Sub lstObits_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim sql As String
        Dim ds As New DataSet

        If InStr(lstObits.SelectedItem.Text, "*") = 0 Then
            myObitArt.InnerHtml = NoObit
            Exit Sub
        End If

        lblObitID.Text = lstObits.SelectedValue

        sql = "Exec GetObit " & lstObits.SelectedValue

        Get_Dataset(sql, ds)

        'txtmyObit.Visible = True
        imgMemory.Visible = False


        myObitArt.InnerHtml = ds.Tables(0).Rows(0).Item("Obituary")
    End Sub

    Protected Sub btnFindObit_Click(sender As Object, e As EventArgs)
        lblObitMess.Visible = False
        Dim x As Int32
        Dim ds As New DataSet
        Dim sql As String
        Dim found As Boolean = False

        If Len(txtObitName.Text) < 1 Then
            lblObitMess.Text = " No name was entered. "
            lblObitMess.Visible = True
            Exit Sub
        End If

        sql = "Exec ArchiveNames"

        Get_Dataset(sql, ds, "ArchiveNames")

        For x = 0 To ds.Tables(0).Rows.Count - 1

            If UCase(ds.Tables("ArchiveNames").Rows(x).Item("Name")) Like UCase(txtObitName.Text) & "*" Then
                lstObits.SelectedIndex = x
                found = True
                Exit For
            End If

        Next

        If Not found Then
            lblObitMess.Text = " Name was Not found. "
            lblObitMess.Visible = True
        Else
            If InStr(lstObits.SelectedItem.Text, "*") = 0 Then
                myObitArt.InnerHtml = NoObit
                Exit Sub
            End If

            ds = New DataSet

            sql = "Exec GetObit " & lstObits.SelectedValue

            Get_Dataset(sql, ds)

            myObitArt.InnerHtml = ds.Tables(0).Rows(0).Item("Obituary")

        End If

        txtObitName.Text = ""

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
        Dim ds As New DataSet
        Dim sql As String = "Exec LocalEAll"
        Dim r As DataRow
        Dim sb As New StringBuilder

        txtLocalEalls.Text = ""

        Get_Dataset(sql, ds)

        For Each r In ds.Tables(0).Rows
            Dim s As String = r.Item("Email")
            If ValidEmail(s) Then
                sb.Append(s + "; ")
            End If
        Next

        txtLocalEalls.Text = sb.ToString

        action = "localeall"
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

    Protected Sub lstWall1_SelectedIndexChanged(sender As Object, e As EventArgs)
        lstWall2.SelectedIndex = -1
        lstWall3.SelectedIndex = -1
        lstWall4.SelectedIndex = -1

        If lstWall1.SelectedIndex < 0 Then
            Exit Sub
        End If
        action = "lstWall1"
    End Sub

    Protected Sub lstWall2_SelectedIndexChanged(sender As Object, e As EventArgs)
        lstWall1.SelectedIndex = -1
        lstWall3.SelectedIndex = -1
        lstWall4.SelectedIndex = -1

        If lstWall2.SelectedIndex < 0 Then
            Exit Sub
        End If
        action = "lstWall2"
    End Sub

    Protected Sub lstWall3_SelectedIndexChanged(sender As Object, e As EventArgs)
        lstWall1.SelectedIndex = -1
        lstWall2.SelectedIndex = -1
        lstWall4.SelectedIndex = -1

        If lstWall3.SelectedIndex < 0 Then
            Exit Sub
        End If
        action = "lstWall3"
    End Sub

    Protected Sub lstWall4_SelectedIndexChanged(sender As Object, e As EventArgs)
        lstWall1.SelectedIndex = -1
        lstWall2.SelectedIndex = -1
        lstWall3.SelectedIndex = -1

        If lstWall4.SelectedIndex < 0 Then
            Exit Sub
        End If
        action = "lstWall4"
    End Sub

    Protected Sub butShowListings_Click(sender As Object, e As EventArgs)
        action = "ShowList"
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        SendMail()
    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs)
        Ping()
    End Sub

    'Protected Sub lstWOH_SelectedIndexChanged(sender As Object, e As EventArgs)
    '    action = "WOH"
    'End Sub

    Protected Sub lstWOH_SelectedIndexChanged(sender As Object, e As EventArgs)

        If sender.id = "lstWOH1" Then
            lstWOH2.SelectedIndex = -1
            action = "lstWOH1"
        End If

        If sender.id = "lstWOH2" Then
            lstWOH1.SelectedIndex = -1
            action = "lstWOH2"
        End If

    End Sub

    Protected Sub btnRsvp_Click(sender As Object, e As EventArgs)
        Response.Redirect("_pdfs/SnowballRSVP.pdf")
    End Sub

End Class