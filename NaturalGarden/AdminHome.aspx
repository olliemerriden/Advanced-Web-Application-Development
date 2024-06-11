<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="NaturalGarden.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <asp:Button ID="btnmanage" runat="server" Text="Manage Flower Records" Height="100px" Width="200px" CssClass="button" OnClick="btnmanage_Click"/> <%--button takes us to the manage flower page--%>
    <br />
    <br />
    <asp:Button ID="btnview" runat="server" Text="View Flower Records" Height="100px" Width="200px" CssClass="button" OnClick="btnview_Click" /> <%--button takes us to the view flower page--%>

</asp:Content>
