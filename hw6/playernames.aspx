<%@ Page Language="VB" AutoEventWireup="false" CodeFile="playernames.aspx.vb" Inherits="nbaplayers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Players_cs %>" DeleteCommand="DELETE FROM [Table] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [Table] ([playerName], [playerPosition], [playerNumber], [playerHeight], [playerWeight], [playerBirth], [playerCollege], [playerTeam]) VALUES (@playerName, @playerPosition, @playerNumber, @playerHeight, @playerWeight, @playerBirth, @playerCollege, @playerTeam)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [playerName] = @playerName, [playerPosition] = @playerPosition, [playerNumber] = @playerNumber, [playerHeight] = @playerHeight, [playerWeight] = @playerWeight, [playerBirth] = @playerBirth, [playerCollege] = @playerCollege, [playerTeam] = @playerTeam WHERE [playerID] = @playerID">
            <DeleteParameters>
                <asp:Parameter Name="playerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="playerName" Type="String" />
                <asp:Parameter Name="playerPosition" Type="String" />
                <asp:Parameter Name="playerNumber" Type="Int32" />
                <asp:Parameter Name="playerHeight" Type="String" />
                <asp:Parameter Name="playerWeight" Type="String" />
                <asp:Parameter Name="playerBirth" Type="String" />
                <asp:Parameter Name="playerCollege" Type="String" />
                <asp:Parameter Name="playerTeam" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="playerName" Type="String" />
                <asp:Parameter Name="playerPosition" Type="String" />
                <asp:Parameter Name="playerNumber" Type="Int32" />
                <asp:Parameter Name="playerHeight" Type="String" />
                <asp:Parameter Name="playerWeight" Type="String" />
                <asp:Parameter Name="playerBirth" Type="String" />
                <asp:Parameter Name="playerCollege" Type="String" />
                <asp:Parameter Name="playerTeam" Type="String" />
                <asp:Parameter Name="playerID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="SqlDataSource1" Width="936px">
            <Columns>
                <asp:BoundField DataField="playerName" HeaderText="Name" SortExpression="playerName" />
                <asp:BoundField DataField="playerPosition" HeaderText="Position" SortExpression="playerPosition" />
                <asp:BoundField DataField="playerNumber" HeaderText="Number" SortExpression="playerNumber" />
                <asp:BoundField DataField="playerTeam" HeaderText="Current Team" SortExpression="playerTeam" />
                <asp:HyperLinkField DataNavigateUrlFields="playerID" DataNavigateUrlFormatString="playerdetails.aspx?playerID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
