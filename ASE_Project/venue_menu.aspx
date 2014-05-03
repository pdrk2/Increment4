<%@ Page Title="" Language="C#" MasterPageFile="~/FinalVen.Master" AutoEventWireup="true" CodeBehind="venue_menu.aspx.cs" Inherits="ASE_Project.venue_menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
        label {
        
   top:245px;
   right:338px;
   display : block;
   text-align: left;
   color:white;
   top:1000px;
}
        .anudeep {
            float : left;
   display : inline;
   display : block;
   text-align: left;
   color:aqua;
   top:1000px;
        }
        #hi{
            position:absolute;
            float:right;
            top:82px;
            right:199px;
            width: 182px;
        }
    .green {
	-moz-box-shadow:inset 0px 0px 0px 0px #caefab;
	-webkit-box-shadow:inset 0px 0px 0px 0px #caefab;
	box-shadow:inset 0px 0px 0px 0px #caefab;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #77d42a), color-stop(1, #5cb811) );
	background:-moz-linear-gradient( center top, #77d42a 5%, #5cb811 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#77d42a', endColorstr='#5cb811');
	background-color:#77d42a;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border-radius:4px;
	border:1px solid #268a16;
	display:inline-block;
	color:#FFF;
	font-family:arial;
	font-size:10px;
	font-weight:bold;
	padding:6px 14px;
	text-decoration:none;
	float: right;
	margin-top: 10px;
    position:absolute;
    top:306px;
    right:244px;
	/*text-shadow:1px 1px 0px #aade7c;*/
}.green:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #5cb811), color-stop(1, #77d42a) );
	background:-moz-linear-gradient( center top, #5cb811 5%, #77d42a 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#5cb811', endColorstr='#77d42a');
	background-color:#5cb811;
	color:FFF;
}.green:active {
	position:relative;
	top:1px;
}

 .everything {
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

a.green , a.red {

	color: #fff !important;}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="everything">
        <asp:Panel id="pan2" runat="server" ScrollBars="Auto" Height="489px" >
        <br />
     <h2 class="style">Venue Services</h2>
        <img id="hi" src="images/pic1.jpg" alt="" />
           <br />
           <a href="#" class="green">Edit Services</a>
    <label>
                    Services:
                </label>
                <asp:Label ID="services" runat="server" cssclass="anudeep" Text="services"></asp:Label>
                <br />
            <br />
                 <label>
                    Maximum Capacity:
                </label>
                <asp:Label ID="capacity" runat="server" cssclass="anudeep" Text="capacity"></asp:Label><br /><br />
                <label>
                    Category:
                </label>
                <asp:Label ID="category1" runat="server" cssclass="anudeep" Text="category1"></asp:Label>
                <br />
            <br />
    <label>
                    Additional type of services:
                </label>
                <asp:Label ID="adevents" runat="server" cssclass="anudeep" Text="adevents"></asp:Label>
                <br />
            <br />
           
                 <label>
                     
                    Bar Service:
                </label>
                <asp:Label ID="bar" runat="server" cssclass="anudeep" Text="bar"></asp:Label><br /><br />
                <label>
                    Catering Service:
                </label>
                <asp:Label ID="catering" runat="server" cssclass="anudeep" Text="catering"></asp:Label>
                <br /><br />
<label>
                    Wedding Cake:
                </label>
                <asp:Label ID="cake" runat="server" cssclass="anudeep" Text="cake"></asp:Label>
                <br /><br />
<label>
                    Transport Service:
                </label>
                <asp:Label ID="transport" runat="server" cssclass="anudeep" Text="transport"></asp:Label>
                <br /><br />
                <label>
                    Rental Fee per hour:
                </label>
                <asp:Label ID="fee" runat="server" cssclass="anudeep" Text="fee"></asp:Label>
                <br /><br />
     </asp:Panel>

        
            </div>
</asp:Content>