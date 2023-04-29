Imports System.Data.SqlClient
Imports System.Net.Mail

Module Module1
    Private cs As String = My.Settings.ComString
    'Public action As String = "default"
    Public myaction As String = ""
    Public NoObit As String = "<img alt=""Not Included"" class=""autoMarginLeftRight width30 topMargin2em maroonBorder smallShadow"" src=""_Images/Not Included.jpg"" /> <p class=""centerText"">This page is still under construction.<br />We are still looking for some obituaries in old PoMos.</p>"
    Public dsWOH As New DataSet
    'Public PWUser As String
    Public idx As Int32 = 0
    Public lstName As String
    Public lstNamesData As New DataSet
    Public ListAction As String = "name" 'Indicates if list search is by name or id

    Public Sub Ping()
        My.Computer.Network.Ping("aftacaa.us")
    End Sub

    Public Function Co_Attending() As Int16
        Dim sql As String = "SELECT sum(Attending) as Attending from Co_Reunion"
        Dim ds As New DataSet

        Try
            Get_Dataset(sql, ds)
            Return ds.Tables(0).Rows(0).Item(0)
        Catch
            Return 0
        End Try

    End Function

    Public Function Send_Mail(MailTo As String, MailFrom As String, myMsg As String, Subject As String) As Boolean
        Dim msg As New MailMessage  'Create the msg object to be sent

        Try
            'Add your email address to the recipients
            msg.To.Add(MailTo)
            'Configure the address we are sending the mail from
            msg.From = New MailAddress(MailFrom)
            msg.Subject = Subject
            msg.Body = myMsg

            Dim client As New SmtpClient
            client.Host = "pop.gmail.com"
            client.Port = 995
            client.Credentials = New System.Net.NetworkCredential(MailFrom, "Shirley@8")

            client.Send(msg)

            Return True
        Catch
            Return False
        End Try

    End Function

    Public Function GetAdminLevel(name As String) As Int16
        Dim ds As New DataSet
        Dim sql As String = ""
        Dim sb As New StringBuilder
        Dim adminlevel As Int16
        Dim user As String = ""

        sql = "Select Admin from Passwords where userName='" & name & "'"

        Try
            Get_Dataset(sql, ds)
            adminlevel = ds.Tables(0).Rows(0).Item("Admin")
        Catch
            adminlevel = 0
        End Try

        Return adminlevel

    End Function
    Public Sub Get_Dataset(ByVal sql As String, ByRef ds As DataSet, Optional ByVal SN As String = "Data")
        'Will return a dataset in accordance with the sql statement

        Dim cn As New SqlConnection
        Dim da As SqlDataAdapter

        cn.ConnectionString = cs
        cn.Open()
        da = New SqlDataAdapter(sql, cn)
        da.Fill(ds, SN)
        cn.Close()

    End Sub

    Public Sub Run_Sql(ByVal S As String)
        'Will run a sql statement with no return value
        Dim cmd As New SqlCommand
        Dim cn As New SqlConnection With {.ConnectionString = cs}
        Dim x As Integer

        cn.Open()
        cmd.Connection = cn
        cmd.CommandType = CommandType.Text
        cmd.CommandText = S
        x = cmd.ExecuteNonQuery()
        cn.Close()

    End Sub

    Public Function FixMyPhone(s As String) As String
        Dim buffer As String = ""
        Dim x As Int16

        If Not (Len(s) = 10 Or Len(s) = 7) Then
            Return s
        End If

        If Len(s) = 0 Then
            Return ""
        End If

        For x = 0 To Len(s) - 1
            If IsNumeric(x) Then
                buffer = buffer + s(x)
            End If
        Next

        Return buffer

    End Function

    Public Function UnFixMyPhone(ByVal s As String) As String
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

    Public Function Capitolize(ByVal s As String) As String
        'This function will capitolize the first letters of each word in a string.
        'Works well with peoples names
        Dim x As Int32
        Dim temp As String

        If Len(s) < 1 Then
            temp = ""
        Else
            s = unApos(s)

            temp = UCase(Mid$(s, 1, 1))

            For x = 2 To Len(s)
                If x = 3 And Mid$(s, x - 1, 1) = "'" Then
                    temp &= UCase(Mid$(s, x, 1))
                Else
                    If Mid$(s, x - 1, 1) = " " Then
                        temp &= UCase(Mid$(s, x, 1))
                    ElseIf temp = "Mc" And x = 3 Then
                        temp &= UCase(Mid$(s, x, 1))
                    ElseIf Mid$(s, x - 1, 1) = "(" Then
                        temp &= UCase(Mid$(s, x, 1))
                    Else
                        temp &= LCase(Mid$(s, x, 1))
                    End If
                End If

            Next
        End If
        Return temp

    End Function

    Public Function unApos(ByVal S As String) As String
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

    Public Function Apos(ByVal S As String) As String
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
    Public Function SafeText(ByVal S As String) As String
        'This function makes text safe for display in HTML additional characters that cause issues can be added by copying the Check for é if section below can be added 
        Dim textBuffer As String

        '   If Len(S) = 0 Or IsNothing(S) Then
        '  Return ""
        '        Exit Function
        'End If

        'Check for single quotes/apostrophes 
        If InStr(S, "'") > 0 Then
            textBuffer = Replace(S, "'", "''")
        Else
            textBuffer = S
        End If

        'Check for é 
        If InStr(textBuffer, "é") > 0 Then
            textBuffer = Replace(textBuffer, "é", "&eacute;")
        End If

        Return textBuffer
    End Function

    Function ValidEmail(ByVal strCheck As String) As Boolean
        'Created by Chad M. Kovac
        'Tech Knowledgey, Inc.
        'http://www.TechKnowledgeyInc.com

        Dim bCK As Boolean
        Dim strDomainType As String
        'Dim strDomainName As String
        Const sInvalidChars As String = "!#$%^&*()=+{}[]|\;:'/?>,< "
        Dim i As Integer

        If Len(strCheck) < 10 Then
            GoTo ExitFunction
        End If

        bCK = Not InStr(1, strCheck, Chr(34)) > 0 'Check to see if there is a double quote
        If Not bCK Then GoTo ExitFunction

        bCK = Not InStr(1, strCheck, "..") > 0 'Check to see if there are consecutive dots
        If Not bCK Then GoTo ExitFunction

        ' Check for invalid characters.
        If Len(strCheck) > Len(sInvalidChars) Then
            For i = 1 To Len(sInvalidChars)
                If InStr(strCheck, Mid(sInvalidChars, i, 1)) > 0 Then
                    bCK = False
                    GoTo ExitFunction
                End If
            Next
        Else
            For i = 1 To Len(strCheck)
                If InStr(sInvalidChars, Mid(strCheck, i, 1)) > 0 Then
                    bCK = False
                    GoTo ExitFunction
                End If
            Next
        End If

        If InStr(1, strCheck, "@") > 1 Then 'Check for an @ symbol
            bCK = Len(Left(strCheck, InStr(1, strCheck, "@") - 1)) > 0
        Else
            bCK = False
        End If
        If Not bCK Then GoTo ExitFunction

        strCheck = Right(strCheck, Len(strCheck) - InStr(1, strCheck, "@"))
        bCK = Not InStr(1, strCheck, "@") > 0 'Check to see if there are too many @'s
        If Not bCK Then GoTo ExitFunction

        strDomainType = Right(strCheck, Len(strCheck) - InStr(1, strCheck, "."))
        bCK = Len(strDomainType) > 0 And InStr(1, strCheck, ".") < Len(strCheck)
        If Not bCK Then GoTo ExitFunction

        strCheck = Left(strCheck, Len(strCheck) - Len(strDomainType) - 1)
        Do Until InStr(1, strCheck, ".") <= 1
            If Len(strCheck) >= InStr(1, strCheck, ".") Then
                strCheck = Left(strCheck, Len(strCheck) - (InStr(1, strCheck, ".") - 1))
            Else
                bCK = False
                GoTo ExitFunction
            End If
        Loop
        If strCheck = "." Or Len(strCheck) = 0 Then bCK = False

