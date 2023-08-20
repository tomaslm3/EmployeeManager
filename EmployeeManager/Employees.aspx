<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="EmployeeManager.Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <section class="row my-5">
            <div class="col-12 text-center">
                <h1 class="display-4" id="introTitle">Empleados</h1>
            </div>
        </section>

        <div class="row">
            <div class="col-md-6">
                <asp:Button ID="btnAddEmployee" runat="server" Text="Nuevo Empleado" OnClick="BtnOpenModalAddEmployee_Click" CssClass="btn btn-outline-primary mb-3" />
                <asp:Button ID="btnDeleteSelected" runat="server" Text="Eliminar Seleccionados" OnClick="btnDeleteSelected_Click" CssClass="btn btn-outline-danger mb-3" />
            </div>
            <div class="col-md-6">
                <div class="form-group d-flex align-items-end justify-content-end">
                    <i class="bi bi-search m-2 align-middle"></i>
                    <asp:TextBox ID="txtSearch" runat="server" class="form-control" placeholder="Buscar nombre" AutoPostBack="True" OnTextChanged="txtSearch_TextChanged" />
                </div>
            </div>
        </div>

        <div class="table-responsive">
            <asp:Repeater ID="rptEmployees" runat="server" OnItemCommand="rptEmployees_ItemCommand">
                <HeaderTemplate>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th class="col-md-1"></th>
                                <th class="col-md-2">Nombre</th>
                                <th class="col-md-2">Apellido</th>
                                <th class="col-md-2">Email</th>
                                <th class="col-md-2">Salario</th>
                                <th class="col-md-2">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr style="height: 50px;">
                        <td class="col-md-1 text-center align-middle">
                            <asp:CheckBox ID="chkSelect" runat="server" CssClas="form-check-input" />
                        </td>
                        <td class="col-md-2 align-middle"><%# Eval("FirstName") %></td>
                        <td class="col-md-2 align-middle"><%# Eval("LastName") %></td>
                        <td class="col-md-2 align-middle"><%# Eval("Email") %></td>
                        <td class="col-md-2 align-middle"><%# Eval("Salary", "{0:C}") %></td>
                        <td class="col-md-3 align-middle">
                            <asp:Button ID="btnEdit" runat="server" Text="Editar"  CssClass="btn btn-outline-warning" CommandName="EditEmployee" CommandArgument='<%# Eval("ID") %>' />
                            <asp:Button ID="btnDelete" runat="server" Text="Eliminar"  CssClass="btn btn-outline-danger" CommandName="DeleteEmployee" CommandArgument='<%# Eval("ID") %>' />
                            
                            <asp:HiddenField ID="hfEmployeeId" runat="server" Value='<%# Eval("ID") %>' />
                        </td>

                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>

    </div>




<div class="modal fade" id="modalAddEmployee" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header d-flex justify-content-center">
                <h5 class="modal-title" id="modalLabel">Nuevo Empleado</h5>
            </div>
            <div class="modal-body">
                <div class="container">
    <div class="row d-flex justify-content-center align-items-center">
        <div class="col-md-8 text-center">
            <div class="form-group mb-3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vgAddEmployee" CssClass="alert alert-danger" />
                <asp:TextBox ID="txtFirstname" runat="server" CssClass="form-control" placeholder="Nombre" ValidationGroup="vgAddEmployee"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstname" runat="server" ControlToValidate="txtFirstname" ErrorMessage="Se requiere Nombre" ValidationGroup="vgAddEmployee" Display="None"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group mb-3">
                <asp:TextBox ID="txtLastname" runat="server" CssClass="form-control" placeholder="Apellido" ValidationGroup="vgAddEmployee"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLastname" runat="server" ControlToValidate="txtLastname" ErrorMessage="Se requiere Apellido" ValidationGroup="vgAddEmployee" Display="None"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group mb-3">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email" ValidationGroup="vgAddEmployee"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Se requiere Email" ValidationGroup="vgAddEmployee" Display="None"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formato de Email invalido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgAddEmployee" Display="None"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group mb-3">
                <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control" placeholder="Salario" ValidationGroup="vgAddEmployee"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSalary" runat="server" ControlToValidate="txtSalary" ErrorMessage="Se requiere Salario" ValidationGroup="vgAddEmployee" Display="None"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revSalary" runat="server" ControlToValidate="txtSalary" ErrorMessage="Formato de Salario invalido (Solo decimales separados por coma, hasta dos digitos)" ValidationExpression="^\d+(\,\d{1,2})?$" ValidationGroup="vgAddEmployee" Display="None"></asp:RegularExpressionValidator>
            </div>
        </div>
    </div>
