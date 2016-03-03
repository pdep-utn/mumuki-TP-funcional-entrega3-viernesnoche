describe "Descontrolarse" $ do
  it "Flor se descontrola y queda agitadora" $ do
     descontrolarse flor `shouldBe` Agitador 1500 2000 [("Grapa", 1)] "flor" 
  it "Deby se tranquiliza y queda tranqui" $ do
     descontrolarse deby `shouldBe` Agitador "deby" [("Grog XD", 25), ("Cerveza", 1), ("Grog XD", 1)]
     