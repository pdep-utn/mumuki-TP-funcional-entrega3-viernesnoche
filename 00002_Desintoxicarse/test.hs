describe "Alcohol en Sangre con Fold" $ do
  it "Fer no tiene alcohol en sangre" $ do
     desintoxicarse flor `shouldBe` (Tranqui "flor" [])
  it "Deby tiene alcohol en sangre" $ do
     desintoxicarse (Agitador 1670 2000 [("Cerveza", 2), ("Coca cola", 2)] "rodri") `shouldBe` Agitador 1670 2000 [("Coca cola", 2)] "rodri"