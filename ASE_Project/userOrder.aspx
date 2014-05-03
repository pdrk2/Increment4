<%@ Page Title="" Language="C#" MasterPageFile="~/FinalUser.Master" AutoEventWireup="true" CodeBehind="userOrder.aspx.cs" Inherits="ASE_Project.userOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
strong
{
    font-size: 20px;
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
       .smile {
            color:aqua;
            font-size: 30px;
        }
       label{
        float : left;
        color: red;
   display : inline;
   display : block;
   text-align: left;
   font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
    
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="menu_cat">
     <asp:Panel id="pan2" runat="server" ScrollBars="Auto" Height="479px" >
    <asp:Repeater ID ="details" runat="server">
 <HeaderTemplate>
           <br />
     <br />
     
            <ul>
            <li>
            <div class="price"  id="res_det" style ="float: left; width: 250px;">
            <label><strong>Restaurant Name</strong></label>
             </div>

             <div  class="price" id="order_date" style ="float: left; width: 150px;">
             <label><strong>Order Date</strong></label>
             </div>
              <div class="price" id="order_price" style ="float: left; width: 100px;">
             <label><strong>Price</strong></label>
             </div>
            
            </li>
           <br />
           <br />
            </HeaderTemplate>
            
            <ItemTemplate>

            
            <a href="order_single.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>" > <li class="clear">
             <div id="res_det" style ="float: left; color:aqua; width: 250px;">
            <h5 class="cufon" style="font-size: 18px;" > <%# DataBinder.Eval(Container.DataItem, "ven_id")%></h5>
             </div>

             <div  id="order_date" style ="float: left;color:white; width: 150px;">
             <%# DataBinder.Eval(Container.DataItem, "date")%>
             </div>
              <div class="price" id="order_price" style ="float: left;color:white; width: 100px;">
             $ <%# DataBinder.Eval(Container.DataItem, "price")%>
             </div>
             
             </li></a>
             
            				


           
           
            </ItemTemplate>

            

            <FooterTemplate>
              </ul> 
            </FooterTemplate>

     
     


</asp:Repeater>
 </asp:Panel>
        </div>
</asp:Content>
