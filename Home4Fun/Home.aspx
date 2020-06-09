<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment1_WebDev.Home" %>

<asp:Content ID="HomeStyle" ContentPlaceHolderID="CPhead" runat="server">
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet'>
    <link href="Content/Home.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="HomeContent" ContentPlaceHolderID="CPBody" runat="server">
    <div id="front-page" class="col-12">
    <div class="row justify-content-center">
        <div class="col-6 offset-3">
            <p id="spacing"></p>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-6 offset-3">
            <h2 id="logo">HOME 4 FUN</h2>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-8 offset-2">
            <p class="introText">A list of 14 fun ideas you can do during self-quarantine</p>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-7">
            <p id="inspiringQuote">“Life imposes things on you that you can’t control, but you still have the choice
                <br />
                of how you’re going to live through this.”
                <br />
                - Celine Dion -</p>
        </div>
    </div>
    </div>
</asp:Content>

<asp:Content ID="HomeScript" ContentPlaceHolderID="CPScript" runat="server">

</asp:Content>
