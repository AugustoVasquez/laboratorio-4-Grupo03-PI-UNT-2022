Proceso CONJUNTO_A_DE_N_VALORES
	Definir Number, Val,Val_nulo, producto, porcentaje Como Entero // Definimos nuestras variables enteras
	definir suma, i, n,res Como Real // Definimos nuestras variales 
	// Definimos futuras variables que usaremos//
	Val=1
	Val_nulo=0
	suma=0
	res=1
	producto=0
	porcentaje=100
	Escribir "¿Cuántos valores habra dentro del conjunto?" // Iniciaremos con nuestra introducción
	leer Number // Lo usaremos como número en Dimension
	si Number<=1 Entonces // Colocamos restricciones en caso de que la cantidad de valores ingresados sea negativo o 1 puesto que no se podría calcular el producto,suma de 1 solo valor"
		escribir "Ingrese una cantidad de valores que sea mayor a 1 para poder procesar los datos"
	sino
		Dimension n(Number)// Los definiremos como dimensiones con más de un valor
		Para i=0 Hasta Number-1 Hacer // Creamos un bucle para que se repita "Number" veces
			escribir "Ingrese el valor número: ", i+1
			leer n(i) // Se usa como el termino n 
		FinPara
		escribir " "
		//1. La sumatoria de los valores negativos no nulos de A//
		Para i=0 Hasta Number-1 Hacer // Creamos un nuevo bucle que se repetira "Number" veces
			si n(i)<0 Entonces // Colocamos las condiciones de los terminos que tomara en la suma
				suma=suma+n(i) // Colocamos la formula que servira para saber la suma de valores negativos
			FinSi
		FinPara
		escribir "La sumatoria de los valores negativos no nulos de A es: ",suma // Colocamos la respuesta de la primera pregunta
		//2.La productoria de los valores positivos no nulos//
		Para i=0 Hasta Number-1 Hacer // Creamos un nuevo bucle que se repetira "Number" veces
			si n(i)>0 Entonces // Colocamos las condiciones de los terminos que tomara el producto
				res=res*n(i) // Colocamos una formula para hallar productos y luego lo igualaremos a nuestro producto=0 para que no se salga un 1 al todos los valores ser 0
				producto=res // Colocamos la formula que servira para hallar el producto de los valores positivos no nulos
			FinSi
		FinPara
		escribir "La productoria de los valores positivos no nulos: ", producto // Colocamos la respuesta de la segunda pregunta
		//3. Porcentaje de valores de A nulos.//
		Para i=0 Hasta Number-1 Hacer // Creamos un nuevo bucle que se repetira "Number" veces
			si n(i)=0 Entonces // Colocamos las condiciones de los terminos que tomara el porcentaje de valores nulos
				Val_nulo=Val_nulo+1 // Colocamos una variable que emplearemos en la formula
			FinSi
			porcentaje=Val_nulo*(100/Number) // Colocamos la formula para hallar el porcentaje de valores nulos
		FinPara
		escribir "El porcentaje de valores de A nulos es: ", porcentaje ,"%" // Colocamos la respuesta de la tercera pregunta
	FinSi
FinProceso
