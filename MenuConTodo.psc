//Funcion 1 calcula el promedio
Funcion prom <- Promedio()
	prom <- 0
	Para i <- 1 hasta 3 hacer
		Escribir sin saltar "Ingrese Numero ", i, ": "
		Leer num
		prom <- prom + num
	FinPara
	prom <- prom / 3
FinFuncion

//Funcion 2 deriva al baño de hombres o mujeres segun el sexo
Funcion genero <- Bano()
	Escribir Sin Saltar "Ingrese el nombre: "
	Leer nombre
	
	Repetir
		Escribir "Ingrese Genero M o F"
		Escribir "M (Masculino)"
		Escribir "F (Femenino)"
		Leer genero
		genero <- Mayusculas(genero)
	Hasta Que genero = "M" O genero = "F" 
	
	
	Si genero = "M" Entonces
		Escribir "Por favor ", nombre, " dirijase al baño de Hombres"
	SiNo
		Escribir "Por favor ", nombre, " dirijase al baño de mujeres"
	FinSi
FinFuncion

//Funcion 3 pendiente

//Funcion 4 entrega numero en palabras
Funcion word <- Numword(n)
	Segun n hacer
		1:
			word <- "Uno"
		2:
			word <- "Dos"
		3:
			word <- "Tres"
		4:
			word <- "Cuatro"
		5:
			word <- "Cinco"
		6:
			word <- "Seis"
		7:
			word <- "Siete"
		8:
			word <- "Ocho"
		9:
			word <- "Nueve"
		10:
			word <- "Diez"
		De Otro Modo:
			
	FinSegun
FinFuncion

//Funcion 5 (mientras) Cantidad y promedio de N numeros ingresados y salir con 0
Funcion cant <- Cantprom ()
	cant <- 0
	pro <- 0
	num <- -1
	Mientras num <> 0 Hacer
		Escribir "Ingrese un numero"
		Leer num
		Si num <> 0 Entonces
			cant <- cant + 1
		FinSi
		pro <- pro + num
	FinMientras
	Escribir "Cantidad de numeros ingresados: ", cant
	Escribir "El promedio de estos numeros es: ", pro/cant
	Escribir ""
FinFuncion

//Funcion 6 (Repetir) cantidad de intentos en escribir "Juan"
Funcion intentos <- Adivinarnombre()
	intentos <- 0
	Repetir
		Escribir "ingrese nombres con J"
		Leer nom
		intentos <- intentos + 1
	Hasta Que nom = "Juan"
	Escribir Sin Saltar "Ganaste "
FinFuncion

//Funcion 7 (para) ingresar 10 nombres y mostrar repiten mas de 1 vez
Funcion vez <- Nombrerepetido ()
	Dimension nombres[10]
	
	Dimension repetidos[10]
	Para i <- 1 hasta 10 hacer
		repetidos[i] <- "z"
	FinPara
	
	Para i <- 1 Hasta 10 Hacer
		Escribir i,  " Ingrese su nombre: "
		Leer nombres[i]
	FinPara
	
	vez <- 0
	j <- 1
	Repetir
		temp <- nombres[j]
		Para i <- j + 1 hasta 10 Hacer
			Si temp = nombres[i] Entonces
				vez <- vez + 1
				repetidos[vez] <- temp
			FinSi
		FinPara
		j <- j + 1
	Hasta Que j > 9
	
	Escribir ""
	Si vez <= 0 Entonces
		Escribir "No existen nombres repetidos"
	SiNo
		Escribir "Los nombres que se repiten son:"
		j <- 1
		Repetir
			temp <- repetidos[j]
			Para i <- j + 1 hasta 10 Hacer
				Si temp = repetidos[i] Entonces
					repetidos[i] <- "z"
				FinSi
			FinPara
			j <- j + 1
		Hasta Que j > 9 
		
		Para i <- 1 hasta 10 Hacer
			Si repetidos[i] <> "z" Entonces
				Escribir "- ", repetidos[i]
			FinSi
		FinPara
		Escribir ""
	FinSi
FinFuncion

//Funcion 8 (arreglo simple) pedir tamaño de arreglo llenarlo con nombre de alumnos
Funcion null <- Listaalumnos (nroalumnos)
	Dimension arreglo[nroalumnos]
	Para i <- 1 hasta nroalumnos Hacer
		Escribir i, ". ingrese nombre de alumno"
		Leer arreglo[i]
	FinPara
	
	Para i <- 1 hasta nroalumnos Hacer
		Escribir Sin Saltar arreglo[i], " "
		Si i Mod 5 = 0 Entonces
			Escribir ""
		FinSi
	FinPara
	Escribir ""
	null <- i
