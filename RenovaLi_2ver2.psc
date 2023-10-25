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

SubProceso ModuloPuedoTenerLicencia
	Escribir "Puedo tener licencia?"
	Escribir "  "
	Repetir
		Escribir "Ingresa tu a�o de nacimiento"
		Escribir "con el siguiente formato "
		Escribir "AAAA"
		Leer FechaNa
		Si Longitud(ConvertirATexto(FechaNa)) <> 4 Entonces
			Escribir "Debes introducir el a�o de nacimiento a cuatro digitos"
		SiNo
			aniocurso<-SubCadena(ConvertirATexto(FechaActual()),1,4)
			eda<-ConvertirANumero(aniocurso)- FechaNa
			lice(eda)
		Fin Si
	Hasta Que Longitud(ConvertirATexto(FechaNa)) = 4
FinSubProceso

SubProceso ModuloValidarAplicaRenovacion
	Escribir "Es tiempo de renovar mi licencia?"
	Repetir
		Escribir 'Escribe a�o de vencimiento de licencia'
		Leer venci
		Si Longitud(ConvertirATexto(venci)) <> 4 Entonces
			Escribir "Debes introducir el a�o de vencimiento a cuatro digitos"
		SiNo
			Si ValidarFechaDeExpiracion(venci) Entonces
				Escribir 'Debes renovar tu licencia'
			SiNo
				Escribir 'No es tiempo de renovar'
			FinSi
		Fin Si
	Hasta Que Longitud(ConvertirATexto(venci)) == 4
FinSubProceso

Funcion EsExpirada <- ValidarFechaDeExpiracion(venci)
	Definir EsExpirada Como Logico
	Si venci >=2023 Entonces
		EsExpirada = Falso
	SiNo
		EsExpirada = Verdadero
	FinSi
FinFuncion

Funcion ModuloGenerarClavePago(APaterno, clave, venci)
	Repetir
		Escribir ' Escribe el tipo de licencia   T1 o T2 '
		Leer tipo
		Si tipo<>'T1' Y tipo<>'T2' Entonces
			Escribir 'Dato incorrecto'
		FinSi
	Hasta Que tipo='T1' O tipo='t1' O tipo='T2' O tipo='t2'
	Escribir 'Tu n�mero de licencia actual es :   '
	Escribir "L", APaterno1, clave, tipo, venci
	Escribir "  "
	Escribir "se ha generado la siguiente clave de pago con base en la inforaci�n proporcionada"
	Escribir "P", APaterno1, clave, "2023"
	Escribir  "  "
	Escribir '�Listo!, imprime el comprobante de pago'
	Escribir "  "
	Escribir 'Deber�s realizar el pago en tu banco de preferencia en un tiempo no mayor a 24 horas, de lo contrario se deber� generar una nueva l�nea de captura'
FinFuncion

Funcion Lice(a)
	Si a >=18 Entonces
		Escribir "Puedes tramitar la licencia"
	SiNo
		Escribir "Todav�a no tienes edad para tramitarla"
	Fin Si
Fin Funcion

Funcion Saludar(a, b)
	escribir "Bienvenid@ ",  a ," " b " al portal"
Fin Funcion

//Hacer una funci�n para la bienvenida
//Solicitar datos al usuario
// verificar datos de licencia
// verificar dato de la clave de pago 
// funci�n para validar fecha de expiraci�n
// men� para  verificar licencia, fecha de vencimiento, l�nea de pago
	
Algoritmo RenovaLi2
	clave<-'G101'
	Inicio<-'L'
	Pago<-'P'
	Fecha<-'2023'
	
	Fechahoy<-FechaActual()
	definir opc, edad, venci, opcMenu Como Entero
	opcMenu = 1
	
	
	Escribir "Bienvenido al portal de SEMOVI "
	Escribir " "
	
	Repetir
		Escribir "Por favor, ingresa tu nombre   "
		Leer nombre
		Si ValidaNombre(nombre) = Verdadero Entonces
			Escribir ""
		SiNo
			Escribir "El nombre es incorrecto, la primera letra debe ser Mayuscula y las demas Minusculas"
		Fin Si
	Hasta Que ValidaNombre(nombre) = Verdadero
	
	Repetir
		Escribir "Por favor, ingresa tu apellido  "
		Leer apello
		Si ValidaNombre(apello) = Verdadero Entonces
			Escribir ""
		SiNo
			Escribir "El apellido es incorrecto, la primera letra debe ser Mayuscula y las demas Minusculas"
		Fin Si
	Hasta Que ValidaNombre(apello) = Verdadero
	
	APaterno1<-SubCadena(apello,1,1)
	Saludar(nombre,apello)
	Mientras opcMenu = 1 Hacer
	Escribir "Por favor de seleccionar el n�mero de la opci�n deseada"
	Escribir "1. No tienes Licencia, revisa si puedes tramitarlo"
	Escribir "2. Es tiempo de renovar mi licencia?"
	Escribir "3. Generar clave de pago"
	leer opc
	
	Segun opc Hacer
		1:
			//"1. Puedo tener licencia?"
			ModuloPuedoTenerLicencia
		2:
			//"2. Es tiempo de renovar mi licencia?"
			ModuloValidarAplicaRenovacion
		3:
			//"3. Generar clave de pago"
			ModuloGenerarClavePago(APaterno, clave, venc)
		De Otro Modo:
			Escribir "Opcion invalida"
	Fin Segun
		Escribir "Deseas regresar al menu?"
		Escribir "[1] Si"
		Escribir "[2] No"
		Leer opcMenu
	Fin Mientras
	
	Escribir "Gracias por usar portal de SEMOVI"
	Escribir  "Vuelva Pronto"

FinAlgoritmo
