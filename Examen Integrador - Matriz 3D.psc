Algoritmo Matriz_3D
    Definir calculadora Como Entero
    Definir cadena1, cadena2 Como Caracter
    Definir diagonal3D1, diagonal3D2 Como Entero
    Dimension calculadora(3,3,3)
	Escribir "Ingrese los primeros 10 dígitos"
	Leer cadena1
	Escribir "Ingrese los segundos 10 dígitos"
	Leer cadena2
	inicializarMatriz(calculadora)
    llenarMatriz_Z0(calculadora, cadena1)
    llenarMatriz_Z1(calculadora, cadena2)
    llenarMatriz_Z2(calculadora)
    imprimirMatriz(calculadora)
	diagonal3D1<-calculadora(0,2,0)*calculadora(1,1,1)*calculadora(2,0,2)
	diagonal3D2<-calculadora(0,0,0)*calculadora(1,1,1)*calculadora(2,2,2)
    Escribir "La multiplicación de los elementos de la diagonal 3D 1 es ", diagonal3D1
    Escribir "La multiplicación de los elementos de la diagonal 3D 2 es ", diagonal3D2
FinAlgoritmo

SubAlgoritmo inicializarMatriz(calculadora)
	Definir i,j,k Como Entero
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			Para k<-0 Hasta 2 Hacer
				calculadora[i,j,k]<-0
			Fin Para
		Fin Para
	Fin Para
FinSubAlgoritmo

SubAlgoritmo llenarMatriz_Z0(calculadora,cadena1)
	Definir i,j,k,cont Como Entero
	cont<-0
	k<-0
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			calculadora[0,i,j]<-ConvertirANumero(Subcadena(cadena1,cont, cont))
			cont<-cont+1
		Fin Para
	Fin Para
FinSubAlgoritmo

SubAlgoritmo llenarMatriz_Z1(calculadora,cadena2)
	Definir i,j,k,cont Como Entero
	cont<-0
	k<-0
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			calculadora[1,i,j]<-ConvertirANumero(Subcadena(cadena2,cont, cont))
			cont<-cont+1
		Fin Para
	Fin Para
FinSubAlgoritmo

SubAlgoritmo llenarMatriz_Z2(calculadora)
	Definir i,j,k Como Entero
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			calculadora[2,i,j]<-calculadora[0,i,j]*calculadora[1,i,j]
		Fin Para
	Fin Para
FinSubAlgoritmo

SubAlgoritmo imprimirMatriz(calculadora)
	Definir i,j,k Como Entero
	Escribir "    "
	Para i<-0 Hasta 2 Hacer
		Escribir "Capa " i
		Escribir "        |   Columna 0   |   Columna 1   |   Columna 2   |"
		Escribir "--------------------------------------------------------------"
		Para j<-0 Hasta 2 Hacer
			Escribir "Fila " j Sin Saltar "  |       "
			Para k<-0 Hasta 2 Hacer
				Escribir calculadora[i,j,k] "       |       " Sin Saltar
			Fin Para
			Escribir ""
			Escribir "--------------------------------------------------------------"
		Fin Para
		Escribir ""
	Fin Para
FinSubAlgoritmo
