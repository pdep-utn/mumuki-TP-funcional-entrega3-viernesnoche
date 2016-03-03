desintoxicarse (Agitador levante aguante bebidas nombre) = Agitador levante aguante (filtrarBebidasAlcoholicas bebidas) nombre
desintoxicarse (Tranqui nombre bebidas) = Tranqui nombre (filtrarBebidasAlcoholicas bebidas)

filtrarBebidasAlcoholicas = filter (\(bebida', _) -> (graduacionAlcoholica bebida' tragos) == 0)

pedirBebida bebida (Agitador levante aguante queBebidas nombre) = Agitador levante aguante (sumarBebida bebida queBebidas) nombre
pedirBebida bebida (Tranqui nombre queBebidas) = Tranqui nombre (sumarBebida bebida queBebidas) 

sumarBebida bebida queBebidas = (++) queBebidas [(bebida, 1)]

tranquilizarse (Agitador _ _ queBebidas nombre) = Tranqui nombre queBebidas
tranquilizarse persona = persona

descontrolarse (Tranqui nombre queBebidas) = Agitador 1500 2000 queBebidas nombre
descontrolarse persona = pedirBebida "Grog XD" persona