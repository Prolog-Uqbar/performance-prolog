/* sin tabling no funciona */
:- table numero/1.
numero(1).
numero(N):-numero(Anterior), N is Anterior + 1, N < 10.

:- table amistad/2.
amistad(gaston, esteban).
amistad(adriano, esteban).
amistad(adriano, eliana).
amistad(gaston, eliana).
amistad(Persona, OtraPersona):-amistad(OtraPersona, Persona).