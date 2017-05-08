<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
       table
       {
            color:chocolate; font-size:x-large;font-family:Candara;
       }
       .auto-style5 {}
       .auto-style6 {
        height: 35px;
    }
       </style>
    <table class="auto-style1" style="color: #000000; background-color: #808080; width: 100%;" >
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">Enter Your Email Id:&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="txtConId" runat="server" Width="292px" Height="32px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="text-align: right; vertical-align: top;">Enter Your Query:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style5" style="vertical-align: top; text-align: left">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="292px" Height="107px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="text-align: right"></td>
            <td class="auto-style6" style="vertical-align: top; text-align: left">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnQuery" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Freeze it?" Width="129px" OnClick="btnQuery_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;



            </td>

        </tr>
    </table>
</asp:Content>

