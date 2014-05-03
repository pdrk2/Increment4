<%@ Page language="c#" MasterPageFile="~/FinalUser.Master" Codebehind="ChatWin.aspx.cs" AutoEventWireup="false" Inherits="SuperJockey.ChatWin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
		<title>ChatWin</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="assets/formstyle.css" type="text/css" rel="stylesheet">
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
         #prathyusha {
             
             position:absolute;
             left:300px;
         }
    </style>
	</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="registration_user">
        <asp:Panel id="pan1" runat="server" Height="489px"  ScrollBars="Auto" >

	<body MS_POSITIONING="GridLayout" >
		<br />
        <br />
        
        <br />
        <h2 class="style"> Let's Chat !!</h2>
        <br />
        <div id="prathyusha">
			<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="656" align="center" border="0">
				<TR>
					<TD width="8" height="8"><IMG height="8" src="orange1.gif" width="8"></TD>
					<TD bgColor="orange" height="22" rowSpan="2" width="500" Align="bottom"><strong style="color:darkblue;">Chatroom</strong></TD>
					<TD vAlign="bottom" align="right" width="500" bgColor="orange" height="22" rowSpan="2"></TD>
					<TD width="8" height="8"><IMG height="8" src="orange2.gif" width="8"></TD>
				</TR>
				<TR>
					<TD bgColor="orange" height="14"><IMG height="14" src="assets/imgs/spacer.gif" width="1"></TD>
					<TD bgColor="orange" height="14"><IMG height="14" src="assets/imgs/spacer.gif" width="1"></TD>
				</TR>
			</TABLE>
			<TABLE id="Table3" cellSpacing="0" cellPadding="1" border="0" align="center" bgColor="orange">
				<TR>
					<TD>
						<iframe style="BORDER-RIGHT: orange 2px solid; BORDER-TOP: orange 2px solid; BORDER-LEFT: orange 2px solid; WIDTH: 620px; BORDER-BOTTOM: orange 2px solid; HEIGHT: 250px; BACKGROUND-COLOR: #ffffcc"
							src="TheChatScreenWin.aspx">Chat</iframe>
					</TD>
				</TR>
				<TR>
					<TD align="right" style="color:darkblue;">
						Message:
						<asp:TextBox id="TB_ToSend" runat="server" Width="500px" tabIndex="1"></asp:TextBox>
						<asp:Button id="BT_Send" runat="server" Text="Send" Width="80px" CssClass="button1" tabIndex="2"></asp:Button>
					</TD>
				</TR>
			</TABLE>
		</div>
	</body>
 </asp:Panel>
    </div>
</asp:Content>

