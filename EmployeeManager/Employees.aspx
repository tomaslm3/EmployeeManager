<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="EmployeeManager.Employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="btnAddEmployee" runat="server" Text="Agregar Empleado" OnClick="BtnOpenModalAddEmployee_Click" />

    <div class="modal fade" id="modalAddEmployee" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalLabel">Agregar Empleado</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vgAddEmployee" CssClass="alert alert-danger" />
                    <asp:TextBox ID="txtFirstname" runat="server" CssClass="form-control" placeholder="Nombre" ValidationGroup="vgAddEmployee"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFirstname" runat="server" ControlToValidate="txtFirstname" ErrorMessage="Se requiere Nombre" ValidationGroup="vgAddEmployee"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtLastname" runat="server" CssClass="form-control" placeholder="Apellido" ValidationGroup="vgAddEmployee"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLastname" runat="server" ControlToValidate="txtLastname" ErrorMessage="Se requiere Apellido" ValidationGroup="vgAddEmployee"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email" ValidationGroup="vgAddEmployee"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Se requiere Email" ValidationGroup="vgAddEmployee"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formato de Email invalido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgAddEmployee"></asp:RegularExpressionValidator>
                    <br />
                    <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control" placeholder="Salario" ValidationGroup="vgAddEmployee"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSalary" runat="server" ControlToValidate="txtSalary" ErrorMessage="Se requiere Salario" ValidationGroup="vgAddEmployee"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revSalary" runat="server" ControlToValidate="txtSalary" ErrorMessage="Formato de Salario invalido" ValidationExpression="^\d+(\.\d{1,2})?$" ValidationGroup="vgAddEmployee"></asp:RegularExpressionValidator>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnCreateEmployee" runat="server" Text="Crear" OnClick="btnCreateEmployee_Click" ValidationGroup="vgAddEmployee" CssClass="btn btn-primary" />
                    <asp:Button ID="BtnCloseModal" runat="server" Text="Cerrar" CssClass="btn btn-danger" OnClick="BtnCloseModalAddEmployee_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
