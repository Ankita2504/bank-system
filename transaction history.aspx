<%@ Page Language="C#" AutoEventWireup="true" CodeFile="transaction history.aspx.cs" Inherits="transaction_history" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Transaction history </title>
    
    <style  > 
      .button {
  background-color: white; 
  color: black; 
  border: 2px solid #27b2ef;
}

.button:hover {
  background-color: #27b2ef;
  color: white;
}
.grid-container {
  display: grid;
  grid-template-columns: auto auto auto;
  background-color: #061445;
 width:490px;
  padding: 10px;
}
.grid-item {
  background-color: #27b2ef;
  border: 1px solid black ;
  padding: 20px;
  font-size: 30px;
  text-align: center;
}
.item1 { grid-area: header;
         font-size:30px;
         padding: 20px;
  text-align: center;
  background-color:#27b2ef;
}
        
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div style="background-color:black; text-align:center; width:1600px;"  >
              <h1 style="color:white; text-shadow: 1px 1px 2px black, 0 0 25px white, 0 0 5px yellow; text-align:center;width:1600px;" > 
          Spark Foundation
             </h1>

            </div>
        <h1 style="width: 1147px; color:white; text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue; text-align:center; width:1450px;">
               <asp:Image ID="Image1" runat="server" Height="61px" ImageUrl="~/images/bank1.jpg" Width="88px" />
            Basic Banking System
            <asp:Image ID="Image2" runat="server" Height="61px" ImageUrl="~/images/bank1.jpg" Width="88px" />
        </h1>
               <div style="background-color:black; width:1600px;" >
            
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
                   <asp:Button ID="Button1" runat="server" Text="Home" Font-Bold="True" Font-Size="Larger" Height="50px" CssClass="button" OnClick="Button1_Click" />
             &nbsp;&nbsp;&nbsp;      
        </div>
            
          <div style=" background-repeat:no-repeat; background-attachment:scroll; background-color:#27b2ef; min-height:1500px; height:auto;"  >
    
    
            
            
            <asp:GridView ID="GridView1" runat="server" CssClass="grid-container" RowStyle-CssClass="grid-item"  HeaderStyle-CssClass="item1"   HorizontalAlign="Center" >
                
            </asp:GridView>
    
    
            
            
        </div>
    </form>
</body>
</html>
