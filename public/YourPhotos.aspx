<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="YourPhotos.aspx.cs" Inherits="YourPhotos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1" style="color: #000000; background-color: #808080; width: 100%">
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="YourPicsID" BorderColor="Black" BorderStyle="Solid" BorderWidth="10px" RepeatColumns="2" Width="100%" >
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="301px" ImageUrl='<%# Bind("PhotoUrl") %>' Width="303px" BorderColor="#333333" BorderStyle="Solid" />
                    <br />
                    &nbsp;<br />Caption:
                    <asp:Label ID="PhotoCaptionLabel" runat="server" Text='<%# Eval("PhotoCaption") %>' />
                    <br />
                    <asp:Label ID="PhotoTimeLabel" runat="server" Text='<%# Eval("PhotoTime") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="YourPicsID" runat="server" ConnectionString="<%$ ConnectionStrings:alumniConnectionString8 %>" SelectCommand="SELECT [PhotoUrl], [PhotoTime], [PhotoCaption] FROM [PhotoAlbum] WHERE ([PhotoUser] = @PhotoUser)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="PhotoUser" QueryStringField="name" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

