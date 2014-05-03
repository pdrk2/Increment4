<%@ Page Title="" Language="C#" MasterPageFile="~/FinalVen.Master" AutoEventWireup="true" CodeBehind="ven_order_single.aspx.cs" Inherits="ASE_Project.ven_order_single" %>
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
         label {
        
   top:245px;
   right:338px;
   display : block;
   text-align: left;
   color:red;
   top:1000px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="menu_cat">
     <asp:Panel id="pan2" runat="server" ScrollBars="Auto" Height="479px" >
    <asp:Repeater ID="details" runat="server"></asp:Repeater>

  <p>
        <br />
        <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>

        <h2 class="style">Order Details</h2>
        <asp:Repeater ID="cart" runat="server">
        
        <HeaderTemplate>
           
          <div style="float:left;width:250px;color:aqua">
    			<span class="price cufon">Product </span>   			    			    			
    		                                 
        </div> 

      <div style="float:right; ;color:aqua">
    			<strong  style="margin-right: 40px;" class="price">Price</strong> 
    		</div>
        <div class="clear"></div>
        <br />
       
            </HeaderTemplate>
            
            <ItemTemplate>

              <div style="width:100%;">
    			
                <asp:Image ID="Image1" runat="server" />	
    			<div style="float:left;width:82px;color:white">
    				<a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
    					<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1" alt="" class="frame img_nofade" style="opacity: 1;">
                        
    				</a>
    			&nbsp;&nbsp;&nbsp;&nbsp;</div>
    					
    		<div style="float:left;width:250px;color:white">
    			<span class="cufon"><%# DataBinder.Eval(Container.DataItem, "item_name")%></span>
    			    				   			    			    			
    			<br class="clear">
    			<div class="menu_description">
                <div class="meta-left">

               </div>
               <div class="meta-right">
                    
             
               </div>

                                  
        </div>           
            		</div>
    		<div style="float:right;;color:white">
    			<strong  style="margin-right: 40px;" class="price">$  <%# DataBinder.Eval(Container.DataItem, "price")%></strong> 
    		</div>
 </div>
 <br class="clear">
 <br>
 

            
            </ItemTemplate>

            

            <FooterTemplate>
            
           

            </FooterTemplate>
        </asp:Repeater>
        
        <label>Sub Total:</label>
         <div style="float:right;;color:red ">
    			 <strong  style="margin-right: 40px;" class="price">$ <asp:Label ID="price1" runat="server" Text="0" Visible="true"></asp:Label></strong> 
    		</div>
            <br />
            <br />
       </asp:Panel>
        </div>
</asp:Content>
