<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MainPages/SiteMaster.Master" CodeBehind="Default.aspx.vb" Inherits="Foodrelate._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 250px;
            height: 250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="left_side">

    <h3>Welcome!</h3>
    <p>Welcome to the Dinner assistant.  If you are having problems coming up with ideas on what to make for dinner, just 
    put in one or more of the main ingredients you wish to use and I can suggest some options from your favorite recipes based on what
     ingredients you have on hand.</p>

<div id="feature_box">

<h4>Recipe of the Day</h4>

<p>
    <img alt="italbeef" class="style1" src="images/italianbeef.jpg" />Today we feature one of my all time favorites.  <a href="http://allrecipes.com/Recipe/Original-Homemade-Italian-Beef/Detail.aspx?event8=1&prop24=SR_Thumb&e11=italian%20beef&e8=Quick%20Search&event10=1&e7=Recipe%20Hub">Italian Beef</a>.
</p>

</div>
    <p>When you barely have time to get home and get the kids homework finished and then off to practice or recital or get to your own fucntion 
    for the evening, spending time deciding what to make for dinner could throw a wrench in the works.</p>
</div>

<div id="right_side">

<h3>Eat at HOME!</h3>
    <p>Eating at home can save you lots of money and is generally much healthier for you.</p>

</div>
</asp:Content>
