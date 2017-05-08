<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 95%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1" style="color: #000000; background-color: #808080; width: 100%;">
    <tr>
        <td colspan="2">Last logged in at
            <asp:Label ID="Lbllastlogin" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblstatus" runat="server">Enter status ::</asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtstatus" runat="server" Height="71px" TextMode="MultiLine" Width="378px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnstatus" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Enter" Width="129px" OnClick="btnstatus_Click" />
        </td>
    </tr>
    <tr>
        <td style="border: thick solid #000000">
            <table align="center" class="auto-style6">
                <tr>
                    <td>&nbsp;
                        <asp:Image ID="imgprofilepic" runat="server" Height="206px" Width="181px" />
                        &nbsp;Profile Views
                        <asp:Label ID="lblmynoofvisit" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Hi, this is
                        <asp:TextBox ID="txtmname" runat="server" Enabled="False" BackColor="Gray" BorderStyle="None" Font-Size="Medium" Font-Bold="False" ForeColor="Black" Width="165px"></asp:TextBox>
&nbsp;a.k.a
                        <asp:TextBox ID="txtmnick" runat="server" Enabled="False" BackColor="Gray" BorderColor="AliceBlue" BorderStyle="None" Font-Size="Medium" Font-Bold="False" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Born on
                        <asp:TextBox ID="txtmdob" runat="server" Enabled="False" BackColor="Gray" BorderStyle="None" Font-Size="Medium" Font-Bold="False" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Lives in
                        <asp:TextBox ID="txtmcity" runat="server" Enabled="False" BackColor="Gray" BorderStyle="None" Font-Size="Medium" Font-Bold="False" ForeColor="Black" Width="143px"></asp:TextBox>
                        ,
                        <asp:TextBox ID="txtmstate" runat="server" Enabled="False" BackColor="Gray" BorderStyle="None" Font-Size="Medium" Font-Bold="False" ForeColor="Black" Width="163px"></asp:TextBox>
                        ,
                        <asp:TextBox ID="txtmcountry" runat="server" Enabled="False" BackColor="Gray" BorderStyle="None" Font-Size="Medium" ForeColor="Black" Width="165px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Studied
                        <asp:TextBox ID="txtmcourse" runat="server" Enabled="False" BorderStyle="None" BackColor="Gray" Font-Size="Medium" Font-Bold="False" ForeColor="Black" Height="23px" style="margin-left: 0px" Width="125px"></asp:TextBox>
                        ,<asp:TextBox ID="txtmstream" runat="server" Enabled="False" BorderStyle="None" BackColor="Gray" Font-Size="Medium" Font-Bold="False" ForeColor="Black" Width="137px"></asp:TextBox>
&nbsp;with<asp:TextBox ID="txtmbatch" runat="server" BorderStyle="None" Enabled="False" BackColor="Gray" Font-Size="Medium" Font-Bold="False" ForeColor="Black" Width="148px" ></asp:TextBox>
&nbsp;batch</td>
                </tr>
                <tr>
                    <td>Currently employed at <asp:TextBox ID="txtmemployed" runat="server" BorderStyle="None" Enabled="False" BackColor="Gray" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Write me at
                        <asp:TextBox ID="txtmemail" runat="server" BorderStyle="None" Enabled="False" BackColor="Gray" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>More about me<br />
                        <br />
                        <asp:TextBox ID="txtmaboutme" runat="server" TextMode="MultiLine" BorderStyle="None" Height="116px" Width="394px" ReadOnly="True" BackColor="Gray" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnmedit" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Edit" Width="129px" OnClick="btnmedit_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnmupdate" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Update" Width="129px" Visible="False" OnClick="btnmupdate_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnmcancel" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Cancel" Width="129px" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
        <td style="text-align: center">
            <asp:DataList ID="DataListmypr" runat="server" DataSourceID="StatusID" CellPadding="4" GridLines="Horizontal" Width="256px">
                <ItemTemplate>
                    Status:<br /> &nbsp;<asp:Label ID="StatusValueLabel" runat="server" Text='<%# Eval("StatusValue") %>' />
                    <br />
                    <asp:Label ID="StatusTimeLabel" runat="server" Text='<%# Eval("StatusTime") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="StatusID" runat="server" ConnectionString="<%$ ConnectionStrings:alumniConnectionString5 %>" SelectCommand="SELECT [StatusValue], [StatusTime] FROM [Status] WHERE ([StatusName] = @StatusName) ORDER BY [StatusTime] DESC">
                <SelectParameters>
                    <asp:SessionParameter Name="StatusName" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </td>
    </tr>
    </table>
</asp:Content>

