<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type ="text/javascript">
        function show()
        {
           // confirm("Are you sure?");
            var showval = document.createElement("Input");
            showval.type = "hidden";
            showval.name = "showval";
            if (confirm("Do you want to save data")) {
                showval.value = "Yes";
            }
            else
            {
                showval.value = "No";
            }
            document.forms[0].appendChild(showval);
        }
    </script>
    <style type="text/css">
        .auto-style6 {}
        .auto-style7 {
        }
        .auto-style11 {
            height: 189px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
       <table class="auto-style1" style="color: #000000; background-color: #808080; width: 100%;" >
        <tr>
            <td style="text-align: center" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td style="border: medium solid #000000; color: #000000;" class="auto-style6" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Publish Here:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtpublish" runat="server" Height="59px" TextMode="MultiLine" Width="457px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnPublish" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Publish" Width="129px" OnClick="btnPublish_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Magazine</td>
            <td>Most Popular :</td>
        </tr>
        <tr>
            <td style="color: #000000" rowspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PublishID" DataSourceID="MagazineID" ForeColor="Black" GridLines="Vertical" AllowSorting="True" PageSize="7" Width="100%" BorderStyle="Solid" BorderWidth="7px" EnableTheming="True" style="margin-right: 3px; margin-top: 0px" BorderColor="Black">
                    <Columns>
                        <asp:BoundField DataField="Publisher" HeaderText="Published by" SortExpression="Publisher" />
                        <asp:BoundField DataField="PublishItem" SortExpression="PublishItem" />
                        <asp:BoundField DataField="PublishTime" HeaderText="Published at" SortExpression="PublishTime" />
                    </Columns>
                    <HeaderStyle Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="MagazineID" runat="server" ConnectionString="<%$ ConnectionStrings:alumniConnectionString3 %>" SelectCommand="SELECT * FROM [Magazine] ORDER BY [PublishTime] DESC"></asp:SqlDataSource>
            </td>
            
            <td class="auto-style11" style="border: thick solid #000000">
                <marquee direction="UP" scrollamount="3" scrolldelay="100">
                                     <asp:DataList ID="DataListpopular" runat="server" DataKeyField="username" DataSourceID="PopularID" OnItemCommand="DataListpopular_ItemCommand" ForeColor="White">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="155px" ImageUrl='<%# Bind("imageurl") %>' Width="128px" />
&nbsp;<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                        <br />
                        Profile views
                        <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList></marquee>
                
          
                <asp:SqlDataSource ID="PopularID" runat="server" ConnectionString="<%$ ConnectionStrings:alumniConnectionString10 %>" SelectCommand="SELECT top(5) [imageurl], [status], [name], [username] FROM [member] ORDER BY [status] DESC, [name]"></asp:SqlDataSource>
            </td>
                
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

