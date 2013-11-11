
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_date.Text = DateTime.Now.ToLongDateString
    End Sub
End Class