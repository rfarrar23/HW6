
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delPlayer As String = e.Values("playerName").ToString

        Response.Write("The Record")
        Response.Write("<span class = deletedplayer>")
        Response.Write(delPlayer)
        Response.Write("</span> has been deleted from the database.")

        Response.AddHeader("REFRESH", "3;URL = ./playernames.aspx")

        'Response.Write("The Record Has Been Deleted From the Database")

    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./playernames.aspx")
    End Sub
End Class
