<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EFDay1.Register" %>

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
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click" Text="Login" />
                    </td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td>
                        <asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Confirm-Passwod:</td>
                    <td>
                        <asp:TextBox ID="txt_confirm" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>CV:</td>
                    <td>
                        <asp:FileUpload ID="cv_upload" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Photo:</td>
                    <td>
                        <asp:FileUpload ID="photo_upload" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Department:</td>
                    <td>
                        <asp:DropDownList ID="ddl_dept" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_register" runat="server" OnClick="btn_register_Click" Text="Register" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lbl_stauts" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
