:- include(divisiblesPor3).

:- begin_tests(divisiblesPor3).

test("divisibles por 3 como función", set(Divisibles = [[3, 6, 9]])):-divisiblesPor3Funcion([1, 4, 3, 2, 6, 8, 9, 7, 5], Divisibles).

test("divisibles por 3 como relación", set(Divisibles = [[3, 6], [3], [6], []])):-divisiblesPor3Relacion([1, 4, 3, 2, 6, 8, 7, 5], Divisibles).

test("divisibles por 3 como función con if", set(Divisibles = [[3, 6, 9]])):-divisiblesPor3ConIf([1, 4, 3, 2, 6, 8, 9, 7, 5], Divisibles).

test("divisibles por 3 como función con cut", set(Divisibles = [[3, 6, 9]])):-divisiblesPor3ConCut([1, 4, 3, 2, 6, 8, 9, 7, 5], Divisibles).

test("divisibles por 3 como función piola", set(Divisibles = [[3, 6, 9]])):-divisiblesPor3Piola([1, 4, 3, 2, 6, 8, 9, 7, 5], Divisibles).

:-end_tests(divisiblesPor3).
