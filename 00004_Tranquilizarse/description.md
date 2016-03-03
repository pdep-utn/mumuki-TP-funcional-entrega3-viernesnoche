> Definir la función `tranquilizarse/1`: si la persona es tranquila, no tiene efecto. Si la persona es un agitador, se transforma en tranquila (descarta la información propia del agitador)

``` haskell
*Main> tranquilizarse flor
Tranqui "flor" [("Grapa", 1)]

*Main> tranquilizarse deby
Tranqui "deby" [("Grog XD", 25), ("Cerveza", 1)]
```