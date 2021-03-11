<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Assignment_1.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1345px;
            height: 362px;
        }
        .auto-style12 {
            width: 224px;
            height: 29px;
            text-align: center;
        }
        .auto-style13 {
            text-decoration: underline;
        }
        .auto-style21 {
            height: 29px;
            text-align: left;
        }
        .auto-style22 {
            width: 224px;
            height: 30px;
            text-align: center;
        }
        .auto-style23 {
            width: 443px;
            height: 29px;
            text-align: center;
        }
        .auto-style24 {
            width: 443px;
            height: 30px;
        }
        .auto-style25 {
            width: 443px;
            height: 22px;
            text-align: center;
        }
        .auto-style26 {
            height: 22px;
            text-align: center;
        }
        .auto-style27 {
            width: 211px;
            height: 29px;
            text-align: center;
        }
        .auto-style28 {
            width: 211px;
            height: 30px;
            text-align: center;
        }
        .auto-style29 {
            width: 211px;
            height: 22px;
        }
        .auto-style30 {
            width: 124px;
            height: 29px;
            text-align: left;
        }
        .auto-style31 {
            width: 124px;
            height: 30px;
            text-align: left;
        }
        .auto-style35 {
            width: 124px;
            height: 29px;
            text-align: center;
        }
        .auto-style38 {
            width: 224px;
            height: 29px;
            text-align: left;
        }
        .auto-style39 {
            height: 30px;
            text-align: left;
        }
        .auto-style41 {
            width: 162px;
            height: 29px;
            text-align: center;
        }
        .auto-style42 {
            width: 162px;
            height: 22px;
            text-align: center;
        }
        .auto-style45 {
            width: 443px;
            height: 30px;
            text-align: center;
        }
        .auto-style46 {
            height: 22px;
            text-align: left;
        }
        .auto-style47 {
            text-align: center;
        }
        .auto-style55 {
            width: 1335px;
        }
        .auto-style60 {
            width: 266px;
            text-align: center;
        }
        .auto-style61 {
            width: 267px;
            text-align: center;
            direction: ltr;
        }
        .auto-style62 {
            width: 266px;
            text-align: center;
            direction: ltr;
        }
        .auto-style63 {
            text-align: center;
            direction: ltr;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style26" colspan="6">Regesration Page</td>
                </tr>
                <tr>
                    <td class="auto-style26" colspan="6">
                        <asp:CustomValidator ID="mandotoryFieldIsValid" runat="server" CssClass="auto-style13" ErrorMessage="One or more of the fields are empty" OnServerValidate="mandotoryFieldIsValid_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style27">First Name : *</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style41">Last Name : *</td>
                    <td class="auto-style38">
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style27">Address : *</td>
                    <td class="auto-style21" colspan="3">
                        <asp:TextBox ID="txtAddress" runat="server" Width="615px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style27">Email : *</td>
                    <td class="auto-style21" colspan="2">
                        <asp:TextBox ID="txtEmail" runat="server" Width="433px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="* Not a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24"></td>
                    <td class="auto-style28">Password : *</td>
                    <td class="auto-style31">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style39" colspan="3">
                        <asp:CustomValidator ID="passwordLengthIsValid" runat="server" ErrorMessage="* Password must be between 6 - 12 characters long" ForeColor="Red" OnServerValidate="passwordLengthIsValid_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style45">&nbsp;</td>
                    <td class="auto-style28">Confirm Password : *</td>
                    <td class="auto-style31">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style39" colspan="2">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="* Password Does Not Match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26" colspan="6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style29">
                        <asp:CheckBox ID="cbTerms" runat="server" Text="  I Agree to The" />
                    </td>
                    <td class="auto-style42">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">Terms Of Service</asp:LinkButton>
                    </td>
                    <td class="auto-style46" colspan="3">
                        <asp:CustomValidator ID="termsIsValid" runat="server" ErrorMessage="* You must agree to the terms of service" ForeColor="Red" OnServerValidate="termsIsValid_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" colspan="6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style35">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit Request" OnClick="submit_Click" />
                    </td>
                    <td class="auto-style41">
                        <asp:Button ID="cancel" runat="server" OnClick="cancel_Click" Text="Cancel" />
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style47" colspan="6">
                        <asp:MultiView ID="Mainview" runat="server">
                            <asp:View ID="View1" runat="server">
                            
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                            <table class="auto-style55">
                <tr>
                    <td class="auto-style62">&nbsp;</td>
                    <td class="auto-style62">Terms Of Service</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style63">
                        &nbsp;</td>
                    <td class="auto-style63" colspan="4">
                        <asp:Panel ID="Panel1" runat="server" Height="159px" ScrollBars="Vertical" Width="879px">
                            Terms and Conditions for Company Name Introduction These Website Standard Terms and Conditions written on this webpage shall manage your use of our website, Webiste Name accessible at Website.com. These Terms will be applied fully and affect to your use of this Website. By using this Website, you agreed to accept all terms and conditions written in here. You must not use this Website if you disagree with any of these Website Standard Terms and Conditions. Minors or people below 18 years old are not allowed to use this Website. Intellectual Property Rights Other than the content you own, under these Terms, Company Name and/or its licensors own all the intellectual property rights and materials contained in this Website. You are granted limited license only for purposes of viewing the material contained on this Website. Restrictions You are specifically restricted from all of the following: publishing any Website material in any other media; selling, sublicensing and/or otherwise 
                            commercializing any Website material; publicly performing and/or showing any Website material; using this Website in any way that is or may be damaging to this Website; using this Website in any way that impacts user access to this Website; using this Website contrary to applicable laws and regulations, or in any way may cause harm to the Website, or to any person or business entity; engaging in any data mining, data harvesting, data extracting or any other similar activity in relation to this Website; using this Website to engage in any advertising or marketing. Certain areas of this Website are restricted from being access by you and Company Name may further restrict access by you to any areas of this Website, at any time, in absolute discretion. Any user ID and password you may have for this Website are confidential and you must maintain confidentiality as well. Your Content In these Website Standard Terms and Conditions, “Your Content” shall mean any audio, video text, images or 
                            other material you choose to display on this Website. By displaying Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media. Your Content must be your own and must not be invading any third-party&#39;s rights. Company Name reserves the right to remove any of Your Content from this Website at any time without notice. No warranties This Website is provided “as is,” with all faults, and Company Name express no representations or warranties, of any kind related to this Website or the materials contained on this Website. Also, nothing contained on this Website shall be interpreted as advising you. Limitation of liability In no event shall Company Name, nor any of its officers, directors and employees, shall be held liable for anything arising out of or in any way connected with your use of this Website whether such liability is under contract. Company Name, including 
                            its officers, directors and employees shall not be held liable for any indirect, consequential or special liability arising out of or in any way related to your use of this Website. Indemnification You hereby indemnify to the fullest extent Company Name from and against any and/or all liabilities, costs, demands, causes of action, damages and expenses arising in any way related to your breach of any of the provisions of these Terms. Severability If any provision of these Terms is found to be invalid under any applicable law, such provisions shall be deleted without affecting the remaining provisions herein. Variation of Terms Company Name is permitted to revise these Terms at any time as it sees fit, and by using this Website you are expected to review these Terms on a regular basis. Assignment The Company Name is allowed to assign, transfer, and subcontract its rights and/or obligations under these Terms without any notification. However, you are not allowed to assign, transfer, or 
                            subcontract any of your rights and/or obligations under these Terms. Entire Agreement These Terms constitute the entire agreement between Company Name and you in relation to your use of this Website, and supersede all prior agreements and understandings. Governing Law &amp; Jurisdiction These Terms will be governed by and interpreted in accordance with the laws of the State of Country, and you submit to the non-exclusive jurisdiction of the state and federal courts located in Country for the resolution of any disputes.
                        </asp:Panel>
                    </td>
                </tr>
                                                <tr>
                                                    <td class="auto-style62">&nbsp;</td>
                                                    <td class="auto-style62">&nbsp;</td>
                                                    <td class="auto-style61">&nbsp;</td>
                                                    <td class="auto-style61">&nbsp;</td>
                                                    <td class="auto-style61">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style62">
                                                        &nbsp;</td>
                                                    <td class="auto-style60">
                                                        <asp:Button ID="close" runat="server" CausesValidation="False" OnClick="close_Click" Text="Close" />
                                                    </td>
                                                    <td class="auto-style61">&nbsp;</td>
                                                    <td class="auto-style61">&nbsp;</td>
                                                    <td class="auto-style61">&nbsp;</td>
                                                </tr>
            </table>
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
                </table>
        </div>
    </form>
    </body>
</html>
