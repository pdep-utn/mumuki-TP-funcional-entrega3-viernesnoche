describe "Esto es un descontrol" $ do
  it "Escenario 1 - No todos estan borrachos" $ do
     estoEsUnDescontrol discotequers `shouldBe` False
  it "Escenario 2 - Todos estan borrachos" $ do
     estoEsUnDescontrol [deby] `shouldBe` True
     
