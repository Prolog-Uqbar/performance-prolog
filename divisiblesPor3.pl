% Divisibles por 3 pensado como función
divisiblesPor3Funcion([], []).
divisiblesPor3Funcion([Numero|Numeros], [Numero|Divisibles]):-0 is Numero rem 3 , divisiblesPor3Funcion(Numeros, Divisibles).
divisiblesPor3Funcion([Numero|Numeros], Divisibles):-not(0 is Numero rem 3 ), divisiblesPor3Funcion(Numeros, Divisibles).

% =======================================================================================================================
% Divisibles pensado como relación, con múltiples soluciones
% Construye una lista de posibles Divisibles
divisiblesPor3Relacion([], []).
divisiblesPor3Relacion([Numero|Numeros], [Numero|Divisibles]):-0 is Numero rem 3 , divisiblesPor3Relacion(Numeros, Divisibles).
divisiblesPor3Relacion([_|Numeros], Divisibles):-divisiblesPor3Relacion(Numeros, Divisibles).

% =======================================================================================================================
% Divisibles por 3 pensado como función, utilizando el predicado ->/2
divisiblesPor3ConIf([], []).
divisiblesPor3ConIf([Numero|Numeros], Divisibles):- 
  divisiblesPor3ConIf(Numeros, DivisiblesResto),
  (0 is Numero rem 3 -> Divisibles = [Numero|DivisiblesResto] ; Divisibles = DivisiblesResto).

% =======================================================================================================================
% Divisibles por 3 pensado como función, utilizando el predicado !/0 (cut)
divisiblesPor3ConCut([], []).
divisiblesPor3ConCut([Numero|Numeros], [Numero|Divisibles]):- 
  0 is Numero rem 3, !, divisiblesPor3ConCut(Numeros, Divisibles).
divisiblesPor3ConCut([_|Numeros], Divisibles):-divisiblesPor3ConIf(Numeros, Divisibles).

% =======================================================================================================================
% Divisibles por 3 de la manera más declarativa posible
divisiblesPor3Piola(Numeros, Divisibles):-include(divisiblePor3, Numeros, Divisibles).

divisiblePor3(Numero):-0 is Numero rem 3.
