<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="EFDay1.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>Welcome:</td>
                    <td>
                        <asp:Label ID="lbl_name" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btn_edit" runat="server" OnClick="btn_edit_Click" Text="Edit" />
                    </td>
                </tr>
                <tr>
                    <td>your Department:</td>
                    <td>
                        <asp:Label ID="lbl_dept" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>age:</td>
                    <td>
                        <asp:Label ID="lbl_age" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>u email:</td>
                    <td>
                        <asp:Label ID="lbl_email" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>your CV:</td>
                    <td>
                        <asp:HyperLink ID="hycv" runat="server">[hycv]</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td rowspan="3">
                        <asp:Image ID="profile_img" runat="server" Height="188px" Width="176px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
