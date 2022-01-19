Public Class Password
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet
        Dim ws As New myService

        pnlError.Visible = False

        If ws.CheckPassword(ds, txtUserName.Text) Then
            If ds.Tables(0).Rows.Count < 1 Then
                lblErrMess.Text = "Invalid User Name"
                pnlError.Visible = True
                Exit Sub
            End If
        End If

        If txtPassword.Text <> ds.Tables(0).Rows(0).Item("Password") Then
            lblErrMess.Text = "Invalid Password"
            pnlError.Visible = True
            Exit Sub
        End If

        Response.Cookies("Admin").Value = ds.Tables(0).Rows(0).Item("Admin")
        Response.Cookies("LoggedIn").Value = 1

        Response.Redirect("Membership.aspx")

    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs)
        Ping()
    End Sub
End Class