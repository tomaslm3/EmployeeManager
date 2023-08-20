<%@ Page Title="Acerca de" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="EmployeeManager.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2>Herramientas Utilizadas</h2>
        <p>Management fue desarrollada utilizando las siguientes herramientas:</p>
        <ul>
            <li><strong>ASP.NET Web Forms:</strong> Construida utilizando ASP.NET Web Forms, framework para la creación de aplicaciones web.</li>
            <li><strong>C#:</strong> El lenguaje de programación C# ha sido utilizado para la lógica del lado del servidor y el manejo de eventos.</li>
            <li><strong>Bootstrap:</strong> Framework de diseño Bootstrap para crear una interfaz de usuario moderna y receptiva.</li>
            <li><strong>SQL Server:</strong> La base de datos de la aplicación está gestionada por SQL Server, lo que permite almacenar y administrar los datos de los empleados de manera eficiente.</li>
            <li><strong>Entity Framework y LINQ:</strong> Entity Framework junto con LINQ para acceder y manipular los datos de la base de datos de forma sencilla y eficaz.</li>
        </ul>

        <h3>Funcionalidades Principales</h3>
        <p>Managemet funcionalidades:</p>
        <ul>
            <li><strong>Creación y Edición de Empleados:</strong> Añadir nuevos empleados a la base de datos y editar la información existente.</li>
            <li><strong>Validación de Datos:</strong> Balidación en el lado del cliente y del servidor para garantizar que la información ingresada sea precisa y cumpla con los requisitos.</li>
            <li><strong>Modalidades Interactivas:</strong> Modales interactivos para una experiencia de usuario más fluida al crear y editar empleados.</li>
        </ul>

        <h3>Documentación y Recursos</h3>
        <p>Para más información sobre las herramientas que utilizadas o aprender más sobre sus características, recomiendo visitar las siguientes fuentes:</p>
        <ul>
            <li><a href="https://docs.microsoft.com/en-us/aspnet/web-forms/">Documentación de ASP.NET Web Forms</a></li>
            <li><a href="https://docs.microsoft.com/en-us/dotnet/csharp/">Documentación de C#</a></li>
            <li><a href="https://getbootstrap.com/">Sitio oficial de Bootstrap</a></li>
            <li><a href="https://docs.microsoft.com/en-us/ef/">Documentación de Entity Framework</a></li>
            <li><a href="https://docs.microsoft.com/en-us/sql/sql-server/">Documentación de SQL Server</a></li>
        </ul>
    </main>
</asp:Content>
