> Generar una función `desintoxicarse/1` que elimina las bebidas alcohólicas de una persona

``` haskell
*Main> desintoxicarse flor
Tranqui "flor" []

*Main> desintoxicarse (Agitador 1670 2000 [("Cerveza", 2), ("Coca cola", 2)] "rodri")
Agitador 1670 2000 [("Coca cola", 2)] "rodri"
```

:point_right: Tenés que definir una función auxiliar `filtrarBebidasAlcoholicas/1` que utilice filter + expresiones lambda, que sirva para filtrar las bebidas alcohólicas tanto para agitadores como para los tranquilos.

