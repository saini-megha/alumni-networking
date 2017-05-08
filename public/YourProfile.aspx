<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="YourProfile.aspx.cs" Inherits="YourProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1"style="color: #000000; background-color: #808080; width: 100%;">
        <tr>
            <td colspan="2">Last logged in at
                <asp:Label ID="Lblurlastlog" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;<asp:Image ID="ProfilePic" runat="server" Height="213px" Width="221px" />
                &nbsp;&nbsp;Profile views
                <asp:Label ID="lblnoofvisit" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnphotos" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Photos" Width="129px" OnClick="btnphotos_Click" />
            </td>
        </tr>
        <tr>
            <td>Hi, this is <asp:Label ID="lblname" runat="server"></asp:Label>
                &nbsp; a.k.a.
                <asp:Label ID="lblnick" runat="server"></asp:Label>
                &nbsp;</td>
            <td rowspan="7" style="border: medium solid #000000">
                <asp:DataList ID="DataListyour" runat="server" DataSourceID="StatusID">
                    <ItemTemplate>
                        Status: <asp:Label ID="StatusValueLabel" runat="server" Text='<%# Eval("StatusValue") %>' />
                        <br /> <asp:Label ID="StatusTimeLabel" runat="server" Text='<%# Eval("StatusTime") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="StatusID" runat="server" ConnectionString="<%$ ConnectionStrings:alumniConnectionString5 %>" SelectCommand="SELECT [StatusValue], [StatusTime] FROM [Status] WHERE ([StatusName] = @StatusName)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="StatusName" QueryStringField="name" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td>Born on
                <asp:Label ID="lblbday" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Residing at
                <asp:Label ID="lblcity" runat="server"></asp:Label>
                ,
                <asp:Label ID="lblstate" runat="server"></asp:Label>
                ,<asp:Label ID="lblcountry" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Studied
                <asp:Label ID="lbcourse" runat="server"></asp:Label>
                ,
                <asp:Label ID="lblstream" runat="server"></asp:Label>
                &nbsp;with
                <asp:Label ID="lblbatch" runat="server"></asp:Label>
                &nbsp;batch</td>
        </tr>
        <tr>
            <td>Currently employed at
                <asp:Label ID="lblemployed" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Write me at
                <asp:Label ID="lblid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>More about me<br />
                &nbsp;<asp:Label ID="lblaboutme" runat="server" Width="50%"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

