<%@ Page Title="" Language="C#" MasterPageFile="~/Exception.Master" AutoEventWireup="true" CodeBehind="vendor_single.aspx.cs" Inherits="ASE_Project.vendor_single" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     <style type="text/css">
        h3
        {
            font-weight: bold;
        }
        #prathyusha
        {
visibility:hidden;
        }
       
 .hello {
            position: absolute;
            top: 116px;
            height: 483px;
            z-index: 9999;
            left: -50px;
            width: 1347px;
            margin:24px 50px;
            
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
	float: left;
	margin-top: 10px;
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



a.green , a.red {

	color: #fff !important;}

 #details {
     opacity:1.0;

 }
 
 .post_header .cufon 
{
	margin-top: 5px;
	font-size: 20px;
    
    color:azure;
}
 .post_header .post_header_h3 .smile #contact
{
	margin-top: 5px;
	font-size: 11px;
    
    color:azure;
}
 .post_header .prathyusha  
{
	margin-top: 5px;
	font-size: 11px;
    
    width:26%;
    position:absolute;
    color:azure;
}
 .post_header label  
{
	margin-top: 5px;
	font-size: 11px;
    float:left;
    color:azure;
}
    </style>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>

<link rel="stylesheet" href="fancybox/source/jquery.fancybox.css?v=2.1.3" type="text/css" media="screen" />
<script type="text/javascript" src="fancybox/source/jquery.fancybox.pack.js?v=2.1.3"></script>

<link rel="stylesheet" href="fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.5"></script>

<link rel="stylesheet" href="fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>




<script type="text/javascript">
    $(".details").fancybox({
        maxWidth: 800,
        maxHeight: 600,
        fitToView: false,
        width: '70%',
        height: '70%',
        autoSize: false,
        closeClick: false,
        openEffect: 'elastic',
        closeEffect: 'elastic'
    });

    $(".email").fancybox({
        maxWidth: 750,
        maxHeight: 600,
        fitToView: false,
        width: '60%',
        height: '60%',
        autoSize: false,
        closeClick: false,
        openEffect: 'elastic',
        closeEffect: 'elastic'
    });

</script>
    </style>
    <script type="text/javascript">
        $(function () {
            var currentPosition = 0;
            var slideWidth = 300;
            var slides = $('.slide');
            var numberOfSlides = slides.length;
            setInterval(changePosition, 3000);
            slides.wrapAll('<div id="slidesHolder"></div>');
            slides.css({ 'float': 'left' });
            $('#slidesHolder').css('width', slideWidth * numberOfSlides);
            function changePosition() {
                if (currentPosition == numberOfSlides - 1) {
                    currentPosition = 0;
                }
                else {
                    currentPosition++;
                }
                moveSlide();
            }
            function moveSlide() {
                $('#slidesHolder').animate({ 'marginLeft': slideWidth * (-currentPosition) });
            }
        });
</script>

    <style type="text/css">
        #slideshow #slideshowWindow
{
width:300px;
height:300px;
margin:0;
padding:0;
position:relative;
overflow:hidden;
}
#slideshow #slideshowWindow .slide
{
margin:0;
padding:0;
width:300px;
height:300px;
position:relative;
}
  #sidebar #sbox1
{
	margin-bottom: 30px;
    position: absolute;
    top: 60px;
    float: right;
    right: 700px;
    bottom:100px;
}
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        .modalBackground
        {
            background-color: Black;
            filter: alpha(opacity=60);
            opacity: 0.6;
        }
        .modalPopup
        {
            background-color: #FFFFFF;
            width: 500px;
            border: 3px solid #0DA9D0;
            padding: 0;
        }
        .modalPopup .header
        {
            background-color: #2FBDF1;
            height: 30px;
            color: White;
            line-height: 30px;
            text-align: center;
            font-weight: bold;
        }
        .modalPopup .body
        {
            min-height: 50px;
            padding:5px;
            line-height: 30px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hello">
       
    <div class="post_header">
        <div class="post_header_h3">
            <br />
            <h3 class="cufon">
                <asp:Label ID="name" ForeColor="aqua" runat="server" Text="Name"></asp:Label>
            </h3>
            <br />
            
            <div class="prathyusha" >
                <asp:Label ID="street" runat="server" Text="Street"></asp:Label><br />
                <asp:Label ID="city" runat="server" Text="City"></asp:Label><br />
                <asp:Label ID="zipcode" runat="server" Text="Zipcode"></asp:Label><br /> <br /><br />
                 <asp:Label ID="contact" runat="server" Text="Contact" ForeColor="Red" float="left"></asp:Label>
                <br />
                <asp:Label ID="service1" runat="server" Text="Service" ForeColor="Red" float="left"></asp:Label><br />
                <asp:Label ID="timings" runat="server" Text="OfficeTimings" ForeColor="Red" float="left"></asp:Label>
                <br />
               
                <asp:Label ID="Label1" runat="server" Text="Find us here :"></asp:Label>
              <!-- <a class="details" data-fancybox-type='iframe' href="http://maps.google.com/?output=embed&amp;f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=London+Eye,+County+Hall,+Westminster+Bridge+Road,+London,+United+Kingdom&amp;hl=lv&amp;ll=51.504155,-0.117749&amp;spn=0.00571,0.016512&amp;sll=56.879635,24.603189&amp;sspn=10.280244,33.815918&amp;vpsrc=6&amp;hq=London+Eye&amp;radius=15000&amp;t=h&amp;z=17"> <img src="images/google-map.png" /></a> -->
                <asp:Label ID="gimg" runat="server" Text="Find us here : "></asp:Label>
                
                 <asp:TextBox ID ="prathyusha"  width="0px" visibility="hidden" background-color="black" runat="server"></asp:TextBox>
        <br />
                    <asp:Button ID ="clickToSpeech" class="green" runat="server" Text="Know Me !!" OnClick="clickToSpeech_Click" />
    <br />


                <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</cc1:ToolkitScriptManager>
<asp:TextBox ID="txtUrl" width="0px" visibility="hidden" background-color="black"  runat="server" />
                <br />
<asp:Button ID="btnShow" class="green" runat="server" Text="Watch here to know more about us !!" OnClientClick="return ShowModalPopup()" />
<asp:LinkButton ID="lnkDummy" runat="server"></asp:LinkButton>
<cc1:ModalPopupExtender ID="ModalPopupExtender1" BehaviorID="mpe" runat="server"
    PopupControlID="pnlPopup" TargetControlID="lnkDummy" BackgroundCssClass="modalBackground" CancelControlID = "btnClose">
</cc1:ModalPopupExtender>
<asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
    <div class="header">
        Our Work
    </div>
    <div class="body">
        <iframe id = "video" width="420" height="315" frameborder="0" allowfullscreen></iframe>
        <br />
        <br />
        <asp:Button ID="btnClose" runat="server" Text="Close" />
    </div>
</asp:Panel>
    <script type="text/javascript">
        function ShowModalPopup() {
            var url = $get("<%=txtUrl.ClientID %>").value;
            url = url.split('v=')[1];
            $get("video").src = "//www.youtube.com/embed/" + url
            $find("mpe").show();
            return false;
        }
    </script>

            <div class="smile" style= "float: right; width: 77%; text-align:left;">
                
                  
               
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
    <br />
   
                
   <asp:Repeater runat="server" ID="category">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>

             <div style="width:100%; min-height: 110px;">
                <asp:Image ID="Image1" runat="server" />
                <div style="float: left; width: 82px">
                    <a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
                        <!--<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1"
                            alt="" class="frame img_nofade" style="opacity: 1;">-->
                        
                    </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                <div class="menu_description" style="float: right;position:absolute;right:1040px; top : 340px; width: 300px">
                    <h4 class="style" > Click here to check for menu:</h4>
                    <h5 class="cufon"><a style="color:aqua" href="Menu_Display.aspx?vname=<%# DataBinder.Eval(Container.DataItem, "vname")%>&vzipcode=<%# DataBinder.Eval(Container.DataItem, "vzipcode")%>">
                            <%# DataBinder.Eval(Container.DataItem, "vname")%></a></h5>
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <br class="clear">
                    
            
    
                </div>
            </div>
            <br class="clear">
            <br>
            
        </ItemTemplate>
        <SeparatorTemplate>
        </SeparatorTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>
           <div id="sidebar">
                <div id="sbox1">
                    
                    <div id="slideshow">
<div id="slideshowWindow">
<div class="slide"><b></b><img src="images/2.jpg" width="300" height="300" alt=""  /> </div>
<div class="slide"><b></b><img src="images/7.jpg" width="300" height="300" alt=""/> </div>
    <div class="slide"><b></b><img src="images/9.jpg" width="300" height="300" alt=""/> </div>
     <div class="slide"><b></b><img src="images/1.jpg" width="300" height="300" alt=""/> </div>
     <div class="slide"><b></b><img src="images/3.jpg" width="300" height="300" alt=""/> </div>
     <div class="slide"><b></b><img src="images/10.jpg" width="300" height="300" alt=""/> </div>
     <div class="slide"><b></b><img src="images/4.jpg" width="300" height="300" alt=""/> </div>
    <div class="slide"><b></b><img src="images/11.jpg" width="300" height="300" alt=""/> </div>
    <div class="slide"><b></b><img src="images/5.jpg" width="300" height="300" alt=""/> </div>
    <div class="slide"><b></b><img src="images/12.jpg" width="300" height="300" alt=""/> </div>
    <div class="slide"><b></b><img src="images/6.jpg" width="300" height="300" alt=""/> </div>
   <div class="slide"><b></b><img src="images/13.jpg" width="300" height="300" alt=""/> </div>

    <div class="slide"><b></b><img src="images/8.jpg" width="300" height="300" alt=""/> </div>

    <div class="slide"><b></b><img src="images/14.jpg" width="300" height="300" alt=""/> </div>
    <div class="slide"><b></b><img src="images/15.jpg" width="300" height="300" alt=""/> </div>

</div>
</div>
                   
                </div>
            </div>

        </div>
</asp:Content>
