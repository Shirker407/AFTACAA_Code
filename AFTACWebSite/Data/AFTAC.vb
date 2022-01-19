Imports System
Imports System.Collections.Generic
Imports System.ComponentModel.DataAnnotations
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Data.Entity.Spatial

<Table("AFTAC")>
Partial Public Class AFTAC
    Public Property ID As Integer

    <StringLength(50)>
    Public Property LAST As String

    <StringLength(50)>
    Public Property FIRST As String

    <StringLength(1)>
    Public Property INITIAL As String

    <StringLength(3)>
    Public Property JR As String

    <StringLength(50)>
    Public Property WIFE As String

    <StringLength(9)>
    Public Property RANK As String

    <StringLength(50)>
    Public Property ADDRESS As String

    <StringLength(50)>
    Public Property CITY As String

    <StringLength(5)>
    Public Property STATE As String

    <StringLength(15)>
    Public Property ZipCode As String

    <StringLength(25)>
    Public Property Country As String

    <StringLength(50)>
    Public Property Address1 As String

    <StringLength(50)>
    Public Property City1 As String

    <StringLength(5)>
    Public Property State1 As String

    <StringLength(15)>
    Public Property Zip1 As String

    <StringLength(25)>
    Public Property Country1 As String

    <StringLength(15)>
    Public Property Phone As String

    <StringLength(15)>
    Public Property CellPhone As String

    Public Property REMARKS As String

    <StringLength(3)>
    Public Property MEMBERDUES As String

    Public Property MemberID As Integer?

    Public Property Comments As String

    <StringLength(7)>
    Public Property seoID As String

    <StringLength(10)>
    Public Property DateJoined As String

    Public Property Dets As String

    <StringLength(50)>
    Public Property EMail As String

    <StringLength(1)>
    Public Property Electronic As String

    <StringLength(10)>
    Public Property LastModified As String

    <StringLength(1)>
    Public Property Deceased As String

    <StringLength(80)>
    Public Property Reason As String

    <StringLength(1)>
    Public Property eDir As String

    <StringLength(30)>
    Public Property Command As String

    <StringLength(20)>
    Public Property CmdServiceDates As String

    <StringLength(1)>
    Public Property CC As String

    <StringLength(1)>
    Public Property ON_LINE As String

    <StringLength(5)>
    Public Property Chapters As String

    <StringLength(1)>
    Public Property Deleted As String

    <StringLength(1)>
    Public Property Fail As String

    <StringLength(1)>
    Public Property Winter As String

    Public Property Summer As Boolean?

    <Column(TypeName:="money")>
    Public Property Total As Decimal?

    Public Property Worldwide As Boolean?

    Public Property Year20Wall As Short?

    <StringLength(50)>
    Public Property WallPhoto As String
End Class
