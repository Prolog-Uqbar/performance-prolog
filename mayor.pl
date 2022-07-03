% primer ejemplo, Prolog tal cual lo conocemos
% requiere definir explícitamente la condición excluyente
mayor(Numero1, Numero2, Numero1):-Numero1 > Numero2.
mayor(Numero1, Numero2, Numero2):-Numero2 >= Numero1.

% predicado -> permite evaluar asignaciones en base a una condición
% se puede ver como un operador ternario, solo que no puede devolver expresiones
mayorIf(Numero1, Numero2, Numero):-Numero1 > Numero2 -> Numero is Numero1 ; Numero is Numero2.

% el operador once/1 corta el backtracking (poda los choicepoints)
% eso evita tener que definir la segunda condición
mayorOnce(Numero1, Numero2, Numero1):-once(Numero1 > Numero2).  
    %                                             ^
    % si llegamos aquí, eso significa que Numero1 es el mayor
mayorOnce(_, Numero2, Numero2).
    % ya no nos importa el otro número, solo el primero que sabemos que es el mayor
