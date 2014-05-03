<%@ Page Title="" Language="C#" MasterPageFile="~/FinalVen.Master" AutoEventWireup="true" CodeBehind="vendorSales.aspx.cs" Inherits="ASE_Project.vendorSales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="js/FusionCharts.js"></script>
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
         #Literal1 {
             float:left;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="menu_cat">
     <asp:Panel id="pan2" runat="server" ScrollBars="Auto" Height="479px" >
         <br />
         <br />
    <h2 class="style">Monthly Revenue</h2>
         <br />
         
<div>
     <asp:Literal ID="Literal1" runat="server" ></asp:Literal>
    </div>
          </asp:Panel>
        </div>
</asp:Content>
