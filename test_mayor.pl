:- include(mayor).

:- begin_tests(mayor).

test("mayor existencial donde el primer número es el mayor", set(Numero = [5])):-mayor(5, 2, Numero).

test("mayor existencial donde el segundo número es el mayor", set(Numero = [5])):-mayor(2, 5, Numero).

% debemos aclarar que es no-determinístico
test("mayor individual donde el primer número es el mayor", nondet):-mayor(5, 2, 5).

test("mayor individual - caso que debe fallar", [nondet, fail]):-mayor(5, 2, 2).

test("mayor individual donde el segundo número es el mayor", nondet):-mayor(2, 5, 5).

:-end_tests(mayor).

:- begin_tests(mayorConIf).

test("version con if - mayor existencial donde el primer número es el mayor", set(Numero = [5])):-mayorConIf(5, 2, Numero).

test("version con if - mayor existencial donde el segundo número es el mayor", set(Numero = [5])):-mayorConIf(2, 5, Numero).

% debemos aclarar que es no-determinístico
test("version con if - mayor individual donde el primer número es el mayor", nondet):-mayorConIf(5, 2, 5).

test("version con if - mayor individual - caso que debe fallar", [nondet, fail]):-mayorConIf(5, 2, 2).

test("version con if - mayor individual donde el segundo número es el mayor", nondet):-mayorConIf(2, 5, 5).

:-end_tests(mayorConIf).

:- begin_tests(mayorConCut).

test("version con cut - mayor existencial donde el primer número es el mayor", set(Numero = [5])):-mayorConCut(5, 2, Numero).

test("version con cut - mayor existencial donde el segundo número es el mayor", set(Numero = [5])):-mayorConCut(2, 5, Numero).

% debemos aclarar que es no-determinístico
test("version con cut - mayor individual donde el primer número es el mayor", nondet):-mayorConCut(5, 2, 5).

test("version con cut - mayor individual - caso que debe fallar", [nondet, fail]):-mayorConIf(5, 2, 2).

test("version con cut - mayor individual donde el segundo número es el mayor", nondet):-mayorConCut(2, 5, 5).

:-end_tests(mayorConCut).
