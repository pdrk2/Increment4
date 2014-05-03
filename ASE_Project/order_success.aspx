<%@ Page Title="" Language="C#" MasterPageFile="~/FinalUser.Master" AutoEventWireup="true" CodeBehind="order_success.aspx.cs" Inherits="ASE_Project.order_success" %>
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
       .smile {
            color:aqua;
            font-size: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="menu_cat">
     <asp:Panel id="pan2" runat="server" ScrollBars="Auto" Height="479px" >
         <br />
         <br />
         <br />
         <h2 class="smile">
Your Order has been successfully placed.
</h2>
         <br />
         <br />
          <img src="http://media.salemwebnetwork.com/ecards/churchfamily/thankyouvisitor.jpg"
                alt="" class="frame img_nofade" width="490" height="240" />
         <br />
         <br />
         <br />
    
         </asp:Panel>
        </div>
</asp:Content>
