<%@ Page Title="Gestor de Empleados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeManager._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section class="row my-5">
            <div class="col-12 text-center">
                <h1 class="display-4" id="introTitle">Dashboard</h1>
            </div>
        </section>

        <div class="row">


            <section class="col-md-12 mb-4">
                <div class="card border-0">
                    <div class="row g-0">
                        <div class="col-md-6">
                            <div class="d-flex align-items-center justify-content-center h-100">
                                <div class="card-body">
                                    <h2 class="card-title" id="createTitle">Crear</h2>
                                    <p class="card-text">
                                        Agrega nuevos empleados a tu base de datos proporcionando su información personal, como nombre, apellido, correo electrónico y salario.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-4 d-flex align-items-center justify-content-center">
                            <img src="/Content/Images/meet.jpg" alt="meet" class="img-fluid" style="max-height: 600px;">
                        </div>
                    </div>

                </div>
            </section>

            <section class="col-md-12 mb-4">
                <div class="card border-0">
                    <div class="row g-0">

                        <div class="col-md-6 d-flex align-items-center justify-content-center">
                            <img src="/Content/Images/edit.jpg" alt="Imagen" class="img-fluid" style="max-height: 200px;">
                        </div>
                        <div class="col-md-6">
                            <div class="d-flex align-items-center justify-content-center h-100">
                                <div class="card-body">
                                    <h2 class="card-title" id="editTitle">Editar</h2>
                                    <p class="card-text">
                                        Actualiza la información de tus empleados en cualquier momento. Cambia detalles como el salario o el correo electrónico de manera rápida y precisa.
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <section class="col-md-12 mb-4">
                <div class="card border-0">
                    <div class="row g-0">
                        <div class="col-md-6">
                            <div class="card-body">
                                <h2 class="card-title" id="deleteTitle">Borrar</h2>
                                <p class="card-text">
                                    Elimina empleados que ya no son parte de tu organización. Mantén tu base de datos actualizada y libre de información obsoleta.
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 d-flex align-items-center justify-content-center">
                            <img src="/Content/Images/delete.jpg" alt="Imagen" class="img-fluid" style="max-height: 200px;">
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>
</asp:Content>
