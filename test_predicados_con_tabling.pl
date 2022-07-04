:- include(predicadosQueNoTerminan).

:- begin_tests(numeros).

test("predicado generador sobre numeros", set(Numeros = [[1, 2, 3, 4, 5, 6, 7, 8, 9]])):-
  findall(Numero, numero(Numero), NumerosOriginales),
  sort(NumerosOriginales, Numeros).

:-end_tests(numeros).

:- begin_tests(amistades).

test("amistades de una persona", set(Amistades = [[adriano, gaston]])):-
  findall(Persona, amistad(eliana, Persona), AmistadesOriginales),
  sort(AmistadesOriginales, Amistades).

:-end_tests(amistades).
