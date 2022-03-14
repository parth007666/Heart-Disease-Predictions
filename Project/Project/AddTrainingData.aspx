<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddTrainingData.aspx.cs" Inherits="AddTrainingData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .intLog
        {
    	    -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
        }
        .style9
        {
            height: 40px;
        }
     .style10
     {
         -webkit-border-radius: 10px;
         -moz-border-radius: 10px;
         font-family: Calibri;
     }
     .style11
     {
         font-family: Calibri;
         font-size: large;
            color: #333333;
            font-weight: 700;
        }
     .style12
     {
         -webkit-border-radius: 10px;
         -moz-border-radius: 10px;
         font-family: Calibri;
         font-size: large;
     }
     .style13
     {
         width: 20%;
     }
     .style14
     {
         width: 20%;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: 1px solid #C0C0C0; background-image: url('Images/bg.jpg'); " 
        width="60%" class="intLog">
        <tr>
            <td colspan="4" 
                style="background-image: url('Images/blurred.jpg')" 
                align="center" class="intLog" bgcolor="#CC3300">
                <asp:Label ID="Label3" runat="server" style="font-family: calibri; font-size: xx-large; color: #FFFFFF;" Text="-- Add Training Data --"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style12" 
                    placeholder="  Disease Name" required="Required" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style12" 
                    placeholder=" Age" required="Required" TextMode="SingleLine" 
                    Width="99%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                </td>
            <td align="center" width="20%">
                <asp:Label ID="Label4" runat="server" style="font-size: large; font-family: calibri; font-weight: 700" Text="Gender : "></asp:Label>
            </td>
            <td align="left">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" style="font-family: calibri; font-size: large" Width="100%">
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="0">Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td width="33%" align="left" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td align="left" colspan="2">
                &nbsp;</td>
            <td width="33%" align="left" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td align="left" colspan="2">
                <asp:TextBox ID="TextBox14" runat="server" CssClass="style12" 
                    placeholder="  Chest Pain Type" required="Required" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" align="left" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td align="left" colspan="2">
                &nbsp;</td>
            <td width="33%" align="left" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                </td>
            <td class="style9" align="left" colspan="2" >
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style12" 
                    placeholder="  Fasting Blood Sugar" required="Required" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" align="left" class="style14">
                 &nbsp;</td>
        </tr>

        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>

        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="style12" 
                    placeholder="  Resting Electrographic" required="Required" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="style12" 
                    placeholder="  Exercise Induced Angina" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox7" runat="server" CssClass="style12" 
                    placeholder="  Slope" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox8" runat="server" CssClass="style12" 
                    placeholder="  No. of Major Vessels(CA) " required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox9" runat="server" CssClass="style12" 
                    placeholder="  Thal" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox10" runat="server" CssClass="style12" 
                    placeholder="  Trest Blood Pressure" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox11" runat="server" CssClass="style12" 
                    placeholder="  Serum Cholesterol" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox12" runat="server" CssClass="style12" 
                    placeholder="  Maximum Heart Rate achieved(Thalach)" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox13" runat="server" CssClass="style12" 
                    placeholder="  ST Depression Induced by Exercise(Oldpeak)" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="btnSubmit" runat="server" Text="Add Data" CssClass="style10" 
                    Height="38px" Width="200px" Font-Size="X-Large" ForeColor="#333333" 
                    BorderColor="#009933" OnClick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="20%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

