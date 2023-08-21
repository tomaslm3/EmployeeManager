# Aplicación Web de Administración de Empleados

Este es un proyecto de una aplicación web de administración de empleados desarrollada con ASP.NET WebForms y SQL Server como base de datos.

- Link a Deploy: https://tomaslm3.bsite.net/  (No cuenta con certificado ssl, por lo que es necesario dar click en `Avanzado` y luego en  `Continuar a`)

## Pasos para Clonar y Probar la Aplicación

**Requisitos Previos**

- Visual Studio 2022 o posterior.
- SQL Server instalado y configurado localmente.
- Conexión a internet para descargar las dependencias de NuGet.

1. **Clonar el Repositorio:**

   Abre tu terminal con git y ejecuta el siguiente comando para clonar el repositorio:

   ```bash 
   git clone https://github.com/tomaslm3/EmployeeManager.git
   ```

2. **Abrir el Proyecto en Visual Studio:**

	Abre el archivo `EmployeeManager.sln` con Visual Studio.

3. **Restaurar Paquetes NuGet:**

	En Visual Studio, abre la Consola del Administrador de Paquetes (Tools > NuGet Package Manager > Package Manager Console) y ejecuta el siguiente comando para restaurar los paquetes NuGet:

	```bash
	Update-Package -reinstall
	```

4. **Ejecutar Migraciones:**

	Abre la Consola del Administrador de Paquetes nuevamente y ejecuta el siguiente comando para crear la base de datos y aplicar las migraciones:
	```bash
	Update-Database
	```

5. **Iniciar la Aplicación:**

	Presiona F5 o haz clic en el botón "Start" para compilar y ejecutar la aplicación en tu navegador.

6. **Explorar la Aplicación:**

	Abre tu navegador y ve a la URL `http://localhost:port` donde `port` es el puerto en el que se está ejecutando la aplicación.

## Contacto

Si tienes alguna pregunta o sugerencia sobre esta aplicación, no dudes en contactarme:

- Nombre: Tomás Lopez Mancina
- Correo Electrónico: tomaslm_3@hotmail.com
- GitHub: [https://github.com/tomaslm3](https://github.com/tomaslm3)
- LinkedIn: [https://www.linkedin.com/in/tomaslopezmancina/](https://www.linkedin.com/in/tomaslopezmancina/)
