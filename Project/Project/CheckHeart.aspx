<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckHeart.aspx.cs" Inherits="CheckHeart" %>

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
         .auto-style1 {
             height: 23px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Results :" style="font-size: x-large"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="" style="font-size: x-large"></asp:Label>
        </asp:Panel>
    <br />
    <table style="border: 1px solid #C0C0C0; background-image: url('Images/bg.jpg'); " 
        width="60%" class="intLog">
        <tr>
            <td colspan="3" 
                style="background-image: url('Images/blurred.jpg')" 
                align="center" class="intLog" bgcolor="#CC3300">
                <asp:Label ID="Label3" runat="server" style="font-family: calibri; font-size: xx-large; color: #FFFFFF;" Text="-- Check your Heart --"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="right" style="color: #FF0000; font-size: small">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" align="center" style="color: #FF0000; font-size: small">
                * Kindly fill up all the details given below<br />
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td width="33%" align="left" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td align="left">
                <asp:TextBox ID="TextBox14" runat="server" CssClass="style12" 
                    placeholder="  Chest Pain Type" required="Required" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" align="left" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td width="33%" align="left" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                </td>
            <td class="style9" align="left" >
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style12" 
                    placeholder="  Fasting Blood Sugar" required="Required" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" align="left" class="style14">
                 &nbsp;</td>
        </tr>

        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>

        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="style12" 
                    placeholder="  Resting Electrographic" required="Required" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="style12" 
                    placeholder="  Exercise Induced Angina" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="style12" 
                    placeholder="  Slope" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="style12" 
                    placeholder="  No. of Major Vessels(CA) " required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" CssClass="style12" 
                    placeholder="  Thal" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" CssClass="style12" 
                    placeholder="  Trest Blood Pressure" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" CssClass="style12" 
                    placeholder="  Serum Cholesterol" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" CssClass="style12" 
                    placeholder="  Maximum Heart Rate achieved(Thalach)" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server" CssClass="style12" 
                    placeholder="  ST Depression Induced by Exercise(Oldpeak)" required="Required" TextMode="SingleLine" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style1">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
               
                <asp:Button ID="btnAnalyse" runat="server" Text="Analyse Heart" CssClass="style10" 
                    Height="38px" Width="200px" Font-Size="X-Large" ForeColor="#333333" 
                    BorderColor="#009933" OnClick="btnAnalyse_Click"/>
        </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblAge" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblSex" runat="server" Visible="False"></asp:Label>
            </td>
            <td width="20%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
