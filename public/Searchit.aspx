<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Searchit.aspx.cs" Inherits="Searchit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 95%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1" style="color: #CCFFFF; background-color: #333333; width: 100%;">
        <tr>
            <td style="background-color: #808080; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search Friends here:<asp:TextBox ID="txtSearch" runat="server" Height="25px" Width="265px" AutoPostBack="True"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="27px" ImageAlign="AbsBottom" ImageUrl="~/Image/search.jpg" Width="28px"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
                <br />
            </td>
        </tr>
        <tr>
            <td style="background-color: #808080">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="background-color: #808080">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="username" DataSourceID="SearchID" BorderColor="#999999" BorderWidth="9px" CellPadding="30" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Both" HorizontalAlign="Center" RepeatColumns="2" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        &nbsp;<table align="center" class="auto-style6">
                            <tr>
                                <td rowspan="4">
                                    <asp:Image ID="Image1" runat="server" Height="199px" ImageUrl='<%# Bind("imageurl") %>' Width="197px" />
                                </td>
                                <td>
                                    <asp:LinkButton ID="lblsearchname" runat="server" CommandName="searchmapname" CommandArgument='<%# Bind("username") %>' Text='<%# Bind("name") %>'></asp:LinkButton>
                                    &nbsp;<br />a.k.a.
                                    <asp:Label ID="NickNameLabel" runat="server" Text='<%# Eval("NickName") %>' />
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                            </tr>
                            <tr>
                                <td>Username:
                                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Batch :
                                    <asp:Label ID="BatchLabel" runat="server" Text='<%# Eval("Batch") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SearchID" runat="server" ConnectionString="<%$ ConnectionStrings:alumniConnectionString6 %>" SelectCommand="SELECT [Gender], [Batch], [NickName], [name], [username], [imageurl] FROM [member] WHERE (([name] LIKE '%' + @name + '%') AND ([name] LIKE '%' + @name2 + '%')) ORDER BY [name]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtSearch" Name="name" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtSearch" Name="name2" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="background-color: #808080; color: #000000;">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

