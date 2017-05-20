<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDepartments.ascx.cs" Inherits="TAT.ucDepartments" %>

<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Department ID"></asp:Label>
        </td>

        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Department Name"></asp:Label>
        </td>

        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td>
            <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
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