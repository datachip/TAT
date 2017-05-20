<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="userControlUsers.ascx.cs" Inherits="TAT.userControlUsers" %>

<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="User ID"></asp:Label>
        </td>

        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
        </td>

        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
        </td>

        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="SAVE" />
        </td>
    </tr>
</table>
