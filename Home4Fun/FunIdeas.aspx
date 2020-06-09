<%@ Page Title="Fun Ideas" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FunIdeas.aspx.cs" Inherits="Assignment1_WebDev.FunIdeas" %>

<asp:Content ID="FunIdeasStyle" ContentPlaceHolderID="CPhead" runat="server">
    <link href="Content/FunIdeas.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="FunIdeasContent" ContentPlaceHolderID="CPBody" runat="server">
    <div class="container-fluid">
    <div class="row justify-content-center">
    <div class="col-10">
    <h3>Ideas board </h3>
    <br />
    <div class="card-columns">
    <asp:Repeater ID="RListOfFunIdeas" runat="server" >
        <ItemTemplate>
            <div class="card">
                <div class="top">
                <div class="comment-overlay"></div>
                <img src='<%# Eval("thumbnail") %>' alt="<%# Eval("imgCaption") %>" class="card-img-top">
                <div class="comment-details fadeIn-bottom">
                  <quote style="color:white;font-size:20px"><i>"<%# Eval("ideaComment") %>"</i></quote>
                </div>
                </div>
                <div class="card-body">
                    <h4 class="card-title"><%# Eval("ideaTitle") %></h4>
                    <h6 class="difficulty-level"><strong>Difficulty:</strong> <%# getDifficultyLevel(Convert.ToInt32(Eval("difficultyLevel"))) %></h6>
                    <p class="card-text"><%# Eval("ideaDescription") %></p>
                    <a onclick="window.open('/FunIdeaDetails.aspx?id=<%# Eval("ideaID") %>', '_blank');" href="#" class="btn btn-outline-success btn-sm readmore">Read More</a>
                    <a href="#" class="btn btn-outline-danger btn-sm"><i class="fa fa-heart"></i></a>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
    </div>
    </div>
    </div>
    <asp:SqlDataSource ID="SDSListOfFunIdeas" runat="server" ConnectionString="<%$ ConnectionStrings:Home4FunConnectionString %>" SelectCommand="SELECT * FROM [FunIdeas] WHERE ([toDo] = @toDo) ORDER BY [ideaTitle]">
        <SelectParameters>
            <asp:Parameter DefaultValue="False" Name="toDo" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SDSFunIdeas_Entertainment" runat="server" ConnectionString="<%$ ConnectionStrings:Home4FunConnectionString %>" SelectCommand="SELECT * FROM [FunIdeas] WHERE ([category] = @category) ORDER BY [ideaTitle]">
        <SelectParameters>
            <asp:Parameter DefaultValue="Entertainment" Name="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SDSFunIdeas_Trendy" runat="server" ConnectionString="<%$ ConnectionStrings:Home4FunConnectionString %>" SelectCommand="SELECT * FROM [FunIdeas] WHERE ([category] = @category) ORDER BY [ideaTitle]">
        <SelectParameters>
            <asp:Parameter DefaultValue="Trendy" Name="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SDSFunIdeas_PersonalDevelopment" runat="server" ConnectionString="<%$ ConnectionStrings:Home4FunConnectionString %>" SelectCommand="SELECT * FROM [FunIdeas] WHERE ([category] = @category) ORDER BY [ideaTitle]">
        <SelectParameters>
            <asp:Parameter DefaultValue="Personal Development" Name="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SDSFunIdeas_Meaningful" runat="server" ConnectionString="<%$ ConnectionStrings:Home4FunConnectionString %>" SelectCommand="SELECT * FROM [FunIdeas] WHERE ([category] = @category) ORDER BY [ideaTitle]">
        <SelectParameters>
            <asp:Parameter DefaultValue="Meaningful" Name="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SDSFunIdeas_Art" runat="server" ConnectionString="<%$ ConnectionStrings:Home4FunConnectionString %>" SelectCommand="SELECT * FROM [FunIdeas] WHERE ([category] = @category) ORDER BY [ideaTitle]">
        <SelectParameters>
            <asp:Parameter DefaultValue="Art" Name="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SDSFunIdeas_Trivial" runat="server" ConnectionString="<%$ ConnectionStrings:Home4FunConnectionString %>" SelectCommand="SELECT * FROM [FunIdeas] WHERE ([category] = @category) ORDER BY [ideaTitle]">
        <SelectParameters>
            <asp:Parameter DefaultValue="Trivial" Name="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

<asp:Content ID="FunIdeasScript" ContentPlaceHolderID="CPScript" runat="server">
</asp:Content>
