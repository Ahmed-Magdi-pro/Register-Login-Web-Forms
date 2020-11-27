<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="EFDay1.Department" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 720px;
        }
        .auto-style3 {
            width: 295px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Departments:</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddl_dept" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td >
                        <asp:Button ID="btn_del" runat="server" Text="Delete" style="background:red;" OnClick="btn_del_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">ID:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Name:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Loc:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_loc" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btn_add" runat="server" Text="Add" OnClick="btn_add_Click" />
                        <asp:Button ID="btn_edit" runat="server" Text="Edit" OnClick="btn_edit_Click" />
                        <asp:Button ID="btn_update" runat="server" Text="Update" OnClick="btn_update_Click" />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
