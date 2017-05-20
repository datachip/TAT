<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmFiles.aspx.cs" Inherits="TAT.frmFiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Button ID="cmdUpload" runat="server" Text="Upload" OnClick="cmdUpload_Click" />
    </div>
    </form>
</body>
</html>
