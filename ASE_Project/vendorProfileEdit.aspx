<%@ Page Title="" Language="C#" MasterPageFile="~/FinalVen.Master" AutoEventWireup="true" CodeBehind="vendorProfileEdit.aspx.cs" Inherits="ASE_Project.vendorProfileEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
        #edit_user .hello
        {
    margin-top: 10px;
	font-family: 'Open Sans', sans-serif;
	cursor: pointer;
	background: brown;
	border: 1px solid #242424;
	padding: 2px 24px;
	outline: none;
	color: #ffffff;
	font-size: 1em;
	text-transform: uppercase;
	-webkit-appearance: none;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
	border-radius: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-o-border-radius: 2px;
}
#edit_user .hello:hover {
	background: #f53300;
	border: 1px solid #f53300;
}
        #edit_user input
{
    right: 20px;
            margin-left: 146px;
        }
    .label{
        float : left;
   display : inline;
   display : block;
   text-align: left;
   font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
        .textbox{
	font-family: 'Open Sans', sans-serif;
	margin-top: 5px;
	display: block;
	width: 30%;
	background: rgba(255, 255, 255, 1);
       position:absolute;
       left:150px;
	outline: none;
	color: black;
	font-size: 1em;
	border: groove
	-webkit-appearance: none;
    border-style:solid;
    border-width: 3px;
    border-color: grey;
}
      
     ul {
    list-style: none;
    margin: 0;
    padding: 0;
    font: 16px arial-black;
    display: block !important;
    display: inline;
    overflow: hidden;
}
 li .label{
        float : left;
   display : inline;
   display : block;
   text-align: left;
   color:white;
}
 #edit_user {
            position: absolute;
            top: 116px;
            height: 483px;
            z-index: 9999;
            left: -50px;
            width: 1347px;
            margin:24px 50px;
            background-color:black;
            border:1px solid black;
            opacity:0.7;
            filter:alpha(opacity=70);
        }
 </style>   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="edit_user">
    <h2 class="style" >Vendor Profile Edit</h2>
        
          <asp:Label ID="status" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" ForeColor="red"></asp:Label>
        <br />
        <br />
    <ul>
       <li>
        <asp:label runat="server" Font-Names="Lucida-Sans" CssClass="label" Font-Bold="True" >Name:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="name" runat="server" CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="name" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br />
           <br />
        </li>
        <li>
      <asp:label runat="server" Font-Names="Lucida-Sans" CssClass="label" Font-Bold="True" >PhNo:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="contactno" runat="server"  CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="contactno" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
         <br />
           <br />
        </li>
        <li>
       <asp:label runat="server" Font-Names="Lucida-Sans" CssClass="label" Font-Bold="True" >ZipCode:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="zipcode" runat="server" CssClass="textbox" Width="200px"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="Enter valid zipcode" 
            ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
         <br />
           <br />

        </li> 
         <li>
            <asp:label runat="server" font-names="Lucida-Sans" CssClass="label" font-bold="True">Street:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="street" runat="server" CssClass="textbox" Width="200px" Font-Names="Tahoma"></asp:TextBox>
         <br />
           <br />
         </li>
         
     <li>
        <asp:label runat="server" font-names="Lucida-Sans" CssClass="label" font-bold="True">City:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="city" runat="server" CssClass="textbox" Width="200px" Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="city" ErrorMessage="Enter a valid city"></asp:RequiredFieldValidator>
     <br />
           <br />
     </li>
        <li>
        <asp:label runat="server" font-names="Lucida-Sans" CssClass="label" font-bold="True">OfficeTimings:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="officetiming" runat="server"  CssClass="textbox" Width="200px" Font-Names="Tahoma"></asp:TextBox>
     <br />
           <br />
        </li>

        <li>
            
        
            <asp:Button ID="update" runat="server" onclick="update_click" Text="Update" CssClass="hello" />
         </li>
        
        
      
        <br />
        
    </ul>
        
           
    </div>
</asp:Content>
