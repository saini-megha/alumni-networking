<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="AllEvents.aspx.cs" Inherits="AllEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Eid" DataSourceID="EventsID" style="margin-right: 0px" ForeColor="Black" BackColor="Gray" BorderColor="Black" BorderWidth="2mm" CellPadding="35" CellSpacing="20" GridLines="Both" RepeatColumns="2" Width="100%">
    <ItemTemplate>
        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="EnameLabel" runat="server" Text='<%# Eval("Ename") %>' />
        <br />
        Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="EcategoryLabel" runat="server" Text='<%# Eval("Ecategory") %>' />
        <br />
        About event:&nbsp;&nbsp;&nbsp;
        <asp:Label ID="EaboutLabel" runat="server" Text='<%# Eval("Eabout") %>' />
        <br />
        Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="EdateLabel" runat="server" Text='<%# Eval("Edate") %>' />
        <br />
        Time:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="EtimeLabel" runat="server" Text='<%# Eval("Etime") %>' />
        <br />
        Venue:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="EvenueLabel" runat="server" Text='<%# Eval("Evenue") %>' />
        <br />
        Created By:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="EuserLabel" runat="server" Text='<%# Eval("Euser") %>' />
        <br />
<br />
    </ItemTemplate>
        <SeparatorStyle BackColor="Black" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
</asp:DataList>
<asp:SqlDataSource ID="EventsID" runat="server" ConnectionString="<%$ ConnectionStrings:alumniConnectionString2 %>" SelectCommand="SELECT * FROM [Events]"></asp:SqlDataSource>
</asp:Content>

