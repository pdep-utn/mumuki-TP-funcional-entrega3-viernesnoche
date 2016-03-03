> Generar una función `pedirBebida/2`: cuando una persona pide una bebida hay que incorporarla a la lista de tragos que bebió (asumir que pide siempre 1 vaso). **Agregar siempre al final un vaso de la bebida pedida, independientemente de que ya haya tomado esa bebida**.

``` haskell
*Main> pedirBebida "Coca cola" flor
Tranqui "flor" [("Grapa", 1), ("Coca cola", 1)]

*Main> pedirBebida (Agitador 1670 2000 [("Cerveza", 2), ("Coca cola", 2)] "rodri")
Agitador 1670 2000 [("Cerveza", 2), ("Coca cola", 2), ("Coca cola", 1)] "rodri"
```
