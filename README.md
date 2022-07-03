
## Performance en Prolog

[![Build](https://github.com/Prolog-Uqbar/performance-prolog/actions/workflows/workflow.yml/badge.svg)](https://github.com/Prolog-Uqbar/performance-prolog/actions/workflows/workflow.yml)

Este proyecto cuenta con una serie de ejemplos que permiten mostrar algunas optimizaciones que tiene el motor de inferencia de Prolog. En particular

- [predicados que no terminan porque tienen ciclos en su definición](./predicados_que_no_terminan.pl)
- predicados a los que el mecanismo de tabling los vuelve performantes, o permite que terminen, como [encontrar el número de Fibonacci](./fibonacci.pl)
- cuando el backtracking no es necesario,
  - [varias definiciones posibles para encontrar el mayor de un número](.mayor.pl),
  - [obtener los números divisibles por 3 de una lista](./divisiblesPor3.pl)

