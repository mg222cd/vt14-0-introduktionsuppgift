<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Defualt.aspx.cs" Inherits="MyValuableCalculator.Defualt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Min värdefulla kalkylator</title>
    <link href="~/Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation-summary-errors" />
        <asp:TextBox ID="Op1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Op1 kan inte vara tom." ControlToValidate="Op1" Display="Dynamic" CssClass="field-validation-error">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Op1 måste innehålla ett heltal." ControlToValidate="Op1" Display="Dynamic" Operator="DataTypeCheck" Type="Integer" CssClass="field-validation-error">*</asp:CompareValidator>
        +
        <asp:TextBox ID="Op2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Op1 kan inte vara tom." ControlToValidate="Op2" Display="Dynamic" CssClass="field-validation-error">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Op2 måste innehålla ett heltal." ControlToValidate="Op2" Display="Dynamic" Operator="DataTypeCheck" Type="Integer" CssClass="field-validation-error">*</asp:CompareValidator>
        <asp:Button ID="Compute" runat="server" Text="=" OnClick="Compute_Click" />
        <asp:Label ID="Result" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
