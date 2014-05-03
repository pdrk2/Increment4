<%@ Page Title="" Language="C#" MasterPageFile="~/FinalVen.Master" AutoEventWireup="true" CodeBehind="photo_menu.aspx.cs" Inherits="ASE_Project.photo_menu" %>
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
     <h2 class="style">Photography Services</h2>

            
        <img id="hi" src="images/photography_rita.jpg" alt="" />
           <br />
           <a href="#" class="green">Edit Services</a>
            <br />
            
    <label>
                    Style:
                </label>
                <asp:Label ID="style" runat="server" cssclass="anudeep" Text="style"></asp:Label>
                <br />
            <br />
                 <label>
                    Packages:
                </label>
                <asp:Label ID="package" runat="server" cssclass="anudeep" Text="package"></asp:Label><br /><br />
                <label>
                    Photographers we work with:
                </label>
                <asp:Label ID="employee" runat="server" cssclass="anudeep" Text="employee"></asp:Label>
                <br />
            <br />
    <label>
                    Kind of Albums we offer:
                </label>
                <asp:Label ID="album" runat="server" cssclass="anudeep" Text="album"></asp:Label>
                <br />
            <br />
                 <label>
                    Media Preference (film/digital):
                </label>
                <asp:Label ID="media" runat="server" cssclass="anudeep" Text="media"></asp:Label><br /><br />
                <label>
                    Liability Insurance:
                </label>
                <asp:Label ID="insurance" runat="server" cssclass="anudeep" Text="insurance"></asp:Label>
                <br /><br />
                <label>
                    Rental Fee per hour:
                </label>
                <asp:Label ID="fee" runat="server" cssclass="anudeep" Text="fee"></asp:Label>
                <br /><br />
     </asp:Panel>
            </div>
</asp:Content>