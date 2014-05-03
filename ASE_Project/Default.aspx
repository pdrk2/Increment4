<%@ Page language="c#" MasterPageFile="~/FinalUser.Master" Codebehind="Default.aspx.cs" AutoEventWireup="false" Inherits="SimpleChat._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
		<title>Default</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <style>
        #registration_user {
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
   display : inline;
   display : block;
   text-align: left;
   color:white;
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
    #registration_user .hello{
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
#registration_user .hello:hover {
	background: #f53300;
	border: 1px solid #f53300;
}
    </style>
	</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="registration_user">
        <asp:Panel id="pan1" runat="server" Height="489px"  ScrollBars="Auto" >

	<body MS_POSITIONING="GridLayout">
        <br />
        <br />
        <br />
        
		<h2 class="style" float="center">Online Chat </h2>
        
        <br />
        <h4 class="style" style="color:aqua"> Please enter the vendor name you would like to chat with... !!</h4>
        <br />
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 268px; POSITION: absolute; TOP: 196px" cellSpacing="1"
				cellPadding="1" width="300" border="0">
				<TR>
					<TD>
                       
                        
                        <br />
						<asp:Label id="Label1" runat="server" cssclass="label">Vendor</asp:Label></TD>
                    <br />
					<TD>
						<asp:TextBox id="TB_Channel" runat="server" cssclass="textbox" width="300px"></asp:TextBox>
                        <br />
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage=" * Required" ControlToValidate="TB_Channel"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD>
                        <br />
						<asp:Label id="Label2" runat="server" cssclass="label">Your name</asp:Label></TD>
                    <br />
					<TD>
						<asp:TextBox id="TB_Username" runat="server" cssclass="textbox" width="300px"></asp:TextBox>
                        <br />
						<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="* Required" ControlToValidate="TB_Username"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD></TD>
					<TD>
                        <br />
						<asp:Button id="BT_Enter" runat="server" cssclass="hello" Text="Join Chat"></asp:Button></TD>
				</TR>
			</TABLE>
		
	</body>
            </asp:Panel>
    </div>
</asp:Content>
