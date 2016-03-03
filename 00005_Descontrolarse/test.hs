describe "Descontrolarse" $ do
  it "Flor se descontrola y queda agitadora" $ do
     descontrolarse flor `shouldBe` Agitador 1500 2000 [("Grapa", 1)] "flor" 
  it "Deby se descontrola y se pide un Grog XD más" $ do
     descontrolarse deby `shouldBe` Agitador 7000 1500 [("Grog XD", 25), ("Cerveza", 1), ("Grog XD", 1)] "deby"
     