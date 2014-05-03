<%@ Page Title="" Language="C#" MasterPageFile="~/FinalUser.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="ASE_Project.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="menu_cat">
     <asp:Panel id="pan2" runat="server" ScrollBars="Auto" Height="479px" >
   
    <div class="searchbox">
     <br />
         <br />
         <br />
          <h2> <asp:Label ID="dis" style="color:aqua" runat="server" Text="Label"></asp:Label></h2>
          
    
           
    
           <asp:Repeater ID="searchrepeat" runat="server" 
               onitemcommand="searchrepeat_ItemCommand">
            <HeaderTemplate><br />
            
            </HeaderTemplate>
            
            <ItemTemplate>

            <div style="width:100%; height: 70px;">
    			
                <asp:Image ID="Image1" runat="server" />	
    			<div style="float:left;width:82px">
    				<a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
    					<!--<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1" alt="" class="frame img_nofade" style="opacity: 1;">-->
                        </a>
    			</div>
    					
    		<div style="float:left;width:300px">
    			<h5 class="cufon"><a href="vendor_single.aspx?vendor_name=<%# DataBinder.Eval(Container.DataItem, "vname")%>"><%# DataBinder.Eval(Container.DataItem, "vname")%></a></h5>
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    			    			
    			<br class="clear">
    			<div class="menu_description">
                <div class="meta-left" style="color:white">
	    		<%# DataBinder.Eval(Container.DataItem, "vstreet")%>	,  <%# DataBinder.Eval(Container.DataItem, "vcity")%><br />
               <label>Contact:</label> <%# DataBinder.Eval(Container.DataItem, "vcontactno")%>
               </div>
               <div class="meta-right">
               
               </div>
                    
        </div>           
            		</div>
    		
 </div>
 <br class="clear">
 <br>
 

           
                
             
            </ItemTemplate>


            <FooterTemplate>
           
            </FooterTemplate>

        </asp:Repeater>
      
    
    </div>
</asp:Panel>
        </div>
</asp:Content>
