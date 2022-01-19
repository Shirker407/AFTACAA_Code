Imports System.Web.Services
Imports System.ComponentModel
Imports System.Data.SqlClient
Imports System.Web.Script.Serialization

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
<System.Web.Script.Services.ScriptService()>
<System.Web.Services.WebService(Namespace:="http://seagullusa.net/")>
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)>
<ToolboxItem(False)>
Public Class myService
    Inherits System.Web.Services.WebService
    Private cs As String = My.Settings.ComString

    <WebMethod()>
    Public Function isAdmin(name As String) As Boolean
        Dim sql As String = "Exec isAdmin '" & name & "'"
        Dim ds As New DataSet

        Get_Dataset(sql, ds)

        If ds.Tables(0).Rows(0).Item(0) = 1 Then
            Return True
        Else
            Return False
        End If
    End Function

    <WebMethod()>
    Public Function chkCredentials(name As String, password As String, ByVal isAdmin As Boolean) As Boolean
        Dim sql As String
        Dim ds As New DataSet

        sql = "exec CheckPassword '" & name & "'"

        Get_Dataset(sql, ds)

        If ds.Tables(0).Rows(0).Item("admin") = 0 Then
            isAdmin = False
        Else
            isAdmin = True
        End If

        If ds.Tables(0).Rows.Count = 0 Then
            Return False
        ElseIf password <> ds.Tables(0).Rows(0).Item("Password") Then
            Return False
        End If

        Return True
    End Function

    <WebMethod()>
    Public Function ismemberbyemail(email As String) As Boolean
        Dim sql As String = "Exec ismemberbyemail '" + email + "'"
        Dim ds As New DataSet

        If Len(email) < 1 Then
            Return False
        End If

        Try
            Get_Dataset(sql, ds)

            If Len(ds.Tables(0).Rows(0).Item(0)) > 0 Then
                Return True
            Else
                Return False
            End If

        Catch x As Exception
            Return False
        End Try

    End Function

    <WebMethod()>
    Function GetList(ByVal ds As DataSet, chap As String, hidedesc As Int16) As Boolean
        Dim sql As String
        Dim r As DataRow

        If ListAction = "name" Then
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
        ElseIf ListAction = "id" Then
            sql = "exec GetMemberListbyID '" & chap & "'," & hidedesc
            Try
                Get_Dataset(sql, ds)

                Return True
            Catch
                Return False
            End Try
        Else
            Return False
        End If

    End Function

    <WebMethod()>
    Function MemberList(ByVal ds As DataSet, s As String, d As Int16) As Boolean
        Dim sql = "exec GetMemberList '" & s & "'," & d
        Try
            Get_Dataset(sql, ds)
            Return True
        Catch
            Return False
        End Try
    End Function

    <WebMethod()>
    Sub SaveLogIn(Name As String)
        Dim sql = "exec AddLogin '" & Name & "'"

        Run_Sql(sql)
    End Sub

    <WebMethod()> Function CheckPassword(ByVal ds As DataSet, n As String) As Boolean
        Dim sql As String = "exec CheckPassword '" & n & "'"
        Try
            Get_Dataset(sql, ds)
            Return True
        Catch
            Return False
        End Try
    End Function

    <WebMethod()> Function ArchiveObitNames() As List(Of String)
        Dim sql As String = "Exec jsonArchNames"
        Dim ds As New DataSet
        Dim myJson = New List(Of String)
        Dim r As DataRow

        Get_Dataset(sql, ds)

        For Each r In ds.Tables(0).Rows
            myJson.Add(r.Item(0))
        Next

        Return myJson
    End Function

    <WebMethod()> Function FixMyPhone(s As String) As String
        Dim buffer As String = ""
        Dim x As Int16

        If Not (Len(s) = 10 Or Len(s) = 7) Then
            Return s
        End If

        For x = 0 To Len(s) - 1
            If IsNumeric(x) Then
                buffer = buffer + s(x)
            End If
        Next

        Return buffer

    End Function

    <WebMethod()> Function UnFixMyPhone(ByVal s As String) As String
        If Not (Len(s) = 10 Or Len(s) = 7) Or Not IsNumeric(s) Then
            Return s
        Else
            If Len(s) = 10 Then
                Return "(" & Mid$(s, 1, 3) & ") " & Mid$(s, 4, 3) & "-" & Mid$(s, 7)
            Else
                Return Mid$(s, 1, 3) & "-" & Mid$(s, 4)
            End If

        End If
    End Function

    <WebMethod()> Function Capitolize(ByVal s As String) As String
        'This function will capitolize the first letters of each word in a string.
        'Works well with peoples names
        Dim x As Int32
        Dim temp As String

        temp = UCase(Mid$(s, 1, 1))

        For x = 2 To Len(s)
            If Mid$(s, x - 1, 1) = " " Then
                temp &= UCase(Mid$(s, x, 1))
            Else
                temp &= LCase(Mid$(s, x, 1))
            End If
        Next

        Return temp

    End Function

    <WebMethod()> Function unApos(ByVal S As String) As String
        Dim strBuffer As String = ""
        Dim P As Int32

        If Len(S) = 0 Or IsNothing(S) Then
            Return ""
            Exit Function
        End If

        P = InStr(S, "''")

        If P = 0 Then
            Return S
            Exit Function
        End If

        strBuffer = Replace(S, "''", "'")

        Return strBuffer


    End Function

    <WebMethod()> Function Apos(ByVal S As String) As String
        'This function will check for apostrophies in a string and replace them with double apostrophies.
        Dim strBuffer As String = ""
        Dim P As Int32

        If Len(S) = 0 Or IsNothing(S) Then
            Return ""
            Exit Function
        End If

        P = InStr(S, "'")

        If P = 0 Then
            Return S
            Exit Function
        End If

        strBuffer = Replace(S, "'", "''")

        Return strBuffer

    End Function

    Private Function DataSetToJSON(ds As DataSet) As String
        Dim dict As New Dictionary(Of String, Object)

        For Each dt As DataTable In ds.Tables
            Dim arr(dt.Rows.Count) As Object

            For i As Integer = 0 To dt.Rows.Count - 1
                arr(i) = dt.Rows(i).ItemArray
            Next

            dict.Add(dt.TableName, arr)
        Next

        Dim json As New JavaScriptSerializer
        Return json.Serialize(dict)
    End Function

    Private Sub Get_Dataset(ByVal sql As String, ByRef ds As DataSet, Optional ByVal SN As String = "Data")
        'Will return a dataset in accordance with the sql statement

        Dim cn As New SqlConnection
        Dim da As SqlDataAdapter

        cn.ConnectionString = cs
        cn.Open()
        da = New SqlDataAdapter(sql, cn)
        da.Fill(ds, SN)
        cn.Close()
        cn.Dispose()
    End Sub

    Private Sub Run_Sql(ByVal S As String)
        'Will run a sql statement with no return value
        Dim cmd As New SqlCommand
        Dim cn As New SqlConnection

        cn.ConnectionString = cs
        cn.Open()
        cmd.Connection = cn
        cmd.CommandType = CommandType.Text
        cmd.CommandText = S
        cmd.ExecuteNonQuery()
        cn.Close()
        cn.Dispose()

    End Sub
End Class