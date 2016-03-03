> Definir la función `enQueTeHanConvertido/2`, que aplica una serie de transformaciones 
a una persona. Resolverlo mediante foldl. 

``` haskell
*Main> enQueTeHanConvertido [pedirBebida "Grapa", pedirBebida "Coca cola",  pedirBebida "Grog XD", tranquilizarse, desintoxicarse] deby
Tranqui "deby" [("Coca cola",1)]

*Main> enQueTeHanConvertido [descontrolarse, pedirBebida "GrogXD"] fer
Agitador 1500 2000 [("Coca cola",1),("Sprite Zero",1),("GrogXD",1)] "fer"
```
