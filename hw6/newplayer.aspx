﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newplayer.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./CSS/StyleSheet.css" />
</head>
<body>
    <div>

    <h2 class ="name">

    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Players_cs %>" DeleteCommand="DELETE FROM [Table] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [Table] ([playerName], [playerPosition], [playerNumber], [playerHeight], [playerWeight], [playerBirth], [playerCollege], [playerTeam]) VALUES (@playerName, @playerPosition, @playerNumber, @playerHeight, @playerWeight, @playerBirth, @playerCollege, @playerTeam)" SelectCommand="SELECT * FROM [Table] WHERE ([playerID] = @playerID)" UpdateCommand="UPDATE [Table] SET [playerName] = @playerName, [playerPosition] = @playerPosition, [playerNumber] = @playerNumber, [playerHeight] = @playerHeight, [playerWeight] = @playerWeight, [playerBirth] = @playerBirth, [playerCollege] = @playerCollege, [playerTeam] = @playerTeam WHERE [playerID] = @playerID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="playerID" QueryStringField="playerID" Type="Int32" />
            </SelectParameters>
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
        </h2>
        </div>
        <br />
        <div id="nav">
        <a href="./Default.aspx">Home</a>
        <br />
        <a href="./playernames.aspx">View All Players</a>
        </div>
        <br />
        <div>
        <h2 class ="name">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="playerID" DataSourceID="SqlDataSource1" Height="50px" Width="601px" CssClass="cssgridview" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="playerName" HeaderText="Name" SortExpression="playerName" />
                <asp:BoundField DataField="playerPosition" HeaderText="Position" SortExpression="playerPosition" />
                <asp:BoundField DataField="playerNumber" HeaderText="Number" SortExpression="playerNumber" />
                <asp:BoundField DataField="playerHeight" HeaderText="Height" SortExpression="playerHeight" />
                <asp:BoundField DataField="playerWeight" HeaderText="Weight" SortExpression="playerWeight" />
                <asp:BoundField DataField="playerBirth" HeaderText="Date of Birth" SortExpression="playerBirth" />
                <asp:BoundField DataField="playerCollege" HeaderText="College" SortExpression="playerCollege" />
                <asp:BoundField DataField="playerTeam" HeaderText="Current Team" SortExpression="playerTeam" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        </h2>
        </div>
    </form>
</body>
</html>
