Imports System
Imports System.Collections.Generic
Imports System.ComponentModel.DataAnnotations
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Data.Entity.Spatial

Partial Public Class Obit
    Public Property ID As Integer

    Public Property myID As Integer?

    <StringLength(75)>
    Public Property Name As String

    <StringLength(10)>
    Public Property DOD As String

    Public Property Obituary As String

    <StringLength(75)>
    Public Property fullname As String

    Public Property Archived As Short?
End Class
