% Divisibles por 3 pensado como función
divisiblesPor3Funcion([], []).
divisiblesPor3Funcion([Numero|Numeros], [Numero|Primos]):-0 is Numero rem 3 , divisiblesPor3Funcion(Numeros, Primos).
divisiblesPor3Funcion([Numero|Numeros], Primos):-not(0 is Numero rem 3 ), divisiblesPor3Funcion(Numeros, Primos).

% Primos pensado como relación, con múltiples soluciones
% Construye una lista de posibles primos
divisiblesPor3Relacion([], []).
divisiblesPor3Relacion([Numero|Numeros], [Numero|Primos]):-0 is Numero rem 3 , divisiblesPor3Relacion(Numeros, Primos).
divisiblesPor3Relacion([_|Numeros], Primos):-divisiblesPor3Relacion(Numeros, Primos).

% Divisibles por 3 pensado como función, utilizando el predicado ->/2
divisiblesPor3Once([], []).
divisiblesPor3Once([Numero|Numeros], Divisibles):- 
  divisiblesPor3Once(Numeros, Primos),
  (0 is Numero rem 3 -> Divisibles = [Numero|Primos] ; Divisibles = Primos).

% Divisibles por 3 de la manera más declarativa posible
divisiblesPor3Piola(Numeros, Divisibles):-include(divisiblePor3, Numeros, Divisibles).

divisiblePor3(Numero):-0 is Numero rem 3.