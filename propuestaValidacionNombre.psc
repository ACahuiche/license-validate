Funcion esValida <- ValidarFechaDeExpiracion ( diaV, mesV, anioV )
	Definir esValida Como Logico
	Definir fechaExpiracion Como Entero
	
	fechaExpiracion <- (AnioV*10000)+(mesV*100)+diaV
	
	Si fechaExpiracion >= FechaActual() Entonces
		esValida <- Verdadero
	SiNo
		esValida <- Falso
	Fin Si
	
Fin Funcion

Funcion esCorrecto <- ValidaNombre ( nombreAp )
	Definir esCorrecto Como Logico
	Definir Nom1, Nom2 Como Caracter
	
	Nom1<-SubCadena(nombreAp,1,1)
	Nom2<-SubCadena(nombreAp,2,10)
	
	Si Nom1 >= 'A'y Nom1 <= 'Z' Entonces
		Si Nom2 >= 'a' y Nom2 <= 'z' Entonces
			esCorrecto <- Verdadero
		SiNo
			esCorrecto <- Falso
		Fin Si
	SiNo
		esCorrecto <- Falso
	Fin Si
Fin Funcion

SubProceso  nom <- PedirNombre
	Definir nom Como Caracter
	Escribir "Introduzca su Nombre:"
	Leer nom
FinSubProceso

SubProceso  apPat <- PedirApPat
	Definir apPat Como Caracter
	Escribir "Introduzca Apellido Paterno:"
	Leer apPat
FinSubProceso

SubProceso  apMat <- PedirApMat
	Definir apMat Como Caracter
	Escribir "Introduzca Apellido Materno:"
	Leer apMat
FinSubProceso



Algoritmo ejercicio
	Definir nombre, ApellidoPat, ApellidoMat Como Caracter
	Definir fecha, diaExpiracion, mesExpiracion, anioExpiracion Como Entero
	Definir opc Como Logico
	Escribir "Bienvenido"
	Repetir
		nombre <- PedirNombre
		Si ValidaNombre(nombre) = Verdadero Entonces
			Escribir ""
		SiNo
			Escribir "El nombre es incorrecto, la primera letra debe ser Mayuscula y las demas Minusculas"
		Fin Si
	Hasta Que ValidaNombre(nombre) = Verdadero
	
	Repetir
		ApellidoPat <- PedirApPat
		Si ValidaNombre(ApellidoPat) = Verdadero Entonces
			Escribir ""
		SiNo
			Escribir "El Apellido Paterno es incorrecto, la primera letra debe ser Mayuscula y las demas Minusculas"
		Fin Si
	Hasta Que ValidaNombre(ApellidoPat) = Verdadero
	
	Repetir
		ApellidoMat <- PedirApMat
		Si ValidaNombre(ApellidoMat) = Verdadero Entonces
			Escribir ""
		SiNo
			Escribir "El Apellido Materno es incorrecto, la primera letra debe ser Mayuscula y las demas Minusculas"
		Fin Si
	Hasta Que ValidaNombre(ApellidoMat) = Verdadero
	
	Escribir "Fecha de expiracion"
	Escribir "Introduce el dia de expiracion de tu licencia"
	Leer diaExpiracion
	Escribir "Introduce el mes de expiracion de tu licencia"
	Leer mesExpiracion
	Escribir "Introduce el dia de expiracion de tu licencia"
	Leer anioExpiracion
	
	Si ValidarFechaDeExpiracion(diaExpiracion, mesExpiracion, anioExpiracion) = Verdadero Entonces
		Escribir "La licencia todavia es valida"
	SiNo
		Escribir "La licencia ya no es valida, ya expiro"
	Fin Si
	
	Escribir "Nombre: ",nombre 
	Escribir "Apellido Paterno: ",ApellidoPat
	Escribir "Apellido Materno: ",ApellidoMat
FinAlgoritmo
