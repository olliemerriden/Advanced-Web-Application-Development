<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="ViewFlower.aspx.cs" Inherits="NaturalGarden.ViewFlower" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>View Flower Records</h1> <%--title for the page--%>
    <table style="width: 100%;"> <%--width of the table--%>
        <tr> <%--new row--%>
            <td> <%--new collumn--%>
                <asp:Label ID="lblFilter" runat="server" Text="Filter By (Colour)" CssClass="label"></asp:Label> <%--label for the filter by colour--%>
            </td>
            <td> <%--new collumn--%>
                <asp:DropDownList ID="ddlFilter" runat="server" CssClass="inputbox"> <%--drop down list for the filter by colour, showing all the different colours--%>
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Purple</asp:ListItem>
                    <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Yellow</asp:ListItem>
                    <asp:ListItem>Pink</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                    <asp:ListItem>Orange</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Multicoloured</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td> <%--new collumn--%>
                <asp:Button ID="btnReset" runat="server" CssClass="button" Text="Reset view" OnClick="btnReset_Click" />
            </td>
        </tr> 
        <tr> <%--new row--%>
            <td>

                <asp:Label ID="lblSort" runat="server" Text="Sort by (Price)" CssClass="label"></asp:Label> <%--label for the sort by price--%>

            </td>
            <td>
                <asp:DropDownList ID="ddlSort" runat="server" CssClass="inputbox"> <%--dropdown list for the sort by price; ascending and descending--%>
                    <asp:ListItem>Ascending</asp:ListItem>
                    <asp:ListItem>Descending</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btnRefresh" runat="server" CssClass="button" Text="Refresh View" OnClick="btnRefresh_Click" /> <%--refresh button to update the table based on selected values--%>
            </td>
        </tr>
        <tr> <%--new row--%>
            <td>
                &nbsp;</td> <%--non breakting space meaning that text will not seperated onto different lines--%>
            <td>
                <%--gird view for the supplier and flower tables joined by = flower id--%>
                
                <asp:GridView ID="gvView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvView_SelectedIndexChanged" CssClass="gridview" BackColor="#33CC33" BorderColor="Black" BorderWidth="1px" Width="308px" ShowHeaderWhenEmpty="True" > 
                    <%--Shows the header even if empty to not confuse user--%>
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" /><%--all of the stylw options for the gridview--%>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    <EmptyDataTemplate> <%--if no record--%>
                        No Records Found <%--text for no record--%>
                    </EmptyDataTemplate>
    </asp:GridView>
                </td>
            <td>&nbsp;</td> <%--non breakting space meaning that text will not seperated onto different lines--%>
        </tr> <%--end of row--%>
        
    </table> <%--end of table--%>

    

    

</asp:Content>
