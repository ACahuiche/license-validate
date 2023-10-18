Algoritmo ValidacionDeLicencia
	Definir nombre Como Caracter
    Definir apellidoPaterno Como Caracter
    Definir apellidoMaterno Como Caracter
	
	nombre = validarNombres("Ingresa tu nombre: ")
	apellidoPaterno = validarApellidoPaterno("Ingresa tu apellido Paterno: ")
	apellidoMaterno = validarApellidoMaterno("Ingresa tu apellido Materno: ")
    
	Funcion nombreValidacion <- validarNombres ( mensaje )
		Definir nombreValidacion Como Caracter
		nombreValidacion = ""
		Mientras Longitud(nombreValidacion) = 0 Hacer
			Escribir mensaje
			Leer nombreValidacion
			Si No EsNombreValido(nombreValidacion) Entonces
				Escribir "El nombre debe comenzar con mayúscula y contener solo minúsculas. Inténtalo de nuevo."
			Fin Si
		Fin Mientras
	Fin Funcion
	
	Funcion ApPatValidacion <- validarApellidoPaterno ( mensaje )
		Definir ApPatValidacion Como Caracter
		ApPatValidacion = ""
		Mientras Longitud(ApPatValidacion) = 0 Hacer
			Escribir mensaje
			Leer ApPatValidacion
			Si No EsNombreValido(ApPatValidacion) Entonces
				Escribir "El Apellido Paterno debe comenzar con mayúscula y contener solo minúsculas. Inténtalo de nuevo."
			Fin Si
		Fin Mientras
	Fin Funcion
	
	Funcion ApMatValidacion <- validarApellidoMaterno ( mensaje )
		Definir ApMatValidacion Como Caracter
		ApMatValidacion = ""
		Mientras Longitud(ApMatValidacion) = 0 Hacer
			Escribir mensaje
			Leer ApMatValidacion
			Si No EsNombreValido(ApMatValidacion) Entonces
				Escribir "El Apellido Materno debe comenzar con mayúscula y contener solo minúsculas. Inténtalo de nuevo."
			Fin Si
		Fin Mientras
	Fin Funcion
	
	Funcion nombreValido <- EsNombreValido ( datoNombre )
		Definir nombreValido Como Logico
		Definir i Como Entero
		
		Si Longitud(datoNombre) > 0 Y EsMayuscula(datoNombre[0]) Entonces
			Para i = 2 Hasta Longitud(datoNombre) Hacer
				Si No EsMinuscula(datoNombre[i]) Entonces
					nombreValido = Falso
				Fin Si
			Fin Para
			nombreValido = Verdadero
		SiNo
			nombreValido = Falso
		Fin Si
	Fin Funcion
	
	Funcion EsMayusc <- EsMayuscula ( letraNombre )
		Definir EsMayusc Como Logico
		Si letraNombre >= "A" Y letraNombre <= "Z" Entonces
			EsMayusc = Verdadero
		SiNo
			EsMayusc = Falso
		Fin Si
	Fin Funcion
	
	Funcion EsMinusc <- EsMinuscula ( letraNombre )
		Definir EsMinusc Como Logico
		Si letraNombre >= "a" Y letraNombre <= "z" Entonces
			EsMinusc = Verdadero
		SiNo
			EsMinusc = Falso
		Fin Si
	Fin Funcion

	
FinAlgoritmo

