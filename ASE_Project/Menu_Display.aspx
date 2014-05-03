<%@ Page Title="" Language="C#" MasterPageFile="~/FinalUser.Master" AutoEventWireup="true" CodeBehind="Menu_Display.aspx.cs" Inherits="ASE_Project.Menu_Display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .cufon
{
	margin-bottom: 15px;
    color:aqua;
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
        .menu_description
{
	margin-top: 5px;
	font-size: 11px;
    
    color:azure;
}
    
/*GREEN BUTTON*/

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
#Label3{
    position: absolute;
    top: 96px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2><asp:Label ID="heading" runat="server" Text=" "></asp:Label></h2>
<div class="menu_cat">
    <asp:Panel id="pan2" runat="server" ScrollBars="Auto" Height="489px" >
<h2 class="style">Menu</h2>

    <asp:Label ID="Label3" runat="server" Text="Login" Visible="False"  Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" top="96px" position="absoulte" ForeColor="red" ></asp:Label>
   <!-- <asp:Label ID="goback" runat="server" Text="Label"></asp:Label> !-->
    
    <br />
    <asp:Repeater ID="venmenu" runat="server">

              <HeaderTemplate>
           
           
            </HeaderTemplate>
            
            <ItemTemplate>

              <div style="width:100%; min-height: 110px;">
    			
                <asp:Image ID="Image1" runat="server" />	
    			<div style="float:left;width:82px">
    				<a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
    					<!--<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1" alt="" class="frame img_nofade" style="opacity: 1;"> -->
                        
    				</a>
    			&nbsp;&nbsp;</div>
    					
    		<div style="float:left;width:300px">
                <br />
    			<h5 class="cufon"><%# DataBinder.Eval(Container.DataItem, "itemname")%></h5>
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    			    			
    			<br class="clear">
    			<div class="menu_description">
                <div class="meta-left">
	    		<%# DataBinder.Eval(Container.DataItem, "itemdesc")%><br />
                 Item Type:  <%# DataBinder.Eval(Container.DataItem, "itemtype")%> 
               </div>
               <div class="meta-right" >
                     
              <a class="green"  href="carting.aspx?id=<%# DataBinder.Eval(Container.DataItem, "itemid")%>"> Add to Cart </a>
               </div>

               <div class="add-to-cart">
                 
               </div>

                    
        </div>           
            		</div>
    		<div style="float:left;width:60px;top:50px;position:relative">
    			<strong class="price" style="color: #00FF00">$  <%# DataBinder.Eval(Container.DataItem, "itemprice")%></strong>
    		</div>
 </div>
 <br class="clear">
 
 
            </ItemTemplate>

            <SeparatorTemplate>
                  
            </SeparatorTemplate>

            <FooterTemplate>
            
            </FooterTemplate>

       
    </asp:Repeater>
        </asp:Panel>
   </div>
</asp:Content>
