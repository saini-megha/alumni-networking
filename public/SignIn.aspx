<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 41px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            height: 46px;
        }
        .auto-style9 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="background-position: -6cm; background-image: url('Image/123s4.jpeg'); background-repeat: repeat; width: 1128px;">
        <tr>
            <td colspan="3" style="text-align: center; font-size: xx-large;" class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblerror" runat="server" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: right; font-size: xx-large;">Log In&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtlogin" runat="server" Height="35px" style="margin-left: 0px" Width="228px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: right; font-size: xx-large;">Password&nbsp;&nbsp;
                <asp:TextBox ID="txtloginpass" runat="server" Height="35px" Width="228px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" style="text-align: center"></td>
            <td class="auto-style8" style="text-align: right">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:CheckBox ID="chckboxremember" runat="server" Text="Remember me" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="btnSignIndone" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Freeze it?" Width="129px" OnClick="btnSignIndone_Click" />
            </td>
            <td class="auto-style8" style="text-align: center">&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="3" style="text-align: right">Not a member?&nbsp;
                <asp:HyperLink ID="hypersignIn" runat="server" BorderColor="Red" NavigateUrl="~/SignUpp.aspx" ForeColor="#993333">Sign Up</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="3" style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

