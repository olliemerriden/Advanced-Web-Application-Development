<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="ManageFlower.aspx.cs" Inherits="NaturalGarden.ManageFlower" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css"> /*the different css styles form each collumn*/
         .auto-style3 {
             width: 249px;
         }
         .auto-style4 {
             width: 497px;
         }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="mainpage">
    <h1>Manage Flower Records</h1>
    <div class="container_manage"> <%--different container to change properties in css--%>
<table style="width: 100%">

    <tr>
        <td class="auto-style3"> <%--preset style as listed above--%>
            <asp:Label ID="lblID" runat="server" Text="Flower ID:"></asp:Label> <%--Id label--%>
            <asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="ddlID" ErrorMessage="ID is required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        <td class="auto-style4"> <%--preset style as listed above--%>
            
            <asp:DropDownList ID="ddlID" runat="server" CssClass="inputbox"> <%--drop down list for the id--%>
                
                </asp:DropDownList>
            
            <asp:SqlDataSource ID="DSflowerID" runat="server" ConnectionString="<%$ ConnectionStrings:NaturalGardenDBConnectionString %>" SelectCommand="SELECT [FlowerID] FROM [flower]"></asp:SqlDataSource> <%--drop down list for the id--%>
            
            </td>
        <td>
                <asp:Button ID="btnReset" runat="server" CssClass="button" Text="Reset view" OnClick="btnReset_Click" /> <%--drop down list for the id--%>
            </td>
    </tr>
    <tr>
        <td class="auto-style3"> <%--drop down list for the id--%>
        <asp:Label ID="lblName" runat="server" Text="Flower Name:"></asp:Label> <%--drop down list for the id--%>
        </td>
        <td class="auto-style4"> <%--where the data for the id dropdown is coming from--%>
            <asp:TextBox ID="txtName" runat="server" CssClass="inputbox"></asp:TextBox> <%--Reset Button--%>

        </td>

            <td>
                <asp:Button ID="btnCreate" runat="server" CssClass="button" Text="Create Flower Record" OnClick="btnCreate_Click" Width="325px"  /> <%--preset style as listed above--%>
                </td>
        
    </tr>

    <tr>
        <td class="auto-style3"> <%--Name label--%>
        <asp:Label ID="lblPrice" runat="server" Text="Flower Price:"></asp:Label> <%--preset style as listed above--%>
        </td>

        <td class="auto-style4"> <%--Text box for Name--%>
            <asp:TextBox ID="txtPrice" runat="server" CssClass="inputbox"></asp:TextBox> <%--This Button creates records--%>
            </td>

        <td>
                <asp:Button ID="btnRetrieve" runat="server" CssClass="button" OnClick="btnRetrieve_Click" Text="Retrieve Flower Record" Width="325px" /> <%--preset style as listed above--%>
                </td>

    </tr>

    <tr>
        <td class="auto-style3"> <%--Price label--%>
        <asp:Label ID="lblColour" runat="server" Text="Flower Colour:"></asp:Label> <%--preset style as listed above--%>
        </td>

        <td class="auto-style4"> <%--Text box for Price--%>
           

            <asp:TextBox ID="txtColour" runat="server" CssClass="inputbox"></asp:TextBox> <%--This Button retrives records--%>
            </td>

        <td>
                <asp:Button ID="btnUpdate" runat="server" CssClass="button" Text="Update Flower Record" Width="325px" OnClick="btnUpdate_Click" /> <%--preset style as listed above--%>
                </td>


    </tr>

    <tr>
        <td class="auto-style3"> <%--Colour label--%>
        <asp:Label ID="lblExpiry" runat="server" Text="Flower Expiry Date:"></asp:Label> <%--preset style as listed above--%>
        </td>

        <td class="auto-style4"> <%--Text box for Colour--%>
            
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="inputbox"></asp:TextBox> <%--This Button updates records--%>
            </td>

        <td>
                <asp:Button ID="btnDelete" runat="server" CssClass="button" Text="Delete Flower Record" Width="325px" OnClick="btnDelete_Click" /> <%--preset style as listed above--%>
                </td>

    </tr>

    <tr>
        <td class="auto-style3"> <%--Date label--%>
        <asp:Label ID="lblImgageFilename" runat="server" Text="Image File Name:"></asp:Label> <%--preset style as listed above--%>
        </td>

        <td class="auto-style4"> <%--Date input box--%>
            
            <asp:TextBox ID="txtImageName" runat="server" CssClass="inputbox" ></asp:TextBox> <%--This Button deletes records--%>

            </td>

    <tr>
        <td class="auto-style3"> <%--preset style as listed above--%>
        <asp:Label ID="lblImg" runat="server" Text="Flower Image:"></asp:Label> <%--Image Name label--%>
        </td>

        <td class="auto-style4"> <%--preset style as listed above--%>
            
            <asp:Image ID="imFlower" runat="server" CssClass="inputbox" Height="350px" Width="350px" /> <%--Text box for Image Name--%>

            </td>



    </tr>



    </table>
        <asp:ValidationSummary ID="vsManage" runat="server" ForeColor="Red" />
    </div>
    </div>

</asp:Content>
