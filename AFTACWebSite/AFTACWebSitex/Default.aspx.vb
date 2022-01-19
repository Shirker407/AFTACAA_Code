Public Class _Default1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button_Click(sender As Object, e As EventArgs)
        Response.Redirect("Main.aspx")
    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs)
        Ping()
    End Sub
End Class