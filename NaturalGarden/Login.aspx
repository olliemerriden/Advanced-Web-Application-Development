<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NaturalGarden.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container"> <%--class so can define the values and properties of the div in css--%>

        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="Red">*</asp:RequiredFieldValidator> <%--required field validators to make sure that each of the boxes are valid--%>

    <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="label"></asp:Label> <%--label for the login page--%>
    <br />
    <asp:TextBox ID="txtUsername" placeholder="Enter Username" runat="server" CssClass="inputbox" Width="320px" Height="47px" Font-Bold="False" Font-Size="Large"></asp:TextBox> <%--this is the box that the require field validator validates--%>
    <br />
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="label"></asp:Label>
    <br />
    <asp:TextBox ID="txtPassword" placeholder="Enter Password" runat="server" TextMode="Password" CssClass="inputbox" Width="320px" Height="41px" Font-Size="Large" ></asp:TextBox>
    <br />
        <asp:ValidationSummary ID="vsLogin" runat="server" ForeColor="Red" /> <%--validation summary shows all the validation that is flagged up as incorrect--%>
    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" OnClick="btnLogin_Click" Height="74px" Width="191px" /> <%--login button that takes us to the admin home page--%>
    <br />

        </div>
</asp:Content>
