Algoritmo Ejercicio_2
	Definir A,B,C,D,E,F,i,j,N,NP,T,PORCENTAJE,SUMA,S,IGUAL,k Como Real
	Escribir '¿Introduce la cantidad de par de datos de deseé?'
	Leer N 
	Dimension A[N],B[N],C[N],D[N],F[N]
	Para i<-0 Hasta N-1 Hacer 
		Escribir 'ingrese el Dato X°',i+1
		Leer A[i] 
		Escribir 'Ingrese el dato Y°',i+1
		Leer B[i] 
	FinPara
	Escribir ' '
	// 1. Promedios
	Para i<-0 Hasta N-1 Hacer 
		C[i] <- (A[i]+B[i])/2 
		Escribir 'el promedio del par X°',i+1,':',A[i],' y Y°',i+1,':',B[i],' es:',C[i] 
	FinPara
	Escribir ' '
	// 2. Media geometrica
	Para i<-0 Hasta N-1 Hacer 
		D[i] <- (A[i]*B[i])^(1/2) 
		Escribir 'La media geometrica del par X°',i+1,':',A[i],' y Y°',i+1,':',B[i],' es: ',D[i]
	FinPara
	Escribir ' '
	// 3. Porcentaje de Promedios<Media Geometrica
	SUMA <- 0
	Para i<-0 Hasta N-1 Hacer 
		Si C[i]<D[i] Entonces 
			SUMA<- SUMA+1
		FinSi
	FinPara
	PORCENTAJE <- (100*SUMA)/N
	Escribir 'El porcentaje de Promedios menores que la Media geometrica es: ',PORCENTAJE,'%'
	Escribir ' '
	// 4. Primer par Promedio = Media Geometrica
	S <- 0
	IGUAL <- 0
	Para i<-0 Hasta N-1 Hacer 
		Si C[i]=D[i] Entonces 
			IGUAL <- IGUAL+1 
		SiNo
			S <- S+1 
		FinSi
		NP <- S/N // La variable NP seria que cantidad de los N pares tienen un promedio distinto a su media
	FinPara
	T <- IGUAL // Se define un T como la suma total de iguales
	Si T>0 Entonces // Condicionamos la variable donde si el valor de T es mayor a uno, existe el/los par(es) P=M
		Para i<-0 Hasta N-1 Hacer 
			Si C[i]=D[i] Entonces 
				k <- C[i]
				Escribir 'El primer par de datos que dio PROMEDIO=MEDIA GEOMETRICA es: ',A[i],';',B[i],' cuyo valor de Promedio y MG es: ',k
				i <- N-1
			FinSi
		FinPara
	FinSi
	Si NP=1 Entonces 
		Escribir 'No existen pares donde PROMEDIO = MEDIA GEOMETRICA'
	FinSi
FinAlgoritmo 

