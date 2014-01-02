<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyValuableCalculator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Min värdefulla kalkylator</title>
    <link href="~/Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Min värdefulla kalkylator</h1>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation-summary-errors" />
        <asp:TextBox ID="Op1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Op1 kan inte vara tom." Display="Dynamic" Text="*" ControlToValidate="Op1" CssClass="field-validation-error"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Op1 måste innehålla ett heltal." Display="Dynamic" Text="*" Type="Integer" Operator="DataTypeCheck" ControlToValidate="Op1" CssClass="field-validation-error"></asp:CompareValidator>
        +
        <asp:TextBox ID="Op2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Op2 kan inte vara tom." Display="Dynamic" Text="*" ControlToValidate="Op2" CssClass="field-validation-error"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Op2 måste innehålla ett heltal." Display="Dynamic" Text="*" Type="Integer" Operator="DataTypeCheck" ControlToValidate="Op2" CssClass="field-validation-error"></asp:CompareValidator>
        <asp:Button ID="Compute" runat="server" Text="=" OnClick="Compute_Click"  />
        <asp:Label ID="Result" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
