Public Class MemberShip
    Inherits System.Web.UI.Page

    Private currentindex As Int32

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim sql As String
            Dim ds As New DataSet
            Dim s As String = "Entire"

            Session("ListAction") = "name"

            'The following will get the ID of the first record in the database
            '################################################################################
            sql = "SELECT Top 1 ID, Case When initial = '' Then Last + ', ' + First Else Last + ', ' + First + ' ' + initial + '.' end as Name FROM AFTAC _
			Where Deleted = 0 ORDER BY Last, First"

            Get_Dataset(sql, ds)
            Session("UserID") = ds.Tables(0).Rows(0).Item("ID")
            '################################################################################
        End If
    End Sub


    Private Sub MemberShip_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete
        If Not IsPostBack Then
            FillList(Session("ListAction"))
            FillCommandList()

            'If Not Allowed to see Save buttons on Membership form
            'This makes them invisible
            If Session("AdminLevel") = "1" Then 'Session("AdminLevel") is setup on the Sign In Form
                MemButs.Visible = True
            Else
                MemButs.Visible = False
            End If

        End If
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs)
        Dim sql As String = "Exec DeleteListing " & lstMembers.SelectedValue
        Run_Sql(sql)
    End Sub

    Protected Sub lstMembers_SelectedIndexChanged(sender As Object, e As EventArgs)
        lblSearchErr.Visible = False
        Session("UserID") = lstMembers.SelectedValue
        Session("PWUser") = lstMembers.SelectedItem.Text
        Session("myIndex") = lstMembers.SelectedIndex
        FillBoxes()
        lblDBMess.Text = "Edit Data"
        lblDBMess.ForeColor = Drawing.Color.DarkBlue
        lblDBMess.Visible = True
        lblDBMess.Focus()
        lblReason.Visible = False
    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs)
        Dim sql As String
        Dim newentry As Boolean = False
        Dim ws As New myService
        Dim ds As New DataSet
        Dim del As Int16
        Dim x As Int32

        If deleteChkYes.Visible = True Then
            del = 1
        Else
            del = 0
        End If

        If Len(txtFirst.Text) < 1 Then
            lblDBMess.Text = "A First Name must be Entered"
            lblDBMess.ForeColor = Drawing.Color.Red
            lblDBMess.Visible = True
            txtFirst.Focus()
            Exit Sub
        End If

        If Len(txtLast.Text) < 1 Then
            lblDBMess.Text = "A Last Name must be Entered"
            lblDBMess.ForeColor = Drawing.Color.Red
            lblDBMess.Visible = True
            txtLast.Focus()
            Exit Sub
        End If

        If Not IsDate(txtJoined.Text) And Len(txtJoined.Text) > 0 Then
            lblDBMess.Text = "An invalid Date was entered"
            lblDBMess.ForeColor = Drawing.Color.Red
            lblDBMess.Visible = True
            txtJoined.Focus()
            Exit Sub
        End If

        If Len(txtAddress.Text) > 0 And Len(txtCountry.Text) = 0 Then
            txtCountry.Text = "United States"
        End If

        If btnSave.Text = " Save Changes " Then   'btnsave text equals "Save Changes" so we are updating a record
            currentindex = lstMembers.SelectedIndex
            lblDBMess.Visible = False

            If Len(txtReason.Text) < 1 Then
                lblReason.Visible = True
                lblReason.Focus()
                Exit Sub
            End If

            lblReason.Visible = False

            sql = "Exec SaveMemberInfo " & lstMembers.SelectedValue & ",'" & Capitolize(txtFirst.Text) & "','" & Apos(Capitolize(txtLast.Text)) & "','" &
                UCase(txtInitial.Text) & "','" & txtJoined.Text & "','" & Capitolize(txtSuffix.Text) & "','" & Capitolize(txtSpouse.Text) & "','" &
                TxtEMail.Text & "','" & FixMyPhone(txtPhone.Text) & "','" & FixMyPhone(txtCellPhone.Text) & "','" & Capitolize(txtAddress.Text) & "','" &
                Capitolize(txtCity.Text) & "','" & UCase(txtState.Text) & "','" & txtZip.Text & "','" & Capitolize(txtCountry.Text) & "','" &
                txtRank.Text & "','" & UCase(txtDues.Text) & "','" & Apos(txtDets.Text) & "','" & Apos(txtRemarks.Text) & "','" &
                Apos(txtComments.Text) & "','" & GetChapters() & "','" & GetDead() & "','" & GetElectronic() & "','" & GetMailPomo() & "','" & GetOnLine() & "','" &
                Capitolize(ddlCommand.Text) & "','" & txtcmdDates.Text & "','" & txtSEO.Text & "','" & GetFailed() & "','" & GetDeleted() & "','" & Session("myName") & "','" & Apos(txtReason.Text) & "'"
            Try
                Run_Sql(sql)

                FillList(Session("ListAction"))
                lblReason.Text = ""
                'Dim Mess As String
                'Mess = txtFirst.Text & " " & txtLast.Text & " - This database record was changed. The reason was: " & txtReason.Text & " by " & PWuser
                'Send_Mail("aftacaawebmaster@gmail.com", "aftacaawebmaster@gmail.com", "The database was changed. The reason was:" & txtReason.Text, "Database Change")
                'SendMail()

                lblDBMess.Text = "Data Saved."
                lblDBMess.ForeColor = Drawing.Color.DarkBlue
                lblDBMess.Visible = True
                lblDBMess.Focus()
            Catch
                lblDBMess.Text = "Data was NOT Saved."
                lblDBMess.ForeColor = Drawing.Color.Red
                lblDBMess.Visible = True
                lblDBMess.Focus()
                lblReason.Text = "Data was not saved."
                lblReason.Visible = True
            End Try

            FillList(Session("ListAction"))

            lstMembers.SelectedIndex = currentindex

            '_id = lstMembers.SelectedValue

            FillBoxes()
        Else 'btnsave text does not equal "Save Changes" so we are adding a new member

            sql = "Exec AddNewMemberInfo '" & Capitolize(txtFirst.Text) & "','" & Apos(Capitolize(txtLast.Text)) & "','" &
            UCase(txtInitial.Text) & "','" & txtJoined.Text & "','" & Capitolize(txtSuffix.Text) & "','" & Capitolize(txtSpouse.Text) & "','" &
            TxtEMail.Text & "','" & FixMyPhone(txtPhone.Text) & "','" & FixMyPhone(txtCellPhone.Text) & "','" & Capitolize(txtAddress.Text) & "','" & Capitolize(txtCity.Text) & "','" &
            UCase(txtState.Text) & "','" & txtZip.Text & "','" & Capitolize(txtCountry.Text) & "','" & txtRank.Text & " ','" &
            UCase(txtDues.Text) & "','" & Apos(txtDets.Text) & "','" & Apos(txtRemarks.Text) & "','" & Apos(txtComments.Text) & "','" &
            GetChapters() & "','" & GetDead() & "','" & GetElectronic() & "','" & GetOnLine() & "','" & Capitolize(ddlCommand.Text) & "','" &
            txtcmdDates.Text & "','" & txtSEO.Text & "','" & GetFailed() & "','" & Session("myName") & "'"

            Try
                Dim searchname As String = UCase(txtLast.Text & ", " & txtFirst.Text)

                Run_Sql(sql)

                lblDBMess.Text = "Data Saved."
                lblDBMess.ForeColor = Drawing.Color.DarkBlue
                lblDBMess.Visible = True
                lblDBMess.Focus()
                lstMembers.Enabled = True
                btnSearch.Enabled = True

                searchname = txtLast.Text & ", " & txtFirst.Text
                Session("ListAction") = "name"
                btnSave.Text = " Save Changes "
                btnAdd.Text = " Add New "
                pnlReasonForChange.Visible = True

                FillList(Session("ListAction")) 'refreshes the list box of members to include new member

                MsgBox(SearchListBox(searchname))
                lstMembers.SelectedValue = SearchListBox(searchname)

                FillBoxes()
            Catch
                lblDBMess.Text = "Data was NOT Saved."
                lblDBMess.ForeColor = Drawing.Color.Red
                lblDBMess.Visible = True
                lblDBMess.Focus()
                lblReason.Text = "Data was not saved."
                lblReason.Visible = True
                Exit Sub
            End Try
        End If
    End Sub

    Protected Function SearchListBox(s As String) As Int32
        Dim x As Int32

        For x = 0 To lstMembers.Items.Count - 1
            If UCase(lstMembers.Items(x).Text) = s Then
                lstMembers.SelectedIndex = x
                Return x
            End If
        Next

        Return 0

    End Function

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs)

        If btnAdd.Text = " Add New " Then
            btnSave.Text = " Save New "
            btnAdd.Text = " Cancel Add "
            pnlReasonForChange.Visible = False
            lblReason.Visible = False
            lstMembers.Enabled = False

            Session("myIndex") = lstMembers.SelectedIndex

            btnSearch.Enabled = False
            ClearBoxes()
            txtFirst.Focus()
            lblDBMess.Visible = True
            lblDBMess.Text = "Add New Record"
        Else
            btnSave.Text = " Save Changes "
            btnAdd.Text = " Add New "
            pnlReasonForChange.Visible = True
            lstMembers.Enabled = True
            btnSearch.Enabled = True
            lstMembers.SelectedIndex = Session("myIndex")
            FillBoxes()

            lblReason.Visible = False
            txtFirst.Focus()
            lblDBMess.Visible = True
            lblDBMess.Text = "Edit Data"
        End If

    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs)
        Dim ok As Boolean = False
        'Dim sb As New StringBuilder
        Dim x As Int32
        Dim s As String

        'If Session("ListAction") = "name" Then
        s = UCase(txtSearch.Text) + "*"

        lblSearchErr.Visible = False

        For x = 0 To lstMembers.Items.Count - 1
            If UCase(lstMembers.Items(x).Text) Like (s) Then
                ok = True
                lblDBMess.Visible = True
                lblSearchErr.Visible = False
                lstMembers.SelectedIndex = x
                Session("UserID") = lstMembers.SelectedValue
                FillBoxes()
                Exit Sub
            End If
        Next

        If Not ok Then
            lblSearchErr.Visible = True
            Exit Sub
        End If


        'ElseIf Session("ListAction") = "id" Then
        '    Dim i As String = txtSearch.Text

        '    If Not IsNumeric(i) Then
        '        MsgBox("You must put a numeric value in Search Box")
        '        Exit Sub
        '    End If

        '    For x = lstMembers.Items.Count - 1 To 0
        '        If lstMembers.Items(x).Text = i Then
        '            lblDBMess.Visible = True
        '            lstMembers.SelectedIndex = x
        '            Session("UserID") = lstMembers.SelectedValue
        '            FillBoxes()
        '            Exit Sub
        '        End If
        '    Next
        'End If
    End Sub

    Protected Sub btnMemCalifornia_Click(sender As Object, e As EventArgs)
        btnMemCalifornia.CssClass = "mySelBut hotBut floatLeft"
        btnMemColorado.CssClass = "mySelBut myBut floatLeft leftMarginHalfem"
        btnMemFlorida.CssClass = "mySelBut myBut floatLeft"
        btnNonMem.CssClass = "mySelBut myBut floatLeft leftMarginHalfem"
        btnEntire.CssClass = "mySelBut myBut"
        btnMemAll.CssClass = "mySelBut myBut autoMarginLeftRight"
        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "California Members<br>Deceased Shown"
        Else
            lblListTitle.Text = "California Members<br>Deceased Hidden"
        End If
        FillList(Session("ListAction"))
    End Sub

    Protected Sub btnMemColorado_Click(sender As Object, e As EventArgs)
        btnMemCalifornia.CssClass = "mySelBut myBut floatLeft"
        btnMemColorado.CssClass = "mySelBut hotBut floatLeft leftMarginHalfem"
        btnMemFlorida.CssClass = "mySelBut myBut floatLeft"
        btnNonMem.CssClass = "mySelBut myBut floatLeft leftMarginHalfem"
        btnEntire.CssClass = "mySelBut myBut"
        btnMemAll.CssClass = "mySelBut myBut autoMarginLeftRight"
        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "Colorado Members<br>Deceased Shown"
        Else
            lblListTitle.Text = "Colorado Members<br>Deceased Hidden"
        End If
        FillList(Session("ListAction"))
    End Sub

    Protected Sub btnMemFlorida_Click(sender As Object, e As EventArgs)
        btnMemCalifornia.CssClass = "mySelBut myBut floatLeft"
        btnMemColorado.CssClass = "mySelBut myBut floatLeft leftMarginHalfem"
        btnMemFlorida.CssClass = "mySelBut hotBut floatLeft"
        btnNonMem.CssClass = "mySelBut myBut floatLeft leftMarginHalfem"
        btnEntire.CssClass = "mySelBut myBut"
        btnMemAll.CssClass = "mySelBut myBut autoMarginLeftRight"
        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "Florida Members<br>Deceased Shown"
        Else
            lblListTitle.Text = "Florida Members<br>Deceased Hidden"
        End If
        FillList(Session("ListAction"))
    End Sub

    Protected Sub btnNonMem_Click(sender As Object, e As EventArgs)
        btnMemCalifornia.CssClass = "mySelBut myBut floatLeft"
        btnMemColorado.CssClass = "mySelBut myBut floatLeft leftMarginHalfem"
        btnMemFlorida.CssClass = "mySelBut myBut floatLeft"
        btnNonMem.CssClass = "mySelBut hotBut floatLeft leftMarginHalfem"
        btnEntire.CssClass = "mySelBut myBut"
        btnMemAll.CssClass = "mySelBut myBut autoMarginLeftRight"
        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "NonMembers<br>Deceased Shown"
        Else
            lblListTitle.Text = "NonMembers<br>Deceased Hidden"
        End If
        FillList(Session("ListAction"))
    End Sub

    Protected Sub btnEntire_Click(sender As Object, e As EventArgs)
        btnMemCalifornia.CssClass = "mySelBut myBut floatLeft"
        btnMemColorado.CssClass = "mySelBut myBut floatLeft leftMarginHalfem"
        btnMemFlorida.CssClass = "mySelBut myBut floatLeft"
        btnNonMem.CssClass = "mySelBut myBut floatLeft leftMarginHalfem"
        btnEntire.CssClass = "mySelBut hotBut"
        btnMemAll.CssClass = "mySelBut myBut autoMarginLeftRight"
        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "Entire Database<br>Deceased Shown"
        Else
            lblListTitle.Text = "Entire Database<br>Deceased Hidden"
        End If
        FillList(Session("ListAction"))
    End Sub

    Protected Sub btnMemAll_Click(sender As Object, e As EventArgs)
        btnMemCalifornia.CssClass = "mySelBut myBut floatLeft"
        btnMemColorado.CssClass = "mySelBut myBut floatLeft leftMarginHalfem"
        btnMemFlorida.CssClass = "mySelBut myBut floatLeft"
        btnNonMem.CssClass = "mySelBut myBut floatLeft leftMarginHalfem"
        btnEntire.CssClass = "mySelBut myBut"
        btnMemAll.CssClass = "mySelBut hotBut autoMarginLeftRight"
        If btnDeceased.Text = "Hide Deceased" Then
            lblListTitle.Text = "All Members<br>Deceased Shown"
        Else
            lblListTitle.Text = "All Members<br>Deceased Hidden"
        End If
        FillList(Session("ListAction"))
    End Sub

    Protected Function GetChapters() As String
        Dim s As String = ""

        Try
            If calChkYes.Visible = True Then
                s = "1"
            End If

            If colChkYes.Visible = True Then
                s = s & "2"
            End If

            If flaChkYes.Visible = True Then
                s = s & "3"
            End If
        Catch
            Return ""
        End Try

        Return s
    End Function

    Protected Function GetOnLine() As String

        Try
            If onLineChkYes.Visible = True Then
                Return "1"
            Else
                Return "0"
            End If
        Catch
            Return "0"
        End Try
    End Function

    Protected Function GetDeleted() As String

        Try
            If deleteChkYes.Visible = True Then
                Return "1"
            Else
                Return "0"
            End If
        Catch
            Return "0"
        End Try
    End Function

    Protected Function GetElectronic() As String

        Try
            If electronicChkYes.Visible = True Then
                Return "1"
            Else
                Return "0"
            End If
        Catch
            Return "0"
        End Try
    End Function

    Protected Function GetMailPomo() As String

        Try
            If mailPomoChkYes.Visible = True Then
                Return "1"
            Else
                Return "0"
            End If
        Catch
            Return "0"
        End Try
    End Function

    Protected Function GetDead() As String

        Try
            If deceasedChkYes.Visible = True Then
                Return "1"
            Else
                Return "0"
            End If
        Catch
            Return "0"
        End Try
    End Function

    Protected Function GetFailed() As String

        Try
            If failChkYes.Visible = True Then
                Return "1"
            Else
                Return "0"
            End If
        Catch
            Return "0"
        End Try
    End Function

    Private Function DeceasedStatus() As Int16
        If btnDeceased.Text = "Hide Deceased" Then
            Return 0
        Else
            Return 1
        End If
    End Function

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
        TxtEMail.Text = ""
        txtRank.Text = ""
        txtPhone.Text = ""
        txtComments.Text = ""
        txtDets.Text = ""
        txtRemarks.Text = ""
        txtDues.Text = ""
        txtSEO.Text = ""
        txtReason.Text = ""

        'deceasedChk.ImageUrl = " Then_Images/nocheck.jpg"
        electronicChkNo.Visible = True
        electronicChkYes.Visible = False
        calChkNo.Visible = True
        calChkYes.Visible = False
        colChkNo.Visible = True
        colChkYes.Visible = False
        flaChkNo.Visible = True
        flaChkYes.Visible = False
        deceasedChkNo.Visible = True
        deceasedChkYes.Visible = False
        onLineChkNo.Visible = True
        onLineChkYes.Visible = False
        failChkNo.Visible = True
        failChkYes.Visible = False

        ddlCommand.Text = "None"
    End Sub

    Protected Sub btnDeceased_Click(sender As Object, e As EventArgs)
        If btnDeceased.Text = "Hide Deceased" Then
            btnDeceased.Text = "Show Deceased"
            lblListTitle.Text = "Entire Database<br/>Deceased Hidden"
        Else
            btnDeceased.Text = "Hide Deceased"
            lblListTitle.Text = "Entire Database<br/>Deceased Shown"
        End If
        FillList(Session("ListAction"))
    End Sub

    Function GetList(ByVal ds As DataSet, chap As String, hidedesc As Int16) As Boolean
        Dim sql As String
        Dim r As DataRow

        sql = "exec GetMemberList '" & chap & "'," & hidedesc
            Try
            Get_Dataset(sql, ds)

            For Each r In ds.Tables(0).Rows
                r.Item("Name") = Capitolize(r.Item("Name"))
            Next

            Return True
        Catch
            Return False
        End Try
    End Function

    Private Sub FillList(listType As String)
        Dim ds As New DataSet
        Dim r As DataRow
        Dim x As Int16 = 0

        GetList(ds, getAction(), DeceasedStatus())

        For Each r In ds.Tables(0).Rows
            ds.Tables(0).Rows(x).Item("Name") = Capitolize(r.Item("Name"))
            x = x + 1
        Next

        ds.AcceptChanges()

        lstMembers.DataSource = ds.Tables(0)

        If listType = "name" Then
            lstMembers.DataTextField = "Name"
            ds.Tables(0).DefaultView.Sort = "Name asc"
            ds.Tables(0).AcceptChanges()
        Else
            lstMembers.DataTextField = "id"
            ds.Tables(0).DefaultView.Sort = "ID asc"
            ds.Tables(0).AcceptChanges()
        End If

        lstMembers.DataValueField = "id"
        lstMembers.DataBind()

        lblMemCount.Text = "List Count " & lstMembers.Items.Count
        lstMembers.SelectedIndex = 0
        lblSearchErr.Visible = False

        '_id = lstMembers.SelectedValue

        FillBoxes()

    End Sub

    Private Sub FillBoxes()
        Dim sql As String = "Exec GetMemberdata " & Session("UserID")
        Dim ds As New DataSet
        Dim chaps As String
        Dim cmdPosition As String = ""
        Dim cmdDates As String = ""
        Get_Dataset(sql, ds)

        lblID.Text = "ID " & ds.Tables(0).Rows(0).Item("id")
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
        'txtAddress2.Text = Capitolize(ds.Tables(0).Rows(0).Item("Address1"))
        'txtCity2.Text = Capitolize(ds.Tables(0).Rows(0).Item("City1"))
        'txtState2.Text = UCase(ds.Tables(0).Rows(0).Item("State1"))
        'txtZip2.Text = Capitolize(ds.Tables(0).Rows(0).Item("Zip1"))
        'txtCountry2.Text = Capitolize(ds.Tables(0).Rows(0).Item("Country1"))
        txtSpouse.Text = Capitolize(ds.Tables(0).Rows(0).Item("Wife"))
        TxtEMail.Text = ds.Tables(0).Rows(0).Item("EMail")
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

        If ds.Tables(0).Rows(0).Item("BadEmail") = "1" Then
            failChkYes.Visible = True
            failChkNo.Visible = False
        Else
            failChkYes.Visible = False
            failChkNo.Visible = True
        End If

        If ds.Tables(0).Rows(0).Item("On_Line") = "1" Then
            onLineChkYes.Visible = True
            onLineChkNo.Visible = False
        Else
            onLineChkYes.Visible = False
            onLineChkNo.Visible = True
        End If

        If ds.Tables(0).Rows(0).Item("Deceased") = "1" Then
            deceasedChkYes.Visible = True
            deceasedChkNo.Visible = False
        Else
            deceasedChkYes.Visible = False
            deceasedChkNo.Visible = True
        End If

        If ds.Tables(0).Rows(0).Item("Electronic") = "1" Then
            electronicChkYes.Visible = True
            electronicChkNo.Visible = False
        Else
            electronicChkYes.Visible = False
            electronicChkNo.Visible = True
        End If

        chaps = ds.Tables(0).Rows(0).Item("Chapters") & ""

        If chaps Like "*1*" Then
            calChkYes.Visible = True
            calChkNo.Visible = False
        Else
            calChkNo.Visible = True
            calChkYes.Visible = False
        End If

        If chaps Like "*2*" Then
            colChkYes.Visible = True
            colChkNo.Visible = False
        Else
            colChkNo.Visible = True
            colChkYes.Visible = False
        End If

        If chaps Like "*3*" Then
            flaChkYes.Visible = True
            flaChkNo.Visible = False
        Else
            flaChkNo.Visible = True
            flaChkYes.Visible = False
        End If

        lblModDate.Text = "Date Last Modified " & ds.Tables(0).Rows(0).Item("LastModified")

        sql = "EXEC isCommander " & lstMembers.SelectedValue

        Get_Dataset(sql, ds, "Command")

        txtFirst.Focus()

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

    Protected Sub calChkYes_Click(sender As Object, e As ImageClickEventArgs)
        calChkYes.Visible = False
        calChkNo.Visible = True
    End Sub

    Protected Sub calChkNo_Click(sender As Object, e As ImageClickEventArgs)
        calChkNo.Visible = False
        calChkYes.Visible = True
    End Sub

    Protected Sub colChkYes_Click(sender As Object, e As ImageClickEventArgs)
        colChkYes.Visible = False
        colChkNo.Visible = True
    End Sub

    Protected Sub colChkNo_Click(sender As Object, e As ImageClickEventArgs)
        colChkNo.Visible = False
        colChkYes.Visible = True
    End Sub

    Protected Sub flaChkYes_Click(sender As Object, e As ImageClickEventArgs)
        flaChkYes.Visible = False
        flaChkNo.Visible = True
    End Sub

    Protected Sub flaChkNo_Click(sender As Object, e As ImageClickEventArgs)
        flaChkNo.Visible = False
        flaChkYes.Visible = True
    End Sub

    Protected Sub imgShowDeceasedNo_Click(sender As Object, e As ImageClickEventArgs)
        'imgShowDeceasedNo.Visible = False
        'imgShowDeceasedYes.Visible = True
        FillList(Session("ListAction"))
        lstMembers.SelectedIndex = 0
        FillBoxes()
    End Sub

    Protected Sub imgShowDeceasedYes_Click(sender As Object, e As ImageClickEventArgs)
        'imgShowDeceasedYes.Visible = False
        'imgShowDeceasedNo.Visible = True
        FillList(Session("ListAction"))
        lstMembers.SelectedIndex = 0
        FillBoxes()
    End Sub

    Protected Sub deceasedChkNo_Click(sender As Object, e As ImageClickEventArgs)
        deceasedChkNo.Visible = False
        deceasedChkYes.Visible = True
    End Sub

    Protected Sub deceasedChkYes_Click(sender As Object, e As ImageClickEventArgs)
        deceasedChkYes.Visible = False
        deceasedChkNo.Visible = True
    End Sub

    Protected Sub electronicChkNo_Click(sender As Object, e As ImageClickEventArgs)
        electronicChkNo.Visible = False
        electronicChkYes.Visible = True
    End Sub

    Protected Sub electronicChkYes_Click(sender As Object, e As ImageClickEventArgs)
        electronicChkYes.Visible = False
        electronicChkNo.Visible = True
    End Sub

    Protected Sub mailPomoChkNo_Click(sender As Object, e As ImageClickEventArgs)
        mailPomoChkNo.Visible = False
        mailPomoChkYes.Visible = True
    End Sub

    Protected Sub mailPomoChkYes_Click(sender As Object, e As ImageClickEventArgs)
        mailPomoChkYes.Visible = False
        mailPomoChkNo.Visible = True
    End Sub

    Protected Sub onLineChkNo_Click(sender As Object, e As ImageClickEventArgs)
        onLineChkNo.Visible = False
        onLineChkYes.Visible = True
    End Sub

    Protected Sub onLineChkYes_Click(sender As Object, e As ImageClickEventArgs)
        onLineChkYes.Visible = False
        onLineChkNo.Visible = True
    End Sub

    Protected Sub failChkNo_Click(sender As Object, e As ImageClickEventArgs)
        failChkNo.Visible = False
        failChkYes.Visible = True
    End Sub

    Protected Sub failChkYes_Click(sender As Object, e As ImageClickEventArgs)
        failChkYes.Visible = False
        failChkNo.Visible = True
    End Sub

    Protected Sub deleteChkNo_Click(sender As Object, e As ImageClickEventArgs)
        deleteChkNo.Visible = False
        deleteChkYes.Visible = True
    End Sub

    Protected Sub deleteChkYes_Click(sender As Object, e As ImageClickEventArgs)
        deleteChkYes.Visible = False
        deleteChkNo.Visible = True
    End Sub

    Protected Sub btnSubmitChangePW_Click(sender As Object, e As EventArgs)
        myaction = "passwordSubmitChange"
    End Sub

    Private Sub FillCommandList()
        Dim ds As New DataSet
        Dim sql As String = "exec GetCommandStatus"

        Get_Dataset(sql, ds)

        ddlCommand.DataSource = ds.Tables(0)
        ddlCommand.DataTextField = "Command"
        ddlCommand.DataBind()

    End Sub

    Private Sub isCommander()
        Dim ds As New DataSet '
        Dim sql As String = "EXEC isCommander " & lstMembers.SelectedValue

        Get_Dataset(sql, ds)

        If ds.Tables(0).Rows.Count < 1 Then
            ddlCommand.Text = ""
            txtcmdDates.Text = ""
        Else
            ddlCommand.Text = ds.Tables(0).Rows(0).Item("Command")
            txtcmdDates.Text = ds.Tables(0).Rows(0).Item("Service")
        End If
    End Sub

    Protected Sub searchChkNameYes_Click(sender As Object, e As ImageClickEventArgs)
        If searchChkNameYes.Visible Then
            searchChkNameYes.Visible = False
            searchChkNameNo.Visible = True
            searchChkIDNo.Visible = False
            searchChkIDYes.Visible = True
            Session("ListAction") = "id"
            FillList("id")
        Else
            searchChkNameYes.Visible = True
            searchChkNameNo.Visible = False
            searchChkIDNo.Visible = True
            searchChkIDYes.Visible = False
            Session("ListAction") = "name"
            FillList("name")
        End If

        lstMembers.SelectedIndex = 0
        FillBoxes()
    End Sub

    Protected Sub searchChkIDYes_Click(sender As Object, e As ImageClickEventArgs)
        If searchChkIDYes.Visible Then
            searchChkIDYes.Visible = False
            searchChkIDNo.Visible = True
            searchChkNameYes.Visible = False
            searchChkNameNo.Visible = True
            Session("ListAction") = "name"
            FillList(Session("ListAction"))
        Else
            searchChkIDYes.Visible = True
            searchChkIDNo.Visible = False
            searchChkNameYes.Visible = False
            searchChkNameNo.Visible = True
            Session("ListAction") = "id"
            FillList(Session("ListAction"))
        End If

        lstMembers.SelectedIndex = 0
        FillBoxes()
    End Sub

    Protected Sub btnReturnToMenu_Click(sender As Object, e As EventArgs)
        Session("Action") = "Menu"
        Response.Redirect("Main.aspx")
    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs)
        Ping()
    End Sub

End Class