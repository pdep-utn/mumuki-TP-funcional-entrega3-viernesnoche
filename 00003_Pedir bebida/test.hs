describe "Pedir bebida" $ do
  it "Flor pide bebida y le agrega un vaso de coca" $ do
     (size . bebidas) flor `shouldBe` 2
     (last . pedirBebida "Coca cola") flor `shouldBe` ("Coca cola", 1)
     (size . bebidas . pedirBebida "Coca cola") flor `shouldBe` 3
  