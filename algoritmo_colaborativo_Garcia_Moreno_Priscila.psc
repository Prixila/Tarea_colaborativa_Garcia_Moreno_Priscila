Algoritmo ordenacion_por_insercion
	Escribir "¿Cuántos exámenes tienes mañana?"
	Leer N
	Dimension hora[N];
	Dimension Nombres(N);
	
	Definir i,j,aux,hora Como Numericos;
	Escribir "Organiza el horario de tus exámenes.";
	
		Para i<-1 hasta N hacer
		Escribir "¿De qué asignatura tienes el exámen?" 
		Leer Nombres(i)
		Escribir "Hora del exámen de " Nombres(i) 
		Leer hora(i)
	FinPara
	
			
	Para i<-1 Hasta N Con Paso N Hacer
		aux<-hora[i];
		j<-i-1;
		Mientras (j>=1) Y (hora[j]>aux) Hacer
			hora[j+1]<-hora[j];
			j<-j-1;
		FinMientras
		hora[j+1]<-aux;
	FinPara
	
	Limpiar Pantalla
	
	Para i<-1 Hasta N Hacer
		
		Escribir "El exámen ",i," es a las ",hora[i];
		
	FinPara
	Escribir ""
	Escribir "Para antes de las " ,hora[1]-1, " debes de haber terminado de repasar"

FinAlgoritmo
