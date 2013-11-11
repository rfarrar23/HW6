<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
  
    
        <h1 class="h1">The Official Online Database of the National Basketball Association </h1>
        <br />
 
        <br />
        
        <div id="nav">
            <h2 class="nav">
        <a href="./playernames.aspx"> 
                View All Pages</a>
        <br />
        <a href="./newplayer.aspx"> Add New Player</a>
        <br />
        <a href="./aboutme.aspx"> About Me</a>
         <br />
        <a href="./contact.aspx">Contact</a>
        <br />
        <a href="./search.aspx">Search</a>
        </h2>
        </div>


        <br /><br />

        <div class="pictures"><img alt="NBA Teams" title="NBA Teams" src="./Images/nbamap.png.jpg" /></div>

        <div id="footer"> &copy; Ryan Farrar &Sigma;&Chi; | <asp:Label ID="lbl_date" runat="server" Text=""> </asp:Label></div>

    </form>
</body>
</html>
