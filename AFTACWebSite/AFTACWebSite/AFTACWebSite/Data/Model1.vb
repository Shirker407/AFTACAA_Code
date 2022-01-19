Imports System
Imports System.Data.Entity
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Linq

Partial Public Class Model1
    Inherits DbContext

    Public Sub New()
        MyBase.New("name=Model1")
    End Sub

    Public Overridable Property AFTACs As DbSet(Of AFTAC)
    Public Overridable Property Obits As DbSet(Of Obit)

    Protected Overrides Sub OnModelCreating(ByVal modelBuilder As DbModelBuilder)
        modelBuilder.Entity(Of AFTAC)() _
            .Property(Function(e) e.Total) _
            .HasPrecision(19, 4)
    End Sub
End Class
