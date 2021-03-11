<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Assignment_1.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1239px;
            height: 240px;
        }
        .auto-style58 {
            height: 37px;
            text-align: center;
        }
        .auto-style61 {
            text-decoration: underline;
        }
        .auto-style62 {
            height: 36px;
            text-align: center;
            color: #CC0000;
            width: 177px;
        }
        .auto-style65 {
            height: 37px;
        }
        .auto-style71 {
            height: 36px;
        }
        .auto-style82 {
            text-align: center;
            text-decoration: underline;
            height: 36px;
        }
        .auto-style83 {
            height: 36px;
            text-align: center;
            width: 176px;
        }
        .auto-style84 {
            text-align: center;
            height: 36px;
            width: 177px;
        }
        .auto-style85 {
            height: 36px;
            text-align: center;
        }
        .auto-style86 {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style82" colspan="7">Welcome To ABC Event Tracker 2020</td>
                </tr>
                <tr>
                    <td class="auto-style85" colspan="7">Please use: <a class="auto-style86" href="mailto:admin@isp.net">admin@isp.net</a> and admin&nbsp;&nbsp; if you are admin (only admin account applies attendance tracker)<br />
                        OR test and test&nbsp; if you are an Event Register</td>
                </tr>
                <tr>
                    <td class="auto-style82" colspan="7">
                        <asp:CustomValidator ID="validateUsernamePassword" runat="server" ErrorMessage="Invalid Username or Password" ForeColor="#CC0000" OnServerValidate="validateUsernamePassword_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style83">&nbsp;</td>
                    <td class="auto-style83">&nbsp;</td>
                    <td class="auto-style84">Username:</td>
                    <td class="auto-style84">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style84">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="* Mandotroy Field!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style84">
                        &nbsp;</td>
                    <td class="auto-style62">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style83">&nbsp;</td>
                    <td class="auto-style83">&nbsp;</td>
                    <td class="auto-style84">Password:</td>
                    <td class="auto-style84">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style84">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="* Mandotory Field!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style84">
                        &nbsp;</td>
                    <td class="auto-style84">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style83">&nbsp;</td>
                    <td class="auto-style83">&nbsp;</td>
                    <td class="auto-style85">&nbsp;</td>
                    <td class="auto-style84">&nbsp;</td>
                    <td class="auto-style84">&nbsp;</td>
                    <td class="auto-style84">&nbsp;</td>
                    <td class="auto-style84">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style83">&nbsp;</td>
                    <td class="auto-style83">&nbsp;</td>
                    <td class="auto-style85">
                        <asp:Button ID="login" runat="server" OnClick="login_Click" Text="Login" />
                    </td>
                    <td class="auto-style84">
                        <asp:Button ID="register" runat="server" OnClick="register_Click" Text="Register" CausesValidation="False" />
                    </td>
                    <td class="auto-style84">&nbsp;</td>
                    <td class="auto-style84">&nbsp;</td>
                    <td class="auto-style84">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71" colspan="7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style58" colspan="7">
                        <asp:HyperLink ID="forgetpass" runat="server" CssClass="auto-style61" NavigateUrl="~/passreset.aspx">Forgot Your Password?</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style65" colspan="7">&nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
                        
</body>
</html>
