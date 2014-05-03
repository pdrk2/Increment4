<%@ Page Title="" Language="C#" MasterPageFile="~/FinalUser.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="ASE_Project.user_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .vendor_list userDetails_display li
        {
            display:inline-block;
        }
        .contact_vulfa {
	float:left;
	margin-right:60.3333%;
	width: 60.3333%;
}
        .contact_wulfa {
	float:left;
    margin-left:auto;
	width: 30.3333%;
}
        .contact_bright {
            float: right;
            width: 33.3333%;
        }
        .contact_bleft {
            float: left;
            margin-left: 1.3333%;
            width: 60.3333%;
        }
        .contact-form input[type="edit"]{
	margin-top: 10px;
	font-family: 'Open Sans', sans-serif;
	cursor: pointer;
	background: #242424;
	border: 1px solid #242424;
	padding: 10px 24px;
	outline: none;
	color: #ffffff;
	font-size: 1em;
	text-transform: uppercase;
	-webkit-appearance: none;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
	border-radius: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-o-border-radius: 2px;
}
      ul {
    list-style: none;
    margin: 0;
    padding: 0;
    font: 16px arial-black;
    display: block !important;
    display: inline;
    overflow: hidden;
}
  .label{
        float : left;
   display : inline;
   display : block;
   text-align: left;
   font-family:Tahoma;
   font-weight:bold;
   font-size:medium;
  
}
   .clear
     {
         clear: both;
     }
     #user_profile span 
{
    position: absolute;
    left: 200px;
    
font-size: 12px;
    }
     .everything {
            position: absolute;
            top: 116px;
            height: 483px;
            z-index: 9999;
            left: -50px;
            width: 1347px;
            margin:24px 50px;
            background-color:black;
            border:1px solid black;
            opacity:0.8;
            filter:alpha(opacity=70);
        }
     .label{
        float : left;
   display : inline;
   display : block;
   text-align: left;
   color:white;
   top:1000px;
}
     #name
     {
         top:40px;
     }
     
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="everything">
     <div class="contact">				
				<div class="contact_bleft">
					<ul class="folio_list">
					<li>
						<div class="foli_img">
							<a href="./vendorDisplayP.aspx">
				 				<span class="next"> </span>
							</a>
							<img src="images/photography_subpic.jpg" alt="" />
						</div>	
						<h3 class="style" style="color: #C0C0C0; " >Photography</h3>
						<p class="para" style="color: #FFFFFF; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: x-small;" >Pick your choice among some of the best photographers in town</p>
						<h4><a  href="./vendorDisplayP.aspx">Photography</a></h4>
					</li>
                        <li>
						<div class="foli_img">
							<a href="./vendorDisplayV.aspx">
				 				<span class="next"> </span>
							</a>
							<img src="images/venue_subpic.jpg" alt="" />
						</div>	
						 <h3 class="style" style="color: #C0C0C0">Venues</h3>
						 <p class="para" style="color: #FFFFFF; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: x-small;">Pick your venue basing on budget and occasion you're celebrating</p>
						 <h4><a href="./vendorDisplayV.aspx">Venues</a></h4>
					</li>
                    <li>
						<div class="foli_img">
							<a href="./vendorDisplayC.aspx">
				 				<span class="next"> </span>
							</a>
							<img src="images/pic1.jpg" alt="" />
						</div>	
						<h3 class="style" style="color: #C0C0C0">Caterging</h3>
						
						<p class="para" style="color: #FFFFFF; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: x-small;">Amongst the best chef's pick your choice which pleases you the most</p>
                        <h4><a  href="./vendorDisplayC.aspx">Caterors</a></h4>
					</li>
					<li>
						<div class="foli_img">
							<a href="./vendorDisplayT.aspx">
				 				<span class="next"> </span>
							</a>
							<img  src="images/theme_subpic.jpg" alt="" />
						</div>	
						 <h3 class="style"style="color: #C0C0C0">Theme </h3>
						 <p class="para" style="color: #FFFFFF; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: x-small;">Whatever is your event, we build you the best themes ! Pick your choice</p>
						 <h4><a href="./vendorDisplayT.aspx">Theme </a></h4>
					</li>                 
                        </ul>
      				</div>
      			<div class="company_address">
				     	<ul class="folio_list">
					<br />
                             
                             
        		   </div>
							
				<div class="contact_bright">
				  <div class="contact-form">
				  	<h3 class="style" style="color: #C0C0C0">User Details</h3>
					    <form method="post" action="contact-post.html">
					    	<div id="user_profile">

    <h2> User Personal Profile</h2>
        <br />
                               
    <span style="float:right; position:absolute; top:42px; left:1px; right: 120px; font-size: medium;"> <a href="./userProfileEdit.aspx">Edit</a></span>
     <br class="clear" />
        <ul>
            <li>
          <label runat="server" font-names="Tahoma" style="color: #FFFFFF">Name:&nbsp;</label>
        <asp:Label ID="name" runat="server" Text="Label"  Font-Names="Lucida Sans" Height="50px" Width="20px" ForeColor="#CCCCCC"></asp:Label>
        </li>
        <br />
        <li>
        <label runat="server" font-names="Tahoma" style="color: #FFFFFF" >Email:&nbsp;</label>
        <asp:Label ID="email" runat="server" Text="Label" Font-Names="Lucida Sans"  Height="56px" Width="30px" ForeColor="#CCCCCC"></asp:Label>
        </li>
        <br />
        <li>
       <label runat="server" font-names="Tahoma" style="color: #FFFFFF">ContactNo:&nbsp;</label>
        <asp:Label ID="contact" runat="server" Text="Label" Font-Names="Lucida Sans" Height="61px" Width="20px" ForeColor="#CCCCCC"></asp:Label>
        </li>
        <br />
        <li>
       <label runat="server" font-names="Tahoma" style="color: #FFFFFF">Zipcode:&nbsp;</label>
        <asp:Label ID="zipcode" runat="server" Text="Label" Font-Names="Lucida Sans" Height="66px" Width="10px" ForeColor="#CCCCCC"></asp:Label>
        </li>
        <br />
    

      </ul>
    </div>
					    </form>
				    </div>
  				</div>		
  				<div class="clear"></div>		
		  </div>	
	<!-- end main_content -->
    </span>

    </div>
</asp:Content>
