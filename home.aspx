<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Home </title>
    
    <style>
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
 width:700px;
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
        <form id="form1" runat="server">
        
         
             <h1 style="color:white; text-shadow: 1px 1px 2px black, 0 0 25px lightgreen, 0 0 5px aquamarine; text-align:center;width:1600px;" > 
             <asp:Image ID="Image1" runat="server" Height="61px" ImageUrl="~/images/bank1.jpg" Width="88px" />&nbsp;&nbsp;&nbsp;&nbsp; Basic Banking System&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:Image ID="Image2" runat="server" Height="61px" ImageUrl="~/images/bank1.jpg" Width="88px" />
             </h1>
               <div style="background-color:black; text-align:center; width:1600px;"  >
            
            <asp:Button ID="Button1" runat="server" Text="Home" Font-Bold="True" Font-Size="Larger" Height="50px" CssClass="button" OnClick="Button1_Click" />
             &nbsp;&nbsp;&nbsp;      
                   <asp:Button ID="Button2" runat="server" Text="View Users" Font-Bold="True" Font-Size="Larger" Height="50px" CssClass="button" OnClick="Button2_Click" />
                   &nbsp;&nbsp;&nbsp;

             <asp:Button ID="Button3" runat="server" Text="Transaction history" Font-Bold="True" Font-Size="Larger" Height="50px" CssClass="button" OnClick="Button3_Click" />
                  
               </div>

        <div style=" background-repeat:no-repeat; background-attachment:scroll; background-color:#27b2ef; width: 1600px;  text-align:center; min-height:1000px; height:auto;" >
              <table  style="margin:auto;">
               <tr>
                   <td ><asp:Label ID="Label4" runat="server" Text="Transfer money from" Font-Size="Large" ></asp:Label></td>
            <td >
            
            <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Height="35px">
            </asp:DropDownList>
                </td>
                   </tr>
           <tr>
           <td > <asp:Label ID="Label5" runat="server" Text="Tranfer money to" Font-Size="Large"></asp:Label></td>
               <td >
            <asp:DropDownList ID="DropDownList2" runat="server" Width="200px" Height="35px" ></asp:DropDownList>
    </td>
               </tr>
               <tr>
           <td > <asp:Label ID="Label6" runat="server" Text="Amount " Font-Size="Large"></asp:Label></td>
           <td > <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="160px"></asp:TextBox>
               
                   </td>
                    </tr>
               <tr>
                   <td>

                   </td>
                   <td>
            <asp:Button ID="Button4" runat="server" Text="Transfer" Font-Bold="True" Font-Size="Larger" Height="50px" CssClass="button2" OnClick="Button4_Click" />
     
                       </td>

               </tr>
               </table>
            
         <asp:Label ID="Label0" runat="server" Text="Label" Visible="False"  BackColor="white" Font-Bold="True"  Width="500px" Font-Size="XX-Large"  ></asp:Label>
             <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"  BackColor="white" Font-Bold="True" Width="500px" Font-Size="XX-Large"  ></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" BackColor="white" Font-Bold="True"  Width="500px" Font-Size="XX-Large" ></asp:Label>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"  BackColor="white" Font-Bold="True"  Width="500px" Font-Size="XX-Large" ></asp:Label>
              
              <asp:GridView ID="GridView1" runat="server" CssClass="grid-container" RowStyle-CssClass="grid-item"  HeaderStyle-CssClass="item1"   HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Button" ShowHeader="True" Text="View"  ControlStyle-CssClass="button2"/>
                </Columns>
                <HeaderStyle CssClass="item1" />
                <RowStyle CssClass="grid-item" />
                  
              
                
            </asp:GridView>
    
 </div>
</form>
        </body>
    </html>

