<%@ Page Title="Fun Ideas EF" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FunIdeasEF.aspx.cs" Inherits="Assignment1_WebDev.Management.FunIdeas" %>
<asp:Content ID="FunIdeasEFStyle" ContentPlaceHolderID="CPhead" runat="server">
    <link href="../Content/FunIdeas.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="FunIdeasEFContent" ContentPlaceHolderID="CPBody" runat="server">
    <div class="container-fluid">
    <div class="row justify-content-center">
    <div class="col-10">
    <h3>Ideas board </h3>
    <br />
    <div class="card-columns">
    <asp:Repeater ID="RListOfFunIdeas" runat ="server" ItemType="Assignment1_WebDev.Models.FunIdeas">
        <ItemTemplate>
            <div class="card">
                 <div class="top">
                <div class="comment-overlay"></div>
                <img src='<%# Item.thumbnail %>' alt="<%# Item.imgCaption %>" class="card-img-top"/>
                <div class="comment-details fadeIn-bottom">
                  <quote style="color:white;font-size:20px"><i>"<%# Item.ideaComment %>"</i></quote>
                </div>
                </div>
                <div class="card-body">
                    <h4 class="card-title"><%# Item.ideaTitle %></h4>
                    <h6 class="difficulty-level"><strong>Difficulty:</strong> <%# Assignment1_WebDev.FunIdeas.getDifficultyLevel(Convert.ToInt32(Item.difficultyLevel)) %></h6>
                    <p class="card-text"><%# Item.ideaDescription %></p>
                    <a onclick="window.open('/FunIdeaDetails.aspx?id=<%# Item.ideaID %>', '_blank');" href="#" class="btn btn-outline-success btn-sm">Read More</a>
                    <a href="#" class="btn btn-outline-danger btn-sm"><i class="fa fa-heart"></i></a>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
    </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="FunIdeasEFScript" ContentPlaceHolderID="CPScript" runat="server">

</asp:Content>
