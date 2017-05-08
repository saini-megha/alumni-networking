<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="SignUpp.aspx.cs" Inherits="SignUpp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style6 {
            height: 48px;
        }
        .auto-style7 {
            height: 47px;
        }
        .auto-style8 {
            height: 41px;
        }
        .auto-style10 {
            height: 40px;
        }
    </style>
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
           
        <asp:View ID="View1" runat="server">
            <table align="center" class="auto-style1" style="color: #000000; background-color: #808080; width: 100%;">
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td>Admission number :</td>
            <td>
                <asp:TextBox ID="txtAdNo" runat="server" Height="26px" Width="283px"></asp:TextBox>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Full Name:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtfname" runat="server" Height="26px" Width="283px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="Name Required" Font-Italic="False" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Nickname:</td>
            <td>
                <asp:TextBox ID="txtnick" runat="server" Height="26px" Width="283px"></asp:TextBox>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>Gender: </td>
            <td style="text-align: left">
                <asp:RadioButton ID="radioMale" runat="server" GroupName="gender" Text="Male" />
&nbsp;<asp:RadioButton ID="radioFemale" runat="server" GroupName="gender" Text="Female" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>Date Of Birth:</td>
            <td style="vertical-align: -81%">
                <asp:TextBox ID="txtdob" runat="server" Height="31px" Width="282px"></asp:TextBox>
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="ImageButton1" PopupPosition="BottomRight" TargetControlID="txtdob"></asp:CalendarExtender>
              
                <asp:ImageButton ID="ImageButton1" runat="server" Height="34px" ImageUrl="~/Image/images (6).jpg" Width="36px" />
            </td>
        </tr>
        <tr>
            <td>Current Country:</td>
            <td>
                <asp:TextBox ID="txtcountry" runat="server" Height="26px" Width="283px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Current State:</td>
            <td>
                <asp:TextBox ID="txtstate" runat="server" Height="26px" Width="283px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Current City:</td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" Height="26px" Width="283px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mobile Number:</td>
            <td>
                <asp:TextBox ID="txtmob" runat="server" Height="26px" Width="283px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" ErrorMessage="Not a valid Number" Font-Size="Medium" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>E-mail ID:</td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Height="26px" Width="283px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtid" ErrorMessage="Not a valid Email ID" Font-Size="Medium" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Course: </td>
            <td>
                <asp:TextBox ID="txtcourse" runat="server" Height="26px" Width="283px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Year Of Passing:</td>
            <td>
                <asp:TextBox ID="txtpassing" runat="server" Height="26px" Width="283px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>Batch:</td>
            <td>
                <asp:TextBox ID="txtbatch" runat="server" Height="26px" Width="283px"></asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtbatch" WatermarkText="Ex. 2012-2016" WatermarkCssClass="auto-style5"></asp:TextBoxWatermarkExtender>
                
            </td>
        </tr>
        <tr>
            <td>Stream:</td>
            <td>
                <asp:TextBox ID="txtstream" runat="server" Height="26px" Width="283px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Currently Employed:</td>
            <td>
                <asp:RadioButtonList ID="rbemployes" runat="server" RepeatDirection="Horizontal" Width="50%" AutoPostBack="True" OnSelectedIndexChanged="rbemployes_SelectedIndexChanged">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Lblwhere" runat="server" Text="Where?" Visible="False"></asp:Label>
&nbsp;</td>
            <td>
                <asp:TextBox ID="txtwhere" runat="server" Height="26px" Width="283px" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblnotunique" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Username:</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Height="26px" Width="283px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtusername" ErrorMessage="Name Required" Font-Italic="False" Font-Size="Medium"></asp:RequiredFieldValidator>
                &nbsp;</td>
           
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="txtpassw" runat="server" Height="26px" TextMode="Password" Width="283px"></asp:TextBox>                
                &nbsp;&nbsp;&nbsp;
                <%--<asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtpassw" MinimumNumericCharacters="1" PreferredPasswordLength="12" MinimumUpperCaseCharacters="1" TextStrengthDescriptions="Poor;Okay;Good;Excellent" StrengthIndicatorType="Text"></asp:PasswordStrength>--%>
                <asp:PasswordStrength ID="PasswordStrength1"
        
        TargetControlID="txtpassw"
        PreferredPasswordLength="10"
        MinimumLowerCaseCharacters="1"
        MinimumNumericCharacters="1"
        MinimumSymbolCharacters="1"
        MinimumUpperCaseCharacters="1"
        PrefixText="Your Password Strength is:"
       TextStrengthDescriptions="Poor;Average;Good"
       StrengthIndicatorType="Text"
       
         runat="server">
        </asp:PasswordStrength>


            </td>
        </tr>
        <tr>
            <td class="auto-style6">Re-Enter Password:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtrepassw" runat="server" Height="26px" TextMode="Password" Width="283px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassw" ControlToValidate="txtrepassw" ErrorMessage="Password Mismatch" Font-Size="Medium" SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnsigncancel" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Cancel" Width="129px" CausesValidation="False" OnClick="btnsigncancel_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsignnext" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnsignnext_Click" Text="Next" Width="129px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
  
        </asp:View>
        <br />
        <asp:View ID="View2" runat="server">
            <table align="center" class="auto-style1" style="background-color: #808080">
        <tr>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">About me: </td>
            <td style="text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtaboutme" runat="server" Height="102px" TextMode="MultiLine" Width="313px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style7" style="text-align: right">Upload Profile Picture:</td>
            <td class="auto-style7">
                <asp:FileUpload ID="uploadpp" runat="server" Font-Size="Medium" Height="42px" Width="318px" ForeColor="#006699" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnuploadpp0" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Upload" Width="129px" OnClick="btnuploadpp0_Click" />
                &nbsp;&nbsp;
            </td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnsign2back" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Back" Width="129px" OnClick="btnsign2back_Click" />
                &nbsp;
            </td>
            <td class="auto-style6" style="text-align: right">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style6" style="text-align: left; vertical-align: text-top;">
                <asp:Button ID="btnsign2done0" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnsign2done_Click" style="margin-top: 26px" Text="Freeze it?" Width="129px" />
                <br />
                <br />
            </td>
            <td style="text-align: right">
                <asp:Button ID="btnsign2skip" runat="server" BackColor="#006699" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Skip" Width="129px" OnClick="btnsign2skip_Click" />
            </td>
        </tr>
    </table>
            
        </asp:View>
        <br />
        <br />
    </asp:MultiView>
</asp:Content>

