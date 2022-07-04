
## Performance en Prolog

[![Build](https://github.com/Prolog-Uqbar/performance-prolog/actions/workflows/workflow.yml/badge.svg)](https://github.com/Prolog-Uqbar/performance-prolog/actions/workflows/workflow.yml)

Este proyecto cuenta con una serie de ejemplos que permiten mostrar algunas optimizaciones que tiene el motor de inferencia de Prolog. En particular

- [predicados que no terminan porque tienen ciclos en su definición](./predicados_que_no_terminan.pl)
- cuando el backtracking no es necesario,
  - [varias definiciones posibles para encontrar el mayor de un número](.mayor.pl),
  - [obtener los números divisibles por 3 de una lista](./divisiblesPor3.pl)


El video con la explicación está en [este link](https://youtu.be/vMy7T4HY2Q0).

Para profundizar más, te recomendamos

- [Documentación de SWI Prolog sobre Tabling](https://eu.swi-prolog.org/pldoc/man?section=tabling)
- [Ejemplos sobre cut](https://www-users.cse.umn.edu/~gini/prolog/cut.html)
- [Cut explicado en Practical Prolog Programming](http://users.informatik.uni-halle.de/~brass/lp03/c5_propr.pdf)