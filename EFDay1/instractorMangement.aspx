<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="instractorMangement.aspx.cs" Inherits="EFDay1.instractorMangement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            width: 402px;
        }
        .auto-style4 {
            height: 29px;
            width: 402px;
        }
        .auto-style5 {
            width: 283px;
        }
        .auto-style6 {
            height: 29px;
            width: 283px;
        }
    </style>
</head>
<body style="background-color:aquamarine;">
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">name:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txt_editid"  runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_edit" runat="server" Text="Edit" Width="100px" OnClick="btn_edit_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">age:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_update" runat="server" Text="Update" Width="100px" OnClick="btn_update_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">E-mail:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    &nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbl_update" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">confirm_pass:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Department:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddl_dept" runat="server" AutoPostBack="True" Width="130px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">photo:</td>
                    <td class="auto-style5">
                        <asp:FileUpload ID="photo_upload" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Image ID="profile_img" runat="server" Height="174px" Width="179px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">CV:</td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="hl_cv" runat="server">Download CV from Here</asp:HyperLink>
                    </td>
                    <td>
                        <asp:FileUpload ID="cv_upload" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btn_add" runat="server" Text="Add" Width="100px" OnClick="btn_add_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="gv_inst" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="331px">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txt_del_id" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btn_del_id" style="background-color:red;" runat="server" Text="Delete" Width="100px" OnClick="btn_del_id_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbl_delStauts" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
