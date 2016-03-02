describe "Desintoxicarse" $ do
  it "Flor se desintoxica y no queda con bebidas" $ do
     desintoxicarse flor `shouldBe` Tranqui "flor" []
  it "Rodri se desintoxica y queda sólo con 2 vasos de Coca" $ do
     desintoxicarse (Agitador 1670 2000 [("Cerveza", 2), ("Coca cola", 2)] "rodri") `shouldBe` (Agitador 1670 2000 [("Coca cola", 2)] "rodri")