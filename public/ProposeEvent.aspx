<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="ProposeEvent.aspx.cs" Inherits="ProposeEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1" style="color: #000000; background-color: #808080; width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">Name of Event:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="txtEvname" runat="server" Height="30px" Width="207px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEvname" ErrorMessage="Name Required" Font-Italic="False" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Select category:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:DropDownList ID="ddcategory" runat="server" Font-Size="Medium" Height="39px" Width="211px">
                    <asp:ListItem Selected="True">--Select Category--</asp:ListItem>
                    <asp:ListItem>Cultural</asp:ListItem>
                    <asp:ListItem>Casual</asp:ListItem>
                    <asp:ListItem>Professional</asp:ListItem>
                    <asp:ListItem>Annual</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEvname" ErrorMessage="Choose Category" Font-Italic="False" Font-Size="Medium" InitialValue="--Select Category--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">About Event:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="txtaboutevent" runat="server" Height="79px" TextMode="MultiLine" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Date of event:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="txtedate" runat="server" Height="30px" style="margin-bottom: 0px" Width="204px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtedate" ErrorMessage="Date Required" Font-Italic="False" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Time of event:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="txtetime" runat="server" Height="30px" style="margin-bottom: 0px" Width="204px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtetime" ErrorMessage="Time Required" Font-Italic="False" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">Proposed Venue:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="txtevenue" runat="server" Height="30px" style="margin-bottom: 0px; margin-right: 0px;" Width="204px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtevenue" ErrorMessage="Venue Required" Font-Italic="False" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnPropose" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Freeze it?" Width="129px" OnClick="btnPropose_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

