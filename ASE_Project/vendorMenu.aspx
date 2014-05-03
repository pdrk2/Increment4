<%@ Page Title="" Language="C#" MasterPageFile="~/FinalVen.Master" AutoEventWireup="true" CodeBehind="vendorMenu.aspx.cs" Inherits="ASE_Project.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div>
    
     <div id = "menupage">
   
        <asp:Repeater ID="menu" runat="server">
            <HeaderTemplate>
            <h2>Menu</h2>
           <br />
           <a href="vendorMenu_add.aspx" class="green">Add New Item</a>
           
        
           <br />

            </HeaderTemplate>
            
            <ItemTemplate>

              <div style="width:100%; min-height: 90px;">
    			
                   					
    		<div style="float:left;width:300px">
    			<a href="#?id=<%# DataBinder.Eval(Container.DataItem, "itemid")%>"><h5 class="cufon"><%# DataBinder.Eval(Container.DataItem, "itemname")%></h5></a>
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    			    			
    			<br class="clear">
    			<div class="menu_description">
                <div class="meta-left">
	    		<%# DataBinder.Eval(Container.DataItem, "itemdesc")%>
               </div>
               <div class="meta-right">
              Item Type:  <%# DataBinder.Eval(Container.DataItem, "itemtype")%> <br />
             
               </div>
                    
        </div>           
            		</div>
    		<div style="float:right;width:50px">
    			<strong class="price">$  <%# DataBinder.Eval(Container.DataItem, "itemprice")%></strong>
    		</div>
             <div class="clear"></div>
 </div>
 <br class="clear">
 <br>
 <hr>



           
           
            </ItemTemplate>

            <SeparatorTemplate>
                  
            </SeparatorTemplate>

            <FooterTemplate>
            
            </FooterTemplate>

        </asp:Repeater>
    </div>

    </div>
  

</asp:Content>
