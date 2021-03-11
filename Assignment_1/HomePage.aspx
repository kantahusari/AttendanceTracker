<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Assignment_1.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1211px;
            height: 193px;
        }
        .auto-style7 {
            width: 237px;
            height: 22px;
        }
        .auto-style8 {
            height: 44px;
        }
        .auto-style9 {
            width: 201px;
            height: 29px;
        }
        .auto-style10 {
            width: 202px;
            height: 29px;
        }
        .auto-style11 {
            width: 237px;
            height: 29px;
        }
        .auto-style13 {
            width: 201px;
            height: 22px;
        }
        .auto-style14 {
            width: 202px;
            height: 22px;
        }
        .auto-style17 {
            width: 121px;
            height: 29px;
        }
        .auto-style18 {
            width: 121px;
            height: 22px;
        }
        .auto-style19 {
            width: 121px;
            height: 29px;
            text-align: right;
        }
        .auto-style20 {
            width: 1211px;
        }
        .auto-style30 {
            width: 1514px;
            height: 22px;
        }
        .auto-style47 {
            width: 302px;
        }
        .auto-style50 {
            height: 44px;
            width: 303px;
        }
        .auto-style51 {
            width: 134px;
            height: 29px;
            direction: ltr;
        }
        .auto-style59 {
            width: 134px;
            height: 29px;
        }
        .auto-style60 {
            width: 134px;
        }
        .auto-style61 {
            width: 135px;
        }
        .auto-style65 {
            width: 135px;
            text-align: center;
        }
        .auto-style66 {
            width: 134px;
            text-align: center;
        }
        .auto-style68 {
            height: 29px;
            text-align: left;
        }
        .auto-style69 {
            height: 29px;
        }
        .auto-style72 {
            width: 134px;
            height: 29px;
            text-align: center;
        }
        .auto-style73 {
            height: 78px;
        }
        .auto-style74 {
            text-align: center;
        }
        .auto-style75 {
            width: 202px;
            height: 29px;
            direction: ltr;
        }
        .auto-style76 {
            width: 121px;
            height: 22px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="btnlogout_Click" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label2" runat="server" Text="Hello :  "></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Button ID="Tab1" runat="server" Text="Attendance Register" OnClick="Tab1_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Tab2" runat="server" Text="Attendance Schemes" OnClick="Tab2_Click1" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Atracker" runat="server" CausesValidation="False" Text="Attendance Tracker" OnClick="Atracker_Click" />
                </td>
                <td class="auto-style75">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="6">
                    <asp:MultiView ID="Mainview" runat="server">
                        <asp:View ID="View1" runat="server">
                        <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
            <tr>
                <td>
                    <asp:Button ID="NewRegister" runat="server" Text="New Register" OnClick="NewRegister_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">What is Attendance Register?</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        </table>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                        <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
            <tr>
                <td>
                    <asp:Button ID="NewScheme" runat="server" Text="New Scheme" OnClick="NewScheme_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="whatare" runat="server" OnClick="whatare_Click">What are attendance schemes?</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style73"></td>
                <td class="auto-style73"></td>
                <td class="auto-style73"></td>
                <td class="auto-style73"></td>
                <td class="auto-style73"></td>
                <td class="auto-style73"></td>
            </tr>
        </table>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                        <table style="border: 1px solid #666;" class="auto-style20">
            <tr>
                <td class="auto-style6" colspan="9">New Register.</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="9">Properties</td>
            </tr>
            <tr>
                <td class="auto-style59">_________________________________________________________________</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
            </tr>
                            <tr>
                                <td class="auto-style59">Name</td>
                                <td class="auto-style59">&nbsp;</td>
                                <td class="auto-style59">&nbsp;</td>
                                <td class="auto-style59">&nbsp;</td>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style61">&nbsp;</td>
                            </tr>
            <tr>
                <td class="auto-style59">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style59">
                    <asp:RequiredFieldValidator ID="requiredname" runat="server" ControlToValidate="name" Display="Dynamic" ErrorMessage="* Required Field" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">Description</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style60" rowspan="3">
                    <asp:TextBox ID="description" runat="server" Height="43px" Width="377px"></asp:TextBox>
                </td>
                <td class="auto-style5" rowspan="3">
                    <asp:RequiredFieldValidator ID="requireddescription" runat="server" ControlToValidate="description" ErrorMessage="* Required Field" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5" rowspan="3">&nbsp;</td>
                <td class="auto-style5" rowspan="3">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">Attendance Scheme</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">
                    <asp:DropDownList ID="drop" runat="server" Width="342px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>P</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style59">
                    <asp:RequiredFieldValidator ID="requireddrop" runat="server" ControlToValidate="drop" ErrorMessage="* Pick a Choice" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30" colspan="9">
                    _________________________________________________________________</td>
            </tr>
            <tr>
                <td class="auto-style69" colspan="9">
                    Users</td>
            </tr>
            <tr>
                <td class="auto-style59">
                    Upload File</td>
                <td class="auto-style59">
                    <asp:FileUpload ID="upload" runat="server" />
                </td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style69" colspan="4">
                    <asp:RequiredFieldValidator ID="requiredfile" runat="server" ControlToValidate="upload" ErrorMessage="* Required File" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style69" colspan="9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="9">
                                            <asp:GridView ID="Grid" runat="server" AutoGenerateColumns="False" OnRowEditing="Grid_RowEditing" Width="642px">
                            <Columns>
                                <asp:BoundField DataField="sessionid" HeaderText="Session ID" />
                                <asp:BoundField DataField="sessionname" HeaderText="Session Name" />
                                <asp:BoundField DataField="sessionsesc" HeaderText="Session Description" />
                                <asp:BoundField DataField="order" HeaderText="Order" />
                                <asp:TemplateField>
                                    <EditItemTemplate>
                                        <div class="auto-style2">
                                            <asp:LinkButton ID="update" runat="server" OnClick="OnUpdate" CausesValidation="False">Update</asp:LinkButton>
                                            <asp:LinkButton ID="cancel" runat="server" OnClick="OnCancel" CausesValidation="False">Cancel</asp:LinkButton>
                                        </div>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <div class="auto-style2">
                                            <asp:LinkButton ID="edit" runat="server" CommandName="Edit" CausesValidation="False">Edit</asp:LinkButton>
                                            <asp:LinkButton ID="delete" runat="server" OnClick="OnDelete" CausesValidation="False">Delete</asp:LinkButton>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style68" colspan="2">
                    <asp:Button ID="insert" runat="server" CausesValidation="False" OnClick="insert_Click" Text="+ Add Sessions" />
                    <asp:TextBox ID="add" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style72">&nbsp;</td>
                <td class="auto-style72">&nbsp;</td>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style66">&nbsp;</td>
                <td class="auto-style65">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style59">
                    <asp:Button ID="Save" runat="server" OnClick="Save_Click" Text="Save" />
                </td>
                <td class="auto-style60">
                    <asp:Button ID="Cancel" runat="server" OnClick="Cancel_Click" Text="Cancel" CausesValidation="False" />
                </td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
            </tr>
                        </table>
                        </asp:View>
                        <asp:View ID="View4" runat="server">
                                    <table class="auto-style1">
            <tr>
                <td colspan="4">What Are Attendance Register ?</td>
            </tr>
            <tr>
                <td colspan="4">
                    Attendance register are entries that you create to track attendance for activities in your organization or course.<br /> For example: you can create attendance registers to track attendance for mandatory session, weekly seminars or meetings
                    <br />
                    Use register to deine seesions, attendance expectations and applicable users and enter data as you complete eadch session.<br /> click a resgister name to view or make changes to its attendance data</td>
            </tr>
            <tr>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style50">
                    <asp:Button ID="close" runat="server" Text="Close" OnClick="close_Click" CausesValidation="False" />
                </td>
            </tr>
        </table>
                        </asp:View>
                        <asp:View ID="View5" runat="server">
                                    <table class="auto-style1">
            <tr>
                <td>What Are Attendance Schemes ?</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4"><span class="auto-style2" style="color: rgb(0, 0, 0); font-family: Lato, sans-serif; font-size: 16.8px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>Attendance schemes provide the criteria for marking attendance in a register. Each attendance register uses one attendance scheme, which you assign when creating a new register. The register defines the applicable users and sessions, and the attendance scheme defines the attendance statuses that you can give to users for each session.</strong></span></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="closeattscinfo" runat="server" Text="Close" OnClick="closeattscinfo_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
                        </asp:View>
                        <asp:View ID="View6" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">New Scheme</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">_______________</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">General</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="neSchemeName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="requirenewname" runat="server" ControlToValidate="neSchemeName" ErrorMessage="* Required Field" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">_______________</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Attendance Statues</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" rowspan="3">
                                            <asp:GridView ID="SGrid" runat="server" AutoGenerateColumns="False" OnRowEditing="SGrid_RowEditing" Width="642px">
                            <Columns>
<asp:BoundField DataField="statid" HeaderText="Status ID"></asp:BoundField>
                                <asp:BoundField DataField="symbol" HeaderText="Symbol" />
                                <asp:BoundField DataField="sname" HeaderText="Status Name" />
                                <asp:BoundField DataField="assigned" HeaderText="Assigned %" />
                                <asp:BoundField DataField="sorder" HeaderText="Order" />
                                <asp:TemplateField>
                                    <EditItemTemplate>
                                        <div class="auto-style74">
                                            <asp:LinkButton ID="update" runat="server" OnClick="SOnUpdate" CausesValidation="False">Update</asp:LinkButton>
                                            <asp:LinkButton ID="cancel" runat="server" OnClick="SOnCancel" CausesValidation="False">Cancel</asp:LinkButton>
                                        </div>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <div class="auto-style2">
                                            <asp:LinkButton ID="Sedit" runat="server" CommandName="Edit" CausesValidation="False" OnClick="Sedit_Click1">Edit</asp:LinkButton>
                                            <asp:LinkButton ID="Sdelete" runat="server" OnClick="SOnDelete" CausesValidation="False">Delete</asp:LinkButton>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                    </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="inserts" runat="server" CausesValidation="False" OnClick="inserts_Click" Text="+ Add Status" />
                    </td>
                <td class="auto-style5">
                    <asp:TextBox ID="addstatues" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="newSsave" runat="server" Text="Save" OnClick="newSsave_Click1" />
                    <asp:Button ID="newScancel" runat="server" CausesValidation="False" Text="Cancel" OnClick="newScancel_Click1" />
                </td>
            </tr>
        </table>
                        </asp:View>
                        <asp:View ID="View7" runat="server">
                                    <table class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="6">Attendance Tracker Users Admin Page</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style76" colspan="6">Nothing To Show !!!</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Button ID="adminSave" runat="server" Text="Save" CausesValidation="False" OnClick="adminSave_Click" />
                </td>
                <td class="auto-style17">
                    <asp:Button ID="adminCancel" runat="server" CausesValidation="False" Text="Cancel" OnClick="adminCancel_Click" />
                </td>
            </tr>
        </table>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </form>
    </body>
</html>
