Algoritmo Notas_de_estudiantes
	//definimos las variables a usar
	definir nombre,aux1 como cadena
	definir N,PG,i,B,x,aux como real
	//la cantidad de alumnos de los cuales se va ingresar su PG
		Escribir "ingrese el numero de alumnos"
	leer N
	Dimension  nombre[N],PG[N] // dimencionamos nuestros vectores a usar
		para i<-0 hasta N-1 Hacer// solicitamos los nombres,, los cuales se agregaran al vector "nombre"
			escribir "ingrese el nombre del alumno:   ",i+1
			leer nombre[i]
		finpara
		para  i<-0 hasta N-1 hacer // solicitamos los PG, de acuerdo a los nombres, los cuales se agregaran al vector "PG"
			escribir "ingrese el promedio general del alumno:  ",nombre[i]
			leer PG[i]
		FinPara
		escribir "los datos ingresados son: " // mostramos os datos ingresados al usuario
		para i<-0 hasta N-1 Hacer
			escribir nombre[i],"-",PG[i]
		FinPara
			para  i<-2 Hasta N con paso 1 Hacer // empleamos el metodo de la burbuja para ordenar el vector "PG " y repiiendo el ordenamiento en el vector "nombre
				para x<-0 hasta N-2 con paso 1 Hacer
					si PG[x]>PG[x+1] entonces
						aux=PG[x]
						PG[x]=PG[x+1]
						PG[x+1]=aux
						aux1 =nombre[x]
						nombre[x]=nombre[x+1]
						nombre[x+1]= aux1 
					FinSi
				FinPara
			FinPara
			Escribir "Orden de menor a mayor segun promedio general:"// finalmente mostramos los datos ordenados
			para i<-0 hasta N-1 Hacer
				escribir nombre[i],"-",PG[i]
			FinPara
FinAlgoritmo
