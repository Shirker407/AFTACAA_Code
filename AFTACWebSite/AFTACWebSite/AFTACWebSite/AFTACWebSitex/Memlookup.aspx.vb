Imports System.Data.SqlClient

Public Class Memlookup
    Inherits System.Web.UI.Page

    Private cs As String = My.Settings.ComString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ds As New DataSet
        Dim sql As String
        Dim ws As New myService

        If Not IsPostBack Then
            sql = "exec GetAll"
            Get_Dataset(sql, ds, "MemList")

            Dim r As DataRow

            For Each r In ds.Tables("MemList").Rows
                r.Item("Name") = ws.Capitolize(r.Item("Name") + "")
            Next

            lstMems.DataSource = ds.Tables("MemList")
            lstMems.DataTextField = "Name"
            lstMems.DataValueField = "ID"
            lstMems.DataBind()
        End If
    End Sub

    Protected Sub lstMems_SelectedIndexChanged(sender As Object, e As EventArgs)
        SetupForm()
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs)
        Dim x As Int32 = 0
        Dim s As String = UCase(txtSearch.Text) + "*"
        Dim ok As Boolean = False

        lblErrSearch.Visible = False

        If Len(txtSearch.Text) = 0 Then
            lblErrSearch.Text = "Nothing entered in search"
            lblErrSearch.Visible = True
            Exit Sub
        End If

        For x = 0 To lstMems.Items.Count - 1
            If UCase(lstMems.Items(x).Text) Like (s) Then
                ok = True
                Exit For
            End If
        Next

        If ok Then
            lstMems.SelectedIndex = x
            SetupForm()
        Else
            lblErrSearch.Text = "Search String not Found"
            lblErrSearch.Visible = True
        End If
    End Sub

    Protected Sub btnMemReturn_Click(sender As Object, e As EventArgs)
        Response.Redirect("Main.aspx")
    End Sub

    Private Sub SetupForm()
        Dim ds As New DataSet
        Dim sql As String = "exec GetMemberData " & lstMems.SelectedValue
        Dim mailURL As String
        Dim fname As String
        Dim lname As String
        Dim id As String
        Dim ws As New myService

        Get_Dataset(sql, ds)

        fname = ws.Capitolize(ds.Tables(0).Rows(0).Item("First"))
        lname = ws.Capitolize(ds.Tables(0).Rows(0).Item("last"))
        id = ds.Tables(0).Rows(0).Item("ID").ToString
        pnlHyper.Visible = True

        mailURL = "MailTo:Steskalm@aol.com,fCalenda@aol.com?subject=Member Information Request&body=Please send me any information you have on " & fname & " " & lname & " ID:" & id

        HyperLink1.NavigateUrl = Replace(mailURL, " ", "%20")

        If ds.Tables(0).Rows(0).Item("Deceased") Then
            lblDeceasedMess.Text = fname & " " & lname & " is deceased."
            pnlMemDefault.Visible = False
            pnlMemAlive.Visible = False
            pnlNonMember.Visible = False
            pnlMemDeceased.Visible = True
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
            Exit Sub
        End If

        If Not HasChapter(chap) Then
            lblNonMember.Text = fname & " " & lname & " is not a member of any chapter"
            pnlMemDefault.Visible = False
            pnlMemAlive.Visible = False
            pnlNonMember.Visible = True
            pnlMemDeceased.Visible = False
        End If

    End Sub

    Private Function HasChapter(c As String) As Boolean
        If c Like "*1*" Then
            Return True
        End If

        If c Like "*2*" Then
            Return True
        End If

        If c Like "*3*" Then
            Return True
        End If

        Return False
    End Function

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs)
        Ping()
    End Sub
End Class