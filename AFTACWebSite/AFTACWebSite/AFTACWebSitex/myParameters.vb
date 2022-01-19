Public Class myParameters
    Private mAction As String
    Private mshowdeceased As Integer

    Property action As String
        Get
            Return mAction
        End Get
        Set(value As String)
            mAction = value
        End Set
    End Property

    Property showdeceased As Integer
        Get
            Return mshowdeceased
        End Get
        Set(value As Integer)
            mshowdeceased = value
        End Set
    End Property

End Class
