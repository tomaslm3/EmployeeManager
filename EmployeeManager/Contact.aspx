<%@ Page Title="Contacto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EmployeeManager.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="container">
            <div class="row">
                    <h3>Información de contacto:</h3>
                    <address>
                        <strong>Nombre:</strong> Tomás Lopez Mancina<br />
                        <strong>Correo electrónico:</strong> <a href="mailto:tomaslm_3@hotmail.com">tomaslm_3@hotmail.com</a><br />
                     </address>
                    <h4>Redes sociales:</h4>
                    <ul class="list-unstyled">
                        <li>
                            <a href="https://github.com/tomaslm3" target="_blank" rel="noopener noreferrer">
                                <i class="fab fa-github"></i> GitHub
                            </a>
                        </li>
                        <li>
                            <a href="https://www.linkedin.com/in/tomaslopezmancina/" target="_blank" rel="noopener noreferrer">
                                <i class="fab fa-linkedin"></i> LinkedIn
                            </a>
                        </li>
                    </ul>
                </div>
        </div>
    </main>
</asp:Content>

