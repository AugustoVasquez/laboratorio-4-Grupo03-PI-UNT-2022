Algoritmo Tribonacci
	definir N,M,i Como Real
	Escribir "Escriba el numero n para la secuencia tribonacci:"
	leer N
	Si N>=0 Entonces
		Segun N Hacer
			0:
				Escribir "El resultado es: 0"
			1:
				Escribir "El resultado es: 0"
			2:
				Escribir "El resultado es: 1"
			De Otro Modo:
				Dimension M[N+1]
				M[0]=0
				M[1]=0
				M[2]=1
				Para i=0 Hasta N-3 Con Paso 1 Hacer
					M[i+3]=M[i]+M[i+1]+M[i+2]
				FinPara
				Escribir "El resultado es: ",M[N]
		FinSegun
	SiNo
		Escribir "Entrada invalida"
	FinSi
FinAlgoritmo