ExitFunction:
        ValidEmail = bCK
    End Function

    Sub SendMail()
        Dim Smtp_Server As New SmtpClient
        Dim e_mail As New MailMessage()

        Try
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("pete@seagullusa.net", "Shirley@8")
            Smtp_Server.Port = 465
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtpout.secureserver.net"

            'e_mail = New MailMessage()
            e_mail.From = New MailAddress("pete@seagullusa.net")
            e_mail.To.Add("pete@seagullusa.net")
            e_mail.Subject = "Testing automatic EMail."
            e_mail.IsBodyHtml = False
            e_mail.Body = "Hello World"
            Smtp_Server.Send(e_mail)
            MsgBox("Mail Sent")

        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try
    End Sub

    'Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    '    Try
    '        Dim Smtp_Server As New SmtpClient
    '        Dim e_mail As New MailMessage()
    '        Smtp_Server.UseDefaultCredentials = False
    '        Smtp_Server.Credentials = New Net.NetworkCredential("username@gmail.com", "password")
    '        Smtp_Server.Port = 587
    '        Smtp_Server.EnableSsl = True
    '        Smtp_Server.Host = "smtp.gmail.com"

    '        e_mail = New MailMessage()
    '        e_mail.From = New MailAddress(txtFrom.Text)
    '        e_mail.To.Add(txtTo.Text)
    '        e_mail.Subject = "Email Sending"
    '        e_mail.IsBodyHtml = False
    '        e_mail.Body = txtMessage.Text
    '        Smtp_Server.Send(e_mail)
    '        MsgBox("Mail Sent")

    '    Catch error_t As Exception
    '        MsgBox(error_t.ToString)
    '    End Try
    'End Sub
End Module
