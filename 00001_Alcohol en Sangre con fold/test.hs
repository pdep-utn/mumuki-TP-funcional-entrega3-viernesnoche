describe "Alcohol en Sangre con Fold" $ do
  it "Fer no tiene alcohol en sangre" $ do
     alcoholEnSangreF "fer" discotequers `shouldBe` 0
  it "Deby tiene alcohol en sangre" $ do
     alcoholEnSangreF "deby" discotequers `shouldBe` 8760
     