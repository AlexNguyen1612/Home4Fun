<%@ Page Title="Fun Idea Details" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FunIdeaDetails.aspx.cs" Inherits="Assignment1_WebDev.FunIdeaDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPhead" runat="server">
    <link href="Content/FunIdeaDetails.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPBody" runat="server">
    <asp:Repeater ID="RFunIDeaTitle" runat="server" DataSourceID="SDSFunIdeas">
        <ItemTemplate>
            <div class="row justify-content-center">
                <div class="col-6">
                    <h3><%# Eval("ideaTitle") %> </h3>
                    <br />
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:Repeater ID="RFunIdeaDetails" runat="server" DataSourceID="SDSFunIdeaDetails">
        <ItemTemplate>
            <div class="row justify-content-center">
                <div class="col-6">
                    <img src="<%# Eval("largeImg") %>" alt="<%# Eval("imgCaption")  %>"/>
                    <br /> <br />
                    <i style="font-size:15px">Update at: <%# Eval("updateDate") %></i>
                    <br /> <br />
                    <div style="font-size:20px">
                    <%# Eval("contentSummarization") %>
                    </div>
                    <a href="<%# Eval("reference") %>">Find out more...</a>
            </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SDSFunIdeaDetails" runat="server" ConnectionString="<%$ ConnectionStrings:Home4FunConnectionString %>" SelectCommand="SELECT * FROM [FunIdeaDetails] WHERE [ideaID] = @IdeaID">
        <SelectParameters>
            <asp:QueryStringParameter Name="IdeaID" QueryStringField="id" Type="string" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SDSFunIdeas" runat="server" ConnectionString="<%$ ConnectionStrings:Home4FunConnectionString %>" SelectCommand="SELECT * FROM [FunIdeas] WHERE [ideaID] = @IdeaID">
        <SelectParameters>
            <asp:QueryStringParameter Name="IdeaID" QueryStringField="id" Type="string" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CPScript" runat="server">
</asp:Content>