</div>

            </div>
            <div class="modal-footer d-flex flex-column justify-content-center align-items-center">
    <asp:Button ID="btnCreateEmployee" runat="server" Text="Añadir" OnClick="btnCreateEmployee_Click" ValidationGroup="vgAddEmployee" CssClass="btn btn-outline-primary mb-2" style="width: 300px;" />
    <asp:Button ID="BtnCloseModal" runat="server" Text="Cancelar" CssClass="btn btn-outline-danger" OnClick="BtnCloseModalAddEmployee_Click" style="width: 300px;" />
</div>
        </div>
    </div>
</div>





    <div class="modal fade" id="modalEditEmployee" tabindex="-1" role="dialog" aria-labelledby="modalLabelEdit" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header d-flex justify-content-center">
                <h5 class="modal-title" id="modalLabelEdit">Editar Empleado</h5>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="row d-flex justify-content-center align-items-center">
                        <div class="col-md-8 text-center">
                            <div class="form-group mb-3">
                                <asp:ValidationSummary ID="ValidationSummaryEdit" runat="server" ValidationGroup="vgEditEmployee" CssClass="alert alert-danger" />
                                <asp:HiddenField ID="hfEditEmployeeId" runat="server" />
                                <asp:TextBox ID="txtEditFirstname" runat="server" CssClass="form-control" placeholder="Nombre" ValidationGroup="vgEditEmployee"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditFirstname" runat="server" ControlToValidate="txtEditFirstname" ErrorMessage="Se requiere Nombre" ValidationGroup="vgEditEmployee" Display="None"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-3">
                                <asp:TextBox ID="txtEditLastname" runat="server" CssClass="form-control" placeholder="Apellido" ValidationGroup="vgEditEmployee"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditLastname" runat="server" ControlToValidate="txtEditLastname" ErrorMessage="Se requiere Apellido" ValidationGroup="vgEditEmployee" Display="None"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-3">
                                <asp:TextBox ID="txtEditEmail" runat="server" CssClass="form-control" placeholder="Email" ValidationGroup="vgEditEmployee"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server" ControlToValidate="txtEditEmail" ErrorMessage="Se requiere Email" ValidationGroup="vgEditEmployee" Display="None"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEditEmail" runat="server" ControlToValidate="txtEditEmail" ErrorMessage="Formato de Email invalido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgEditEmployee" Display="None"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group mb-3">
                                <asp:TextBox ID="txtEditSalary" runat="server" CssClass="form-control" placeholder="Salario" ValidationGroup="vgEditEmployee"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditSalary" runat="server" ControlToValidate="txtEditSalary" ErrorMessage="Se requiere Salario" ValidationGroup="vgEditEmployee" Display="None"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEditSalary" runat="server" ControlToValidate="txtEditSalary" ErrorMessage="Formato de Salario invalido (Solo decimales separados por coma, hasta 2 dígitos)" ValidationExpression="^\d+(\,\d{1,2})?$" ValidationGroup="vgEditEmployee" Display="None"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer d-flex flex-column justify-content-center align-items-center">
                <asp:Button ID="btnUpdateEmployee" runat="server" Text="Actualizar" OnClick="btnUpdateEmployee_Click" ValidationGroup="vgEditEmployee" CssClass="btn btn-outline-primary mb-2" style="width: 300px;" />
                <asp:Button ID="btnCloseEditModal" runat="server" Text="Cerrar" CssClass="btn btn-outline-danger" OnClick="btnCloseEditModal_Click" style="width: 300px;" />
            </div>
        </div>
    </div>
</div>

</asp:Content>
