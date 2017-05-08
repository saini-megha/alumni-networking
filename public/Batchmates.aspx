<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Batchmates.aspx.cs" Inherits="Batchmates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 42px;
        }
        .auto-style7 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="username" DataSourceID="AlumniID" RepeatColumns="2" OnItemCommand="DataList1_ItemCommand" style="color: #CCFFFF; background-color: #333333; width: 100%" BackColor="Gray" ForeColor="Black">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6" rowspan="2">
                        <asp:Image ID="Imagebatch" runat="server" Height="163px" ImageUrl='<%# Eval("imageurl") %>' Width="169px" />
                    </td>
                    <td class="auto-style7">
                        <asp:LinkButton ID="lblbatchmatename" runat="server" CommandArgument='<%# Bind("username") %>' CommandName="profile" OnClick="lblbatchmatename_Click" Text='<%# Bind("name") %>'></asp:LinkButton>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="StreamLabel" runat="server" Text='<%# Bind("Stream") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="AlumniID" runat="server" ConnectionString="<%$ ConnectionStrings:alumniConnectionString %>" SelectCommand="SELECT * FROM [member] WHERE ([Batch] = @Batch)">
        <SelectParameters>
            <asp:SessionParameter Name="Batch" SessionField="batch" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

