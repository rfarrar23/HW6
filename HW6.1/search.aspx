<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="nav"> 
           <a href="./Default.aspx">Home</a>
    </div>
    <div>
 <%If Not IsPostBack Then%>
        Search for a player by name: &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbTool" runat="server" AutoPostBack="True"></asp:TextBox>
        <br />
        <br />
<%Else%>
        Search for another player by name: &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="searchBox2" runat="server" AutoPostBack="True"></asp:TextBox>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="ToolDataSource" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="playerName" HeaderText="Name" SortExpression="playerName" />
                <asp:BoundField DataField="playerPosition" HeaderText="Position" SortExpression="playerPosition" />
                <asp:BoundField DataField="playerNumber" HeaderText="Number" SortExpression="playerNumber" />
                <asp:BoundField DataField="playerHeight" HeaderText="Height" SortExpression="playerHeight" />
                <asp:BoundField DataField="playerWeight" HeaderText="Weight" SortExpression="playerWeight" />
                <asp:BoundField DataField="playerBirth" HeaderText="Date of Birth" SortExpression="playerBirth" />
                <asp:BoundField DataField="playerCollege" HeaderText="College" SortExpression="playerCollege" />
                <asp:BoundField DataField="playerTeam" HeaderText="Current Team" SortExpression="playerTeam" />
            </Columns>
        </asp:GridView>
<%End If%>
        <asp:SqlDataSource ID="ToolDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Players_cs %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
