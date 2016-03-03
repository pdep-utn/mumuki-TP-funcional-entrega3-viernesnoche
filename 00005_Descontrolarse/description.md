> Definir la función `descontrolarse/1`: : si la persona es un agitador, se pide un vaso de grogXD. Si la persona es tranquila, se transforma en agitador, donde por defecto tiene 1500 puntos de levante y 2000 de tolerancia alcohólica.

``` haskell
*Main> descontrolarse flor
Agitador 1500 2000 [("Grapa", 1)] "flor" 

*Main> descontrolarse deby
Agitador "deby" [("Grog XD", 25), ("Cerveza", 1), ("Grog XD", 1)]
```