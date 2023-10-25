Funcion valMayus <- EsMayuscula(letra)
	Definir valMayus Como Logico
	Si letra >= "A" Y letra <= "Z" Entonces
		valMayus = Verdadero
	Sino
		valMayus = Falso
	FinSi
FinFuncion

Funcion valMinus <- EsMinuscula(letra)
	Definir valMinus Como Logico
	Si letra >= "a" Y letra <= "z" Entonces
		valMinus = Verdadero
	Sino
		valMinus = Falso
	FinSi
FinFuncion

Funcion resultado <- RestanteMinusculas(cadena, inicio)
	Definir i Como Entero
	Definir resultado Como Caracter
	
	resultado = ""
	
	Para i = inicio Hasta Longitud(cadena) Hacer
		resultado = resultado + Minuscula(cadena[i])
	FinPara
FinFuncion

Algoritmo ValidarNombresMayuscula
    Definir nombre, apellidoPaterno, apellidoMaterno Como Caracter
	
    Escribir "Por favor, ingresa tu nombre: "
    Leer nombre
	
    Escribir "Por favor, ingresa tu apellido paterno: "
    Leer apellidoPaterno
	
    Escribir "Por favor, ingresa tu apellido materno: "
    Leer apellidoMaterno
	
    Si EsMayuscula(nombre[1]) Y EsMinuscula(RestanteMinusculas(nombre, 2)) Entonces
        Si EsMayuscula(apellidoPaterno[1]) Y EsMinuscula(RestanteMinusculas(apellidoPaterno, 2)) Entonces
            Si EsMayuscula(apellidoMaterno[1]) Y EsMinuscula(RestanteMinusculas(apellidoMaterno, 2)) Entonces
                Escribir "Tus nombres y apellidos tienen el formato correcto."
            Sino
                Escribir "El apellido materno no cumple con el formato requerido."
            FinSi
        Sino
            Escribir "El apellido paterno no cumple con el formato requerido."
        FinSi
    Sino
        Escribir "El nombre no cumple con el formato requerido."
    FinSi
	
FinAlgoritmo
