Aplicación movil desarrollada en Xamarin de Visual Studio 2017
Contiene 
Directorios
	Behaviours
		Clases para validación de objetos de interfaz(cajas de texto, email, password)
	bin
		Archivos creados automáticamente por Visual Studio
	Controlador
		Clases que sirven de conexión ente la capa de presentación(vistas), la capa de modelo(clases entidad) y la base de datos.
	Imagenes
		Imagenes usadas por la aplicación
	Interfaces
		Clases interfaz para el control de usuario
	Modelo
		Clases entidad que representan las tablas de la base de datos
	obj
		Archivos creados automáticamente por Visual Studio
	scriptbasededatos
		Comandos para crear la base de datos
	scriptsphp
		datos
			clase conexión a la base de datos
		logica
			Scripts para seleccionar, insertar, modificar y eliminar información de la base de datos.
	Vista
		Clases que contienen las vistas o formularios con los que el usuario va a interactuar.

Para ejecutar la aplicación
	Abrir el proyecto desde visual studio 2017 o superior
	Agregar proyecto android, ios o ambos
	Agregar referencia a las siguientes librerias:
		newtonsoft https://www.newtonsoft.com/json
		System.Net.Http
	Subir al servidor local o remoto los archivos de la carpeta scriptsphp
	Crear la base de datos applecturas
	Ejecutar el script de la carpeta scriptbasededatos
	Ejecutar la aplicación usando emulador o como proyecto local.
        Prueba desde el local


