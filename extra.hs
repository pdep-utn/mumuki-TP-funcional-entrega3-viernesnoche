-- All the Night Club 
-- Se cuenta con la siguiente lista de personas que asisten a una discoteca, entre los que 
-- contamos con personas tranquilas y agitadores:  
 
data Persona = Tranqui String [(String, Int)] 
             | Agitador Int Int [(String, Int)] String deriving Show
fer   = Tranqui "fer" [("Coca cola", 1), ("Sprite Zero", 1)]
flor  = Tranqui "flor" [("Grapa", 1)]
rodri = Agitador 1670 2000 [("Cerveza", 2)] "rodri"
deby  = Agitador 7000 1500 [("Grog XD", 25), ("Cerveza", 1)] "deby"

discotequers :: [Persona]
discotequers = [fer, rodri, deby, flor]
 
-- Las personas tranquilas definen:  
-- Cómo se llama la persona 
--- La lista de tragos que tomó, cada trago se representa como una tupla que define  
---- El nombre de la bebida  
---- La cantidad de vasos que tomó  
 
-- Las que agitan definen 
--- La cantidad de levante que tiene 
--- El nivel de aguante de alcohol 
--- La lista de tragos que tomó
--- Cómo se llama la persona 
 
-- Por otra parte se tiene la lista de tragos:  
tragos = [("Coca cola", 0), ("Grog XD", 350), 
          ("Sprite Zero", 0), ("Cerveza", 10), ("Grapa", 40)]
 
-- El formato que sigue la tupla es:  
--- Nombre de la bebida  
--- Graduación alcohólica de cada vaso  

-- ************************************************************************
-- ENTREGA 1
-- Recursividad. Tipos de datos definido por el usuario. 
-- Pattern matching. 
-- ************************************************************************
-- Se corre con GHCI

-- No debe haber expresiones del tipo
-- | x == y    = True
-- | otherwise = False
-- sino hacer directamente = x == y
-- 
-- Los nombres de las funciones y sus parámetros deben ser representativos o
-- la entrega deberá ser corregida.

-- Punto 1
-- Encontrar los datos de una persona que ingresó a la discoteca en base al nombre
nombre :: Persona -> String
nombre (Agitador _ _ _ nombre') = nombre'
nombre (Tranqui nombre' _) = nombre'

datosDe nombrePersona (persona:personas) 
   |  nombrePersona == nombre persona = persona
   |  otherwise                       = datosDe nombrePersona personas

-- Indique dónde utilizó pattern matching y dónde recursividad

-- Punto 2
-- Resolver la graduación alcohólica de un trago
graduacionAlcoholica trago ((trago', graduacion):restoBebidas)
  | (trago' == trago) = graduacion
  | otherwise         = graduacionAlcoholica trago restoBebidas

-- Indique dónde utilizó pattern matching y dónde recursividad

-- Punto 3
-- Resolver la cantidad de alcohol en sangre que tiene una persona    
-- Debe evitar repetición de código
-- Consejo: ayúdese con los puntos 1 y 2
alcoholEnSangre nombrePersona personas =  sumarAlcohol (bebidas (datosDe nombrePersona personas))

bebidas (Agitador _ _ bebidas' _) = bebidas'
bebidas (Tranqui _ bebidas') = bebidas'

sumarAlcohol [] = 0
sumarAlcohol ((bebida, vasos):restoBebidas) = sumarAlcohol restoBebidas + ((graduacionAlcoholica bebida tragos) * vasos)

-- Indique dónde utilizó pattern matching y dónde recursividad

-- Punto 4
-- Saber si una persona está borracha: 
-- 1. para una persona tranquila, no puede tener nada de alcohol en sangre 
-- 2. para un agitador, si el aguante es < que el alcohol en sangre 

-- Debe reutilizar puntos anteriores para evitar repetición de código
estaBorracha (Agitador _ aguante queBebidas _) = aguante < sumarAlcohol queBebidas 
estaBorracha (Tranqui _ queBebidas) = sumarAlcohol queBebidas > 0

-- Ejemplos
-- *Main> estaBorracha deby
-- True
-- *Main> estaBorracha flor
-- True
-- *Main> estaBorracha fer
-- False


-- ************************************************************************
-- ENTREGA 2
--  Listas x comprensión. Composición. 
-- Intro a fn de orden superior. 
-- ************************************************************************

-- Punto 1
-- Dada una lista de bebidas, queremos obtener las bebidas alcohólicas.
-- Resolverlo con listas por comprensión, mostrando sólo la descripción de la bebida. 
bebidasAlcoholicas tragos = [ nombre | (nombre, graduacion) <- tragos, graduacion > 0]

-- Ejemplos
-- * ​Main ​> bebidasAlcoholicas tragos 
-- ["Grog XD" ​, "Cerveza" ​,  ​"Grapa" ​] 

-- Punto 2
-- Dada una lista, queremos saber qué personas están borrachas. Resolverlo con listas por
-- comprensión, generando una tupla (Nombre de la personas, Bebidas que tomó)
quienesEstanBorrachos personas = [ (nombre persona, bebidas persona) | persona <- personas, estaBorracha persona ]

-- >*Main> quienesEstanBorrachos discotequers
-- [("deby",[("Grog XD",25),("Cerveza",1)]),("flor",[("Grapa",1)])]

-- Punto 3
-- Necesitamos saber 
--- qué personas no están borrachas 
--- qué personas tienen un nombre de más de 4 letras 
--- qué personas tomaron exactamente una cantidad par de bebidas
--- qué personas tomaron 1 vaso de "Coca cola". Ayuda: utilizar la función elem, ¡que funciona sobre tuplas!

-- Para eso utilice la función ​filter ​pasando una función inline donde sólo puede utilizar 
-- composición. 
 
-- Ejemplo:​
-- si queremos saber quiénes tiene un nivel de alcohol en sangre menor a 100
-- deberíamos hacer 
-- *Main> filter  ((== False) . estaBorracha)  discotequers  
-- o bien
-- *Main> filter  (not . estaBorracha)  discotequers  

-- Se pide pensar la función que està en negrita, la que se debe pasar a filter para resolver los 
-- tres requerimientos restantes. 

-- Solución
-- *Main> filter  ((> 4). length . nombre)  discotequers
-- [Agitador 1670 2000 [("Cerveza",2)] "rodri"]
-- *Main> filter  (even . length . bebidas)  discotequers
-- [Tranqui "fer" [("Coca cola",1),("Sprite Zero",1)],Agitador 7000 1500 [("Grog XD",25),("Cerveza",1)] "deby"]
-- *Main> filter  (elem ("Coca cola", 1) . bebidas)  discotequers
-- [Tranqui "fer" [("Coca cola",1),("Sprite Zero",1)]]