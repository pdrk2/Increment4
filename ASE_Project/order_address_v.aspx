<%@ Page Title="" Language="C#" MasterPageFile="~/FinalUser.Master" AutoEventWireup="true" CodeBehind="order_address_v.aspx.cs" Inherits="ASE_Project.order_address_v" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    
    <script src="http://fgelinas.com/code/timepicker/jquery.ui.timepicker.js?v=0.3.1"></script>
    <link rel="Stylesheet" href="http://fgelinas.com/code/timepicker/jquery.ui.timepicker.css?v=0.3.1" />
    <script>
        $(function () {
            $("#ctl00_ContentPlaceHolder1_datepicker").datepicker();
            $("#ctl00_ContentPlaceHolder1_time").timepicker();
        });
    </script>
    <style type="text/css">
        .hello
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
 .hello:hover {
	background: #f53300;
	border: 1px solid #f53300;
}
        .textbox{
	font-family: 'Open Sans', sans-serif;
	margin-top: 5px;
	display: block;
	width: 30%;
	background: rgba(255, 255, 255, 1);
       position:static;
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
        label {
        
   top:245px;
   right:338px;
   display : block;
   text-align: left;
   color:white;
   top:1000px;
}
        .menu_cat {
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
         .label{
        float : left;
        color: red;
   display : inline;
   display : block;
   text-align: left;
   font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="menu_cat">
     <asp:Panel id="pan2" runat="server" ScrollBars="Auto" Height="479px" >
    <h2 class="style"> Event Details</h2>
    Please enter below information 
    <ul>
        <li>
            <label>
                Name:</label>
            <asp:TextBox cssclass="textbox" ID="name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Name Required"
                ControlToValidate="name"></asp:RequiredFieldValidator>
        </li>
        <li>
            <label >
                Street:</label>
            <asp:TextBox cssclass="textbox" ID="street" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Street Required"
                ControlToValidate="street"></asp:RequiredFieldValidator>
        </li>
        <li>
            <label>
                City:</label>
            <asp:TextBox ID="city" cssclass="textbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="City required"
                ControlToValidate="city"></asp:RequiredFieldValidator>
        </li>
        <li>
            <label>
                Email:</label>
            <asp:TextBox ID="email" cssclass="textbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Email required"
                ControlToValidate="email"></asp:RequiredFieldValidator>
        </li>
        <li>
            <label>
                State:</label>
            <asp:TextBox ID="state" cssclass="textbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="State Required"
                ControlToValidate="state"></asp:RequiredFieldValidator>
        </li>
        <li>
            <label>
                Phone:</label>
            <asp:TextBox ID="phone" runat="server" cssclass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone Required"
                ControlToValidate="phone"></asp:RequiredFieldValidator>
        </li>
        
         <li>
            <label>
                Please select your event occasion date:</label>
           <br />
        <asp:Calendar ID="Calendar1" 
             runat="server" 
             SelectionMode="DayWeekMonth" BackColor="DarkCyan"
             onselectionchanged="Calendar1_SelectionChanged">
        </asp:Calendar>
    <br />
    <p><label>Todays date is: </label>
        <asp:Label ID="lblday" cssclass="label" runat="server"></asp:Label>
    </p>
             <br />
    <p><label>Your Event date is: </label>
        <asp:Label ID="lblbday" cssclass="label" runat="server"></asp:Label>
    </p>

         </li>
        <br />
        <br />
        <li>
            <asp:Button ID="submit" runat="server" Text="Place the Order" CssClass="hello" OnClick="submit_Click" />
        </li>
        <br />
        <br />
         <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" ForeColor="red"></asp:Label>
   <br />
        <br />
         </ul>
         </asp:Panel>
        </div>

</asp:Content>
