describe "En que te han convertido" $ do
  it "A deby la convierten en lassie - de Agitador a Tranqui" $ do
     enQueTeHanConvertido [pedirBebida "Grapa", pedirBebida "Coca cola",  pedirBebida "Grog XD", tranquilizarse, desintoxicarse] deby `shouldBe` Tranqui "deby" [("Coca cola",1)]
  it "A fer lo transforman en el profesor punk - de Tranqui a Agitador" $ do
     enQueTeHanConvertido [descontrolarse, pedirBebida "GrogXD"] fer `shouldBe` Agitador 1500 2000 [("GrogXD",1),("Coca cola",1),("Sprite Zero",1)] "fer"
     