FinFuncion

//Funcion 9 (arreglo bidimensional)rellenar arreglo
Funcion retorno <- Listafullstack(nrolista)
	nro <- 1
	nro <- nrolista
	Dimension listado[nro,4]
	Para i <- 1 hasta nro Hacer
		Para j <- 1 hasta 4 Hacer
			Segun j Hacer
				1:
					Escribir Sin Saltar "Ingrese nombre: "
					Leer listado[i,j] 
				2:
					Escribir Sin Saltar "Ingrese apellido: "
					Leer listado[i,j] 
				3:
					Escribir Sin Saltar "Ingrese fono: "
					Leer fono
					listado[i,j] <- ConvertirATexto(fono) 
				4:
					Escribir Sin Saltar "Ingrese email: "
					Leer listado[i,j] 
			Fin Segun
		FinPara
		Escribir ""
	FinPara
	
	Para i <- 1 hasta nrolista Hacer
		Para j <- 1 hasta 4 Hacer
			Escribir Sin Saltar listado[i,j], " "
		FinPara
		Escribir ""
	FinPara
	retorno <- 1
FinFuncion

//Inicio de algoritmo
Algoritmo MenuConTodo
	Repetir
		Limpiar Pantalla
		Escribir "--------------------------------------"
		Escribir "|        Menú de opciones            |"
		Escribir "--------------------------------------"
		Escribir "| 1. Secuencial                      |"
		Escribir "| 2. Condicional Si entonces         |"
		Escribir "| 3. Condicional Si entonces anidado |"
		Escribir "| 4. Condicional según               |"
		Escribir "| 5. Repetitiva Mientras             |"
		Escribir "| 6. Repetitiva Repetir              |"
		Escribir "| 7. Repetitiva Para                 |"
		Escribir "| 8. Arreglo Simple                  |"
		Escribir "| 9. Arreglo Bidimensional           |"
		Escribir "| 10. Salir                          |"
		Escribir "-------------------------------------"
		Escribir sin saltar " Ingresa una opcion:"
		Leer op
		Escribir "-------------------------------------"
		
		Segun op Hacer
			1:
				Limpiar Pantalla
				
				Escribir "Opcion 1 seleccionada"
				Escribir ""
				resultado <- Promedio()
				Escribir "El promedio es: ", resultado
				Escribir ""
			2:
				Limpiar Pantalla
				
				Escribir "Opcion 2 seleccionada"
				Escribir ""
				sexo <- Bano()
				
				Escribir ""
			3:
				Limpiar Pantalla
				
				Escribir "Opcion 3 seleccionada"
				Escribir ""
			4:
				Repetir
					Limpiar Pantalla
					
					Escribir "Opcion 4 seleccionada"
					Escribir ""
					Escribir "Ingrese un numero entre el 1 y 10"
					Leer nro
				Hasta Que nro > 0 y nro < 11
				
				Escribir "El ", nro, " en palabras seria: ", Numword(nro)
				Escribir ""
			5:
				Limpiar Pantalla
				
				Escribir "Opcion 5 seleccionada"
				Escribir ""
				cantidad <- Cantprom()
			6:
				Limpiar Pantalla
				
				Escribir "Opcion 6 seleccionada"
				Escribir ""
				int <- Adivinarnombre()
				Escribir "en ", int, " intentos"
				Escribir ""
			7:
				Limpiar Pantalla
				
				Escribir "Opcion 7 seleccionada"
				Escribir ""
				
				x <- Nombrerepetido()
			8:
				Limpiar Pantalla
				
				Escribir "Opcion 8 seleccionada"
				Escribir ""
				
				Escribir "ingrese tamaño de arreglo"
				Leer tamano
				
				indice <- Listaalumnos(tamano)
				
				Escribir ""

			9:
				
				Limpiar Pantalla
				
				Escribir "Opcion 9 seleccionada"
				Escribir ""
				
				Escribir "Ingrese numero de alumnos"
				Leer numalum
				a <- Listafullstack(numalum)
			10:
				Escribir "Programa finalizado"
			
			De Otro Modo:
				Limpiar Pantalla
				
				Escribir "Opcion no valida intente nuevamente"
				Escribir ""
		Fin Segun
		Si op <> 10 Entonces
			Escribir Sin Saltar "Presione enter para continuar...."
			Leer enter		
		FinSi
		
	Hasta Que op = 10
	
FinAlgoritmo
