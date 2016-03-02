> Generar una función `desintoxicarse/1` que elimina las bebidas alcohólicas de una persona

``` haskell
*Main> desintoxicarse flor
Tranqui "flor" []

*Main> desintoxicarse (Agitador 1670 2000 [("Cerveza", 2), ("Coca cola", 2)] "rodri")
Agitador 1670 2000 [("Coca cola", 2)] "rodri"
```

:point_right: Debe utilizar una función auxiliar `/1` que utilice filter + expresiones lambda.

