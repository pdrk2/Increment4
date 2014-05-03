<%@ Page Title="" Language="C#" MasterPageFile="~/FinalVen.Master" AutoEventWireup="true" CodeBehind="venOrder.aspx.cs" Inherits="ASE_Project.venOrder" %>
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
    <asp:Repeater ID ="details" runat="server">
 <HeaderTemplate>
     <br />
     <br />
           <h2 class="style">Order Details</h2>
     <br />
            <ul>
            <li>
            <div class="price"  id="res_det" style ="float: left; width: 250px;color:red">
            <strong>User Name</strong>
             </div>

             <div  class="price" id="order_date" style ="float: left; width: 150px;color:red">
             <strong>Order Date</strong>
             </div>
              <div class="price" id="order_price" style ="float: left; width: 100px;color:red">
             <strong>Price</strong>
             </div>
            
            </li>
           <br />
           <br />
            </HeaderTemplate>
            
            <ItemTemplate>

            
            <a href="ven_order_single.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>" > <li class="clear">
             <div id="res_det" style ="float: left; width: 250px;color:aqua">
            <h5 class="cufon" style="font-size: 18px;" > <%# DataBinder.Eval(Container.DataItem, "user_id")%></h5>
             </div>

             <div  id="order_date" style ="float: left; width: 150px;color:white">
             <%# DataBinder.Eval(Container.DataItem, "date")%>
             </div>
              <div class="price" id="order_price" style ="float: left; width: 100px;color:white">
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
