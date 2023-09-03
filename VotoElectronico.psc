Algoritmo VotoElectronico
    // Declaraci�n de arreglos y variables
    Dimension candidatos[10]
    Dimension votos[10]
    Definir numCandidatos, opcionMenu, candidatoElegido, totalVotos como Entero
	
    // Inicializaci�n de variables
    numCandidatos <- 0
    totalVotos <- 0
	
    Repetir
        // Men� principal
        Escribir "Sistema de Voto Electr�nico"
        Escribir "1. Agregar candidato"
        Escribir "2. Realizar voto"
        Escribir "3. Ver resultados"
        Escribir "4. Salir"
        Leer opcionMenu
		
        // Opci�n 1: Agregar candidato
        Si opcionMenu = 1 Entonces
            Si numCandidatos < 10 Entonces
                Escribir "Ingrese el nombre del candidato:"
                Leer candidatos[numCandidatos + 1]
                votos[numCandidatos + 1] <- 0
                numCandidatos <- numCandidatos + 1
                Escribir "Candidato agregado exitosamente."
            Sino
                Escribir "Se ha alcanzado el m�ximo de candidatos permitidos (10)."
            Fin Si
        Fin Si
		
        // Opci�n 2: Realizar voto
        Si opcionMenu = 2 Entonces
            Si numCandidatos = 0 Entonces
                Escribir "No hay candidatos para votar. Agregue candidatos primero."
            Sino
                Escribir "Lista de candidatos:"
                Para i <- 1 Hasta numCandidatos
                    Escribir i, ". ", candidatos[i]
                Fin Para
                Escribir "Seleccione el n�mero del candidato al que desea votar (1-", numCandidatos, "):"
                Leer candidatoElegido
                Si candidatoElegido >= 1 y candidatoElegido <= numCandidatos Entonces
                    votos[candidatoElegido] <- votos[candidatoElegido] + 1
                    totalVotos <- totalVotos + 1
                    Escribir "Su voto ha sido registrado exitosamente."
                Sino
                    Escribir "Opci�n de candidato no v�lida."
                Fin Si
            Fin Si
        Fin Si
		
        // Opci�n 3: Ver resultados
        Si opcionMenu = 3 Entonces
            Si numCandidatos = 0 Entonces
                Escribir "No hay candidatos registrados."
            Sino
                Escribir "Resultados de la elecci�n:"
                Para i <- 1 Hasta numCandidatos
                    Escribir candidatos[i], ": ", votos[i], " votos (", (votos[i] * 100 / totalVotos), "% del total)"
                Fin Para
            Fin Si
        Fin Si
		
    Hasta Que opcionMenu = 4
	
Fin Algoritmo
