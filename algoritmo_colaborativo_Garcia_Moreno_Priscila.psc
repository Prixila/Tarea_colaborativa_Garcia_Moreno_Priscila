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
	
			
	Para i<-1 Hasta N Con Paso 1 Hacer
		aux<-hora[i];
		j<-i-1;
		Mientras (j>=1) Y (hora[j]>aux) Hacer
			hora[j+1]<-hora[j];
			j<-j-1;
		FinMientras
		hora[j+1]<-aux;
	FinPara
	
	Para i<-1 Hasta N Hacer
		
		Escribir "El exámen ",i," es a las ",hora[i];
		
	FinPara
	Escribir ""
	Escribir "Para antes de las " ,hora[1]-1, " debes de haber terminado de repasar"
	
		Definir continuar como entero;
		Definir calificacion como real;
		Definir cantidad como entero;
		Definir calificaciones como real;
		Definir promedio como real;
		
		
		continuar <- 1;
		cantidad <- 0;
		calificaciones <- 0;
		Mientras continuar = 1 Hacer
			Escribir "Ingrese calificacion: ";
			Leer calificacion;
			
			calificaciones <- calificaciones + calificacion;
			cantidad <- cantidad + 1;
			
			Escribir "Continuar ingresando calificaciones: ";
			Escribir "1 .- Si";
			Escribir "2 .- No";
			Leer continuar;
			
		FinMientras
		
		Si cantidad = 0 Entonces
			Escribir "No se puede mostrar el promedio porque no se ingresaron calificaciones";
		Sino
			promedio <- calificaciones / cantidad;
			Escribir "El promedio de calificaciones es: ", promedio;
		FinSi
		
	
FinAlgoritmo
