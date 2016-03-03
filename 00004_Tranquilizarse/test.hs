describe "Tranquilizarse" $ do
  it "Flor se tranquiliza y queda igual" $ do
     tranquilizarse flor `shouldBe` flor
  it "Deby se tranquiliza y queda tranqui" $ do
     tranquilizarse deby `shouldBe` Tranqui "deby" [("Grog XD", 25), ("Cerveza", 1)]
     
     
  