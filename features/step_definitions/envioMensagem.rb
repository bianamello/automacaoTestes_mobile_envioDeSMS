Dado("que eu estou na tela de mensagens") do
  @home.verificaTelaHome
end

Quando("tocar no botão de iniciar mensagem") do
  @home.iniciaNovaMensagem
end

Entao("devo ver a tela de nova mensagem") do
  @home.verificaTelaEnvioMensagem
end
  