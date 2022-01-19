Public Class AddObits
    Inherits System.Web.UI.Page

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

End Class