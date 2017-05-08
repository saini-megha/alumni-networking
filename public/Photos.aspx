<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Photos.aspx.cs" Inherits="Photos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 115px;
        }
        .auto-style11 {
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1" style="color: #000000; background-color: #808080; width: 100%;">
        <tr>
            <td class="auto-style6">
                <asp:FileUpload ID="UploadPhoto" runat="server" Height="103px" Width="530px" Font-Bold="False" Font-Size="X-Large" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="auto-style11">
                Enter Caption:
                <asp:TextBox ID="Txtcaption" runat="server" Height="38px" TextMode="MultiLine" Width="509px"> </asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnPostit" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Post It" Width="129px" OnClick="btnPostit_Click" />
            </td>
        </tr>
        <tr>
            <td style="border: thick solid #000000">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="PhotosId" DataSourceID="PhotoAlbumID" CellSpacing="20" RepeatColumns="2" CellPadding="40" Width="100%">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" BorderStyle="Solid" Height="367px" ImageUrl='<%# Bind("photourl") %>' Width="378px" BorderWidth="5px" BorderColor="#333333" />
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="PhotoCaptionLabel" runat="server" Text='<%# Eval("PhotoCaption") %>' />
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="PhotoTimeLabel" runat="server" Text='<%# Eval("PhotoTime") %>' />
                        <br />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="PhotoAlbumID" runat="server" ConnectionString="<%$ ConnectionStrings:alumniConnectionString4 %>" SelectCommand="SELECT * FROM [PhotoAlbum] WHERE ([PhotoUser] = @PhotoUser) ORDER BY [PhotoTime] DESC">
                    <SelectParameters>
                        <asp:SessionParameter Name="PhotoUser" SessionField="username" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

