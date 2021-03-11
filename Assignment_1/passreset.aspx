<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passreset.aspx.cs" Inherits="Assignment_1.passreset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1243px;
            height: 159px;
        }
        .auto-style10 {
            text-align: center;
            height: 32px;
        }
        .auto-style12 {
            text-align: center;
            width: 249px;
            height: 32px;
        }
        .auto-style16 {
            text-align: center;
            height: 31px;
        }
        .auto-style17 {
            text-align: center;
            width: 248px;
            height: 32px;
        }
        .auto-style18 {
            text-align: left;
            height: 32px;
        }
        .auto-style19 {
            direction: ltr;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style16" colspan="5">Password Reset</td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="5">Please enter your email addrerss to request a password reset</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style17">Email Address</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style18" colspan="2">
                        <asp:RegularExpressionValidator ID="RglValEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Please enter valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" style="width: 50px" Text="Reset" />
                    </td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <p class="auto-style19">
        &nbsp;</p>
</body>
</html>
