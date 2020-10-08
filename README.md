# Hanoi_PDDL
## Programa del juego de Torres de Hanói creado en una representación tipo STRIPS
El objetivo del juego es mover los discos, que por defecto están apilados de mayor a menor (de debajo a encima) de la torre A a la torre B, pudiendo hacer uso de la torre C para realizar el ordenamiento, quedando finalmente en la torre B, en el mismo orden que tienen inicialmente.
El programa en PDDL se ha realizado para n = 3 discos.

El número de movimientos necesarios para mover n discos de la torre A a la torre B manteniendo el orden es 2^n - 1.

### Contenido
- hanoidomain.pddl: Dominio del problema: Lenguaje de descripción de estados y acciones que se pueden dar.
- hanoiproblem.pddl: Instancia del problema: Caso especifico a resolver (Estado inicial (init) + Cjto. estados finales (goal))
- outputs.txt: 2^n-1 salidas del programa tras pasar por el [editor PDDL](http://editor.planning.domains/)
- Hanoi3.java: Programa en Java del juego de las Torres de Hanói, siendo n variable.
