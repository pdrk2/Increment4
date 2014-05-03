<%@ Page Title="" Language="C#" MasterPageFile="~/FinalUser.Master" AutoEventWireup="true" CodeBehind="shopping_cart.aspx.cs" Inherits="ASE_Project.shopping_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .cart {
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
       .ultra .clean{
            -moz-border-radius: 20px;
    -webkit-border-radius: 20px;
    -khtml-border-radius: 20px;
    border-radius: 20px;        
    border: solid #FF0000; 
            background-color: #C0C0C0; 
            font-family: verdana; 
            font-size: 10pt; 
            font-weight: bold;
            border-top-left-radius: 40px 30px;
            border-bottom-right-radius: 30% 25%;
            border-top-right-radius: 40px;
            border-radius: 40px;
        }
        .menu_description
{
	margin-top: 5px;
	font-size: 11px;
    margin-right:550px;
    color:azure;
}
        .cufon 
{
	margin-bottom: 15px;
    color:aqua;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="cart">
        <asp:Panel id="pan2" runat="server" ScrollBars="Auto" Height="489px" >
    <p>
        
            <br />
        <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>

        <h2 class="style">Shopping Cart</h2>
        <asp:Repeater ID="cart" runat="server">
        
        <HeaderTemplate>
           
           <div style="float:left;width:200px; margin-left: 90px;">
    			<span class="price">Product</span>   	   			    			    			
    		                                 
        </div> 

        <div style="float:right;">
    			<strong  style="margin-right: 110px;" class="price"> Price </strong>
    		</div>
        <div class="clear"></div>
        <br />
        
            </HeaderTemplate>
            
            <ItemTemplate>

              <div style="width:100%;">
    			
                <asp:Image ID="Image1" runat="server" />	
    			<div style="float:left;width:82px">
    				<a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
    					<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1" alt="" class="frame img_nofade" style="opacity: 1;">
                        
    				</a>
    			&nbsp;&nbsp;&nbsp;&nbsp;</div>
    					
    		<div style="float:left;width:250px">
    			<span class="cufon"><%# DataBinder.Eval(Container.DataItem, "item_name")%></span>
    			    				   			    			    			
    			<br class="clear">
    			<div class="menu_description">
                <div class="meta-left">

               </div>
               <div class="meta-right">
                    
             
               </div>

                                  
        </div>           
            		</div>
    		<div class="menu_description" style="float:right;">
    			<strong  style="margin-right: 40px;" class="price">$  <%# DataBinder.Eval(Container.DataItem, "price")%></strong> <a  class="red" href="carting.aspx?id=" style="color: #FF0000"> Remove </a>
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

        <label class="label">Sub Total:</label>
         <div style="float:right; margin-right: 80px;">
    			 <strong  style="margin-right: 551px;color:white;" class="price">$ <asp:Label ID="price" runat="server" Text="0" Visible="False"></asp:Label></strong> 
                
    		</div>
   <br />
   <br />
    <div class="ultra">
    <asp:Button ID="checkout" runat="server" Text="Checkout" onclick="checkout_Click" CssClass="clean"/>
        <asp:Label ID="details1" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
            </asp:Panel>
            </div>
</asp:Content>
